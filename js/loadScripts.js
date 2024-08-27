// 动态加载多个脚本
			function loadScript(scriptName) {
				// 创建一个加载单个脚本的函数，返回一个Promise
				return new Promise((resolve, reject) => {
					var script = document.createElement('script');
					script.src = scriptSrc +
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