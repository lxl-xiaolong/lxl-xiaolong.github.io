//文本打字机效果
			var typed = new Typed(".typing", {
				//输出的文字，通过转义字符 ^3000 在字符串中间暂停一段时间
				strings: [
					'halo，朋友。欢迎访问糖糖π的资源站！^3000',
					'本站热衷于分享安全，无毒，无后门，可靠可用的各类资源。^3000'
				],
				typeSpeed: 100, //打字的速度
				smartBackspace: true, //开启智能退格 默认false
				cursorChar: '_', //自定义光标符号
				backSpeed: 50, //后退速度
				backDelay: 500, //后退延迟
				loop: true, //是否循环 默认false
				startDelay: 1000, //起始时间
				fadeOut: true, //淡出效果		
			});