            function time(){
                var date = new Date();
                var year = date.getFullYear();
                var month = date.getMonth()+1;
                var day = date.getDate();
                var week = date.getDay();
                week="星期"+"日一二三四五六".charAt(week);
                /*switch(week){
                    case 1:
                        week="星期一";
                        break;
                    case 2:
                        week="星期二";
                        break;
                    case 3:
                        week="星期三";
                        break;
                    case 4:
                        week="星期四";
                        break;
                    case 5:
                        week="星期五";
                        break;
                    case 6:
                        week="星期六";
                        break;
                    case 0:
                        week="星期日";
                        break;
                }*/
                var hour =date.getHours();
                hour=hour<10?"0"+hour:hour;
                var minute =date.getMinutes();
                minute=minute<10?"0"+minute:minute;
                var second = date.getSeconds();
                second=second<10?"0"+second:second;
                var currentTime = year+"-"+month+"-"+day+"  "+week+"   "+hour+":"+minute+":"+second;
                document.getElementById("time").innerHTML=currentTime;
            }
            setInterval("time()",1000);