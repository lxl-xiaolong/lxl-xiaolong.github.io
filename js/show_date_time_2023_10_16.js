        // 获取网站创建日期  
        function getSiteCreationDate() {  
            const siteCreationDate = new Date('2022-01-01');  
            return siteCreationDate;  
        }

        // 计算网站运行时间  
        function calculateRunTime() {  
            const siteCreationDate = getSiteCreationDate();  
            const now = new Date();  
            const timeDiff = now - siteCreationDate;

            // 计算天数、小时、分钟和秒  
            const days = Math.floor(timeDiff / (1000 * 60 * 60 * 24));  
            const hours = Math.floor((timeDiff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));  
            const minutes = Math.floor((timeDiff % (1000 * 60 * 60)) / (1000 * 60));  
            const seconds = Math.floor((timeDiff % (1000 * 60)) / 1000);

            // 格式化输出运行时间  
            const runTime = `${days.toString().padStart(2, '0')}:${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;  
            document.getElementById('runTime').innerText = runTime;  
        }

        // 调用计算函数  
        calculateRunTime();
