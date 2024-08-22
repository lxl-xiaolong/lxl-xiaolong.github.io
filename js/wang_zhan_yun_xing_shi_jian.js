			// 设置建站时间
			const startTime = new Date("2022-08-09T00:00:00");

			// 更新运行时间的函数
			function updateUptime() {
				const now = new Date();
				const uptime = now - startTime; // 运行时间（毫秒）

				// 将毫秒转换为天、小时、分钟、秒
				const days = Math.floor(uptime / (1000 * 60 * 60 * 24));
				const hours = Math.floor((uptime % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				const minutes = Math.floor((uptime % (1000 * 60 * 60)) / (1000 * 60));
				const seconds = Math.floor((uptime % (1000 * 60)) / 1000);

				// 格式化时间显示，美化输出，添加零前导
				const uptimeString = `网站已运行时间：${pad(days)} 天 ${pad(hours)} 时 ${pad(minutes)} 分 ${pad(seconds)} 秒`;

				// 将运行时间显示在页面上
				document.getElementById("uptime").textContent = uptimeString;
			}

			// 辅助函数，用于添加零前导
			function pad(number) {
				return number.toString().padStart(2, '0');
			}

			// 每秒调用一次updateUptime函数
			setInterval(updateUptime, 1000);