function fetchHitokoto(url) {
    return fetch(url)
        .then(response => {
            if (!response.ok) {
                throw new Error(`Network response was not ok: ${response.statusText}`);
            }
            return response.json();
        })
        .catch(error => {
            console.error(`Failed to fetch from ${url}:`, error);
            throw error; // Re-throw the error to be handled by the caller
        });
}

function updateHitokotoElement(data) {
    const hitokotoElement = document.getElementById('hitokoto_text');
    if (!hitokotoElement) {
        console.error('The hitokoto_text element does not exist.');
        return;
    }
    let formattedText = `『${data.hitokoto}』 —— `;
    if (data.from_who) {
        formattedText += `${data.from_who}【${data.from}】`;
    } else {
        formattedText += `【${data.from}】`;
    }
    hitokotoElement.textContent = formattedText;
}

function updateHitokoto() {
    fetchHitokoto('https://v1.hitokoto.cn')
        .then(updateHitokotoElement)
        .catch(() => {
            // Try the international endpoint if the first request fails
            return fetchHitokoto('https://international.v1.hitokoto.cn')
                .then(updateHitokotoElement)
                .catch(() => {
                    document.getElementById('hitokoto_text').textContent = 'Failed to load Hitokoto.';
                });
        });
}

// Set interval to update hitokoto every 10 seconds
setInterval(updateHitokoto, 10000);
