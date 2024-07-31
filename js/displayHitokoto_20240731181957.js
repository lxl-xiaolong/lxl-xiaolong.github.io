document.addEventListener('DOMContentLoaded', function() {
    // 创建 Hitokoto 元素并设置样式
    var hitokotoDiv = document.createElement('div');
    hitokotoDiv.id = 'hitokoto';
    var hitokotoP = document.createElement('p');
    hitokotoP.id = 'hitokoto_text';
    hitokotoP.textContent = ':D 获取中...';
    hitokotoP.style.color = 'dark';
    hitokotoP.style.fontSize = '18px';
    hitokotoP.style.textAlign = 'center';
    hitokotoDiv.appendChild(hitokotoP);

    // 在特定的 <h2> 元素后插入 Hitokoto 元素
    var h2Element = document.querySelector('h2');
    h2Element.parentNode.insertBefore(hitokotoDiv, h2Element.nextSibling);

    // 更新 Hitokoto 一言的函数
    function updateHitokoto() {
        var apiURL = 'https://v1.hitokoto.cn';
        var xhr = new XMLHttpRequest();
        xhr.open('GET', apiURL, true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4) {
                if (xhr.status === 200) {
                    try {
                        var hitokotoData = JSON.parse(xhr.responseText);
                        var hitokotoText = hitokotoData.hitokoto;
                        var from = hitokotoData.from;
                        var fromWho = hitokotoData.from_who;
                        var formattedText = fromWho ? `『${hitokotoText}』 ——${fromWho}【${from}】` : `『${hitokotoText}』 ——【${from}】`;
                        document.getElementById('hitokoto_text').textContent = formattedText;
                    } catch (e) {
                        console.error('Error parsing JSON:', e);
                    }
                } else {
                    console.error('Failed to fetch from default API, trying international API.');
                    apiURL = 'https://international.v1.hitokoto.cn';
                    xhr.open('GET', apiURL, true);
                    xhr.send();
                }
            }
        };
        xhr.send();
    }

    // 初始调用和定时更新
    updateHitokoto();
    setInterval(updateHitokoto, 15000);
});
