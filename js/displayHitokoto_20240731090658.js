function updateHitokoto() {
    // 尝试使用jQuery请求Hitokoto API
    $.get("https://v1.hitokoto.cn", function(data) {
        displayHitokoto(data);
    }).fail(function() {
        // 如果jQuery请求失败，尝试使用XMLHttpRequest
        var xhr = new XMLHttpRequest();
        xhr.open('GET', "https://v1.hitokoto.cn", true);
        xhr.onload = function() {
            if (this.status >= 200 && this.status < 300) {
                var data = JSON.parse(this.responseText);
                displayHitokoto(data);
            } else {
                // 如果请求失败，尝试请求国际版API
                xhr.open('GET', "https://international.v1.hitokoto.cn", true);
                xhr.onload = function() {
                    if (this.status >= 200 && this.status < 300) {
                        var data = JSON.parse(this.responseText);
                        displayHitokoto(data);
                    } else {
                        // 最终请求失败，显示错误信息
                        document.getElementById('hitokoto_text').textContent = '加载失败，请稍后再试。';
                    }
                };
                xhr.onerror = function() {
                    document.getElementById('hitokoto_text').textContent = '加载失败，请稍后再试。';
                };
                xhr.send();
            }
        };
        xhr.onerror = function() {
            document.getElementById('hitokoto_text').textContent = '加载失败，请稍后再试。';
        };
        xhr.send();
    });
}

function displayHitokoto(data) {
    var hitokoto = data.hitokoto;
    var from = data.from;
    var fromWho = data.from_who ? data.from_who : '';
    var formattedHitokoto = `『${hitokoto}』${fromWho ? ' ——' + fromWho : ''}【${from}】`;
    document.getElementById('hitokoto_text').textContent = formattedHitokoto;
}

// 页面加载时立即调用一次updateHitokoto函数
document.addEventListener('DOMContentLoaded', function() {
    updateHitokoto();
    // 设置每15秒调用一次updateHitokoto函数
    setInterval(updateHitokoto, 15000);
});
