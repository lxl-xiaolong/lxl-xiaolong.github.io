	// 价值观显示
function applyRandomColors() {
				var values = document.getElementsByClassName('social-value');
				for (var i = 0; i < values.length; i++) {
					values[i].style.color = getRandomColor();
				}
			}	
// 设置定时器，每秒更新颜色
			setInterval(applyRandomColors, 1000);