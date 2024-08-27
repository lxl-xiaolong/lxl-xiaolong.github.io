// 动态加载多个脚本

// 需要加载的脚本文件名数组
			var scriptsToLoad = ['autoload.js', 'getRandomColor.js', 'script_20240827124547.js', 'date.js', 'jia_zhi_guan.js',
				'si_dai.js', 'wang_zhan_yun_xing_shi_jian.js', 'zhi_zhu_wang.js', 'tip_20240825103912.js', 'fixbar.js',
				'notice_20240824190553.js', 'displayHitokoto_20240826203644.js', 'typing.js'
			];

			function loadScript(scriptName) {
				// 创建一个加载单个脚本的函数，返回一个Promise
				return new Promise((resolve, reject) => {
					var script = document.createElement('script');
					script.src = 'https://jsdelivr.pai233.top/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/js/' +
						scriptName;
					script.onload = () => resolve(scriptName + ' loaded');
					script.onerror = () => reject(new Error('Script load error: ' + scriptName));
					document.body.appendChild(script);
				});
			}

			// 动态加载多个脚本的函数，返回一个Promise
			function loadScripts(scripts) {
				return Promise.all(scripts.map(scriptName => loadScript(scriptName)));
			}

			// 当DOM加载完成后，开始加载脚本
			document.addEventListener('DOMContentLoaded', function() {
				// 加载所有脚本
				loadScripts(scriptsToLoad)
					.then(() => console.log('All scripts loaded'))
					.catch(error => console.error(error));
			});