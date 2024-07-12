const url = 'https://testingcf.jsdelivr.net/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/json/links_20240712100545.json';

let data = [];

function updateDateTime() {
    const now = new Date();
    const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric', hour: '2-digit', minute: '2-digit', second: '2-digit' };
    document.getElementById('datetime').textContent = now.toLocaleDateString('zh-CN', options);
}

function fetchData() {
    fetch(url)
        .then(response => response.json())
        .then(jsonData => {
            data = jsonData.categories;
            createTabs();
        });
}

function createTabs() {
    const tabs = document.getElementById('tabs');
    tabs.innerHTML = '';
    data.forEach((category, index) => {
        const tab = document.createElement('div');
        tab.textContent = category.name;
        tab.className = 'tab';
        tab.onclick = () => selectTab(index);
        tabs.appendChild(tab);
    });
    selectTab(0);
}

function selectTab(index) {
    const tabs = document.querySelectorAll('.tab');
    tabs.forEach(tab => tab.classList.remove('active'));
    tabs[index].classList.add('active');
    displayLinks(data[index].links);
}

function displayLinks(links) {
    const table = document.getElementById('linksTable');
    table.innerHTML = '<tr><th>名称</th><th>链接</th></tr>';
    links.forEach(link => {
        const row = table.insertRow();
        const nameCell = row.insertCell(0);
        const urlCell = row.insertCell(1);
        nameCell.textContent = link.name;
        const a = document.createElement('a');
        a.href = link.url;
        a.textContent = link.url;
        a.target = '_blank';
        urlCell.appendChild(a);
    });
}

function searchLinks() {
    const searchBox = document.getElementById('searchBox');
    const searchTerm = searchBox.value.toLowerCase();
    const filteredData = data.flatMap(category => category.links.filter(link => link.name.toLowerCase().includes(searchTerm)));
    displayLinks(filteredData);
}

document.getElementById('searchBox').addEventListener('input', searchLinks);

updateDateTime();
setInterval(updateDateTime, 1000);
fetchData();
