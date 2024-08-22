	// Hitokoto一言
function updateHitokoto() {
    // 尝试使用jQuery请求Hitokoto API
    $.get("https://v1.hitokoto.cn", function(data) {
        displayHitokoto(data);
    }).fail(function() {
        // 如果jQuery请求失败，尝试使用XMLHttpRequest
        var xhr = new XMLHttpRequest();
        xhr.open('GET', "https://v1.hitokoto.cn", true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var data = JSON.parse(xhr.responseText);
                displayHitokoto(data);
            } else if (xhr.readyState === 4 && xhr.status !== 200) {
                // 如果请求失败，尝试请求国际版API
                xhr.open('GET', "https://international.v1.hitokoto.cn", true);
                xhr.send();
            }
        };
        xhr.send();
    });
}

function displayHitokoto(data) {
    var hitokoto = data.hitokoto;
    var from = data.from;
    var from_who = data.from_who;
    var hitokotoString = from_who ? `『${hitokoto}』 ——${from_who}【${from}】` : `『${hitokoto}』 ——【${from}】`;
    document.getElementById('hitokoto_text').innerText = hitokotoString;
}

// 页面加载时立即调用一次updateHitokoto函数
document.addEventListener('DOMContentLoaded', function() {
    updateHitokoto();
    // 设置每15秒调用一次updateHitokoto函数
    setInterval(updateHitokoto, 15000);
});