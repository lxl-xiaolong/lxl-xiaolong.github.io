			// 打赏
			// layui弹出层模块
			layui.use('layer', function() {
				var layer = layui.layer;

				// 绑定按钮点击事件
				document.getElementById('tip').onclick = function() {
					// 弹出层内容
					var content = '<div style="text-align: center;">' +
						'<img src="https://jsdelivr.pai233.top/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/tupian/weixin.png" alt="微信" style="max-width: 48%; display: inline-block;"/>' +
						'<img src="https://jsdelivr.pai233.top/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/tupian/zhifubao.jpg" alt="支付宝" style="max-width: 48%; display: inline-block; margin-left: 4%;"/>' +
						'</div>';

					// 调用layer.open方法
					layer.open({
						type: 1, // 页面层
						title: '打赏（左图微信，右图支付宝）', // 标题
						content: content, // 内容
						area: ['60%', '75%'], // 宽高，高度自动根据内容调整
						closeBtn: 2,
						skin: 'layui-layer-lan',
						shadeClose: true, // 点击遮罩关闭
						move: false
					});
				};
			});