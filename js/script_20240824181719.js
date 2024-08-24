    // 创建一个模块用于处理JSON数据的请求
    var dataModule = (function() {
        var JSONURL = 'https://jsdelivr.pai233.top/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/json/links_20240820184335.json';

        // 封装请求JSON数据的方法，返回一个Promise
        function getData() {
            return new Promise((resolve, reject) => {
                var xhr = new XMLHttpRequest();
                xhr.open('GET', JSONURL, true);
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4) {
                        if (xhr.status === 200) {
                            try {
                                var data = JSON.parse(xhr.responseText);
                                resolve(data); // 请求成功，解析数据后resolve
                            } catch (e) {
                                reject(new Error('JSON parsing error')); // 解析错误，reject
                            }
                        } else {
                            reject(new Error('Data loading failed')); // 请求失败，reject
                        }
                    }
                };
                xhr.onerror = function() {
                    reject(new Error('Network error')); // 网络错误，reject
                };
                xhr.send();
            });
        }

        // 搜索资源的方法
        function searchResources(data, keyword) {
            return data.reduce((results, category) => {
                const matchedLinks = category.links.filter(link => link.name.toLowerCase().includes(keyword.toLowerCase()));
                return results.concat(matchedLinks.map(link => ({
                    category: category.name,
                    name: link.name,
                    url: link.url
                })));
            }, []);
        }

        return {
            getJSONData: getData, // 暴露获取数据的接口
            searchResources: searchResources // 暴露搜索资源的接口
        };
    })();

    layui.use(['element', 'layer', 'util'], function() {
        var element = layui.element;
        var layer = layui.layer;
        var util = layui.util;

        // 加载层
        var loading = layer.msg('正在加载中，请稍后...', {
            icon: 16,
            shade: [0.3, '#808080']
        });

        // 使用封装的模块请求JSON数据
        dataModule.getJSONData().then(data => {
            layer.close(loading); // 关闭加载层
            generatePanels(data);
            layer.msg('数据加载成功！', {
                icon: 6
            });
        }).catch(error => {
            layer.close(loading); // 关闭加载层
            console.error(error.message);
            layer.msg(error.message, {
                icon: 5
            });
        });

        // 生成折叠面板
        function generatePanels(data) {
            var html = '';
            var rows = Math.ceil(data.length / 4); // 计算需要的行数
            for (var i = 0; i < rows; i++) {
                html += '<div class="layui-row">';
                for (var j = 0; j < 4; j++) {
                    var index = i * 4 + j;
                    if (index < data.length) {
                        html += generatePanel(data[index]);
                    }
                }
                html += '</div>';
            }
            document.getElementById('linksPanel').innerHTML = html;
            element.init(); // 初始化折叠面板
        }

        // 生成单个折叠面板
        function generatePanel(category) {
            var panelHtml = '';
            panelHtml += '<div class="layui-col-md3 layui-col-xs12">';
            panelHtml += '<div class="layui-collapse" lay-accordion="">'; // 添加 lay-accordion 属性以启用动画
            panelHtml += '<div class="layui-colla-item">';
            panelHtml += '<h2 class="layui-colla-title">' + category.name + '</h2>';
            panelHtml += '<div class="layui-colla-content">'; // 默认折叠
            category.links.forEach(function(link) {
                panelHtml += '<a href="' + link.url + '" target="_blank">' + link.name + '</a><br>';
            });
            panelHtml += '</div>';
            panelHtml += '</div>';
            panelHtml += '</div>';
            panelHtml += '</div>';
            return panelHtml;
        }

        // 返回顶部
        util.fixbar({
            top: true,
            css: {
                right: 15,
                bottom: 35
            },
            bgcolor: '#16889aa',
            click: function(type) {
                // 可以根据需要添加点击事件
            }
        });

        // 搜索功能的实现
        document.getElementById('searchBtn').addEventListener('click', function() {
            layer.open({
                type: 1,
                anim: 4,
                skin: 'layui-layer-lan',
                title: '搜索资源',
                area: 'auto', // 宽高均为自动调整
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
                        layer.msg('请输入关键词', {
                            icon: 0
                        });
                    }
                }
            });
        });

        // 搜索并显示结果的方法
        function searchAndDisplay(keyword, index) {
            dataModule.getJSONData().then(data => {
                const searchResults = dataModule.searchResources(data, keyword);
                displaySearchResults(searchResults);
                layer.close(index);
            }).catch(error => {
                console.error(error.message);
                layer.msg('获取数据失败，请稍后再试！', {
                    icon: 5
                });
            });
        }

        // 显示搜索结果的函数
        function displaySearchResults(results) {
            if (results.length > 0) {
                const html = results.map(result => `
                    <div class="search-result-item">
                        <a style="display: block; margin-top: 5px; padding: 10px;" href="${result.url}" target="_blank">${result.name}</a>
                    </div>
                `).join('');
                layer.open({
                    type: 1,
                    anim: 1,
                    skin: 'layui-layer-molv',
                    title: "搜索结果",
                    area: ['auto', '50%'], // 宽度自动，高度固定
                    content: `<div class="search-results">${html}</div>`,
                    resize: false,
                    closeBtn: 2,
                    move: false,
                    shadeClose: true
                });
            } else {
                layer.msg('没有找到相关资源，请尝试其他关键词！', {
                    icon: 0
                });
            }
        }
    });
