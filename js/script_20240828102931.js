//看板娘
// live2d_path 参数建议使用绝对路径
const live2d_path = "https://jsdelivr.pai233.top/gh/stevenjoezhang/live2d-widget@latest/";
//const live2d_path = "/live2d-widget/";
// 封装异步加载资源的方法
function loadExternalResource(url, type) {
	return new Promise((resolve, reject) => {
		let tag;
		if(type === "css") {
			tag = document.createElement("link");
			tag.rel = "stylesheet";
			tag.href = url;
		} else if(type === "js") {
			tag = document.createElement("script");
			tag.src = url;
		}
		if(tag) {
			tag.onload = () => resolve(url);
			tag.onerror = () => reject(url);
			document.head.appendChild(tag);
		}
	});
}
// 加载 waifu.css live2d.min.js waifu-tips.js
if(screen.width >= 768) {
	Promise.all([
		loadExternalResource(live2d_path + "waifu.css", "css"),
		loadExternalResource(live2d_path + "live2d.min.js", "js"),
		loadExternalResource(live2d_path + "waifu-tips.js", "js")
	]).then(() => {
		// 配置选项的具体用法见 README.md
		initWidget({
			waifuPath: live2d_path + "waifu-tips.json",
			//apiPath: "https://live2d.fghrsh.net/api/",
			cdnPath: "https://jsdelivr.pai233.top/gh/fghrsh/live2d_api/",
			tools: ["hitokoto", "asteroids", "switch-model", "switch-texture", "photo", "info", "quit"]
		});
	});
}
console.log(`
  く__,.ヘヽ.        /  ,ー､ 〉
           ＼ ', !-─‐-i  /  /´
           ／｀ｰ'       L/／｀ヽ､
         /   ／,   /|   ,   ,       ',
       ｲ   / /-‐/  ｉ  L_ ﾊ ヽ!   i
        ﾚ ﾍ 7ｲ｀ﾄ   ﾚ'ｧ-ﾄ､!ハ|   |
          !,/7 '0'     ´0iソ|    |
          |.从"    _     ,,,, / |./    |
          ﾚ'| i＞.､,,__  _,.イ /   .i   |
            ﾚ'| | / k_７_/ﾚ'ヽ,  ﾊ.  |
              | |/i 〈|/   i  ,.ﾍ |  i  |
             .|/ /  ｉ：    ﾍ!    ＼  |
              kヽ>､ﾊ    _,.ﾍ､    /､!
              !'〈//｀Ｔ´', ＼ ｀'7'ｰr'
              ﾚ'ヽL__|___i,___,ンﾚ|ノ
                  ﾄ-,/  |___./
                  'ｰ'    !_,.:
`);
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
	$('#timeDateWeek').text(`${year}年${month.toString().padStart(2, '0')}月${day.toString().padStart(2, '0')}日🔶${hour.toString().padStart(2, '0')}时${minute.toString().padStart(2, '0')}分${second.toString().padStart(2, '0')}秒🔶星期${week}`);
}
// 每秒更新时间
setInterval(updateTime, 1000);
// 初始时也更新一次时间
updateTime();
// 固定条
layui.use(function() {
	var util = layui.util;
	util.fixbar({
		// 自定义固定条
		bars: [{
			type: '去顶部',
			icon: 'layui-icon-up'
		}, {
			type: '帮助',
			icon: 'layui-icon-help'
		}, {
			type: '刷新页面',
			icon: 'layui-icon-refresh-3'
		}, {
			type: '去底部',
			icon: 'layui-icon-down'
		}],
		default: false, // 是否显示默认的 bar 列表 --  v2.8.0 新增
		css: {
			right: 16,
			bottom: 16
		},
		bgcolor: '#393D52', // bar 的默认背景色
		on: {
			// 任意事件 --  v2.8.0 新增
			mouseenter: function(type) {
				layer.tips(type, this, {
					tips: 4,
					fixed: true
				});
			},
			mouseleave: function(type) {
				layer.closeAll('tips');
			}
		},
		// 点击事件
		click: function(type) {
			if(type === '去顶部') {
				document.body.scrollTop = document.documentElement.scrollTop = 0;
			} else if(type === '帮助') {
				window.open('http://wpa.qq.com/msgrd?v=3&uin=2539223617&site=qq&menu=yes');
			} else if(type === '刷新页面') {
				window.location.reload(true);
			} else if(type === '去底部') {
				window.scroll(0, document.documentElement.scrollHeight - window.innerHeight);
			} else {
				console.log(this, type);
				// layer.msg(type);
			}
		}
	});
});
//随机颜色
function getRandomColor() {
	var letters = '0123456789ABCDEF';
	var color = '#';
	for(var i = 0; i < 6; i++) {
		color += letters[Math.floor(Math.random() * 16)];
	}
	return color;
}
// 价值观显示
function applyRandomColors() {
	var values = document.getElementsByClassName('social-value');
	for(var i = 0; i < values.length; i++) {
		values[i].style.color = getRandomColor();
	}
}
// 设置定时器，每秒更新颜色
setInterval(applyRandomColors, 1000);
// 使用XMLHttpRequest获取JSON文件内容并显示公告
layui.use([], function() {
	// 创建XMLHttpRequest对象
	var xhr = new XMLHttpRequest();
	// 配置请求类型、URL以及是否异步处理
	xhr.open('GET', 'https://jsdelivr.pai233.top/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/json/notice.json', true);
	// 设置请求完成后的回调函数
	xhr.onload = function() {
		if(xhr.status >= 200 && xhr.status < 300) {
			// 解析JSON数据
			var data = JSON.parse(xhr.responseText);
			// 创建一个字符串来拼接所有的公告内容
			var noticeHtml = '';
			data.forEach(function(item) {
				noticeHtml += '<div>' + item + '</div>';
			});
			// 将公告内容添加到页面中
			document.getElementById('notice-content').innerHTML = noticeHtml;
		} else {
			console.error('An error occurred fetching the JSON data.');
		}
	};
	// 发送请求
	xhr.send();
});
//生成动态HTML页面
var dataModule = (function() {
	// 远程JSON文件URL
	var JSONURL = 'https://jsdelivr.pai233.top/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/json/links_20240827121949.json';
	async function getData() {
		try {
			const response = await fetch(JSONURL);
			if(!response.ok) {
				throw new Error(`Data loading failed with status: ${response.status}`);
			}
			return await response.json();
		} catch(error) {
			throw new Error(`Network error: ${error.message}`);
		}
	}

	function searchResources(data, keyword) {
		return data.reduce((results, category) => {
			const matchedLinks = category.links.filter(link => link.name.toLowerCase().includes(keyword.toLowerCase()));
			return results.concat(matchedLinks.map(link => ({
				category: category.name,
				name: link.name,
				url: link.url
			})));
		}, []);
	}
	return {
		getJSONData: getData,
		searchResources: searchResources
	};
})();
layui.use(['element', 'layer'], function() {
	var element = layui.element;
	var layer = layui.layer;
	var loading = layer.msg('正在加载中，请稍后...', {
		icon: 16,
		shade: [1.0, '#808080']
	});
	(async function() {
		try {
			const data = await dataModule.getJSONData();
			layer.close(loading);
			document.getElementById('linksPanel').innerHTML = generateCardPanels(data);
			element.init();
			layer.msg('数据加载成功！', {
				icon: 6
			});
		} catch(error) {
			layer.close(loading);
			console.error(error.message);
			layer.msg(error.message, {
				icon: 5
			});
		}
	})();

	function generateCardPanels(data) {
		return data.map(category => {
			// 使用已有的getRandomColor()方法来获取随机颜色
			var color = getRandomColor();
			return `
                <div class="layui-col-md3 layui-col-xs12">
                    <div class="layui-card" style="margin-bottom: 40px;">
                        <div class="layui-card-header layui-font-16" style="color: ${color}; background-color: #F1FAFA;">${category.name}</div>
                        <div class="layui-card-body layui-font-14">${generateLinks(category.links)}</div>
                    </div>
                </div>
            `;
		}).join('');
	}

	function generateLinks(links) {
		return links.map(link => `<a style="display: block; margin-top: 10px;" href="${link.url}" target="_blank" class="link-item">${link.name}</a>`).join('');
	}
	var debounceSearch = debounce(function() {
		layer.open({
			type: 1,
			anim: 4,
			skin: 'layui-layer-lan',
			title: '搜索资源',
			area: ['50%', 'auto'],
			content: '<div style="margin: 20px;"><input type="text" id="searchInput" placeholder="请输入关键词" class="layui-input" /></div>',
			btn: ['提交', '取消'],
			resize: false,
			closeBtn: 2,
			move: false,
			yes: function(index, layero) {
				const keyword = document.getElementById('searchInput').value.trim();
				if(keyword) {
					searchAndDisplay(keyword, index);
				} else {
					layer.msg('请输入关键词', {
						icon: 0
					});
					layer.close(index);
				}
			}
		});
	}, 300);
	document.getElementById('searchBtn').addEventListener('click', debounceSearch);
	async function searchAndDisplay(keyword, index) {
		try {
			const data = await dataModule.getJSONData();
			const searchResults = dataModule.searchResources(data, keyword);
			displaySearchResults(searchResults, index);
		} catch(error) {
			console.error(error.message);
			layer.msg('获取数据失败，请稍后再试！', {
				icon: 5
			});
			layer.close(index);
		}
	}

	function displaySearchResults(results, index) {
		if(results.length === 0) {
			layer.msg('没有找到相关资源，请尝试其他关键词！', {
				icon: 0
			});
			return;
		}
		const html = results.map(result => `
            <div class="search-result-item">
                <a style="padding: 10px; display: block; margin-top: 5px; font-size: 18px;" href="${result.url}" target="_blank" class="search-result-link">${result.name} 【${result.category}】</a>
            </div>
        `).join('');
		layer.open({
			type: 1,
			anim: 1,
			skin: 'layui-layer-molv',
			title: "搜索结果",
			area: ['50%', '50%'],
			content: `<div class="search-results">${html}</div>`,
			resize: false,
			closeBtn: 2,
			move: false,
			shadeClose: true
		});
		layer.close(index);
	}

	function debounce(func, wait) {
		let timeout;
		return function() {
			const context = this,
				args = arguments;
			clearTimeout(timeout);
			timeout = setTimeout(() => func.apply(context, args), wait);
		};
	}
});
// 动态彩带背景
/**
 * Ribbons Class File.
 * Creates low-poly ribbons background effect inside a target container.
 */
