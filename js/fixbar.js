// 固定条
			layui.use(function() {
				var util = layui.util;
				util.fixbar({
					// 自定义固定条
					bars: [{
						type: '去顶部',
						icon: 'layui-icon-up'
					}, {
						type: '帮助',
						icon: 'layui-icon-help'
					}, {
						type: '刷新页面',
						icon: 'layui-icon-refresh-3'
					}, {
						type: '去底部',
						icon: 'layui-icon-down'
					}],
					default: false, // 是否显示默认的 bar 列表 --  v2.8.0 新增
					css: {
						right: 16,
						bottom: 16
					},
					bgcolor: '#393D52', // bar 的默认背景色
					on: {
						// 任意事件 --  v2.8.0 新增
						mouseenter: function(type) {
							layer.tips(type, this, {
								tips: 4,
								fixed: true
							});
						},
						mouseleave: function(type) {
							layer.closeAll('tips');
						}
					},
					// 点击事件
					click: function(type) {
						if (type === '去顶部') {
							document.body.scrollTop = document.documentElement.scrollTop = 0;
						} else if (type === '帮助') {
							window.open('http://wpa.qq.com/msgrd?v=3&uin=2539223617&site=qq&menu=yes');
						} else if (type === '刷新页面') {
							window.location.reload(true);
						} else if (type === '去底部') {
							window.scroll(0, document.documentElement.scrollHeight - window.innerHeight);
						} else {
							console.log(this, type);
							// layer.msg(type);
						}
					}
				});
			});