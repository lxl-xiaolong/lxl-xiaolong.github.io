function runtime(){X=new Date("8/9/2022 00:00:00"),Y=new Date,T=Y.getTime()-X.getTime(),M=864e5,a=T/M,A=Math.floor(a),b=24*(a-A),B=Math.floor(b),c=60*(b-B),C=Math.floor(60*(b-B)),D=Math.floor(60*(c-C)),span.innerHTML="本站勉强运行: "+A+"天"+B+"小时"+C+"分"+D+"秒"}setInterval(runtime,1e3);