(function(name, factory) {
	if(typeof window === "object") {
		window[name] = factory();
	}
})("Ribbons", function() {
	var _w = window,
		_b = document.body, //返回html dom中的body节点 即<body>
		_d = document.documentElement; //返回html dom中的root 节点 即<html>
	// random helper
	var random = function() {
		if(arguments.length === 1) // only 1 argument
		{
			if(Array.isArray(arguments[0])) // extract index from array
			{
				var index = Math.round(random(0, arguments[0].length - 1));
				return arguments[0][index];
			}
			return random(0, arguments[0]); // assume numeric
		} else
		if(arguments.length === 2) // two arguments range
		{
			return Math.random() * (arguments[1] - arguments[0]) + arguments[0];
		}
		return 0; // default
	};
	// screen helper
	var screenInfo = function(e) {
		var width = Math.max(0, _w.innerWidth || _d.clientWidth || _b.clientWidth || 0),
			height = Math.max(0, _w.innerHeight || _d.clientHeight || _b.clientHeight || 0),
			scrollx = Math.max(0, _w.pageXOffset || _d.scrollLeft || _b.scrollLeft || 0) - (_d.clientLeft || 0),
			scrolly = Math.max(0, _w.pageYOffset || _d.scrollTop || _b.scrollTop || 0) - (_d.clientTop || 0);
		return {
			width: width,
			height: height,
			ratio: width / height,
			centerx: width / 2,
			centery: height / 2,
			scrollx: scrollx,
			scrolly: scrolly
		};
	};
	// mouse/input helper
	var mouseInfo = function(e) {
		var screen = screenInfo(e),
			mousex = e ? Math.max(0, e.pageX || e.clientX || 0) : 0,
			mousey = e ? Math.max(0, e.pageY || e.clientY || 0) : 0;
		return {
			mousex: mousex,
			mousey: mousey,
			centerx: mousex - screen.width / 2,
			centery: mousey - screen.height / 2
		};
	};
	// point object
	var Point = function(x, y) {
		this.x = 0;
		this.y = 0;
		this.set(x, y);
	};
	Point.prototype = {
		constructor: Point,
		set: function(x, y) {
			this.x = x || 0;
			this.y = y || 0;
		},
		copy: function(point) {
			this.x = point.x || 0;
			this.y = point.y || 0;
			return this;
		},
		multiply: function(x, y) {
			this.x *= x || 1;
			this.y *= y || 1;
			return this;
		},
		divide: function(x, y) {
			this.x /= x || 1;
			this.y /= y || 1;
			return this;
		},
		add: function(x, y) {
			this.x += x || 0;
			this.y += y || 0;
			return this;
		},
		subtract: function(x, y) {
			this.x -= x || 0;
			this.y -= y || 0;
			return this;
		},
		clampX: function(min, max) {
			this.x = Math.max(min, Math.min(this.x, max));
			return this;
		},
		clampY: function(min, max) {
			this.y = Math.max(min, Math.min(this.y, max));
			return this;
		},
		flipX: function() {
			this.x *= -1;
			return this;
		},
		flipY: function() {
			this.y *= -1;
			return this;
		}
	};
	// class constructor
	var Factory = function(options) {
		this._canvas = null;
		this._context = null;
		this._sto = null;
		this._width = 0;
		this._height = 0;
		this._scroll = 0;
		this._ribbons = [];
		this._options = {
			// ribbon color HSL saturation amount
			colorSaturation: "80%",
			// ribbon color HSL brightness amount
			colorBrightness: "60%",
			// ribbon color opacity amount
			colorAlpha: 0.65,
			// how fast to cycle through colors in the HSL color space
			colorCycleSpeed: 6,
			// where to start from on the Y axis on each side (top|min, middle|center, bottom|max, random)
			verticalPosition: "center",
			// how fast to get to the other side of the screen
			horizontalSpeed: 200,
			// how many ribbons to keep on screen at any given time
			ribbonCount: 3,
			// add stroke along with ribbon fill colors
			strokeSize: 0,
			// move ribbons vertically by a factor on page scroll
			parallaxAmount: -0.5,
			// add animation effect to each ribbon section over time
			animateSections: true
		};
		this._onDraw = this._onDraw.bind(this);
		this._onResize = this._onResize.bind(this);
		this._onScroll = this._onScroll.bind(this);
		this.setOptions(options);
		this.init();
	};
	// class prototype
	Factory.prototype = {
		constructor: Factory,
		// Set and merge local options
		setOptions: function(options) {
			if(typeof options === "object") {
				for(var key in options) {
					if(options.hasOwnProperty(key)) {
						this._options[key] = options[key];
					}
				}
			}
		},
		// Initialize the ribbons effect
		init: function() {
			try {
				this._canvas = document.createElement("canvas");
				this._canvas.style["display"] = "block";
				this._canvas.style["position"] = "fixed";
				this._canvas.style["margin"] = "0";
				this._canvas.style["padding"] = "0";
				this._canvas.style["border"] = "0";
				this._canvas.style["outline"] = "0";
				this._canvas.style["left"] = "0";
				this._canvas.style["top"] = "0";
				this._canvas.style["width"] = "100%";
				this._canvas.style["height"] = "100%";
				this._canvas.style["z-index"] = "-1";
				// this._canvas.style["background-color"]="#1f1f1f";
				this._canvas.id = "bgCanvas";
				this._onResize();
				this._context = this._canvas.getContext("2d");
				this._context.clearRect(0, 0, this._width, this._height);
				this._context.globalAlpha = this._options.colorAlpha;
				window.addEventListener("resize", this._onResize);
				window.addEventListener("scroll", this._onScroll);
				document.body.appendChild(this._canvas);
			} catch(e) {
				console.warn("Canvas Context Error: " + e.toString());
				return;
			}
			this._onDraw();
		},
		// Create a new random ribbon and to the list
		addRibbon: function() {
			// movement data
			var dir = Math.round(random(1, 9)) > 5 ? "right" : "left",
				stop = 1000,
				hide = 200,
				min = 0 - hide,
				max = this._width + hide,
				movex = 0,
				movey = 0,
				startx = dir === "right" ? min : max,
				starty = Math.round(random(0, this._height));
			// asjust starty based on options
			if(/^(top|min)$/i.test(this._options.verticalPosition)) {
				starty = 0 + hide;
			} else
			if(/^(middle|center)$/i.test(this._options.verticalPosition)) {
				starty = this._height / 2;
			} else
			if(/^(bottom|max)$/i.test(this._options.verticalPosition)) {
				starty = this._height - hide;
			}
			// ribbon sections data
			var ribbon = [],
				point1 = new Point(startx, starty),
				point2 = new Point(startx, starty),
				point3 = null,
				color = Math.round(random(0, 360)),
				delay = 0;
			// buils ribbon sections
			while(true) {
				if(stop <= 0) break;
				stop--;
				movex = Math.round((Math.random() * 1 - 0.2) * this._options.horizontalSpeed);
				movey = Math.round((Math.random() * 1 - 0.5) * (this._height * 0.25));
				point3 = new Point();
				point3.copy(point2);
				if(dir === "right") {
					point3.add(movex, movey);
					if(point2.x >= max) break;
				} else
				if(dir === "left") {
					point3.subtract(movex, movey);
					if(point2.x <= min) break;
				}
				// point3.clampY( 0, this._height );
				ribbon.push({ // single ribbon section
					point1: new Point(point1.x, point1.y),
					point2: new Point(point2.x, point2.y),
					point3: point3,
					color: color,
					delay: delay,
					dir: dir,
					alpha: 0,
					phase: 0
				});
				point1.copy(point2);
				point2.copy(point3);
				delay += 4;
				color += this._options.colorCycleSpeed;
			}
			this._ribbons.push(ribbon);
		},
		// Draw single section
		_drawRibbonSection: function(section) {
			if(section) {
				if(section.phase >= 1 && section.alpha <= 0) {
					return true; // done
				}
				if(section.delay <= 0) {
					section.phase += 0.02;
					section.alpha = Math.sin(section.phase) * 1;
					section.alpha = section.alpha <= 0 ? 0 : section.alpha;
					section.alpha = section.alpha >= 1 ? 1 : section.alpha;
					if(this._options.animateSections) {
						var mod = Math.sin(1 + section.phase * Math.PI / 2) * 0.1;
						if(section.dir === "right") {
							section.point1.add(mod, 0);
							section.point2.add(mod, 0);
							section.point3.add(mod, 0);
						} else {
							section.point1.subtract(mod, 0);
							section.point2.subtract(mod, 0);
							section.point3.subtract(mod, 0);
						}
						section.point1.add(0, mod);
						section.point2.add(0, mod);
						section.point3.add(0, mod);
					}
				} else {
					section.delay -= 0.5;
				}
				var s = this._options.colorSaturation,
					l = this._options.colorBrightness,
					c = "hsla(" + section.color + ", " + s + ", " + l + ", " + section.alpha + " )";
				this._context.save();
				if(this._options.parallaxAmount !== 0) {
					this._context.translate(0, this._scroll * this._options.parallaxAmount);
				}
				this._context.beginPath();
				this._context.moveTo(section.point1.x, section.point1.y);
				this._context.lineTo(section.point2.x, section.point2.y);
				this._context.lineTo(section.point3.x, section.point3.y);
				this._context.fillStyle = c;
				this._context.fill();
				if(this._options.strokeSize > 0) {
					this._context.lineWidth = this._options.strokeSize;
					this._context.strokeStyle = c;
					this._context.lineCap = "round";
					this._context.stroke();
				}
				this._context.restore();
			}
			return false; // not done yet
		},
		// Draw ribbons
		_onDraw: function() {
			// cleanup on ribbons list to rtemoved finished ribbons
			for(var i = 0, t = this._ribbons.length; i < t; ++i) {
				if(!this._ribbons[i]) {
					this._ribbons.splice(i, 1);
				}
			}
			// draw new ribbons 
			this._context.clearRect(0, 0, this._width, this._height);
			for(var a = 0; a < this._ribbons.length; ++a) // single ribbon
			{
				var ribbon = this._ribbons[a],
					numSections = ribbon.length,
					numDone = 0;
				for(var b = 0; b < numSections; ++b) // ribbon section
				{
					if(this._drawRibbonSection(ribbon[b])) {
						numDone++; // section done
					}
				}
				if(numDone >= numSections) // ribbon done
				{
					this._ribbons[a] = null;
				}
			}
			// maintain optional number of ribbons on canvas
			if(this._ribbons.length < this._options.ribbonCount) {
				this.addRibbon();
			}
			requestAnimationFrame(this._onDraw);
		},
		// Update container size info
		_onResize: function(e) {
			var screen = screenInfo(e);
			this._width = screen.width;
			this._height = screen.height;
			if(this._canvas) {
				this._canvas.width = this._width;
				this._canvas.height = this._height;
				if(this._context) {
					this._context.globalAlpha = this._options.colorAlpha;
				}
			}
		},
		// Update container size info
		_onScroll: function(e) {
			var screen = screenInfo(e);
			this._scroll = screen.scrolly;
		}
	};
	// export
	return Factory;
});
new Ribbons();
// 打赏
// layui弹出层模块
layui.use('layer', function() {
	var layer = layui.layer;
	// 绑定按钮点击事件
	document.getElementById('tip').onclick = function() {
		// 弹出层内容
		var content = '<div style="padding: 20px;">' + '<p style="text-align: center; margin-bottom: 10px;">感谢您的支持，我会继续努力的！</p>' + '<img src="https://jsdelivr.pai233.top/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/tupian/weixin.png" alt="微信" style="width: 200px; height: 200px; display: inline-block;"/>' + '<img src="https://jsdelivr.pai233.top/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/tupian/zhifubao.jpg" alt="支付宝" style="width: 200px; height: 200px; display: inline-block; margin-left: 20px;"/>' + '<p style="text-align: center; margin-top: 10px;">左图微信，右图支付宝</p>' + '</div>';
		// 调用layer.open方法
		layer.open({
			type: 1, // 页面层
			title: '☕ 给Ta打赏一杯奶茶', // 标题
			content: content, // 内容
			area: ['480px', '350px'], // 宽高，高度自动根据内容调整
			closeBtn: 2,
			skin: 'layui-layer-lan',
			shadeClose: true, // 点击遮罩关闭
			move: false
		});
	};
});
//文本打字机效果
var typed = new Typed(".typing", {
	//输出的文字，通过转义字符 ^3000 在字符串中间暂停一段时间
	strings: ['halo，朋友。欢迎访问糖糖π的资源站！^3000', '本站热衷于分享安全，无毒，无后门，可靠可用的各类资源。^3000'],
	typeSpeed: 90, //打字的速度
	smartBackspace: true, //开启智能退格 默认false
	cursorChar: '_', //自定义光标符号
	backSpeed: 50, //后退速度
	backDelay: 500, //后退延迟
	loop: true, //是否循环 默认false
	startDelay: 1000, //起始时间
	fadeOut: true, //淡出效果		
});
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
// 蜘蛛网背景特效
! function() {
	function n(n, e, t) {
		return n.getAttribute(e) || t
	}

	function e(n) {
		return document.getElementsByTagName(n)
	}

	function t() {
		var t = e("script"),
			o = t.length,
			i = t[o - 1];
		return {
			l: o,
			z: n(i, "zIndex", -1),
			o: n(i, "opacity", .5),
			c: n(i, "color", "0,0,0"),
			n: n(i, "count", 99)
		}
	}

	function o() {
		a = m.width = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth, c = m.height = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight
	}

	function i() {
		r.clearRect(0, 0, a, c);
		var n, e, t, o, m, l;
		s.forEach(function(i, x) {
			for(i.x += i.xa, i.y += i.ya, i.xa *= i.x > a || i.x < 0 ? -1 : 1, i.ya *= i.y > c || i.y < 0 ? -1 : 1, r.fillRect(i.x - .5, i.y - .5, 1, 1), e = x + 1; e < u.length; e++) n = u[e], null !== n.x && null !== n.y && (o = i.x - n.x, m = i.y - n.y, l = o * o + m * m, l < n.max && (n === y && l >= n.max / 2 && (i.x -= .03 * o, i.y -= .03 * m), t = (n.max - l) / n.max, r.beginPath(), r.lineWidth = t / 2, r.strokeStyle = "rgba(" + d.c + "," + (t + .2) + ")", r.moveTo(i.x, i.y), r.lineTo(n.x, n.y), r.stroke()))
		}), x(i)
	}
	var a, c, u, m = document.createElement("canvas"),
		d = t(),
		l = "c_n" + d.l,
		r = m.getContext("2d"),
		x = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function(n) {
			window.setTimeout(n, 1e3 / 45)
		},
		w = Math.random,
		y = {
			x: null,
			y: null,
			max: 2e4
		};
	m.id = l, m.style.cssText = "position:fixed;top:0;left:0;z-index:" + d.z + ";opacity:" + d.o, e("body")[0].appendChild(m), o(), window.onresize = o, window.onmousemove = function(n) {
		n = n || window.event, y.x = n.clientX, y.y = n.clientY
	}, window.onmouseout = function() {
		y.x = null, y.y = null
	};
	for(var s = [], f = 0; d.n > f; f++) {
		var h = w() * a,
			g = w() * c,
			v = 2 * w() - 1,
			p = 2 * w() - 1;
		s.push({
			x: h,
			y: g,
			xa: v,
			ya: p,
			max: 6e3
		})
	}
	u = s.concat([y]), setTimeout(function() {
		i()
	}, 100)
}();
//Hitokoto一言
function fetchHitokoto(url) {
	return fetch(url).then(response => {
		if(!response.ok) {
			throw new Error(`Network response was not ok: ${response.statusText}`);
		}
		return response.json();
	}).catch(error => {
		console.error(`Failed to fetch from ${url}:`, error);
		throw error; // Re-throw the error to be handled by the caller
	});
}

function updateHitokotoElement(data) {
	const hitokotoElement = document.getElementById('hitokoto_text');
	if(!hitokotoElement) {
		console.error('The hitokoto_text element does not exist.');
		return;
	}
	let formattedText = `『${data.hitokoto}』 —— `;
	if(data.from_who) {
		formattedText += `${data.from_who}【${data.from}】`;
	} else {
		formattedText += `【${data.from}】`;
	}
	hitokotoElement.textContent = formattedText;
}

function updateHitokoto() {
	fetchHitokoto('https://v1.hitokoto.cn').then(updateHitokotoElement).catch(() => {
		// Try the international endpoint if the first request fails
		return fetchHitokoto('https://international.v1.hitokoto.cn').then(updateHitokotoElement).catch(() => {
			document.getElementById('hitokoto_text').textContent = 'Failed to load Hitokoto.';
		});
	});
}
// Set interval to update hitokoto every 10 seconds
setInterval(updateHitokoto, 10000);