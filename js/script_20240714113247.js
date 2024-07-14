document.addEventListener('DOMContentLoaded', function() {
    const loading = document.getElementById('loading');
    loading.style.display = 'block';

    fetch('https://https://gcore.jsdelivr.net/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/json/links_20240714113319.json')
        .then(response => response.json())
        .then(data => {
            loading.style.display = 'none';
            const categories = document.getElementById('categories');
            const links = document.getElementById('links');
            const searchBox = document.getElementById('searchBox');

            data.forEach((category, index) => {
                const categoryLi = document.createElement('li');
                categoryLi.textContent = category.name;
                categoryLi.onclick = function() { showLinks(category.links); };
                categories.appendChild(categoryLi);

                if (index === 0) showLinks(category.links);
            });

            function showLinks(linkData) {
                links.innerHTML = '';
                linkData.forEach(link => {
                    const linkLi = document.createElement('li');
                    const linkA = document.createElement('a');
                    linkA.href = link.url;
                    linkA.textContent = link.name;
                    linkA.target = '_blank';
                    linkLi.appendChild(linkA);
                    links.appendChild(linkLi);
                });
            }

            searchBox.addEventListener('input', function(e) {
                const searchTerm = e.target.value.toLowerCase();
                const filteredData = data.reduce((acc, category) => {
                    const matchedLinks = category.links.filter(link => link.name.toLowerCase().includes(searchTerm));
                    if (matchedLinks.length > 0) {
                        acc.push({ name: category.name, links: matchedLinks });
                    }
                    return acc;
                }, []);

                if (filteredData.length > 0) {
                    categories.innerHTML = '';
                    links.innerHTML = '';
                    filteredData.forEach(category => {
                        const categoryLi = document.createElement('li');
                        categoryLi.textContent = category.name;
                        categoryLi.onclick = function() { showLinks(category.links); };
                        categories.appendChild(categoryLi);
                        showLinks(category.links);
                    });
                } else {
                    links.innerHTML = '<li>没有找到与之相匹配的结果！</li>';
                }
            });

            setInterval(updateDateTime, 1000);
        })
        .catch(error => {
            console.error('Error fetching data:', error);
            loading.style.display = 'none';
        });

    function updateDateTime() {
        const now = new Date();
        const year = now.getFullYear();
        const month = now.getMonth() + 1;
        const day = now.getDate();
        const hour = now.getHours();
        const minute = now.getMinutes();
        const second = now.getSeconds();
        const weekDay = ['日', '一', '二', '三', '四', '五', '六'][now.getDay()];

        document.getElementById('datetime').textContent = `${year}年${month.toString().padStart(2, '0')}月${day.toString().padStart(2, '0')}日\t${hour.toString().padStart(2, '0')}时${minute.toString().padStart(2, '0')}分${second.toString().padStart(2, '0')}秒\t星期${weekDay}`;
    }
});
