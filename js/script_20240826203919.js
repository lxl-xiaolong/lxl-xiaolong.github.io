var dataModule = (function() {
    var JSONURL = 'https://jsdelivr.pai233.top/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/json/links_20240820184335.json';

    async function getData() {
        try {
            const response = await fetch(JSONURL);
            if (!response.ok) {
                throw new Error(`Data loading failed with status: ${response.status}`);
            }
            return await response.json();
        } catch (error) {
            throw new Error(`Network error: ${error.message}`);
        }
    }

    function searchResources(data, keyword) {
        return data.reduce((results, category) => {
            const matchedLinks = category.links.filter(link =>
                link.name.toLowerCase().includes(keyword.toLowerCase())
            );
            return results.concat(matchedLinks.map(link => ({
                category: category.name,
                name: link.name,
                url: link.url
            })));
        }, []);
    }

    return {
        getJSONData: getData,
        searchResources: searchResources
    };
})();

layui.use(['element', 'layer'], function() {
    var element = layui.element;
    var layer = layui.layer;

    var loading = layer.msg('正在加载中，请稍后...', { icon: 16, shade: [1.0, '#808080'] });

    (async function() {
        try {
            const data = await dataModule.getJSONData();
            layer.close(loading);
            document.getElementById('linksPanel').innerHTML = generatePanels(data);
            element.init();
            layer.msg('数据加载成功！', { icon: 6 });
        } catch (error) {
            layer.close(loading);
            console.error(error.message);
            layer.msg(error.message, { icon: 5 });
        }
    })();

    function generatePanels(data) {
        return data.map(category => `
            <div class="layui-col-md3 layui-col-xs12">
                <div class="layui-collapse" lay-accordion>
                    <div class="layui-colla-item">
                        <h2 class="layui-colla-title" style="font-size: 19px;">${category.name}</h2>
                        <div class="layui-colla-content">${generateLinks(category.links)}</div>
                    </div>
                </div>
            </div>
        `).join('');
    }

    function generateLinks(links) {
        return links.map(link => `<a style="display: block; margin-top: 10px; font-size: 18px;" href="${link.url}" target="_blank" class="link-item">${link.name}</a>`).join('');
    }

    var debounceSearch = debounce(function() {
        layer.open({
            type: 1,
            anim: 4,
            skin: 'layui-layer-lan',
            title: '搜索资源',
            area: 'auto',
            content: '<div style="margin: 20px;"><input type="text" id="searchInput" placeholder="请输入关键词" class="layui-input" /></div>',
            btn: ['提交', '取消'],
            resize: false,
            closeBtn: 2,
            move: false,
            btnAlign: 'c',
            yes: function(index, layero) {
                const keyword = document.getElementById('searchInput').value.trim();
                if (keyword) {
                    searchAndDisplay(keyword, index);
                } else {
                    layer.msg('请输入关键词', { icon: 0 });
                    layer.close(index);
                }
            }
        });
    }, 300);

    document.getElementById('searchBtn').addEventListener('click', debounceSearch);

    async function searchAndDisplay(keyword, index) {
        try {
            const data = await dataModule.getJSONData();
            const searchResults = dataModule.searchResources(data, keyword);
            displaySearchResults(searchResults, index);
        } catch (error) {
            console.error(error.message);
            layer.msg('获取数据失败，请稍后再试！', { icon: 5 });
            layer.close(index);
        }
    }

    function displaySearchResults(results, index) {
        if (results.length === 0) {
            layer.msg('没有找到相关资源，请尝试其他关键词！', { icon: 0 });
            return;
        }
        const html = results.map(result => `
            <div class="search-result-item">
                <a style="padding: 10px; display: block; margin-top: 5px; font-size: 18px;" href="${result.url}" target="_blank" class="search-result-link">${result.name} 【${result.category}】</a>
            </div>
        `).join('');
        layer.open({
            type: 1,
            anim: 1,
            skin: 'layui-layer-molv',
            title: "搜索结果",
            area: ['50%', '50%'],
            content: `<div class="search-results">${html}</div>`,
            resize: false,
            closeBtn: 2,
            move: false,
            shadeClose: true
        });
        layer.close(index);
    }

    function debounce(func, wait) {
        let timeout;
        return function() {
            const context = this, args = arguments;
            clearTimeout(timeout);
            timeout = setTimeout(() => func.apply(context, args), wait);
        };
    }
});
