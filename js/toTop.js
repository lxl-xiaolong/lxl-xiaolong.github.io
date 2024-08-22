	// 回到顶部
    var toTop = document.querySelector("#toTop");    
    toTop.style.display = "none";// 一开始div隐藏  
    window.addEventListener("scroll", scrollHandler);// 然后给window加事件监听，滚动条大于某个值时，div出现
    function scrollHandler(e) {        
        var distanceY = document.documentElement.scrollTop || document.body.scrollTop;//兼容写法，获取当前页面y轴的滚动距离
        if (distanceY > 50) {
            toTop.style.display = "block";
        } else {
            toTop.style.display = "none";
        }
    }
    // 然后给div添加点击事件，用计时器interval来循环，步长为5，scrollTop依次减5，时间每50ms循环一次，直到scrollTop为0清除计时器
    toTop.addEventListener("click", clickHandler);
    function clickHandler(e) {
        let timer = setInterval(function () {
            var distanceY = document.documentElement.scrollTop || document.body.scrollTop;//兼容
            if (distanceY == 0){
                clearInterval(timer);
                return;
            } 
            var speed = Math.ceil(distanceY/16);//speed这个值从高变低，那么scrollTop就减得从快到慢，上回到顶部的速度就先快后慢
            document.documentElement.scrollTop=distanceY-speed;
            // document.documentElement.scrollTop=distanceY-5;//如果给速度一个确定的值，那回到顶部的就匀速
        }, 16);
    }