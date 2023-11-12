//link number
(function() {
  const CONTENT_ID = "content";
  const LINUM_ID = "LiNum";
  const LIS_SELECTOR = "li";

  function updateLiNum() {
    const contentElement = document.getElementById(CONTENT_ID);
    const LiNumElement = document.getElementById(LINUM_ID);

    if (contentElement && LiNumElement) {
      const lis = contentElement.querySelectorAll(LIS_SELECTOR);
      const linum = lis.length;

      // 使用 textContent 替代 innerHTML
      LiNumElement.textContent = `本网页各板块已收录链接总计：${linum}个。`;
    } else {
      console.error(`未找到必要的元素。请确保存在具有ID为${CONTENT_ID}和${LINUM_ID}的元素。`);
    }
  }

  // 调用函数
  updateLiNum();
})();
