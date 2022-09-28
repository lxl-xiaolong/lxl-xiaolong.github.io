
        //禁止嵌套
        if (window.top != window.self) {
            top.location.href = "https://lxl-xiaolong.gitee.io/";
        }
        //禁止ctrl+s保存
        window.addEventListener("keydown", function (e) {
            if (e.keyCode == 83 && (navigator.platform.match("Mac") ? e.metaKey : e.ctrlKey)) {
                e.preventDefault();
            }
        }, false);
 
        //禁止F12键盘
        window.onkeydown = window.onkeyup = window.onkeypress = function (event) {
            if (event.keyCode == 123) {
                event.preventDefault();
                window.event.returnValue = false;
            }
        }
 
        //禁用backspace键
        document.onkeydown = function (e) {
 
            var e = e || window.event;
 
            var key = e.keyCode || e.which;
 
            var srcEle = e.srcElement ? e.srcElement : e.target;
 
            //禁用   Alt+   方向键   →和禁用   Alt+   方向键   ←
            if ((e.altKey) && ((key == 37) || (key == 39))) {
                if (e.preventDefault) {
                    e.preventDefault();
                } else {
                    event.keyCode = 0;
                    e.returnValue = false;
                }
            }
 
            //禁用退格删除键   ，   F5   刷新键，Ctrl   +   R
            if ((key == 116) || (e.ctrlKey && key == 82)) {
                if (e.preventDefault) {
                    e.preventDefault();
                } else {
                    event.keyCode = 0;
                    e.returnValue = false;
                }
            }
 
            //禁用   Ctrl+n
            if ((e.ctrlKey) && (key == 78)) {
                if (e.preventDefault) {
                    e.preventDefault();
                } else {
                    event.keyCode = 0;
                    e.returnValue = false;
                }
            }
            //禁用   shift
            if (e.shiftKey) {
                if (e.preventDefault) {
                    e.preventDefault();
                } else {
                    event.keyCode = 0;
                    e.returnValue = false;
                }
            }
            //禁用：ctrl
            if (e.ctrlKey) {
                if (e.preventDefault) {
                    e.preventDefault();
                } else {
                    event.keyCode = 0;
                    e.returnValue = false;
                }
            }
 
            //禁用   shift+F10
            if ((e.shiftKey) && (key == 121)) {
                if (e.preventDefault) {
                    e.preventDefault();
                } else {
                    event.keyCode = 0;
                    e.returnValue = false;
                }
            }
            //禁用：ctrl+F10
            if ((e.ctrlKey) && (key == 121)) {
                if (e.preventDefault) {
                    e.preventDefault();
                } else {
                    event.keyCode = 0;
                    e.returnValue = false;
                }
            }
 
            //禁用   shift   加鼠标左键新开一网页
            if (srcEle.tagName == "A" && e.shiftKey) {
                if (e.preventDefault) {
                    e.preventDefault();
                } else {
                    event.keyCode = 0;
                    e.returnValue = false;
                }
            }
 
            //禁用Alt+F4
            if ((e.altKey) && (key == 115)) {
                window.showModelessDialog("about:blank ", " ", "dialogWidth:1px;dialogheight:1px ");
                return false;
            }
 
            //如果是退格键且不是文本框的，则禁用退格的效果
            if (key == 8 && srcEle.tagName != 'INPUT' && srcEle.tagName != 'BUTTON') {
                if (e.preventDefault) {
                    e.preventDefault();
                } else {
                    event.keyCode = 0;
                    e.returnValue = false;
                }
            } else {
                if (key == 8 && srcEle.tagName == 'INPUT') {
                    var ele = $(srcEle);
                    if (ele.attr('type') == 'button' || ele.attr('type') == 'submit' || ele.attr('readonly') || ele.attr('disabled')) {
                        if (e.preventDefault) {
                            e.preventDefault();
                        } else {
                            event.keyCode = 0;
                            e.returnValue = false;
                        }
                        return false;
                    }
                }
            }
            //Enter键 转换成 Tab键的效果
            if (key == 13) {
                e.keyCode = 9;
            }
        }
