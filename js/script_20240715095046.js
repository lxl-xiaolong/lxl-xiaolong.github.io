document.addEventListener('DOMContentLoaded', function() {
    const loading = document.getElementById('loading');
    const datetime = document.getElementById('datetime');
    const searchBox = document.getElementById('searchBox');
    const suggestions = document.getElementById('suggestions');
    const categories = document.getElementById('categories');
    const links = document.getElementById('links');

    // Show loading animation
    function showLoading() {
        loading.style.display = 'block';
    }

    // Hide loading animation
    function hideLoading() {
        loading.style.display = 'none';
    }

    // Update datetime
    function updateDateTime() {
        const now = new Date();
        const year = now.getFullYear();
        const month = now.getMonth() + 1;
        const day = now.getDate();
        const weekDays = ['日', '一', '二', '三', '四', '五', '六'];
        const weekDay = weekDays[now.getDay()];
        const hours = now.getHours().toString().padStart(2, '0');
        const minutes = now.getMinutes().toString().padStart(2, '0');
        const seconds = now.getSeconds().toString().padStart(2, '0');
        datetime.textContent = `${year}年${month}月${day}日♛${hours}时${minutes}分${seconds}秒♛星期${weekDay}`;
    }

    setInterval(updateDateTime, 1000);

    // Fetch and display categories
    function fetchCategories() {
        showLoading();
        fetch('https://gcore.jsdelivr.net/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/json/links_20240715095033.json')
            .then(response => response.json())
            .then(data => {
                data.forEach(category => {
                    const li = document.createElement('li');
                    li.textContent = category.name;
                    li.onclick = () => displayLinks(category.links);
                    categories.appendChild(li);
                });
                displayLinks(data[0].links); // Display links for the first category
            })
            .catch(error => console.error('Error fetching categories:', error))
            .finally(() => hideLoading());
    }

    // Display links for a category
    function displayLinks(linksData) {
        links.innerHTML = '';
        linksData.forEach(link => {
            const a = document.createElement('a');
            a.href = link.url;
            a.textContent = link.name;
            a.target = '_blank';
            a.style.textDecoration = 'none';
            const li = document.createElement('li');
            li.appendChild(a);
            links.appendChild(li);
        });
    }

    // Search functionality
    function searchLinks(query) {
        if (!query) {
            suggestions.style.display = 'none';
            return;
        }
        suggestions.innerHTML = '';
        fetch('https://gcore.jsdelivr.net/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/json/links_20240715095033.json')
            .then(response => response.json())
            .then(data => {
                let found = false;
                data.forEach(category => {
                    category.links.forEach(link => {
                        if (link.name.toLowerCase().includes(query.toLowerCase())) {
                            found = true;
                            const a = document.createElement('a');
                            a.href = link.url;
                            a.textContent = link.name;
                            a.target = '_blank';
                            a.style.textDecoration = 'none';
                            const li = document.createElement('li');
                            li.appendChild(a);
                            suggestions.appendChild(li);
                        }
                    });
                });
                if (!found) {
                    const li = document.createElement('li');
                    li.textContent = '没有找到与之相匹配的结果！';
                    suggestions.appendChild(li);
                }
                suggestions.style.display = 'block';
            })
            .catch(error => console.error('Error searching links:', error));
    }

    searchBox.oninput = function() {
        searchLinks(this.value);
    };

    searchBox.onblur = function() {
        setTimeout(() => suggestions.style.display = 'none', 200);
    };

    // Initialize
    fetchCategories();
    updateDateTime();
    hideLoading();
});