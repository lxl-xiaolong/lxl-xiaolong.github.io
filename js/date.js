	// 时间，日期，星期
			function updateTime() {
				const now = new Date();
				const year = now.getFullYear();
				const month = now.getMonth() + 1;
				const day = now.getDate();
				const hour = now.getHours();
				const minute = now.getMinutes();
				const second = now.getSeconds();
				const week = ['日', '一', '二', '三', '四', '五', '六'][now.getDay()];
				$('#timeDateWeek').text(
					`${year}年${month.toString().padStart(2, '0')}月${day.toString().padStart(2, '0')}日🔶${hour.toString().padStart(2, '0')}时${minute.toString().padStart(2, '0')}分${second.toString().padStart(2, '0')}秒🔶星期${week}`
				);
			}

			// 每秒更新时间
			setInterval(updateTime, 1000);

			// 初始时也更新一次时间
			updateTime();