			// 打赏
			// layui弹出层模块
			layui.use('layer', function() {
				var layer = layui.layer;

				// 绑定按钮点击事件
				document.getElementById('tip').onclick = function() {
					// 弹出层内容
					var content = '<div style="padding: 20px;">' +
                                                                                                '<p style="text-align: center; margin-bottom: 10px;">感谢您的支持，我会继续努力的！</p>' +
						'<img src="https://jsdelivr.pai233.top/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/tupian/weixin.png" alt="微信" style="width: 200px; height: 200px; display: inline-block;"/>' +
						'<img src="https://jsdelivr.pai233.top/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/tupian/zhifubao.jpg" alt="支付宝" style="width: 200px; height: 200px; display: inline-block; margin-left: 20px;"/>' +
                                                                                                '<p style="text-align: center; margin-top: 10px;">左图微信，右图支付宝</p>' +
						'</div>';

					// 调用layer.open方法
					layer.open({
						type: 1, // 页面层
						title: '☕ 给Ta打赏一杯奶茶', // 标题
						content: content, // 内容
						area: ['480px', '350px'], // 宽高，高度自动根据内容调整
						closeBtn: 2,
						skin: 'layui-layer-lan',
						shadeClose: true, // 点击遮罩关闭
						move: false
					});
				};
			});