			// 使用XMLHttpRequest获取JSON文件内容并显示公告
			layui.use([], function() {
				// 创建XMLHttpRequest对象
				var xhr = new XMLHttpRequest();
				// 配置请求类型、URL以及是否异步处理
				xhr.open('GET',
					'https://jsdelivr.pai233.top/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/json/notice.json',
					true);
				// 设置请求完成后的回调函数
				xhr.onload = function() {
					if (xhr.status >= 200 && xhr.status < 300) {
						// 解析JSON数据
						var data = JSON.parse(xhr.responseText);
						// 创建一个字符串来拼接所有的公告内容
						var noticeHtml = '';
						data.forEach(function(item) {
							noticeHtml += '<div>' + item + '</div>';
						});
						// 将公告内容添加到页面中
						document.getElementById('notice-content').innerHTML = noticeHtml;
					} else {
						console.error('An error occurred fetching the JSON data.');
					}
				};
				// 发送请求
				xhr.send();