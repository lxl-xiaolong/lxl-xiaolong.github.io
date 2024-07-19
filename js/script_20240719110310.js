document.addEventListener('DOMContentLoaded', function() {
    const linksDataUrl = 'https://gcore.jsdelivr.net/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/json/links_20240715095033.json';
    const mainContent = document.getElementById('mainContent');
    const searchBox = document.getElementById('searchBox');
    const suggestions = document.getElementById('suggestions');
    const loading = document.getElementById('loading');

    // 显示加载层
    function showLoading() {
        loading.style.display = 'block';
    }

    // 隐藏加载层
    function hideLoading() {
        loading.style.display = 'none';
    }

    // 动态生成页面内容
    function generateContent(data) {
        data.forEach(category => {
            const categoryTitle = document.createElement('h3');
            categoryTitle.textContent = category.name;
            categoryTitle.style.color = getRandomColor();
            mainContent.appendChild(categoryTitle);

            const table = document.createElement('table');
            let row = table.insertRow();
            category.links.forEach((link, index) => {
                if (index % 4 === 0 && index !== 0) {
                    row = table.insertRow();
                }
                const cell = row.insertCell();
                const a = document.createElement('a');
                a.href = link.url;
                a.textContent = link.name;
                a.target = '_blank';
                a.style.textDecoration = 'none';
                a.style.color = 'inherit';
                cell.appendChild(a);
            });
            mainContent.appendChild(table);
        });
    }

    // 获取随机颜色
    function getRandomColor() {
        const letters = '0123456789ABCDEF';
        let color = '#';
        for (let i = 0; i < 6; i++) {
            color += letters[Math.floor(Math.random() * 16)];
        }
        return color;
    }

    // 初始化页面
    function initPage() {
        showLoading();
        fetch(linksDataUrl)
            .then(response => response.json())
            .then(data => {
                generateContent(data);
                hideLoading();
            })
            .catch(error => {
                console.error('Error loading the data:', error);
                hideLoading();
            });
    }

    // 更新时间
    function updateTime() {
        const now = new Date();
        const year = now.getFullYear();
        const month = now.getMonth() + 1;
        const day = now.getDate();
        const hour = now.getHours();
        const minute = now.getMinutes();
        const second = now.getSeconds();
        const weekDay = ['日', '一', '二', '三', '四', '五', '六'][now.getDay()];
        document.getElementById('time').textContent = `${year}年${month.toString().padStart(2, '0')}月${day.toString().padStart(2, '0')}日♛${hour.toString().padStart(2, '0')}时${minute.toString().padStart(2, '0')}分${second.toString().padStart(2, '0')}秒♛星期${weekDay}`;
    }

    // 初始化时间显示
    updateTime();
    setInterval(updateTime, 1000);

    // 初始化页面内容
    initPage();

    // 搜索建议功能
    searchBox.addEventListener('input', function() {
        const input = searchBox.value.toLowerCase();
        if (input.length === 0) {
            suggestions.style.display = 'none';
            return;
        }
        suggestions.innerHTML = '';
        fetch(linksDataUrl)
            .then(response => response.json())
            .then(data => {
                let found = false;
                data.forEach(category => {
                    category.links.forEach(link => {
                        if (link.name.toLowerCase().includes(input)) {
                            found = true;
                            const a = document.createElement('a');
                            a.href = link.url;
                            a.textContent = link.name;
                            a.target = '_blank';
                            a.style.textDecoration = 'none';
                            a.style.color = 'inherit';
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
            .catch(error => {
                console.error('Error loading the data:', error);
            });
    });

    // 点击搜索框外隐藏搜索建议
    document.addEventListener('click', function(event) {
        if (event.target !== searchBox) {
            suggestions.style.display = 'none';
        }
    });

    // hitokoto一言
    fetch('https://v1.hitokoto.cn')
        .then(response => response.json())
        .then(data => {
            const hitokoto = document.querySelector('#hitokoto_text')
            hitokoto.href = `https://hitokoto.cn/?uuid=${data.uuid}`;
            hitokoto.innerText = data.hitokoto;
        })
        .catch(console.error);
});