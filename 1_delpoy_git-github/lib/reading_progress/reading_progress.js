// build time:Fri Nov 12 2021 14:57:54 GMT+0800 (China Standard Time)
(function(){if(!$(".reading-progress-bar").length)return;var e=false;try{var r=Object.defineProperty({},"passive",{get:function(){e=true}});window.addEventListener("test",$.noop,r);window.removeEventListener("test",$.noop)}catch(t){}$(document).ready(function(){var r=$(".reading-progress-bar");window.addEventListener("scroll",function(){var e=$(window);var t=$(".post-block");var n=e.scrollTop()+e.height()/2;var o=n-t.position().top;var i=Math.round(o/t.height()*100);if(i<0)i=0;if(i>100)i=100;r.css("width",i+"%")},e?{passive:true}:false)})})();
//rebuild by neat 