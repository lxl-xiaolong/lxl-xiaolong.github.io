function getDate(){window.setTimeout(function(){window.requestAnimationFrame(getDate)},500);var e=new Date,t=e.getFullYear(),n=e.getMonth()+1,a=e.getDay(),o=e.getDate(),i=e.getHours(),g=e.getMinutes(),r=e.getSeconds();10>n&&(n="0"+n),10>o&&(o="0"+o),10>i&&(i="0"+i),10>g&&(g="0"+g),10>r&&(r="0"+r);var u=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六"),w=document.getElementById("Main"),d=""+t+" 年 "+n+" 月 "+o+" 日  | "+u[a]+" |  "+i+" 时 "+g+" 分 "+r+" 秒 ";w.innerHTML=d}window.onload=function(){window.requestAnimationFrame(getDate)};