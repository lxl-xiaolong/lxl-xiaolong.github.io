(async function() {
    const server = 'https://www.liuxiaolong2001.com/hitokoto/';
    const target = document.getElementById('hitokoto');
    const loadingIndicator = document.getElementById('loading-indicator'); // 加载指示器元素
    const errorMsg = '加载出现了问题！';
    let retryDelay = 5000; // 初始重试延迟
    const maxRetryDelay = 60000; // 最大重试延迟
    let isRequestPending = false; // 请求状态标识

    target.style.opacity = 0;
    target.style.transition = 'opacity 1s';
    target.style.willChange = 'opacity'; // 提示浏览器该属性将会变化

async function fetchAndDisplay() {
    if (isRequestPending) return; // 如果上一个请求还未完成，则返回
    isRequestPending = true; // 标记请求状态
    loadingIndicator.style.display = 'block'; // 显示加载指示器

    // 添加时间戳以防止缓存
    const noCacheUrl = new URL(server);
    noCacheUrl.searchParams.set('_', new Date().getTime());

    try {
        const response = await fetch(noCacheUrl.toString(), { cache: 'no-cache' });
        if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
        displayContent(await response.text());
        retryDelay = 5000; // 请求成功，重置重试延迟
    } catch (error) {
        console.error('Fetch error:', error);
        displayContent(errorMsg);
        retryDelay = Math.min(retryDelay * 2, maxRetryDelay); // 指数退避，但不超过最大延迟
    } finally {
        isRequestPending = false; // 重置请求状态
        loadingIndicator.style.display = 'none'; // 隐藏加载指示器
        setTimeout(fetchAndDisplay, retryDelay); // 重新调度下一次请求
    }
}

    function displayContent(text) {
        requestAnimationFrame(() => {
            target.style.opacity = 0;
            setTimeout(() => { // 确保淡出动画完成后再更新文本
                target.textContent = text;
                requestAnimationFrame(() => {
                    target.style.opacity = 1;
                });
            }, 1000);
        });
    }

    fetchAndDisplay();
})();
