"use strict";var AlphaManager={instances:[],init:function(n,t,q){if(n==null){n={};}AlphaManager.Utils.embedCss(typeof n["skin"]==="undefined"?"flat":n["skin"]);if(!q){q=AlphaManager.Utils.getBaseUrl();}if(!("showDialogTitle" in n)){n.showDialogTitle=true;}if(!("showDialogButtons" in n)){n.showDialogButtons=true;}if(!("maxDialogHeight" in n)){n.maxDialogHeight=1000;}if(!("multiSelect" in n)){n.multiSelect=false;}var o={parameters:n,baseUrl:q,elBg:null,elContent:null,elDlg:null,elIframe:null,elTitle:null,elButtons:null,files:[],show:function(a){if(this.elIframe){this.elIframe.parentNode.removeChild(this.elIframe);}this.elIframe=document.createElement("iframe");this.elContent.appendChild(this.elIframe);this.elIframe.className="alphamanager_iframe";var c=window,b="inner";if(!("innerWidth" in window)){b="client";c=document.documentElement||document.body;}window.alphamanager_params=this.parameters;this.elIframe.src=this.baseUrl+"index.html";AlphaManager.Utils.addClass(this.elBg,"alphamanager_show");AlphaManager.Utils.addClass(this.elDlg,"alphamanager_show");var e=c[b+"Height"];var d=n.maxDialogHeight;if(d+90>e){d=e-90;}this.setHeight(d);},hide:function(){AlphaManager.Utils.removeClass(this.elBg,"alphamanager_show");AlphaManager.Utils.removeClass(this.elDlg,"alphamanager_show");},setHeight:function(b){this.elDlg.style.height=b+"px";this.elDlg.style.marginTop="-"+Math.floor(b/2)+"px";var a=b;if(this.elTitle!=null){a-=this.elTitle.offsetHeight;}if(this.elButtons!=null){a-=this.elButtons.offsetHeight;}this.elContent.style.height=a+"px";},setWidth:function(a){this.elDlg.style.width=a+"px";this.elDlg.style.marginLeft="-"+Math.floor(a/2)+"px";},onLoaded:function(a){this.setWidth(a+14);},onFileSelected:function(b){this.files=b;var a=this.parameters.multiSelect===true?b.length>0:b.length==1;if(a){AlphaManager.Utils.removeClass(this.elBtnOk,"alphamanager_disabled");}else{AlphaManager.Utils.addClass(this.elBtnOk,"alphamanager_disabled");}}};var v=o.parameters.onLoaded;o.parameters.onLoaded=(function(){var b=o;var a=v;return function(c){b.onLoaded(c);if(a){a(c);}};})();v=o.parameters.onFileSelected;o.parameters.onFileSelected=(function(){var b=o;var a=v;return function(c){b.onFileSelected(c);if(a){a(c);}};})();v=o.parameters.onFileSet;o.parameters.onFileSet=(function(){var b=o;var a=v;return function(c){b.hide();if(a){a(c);}};})();if(t){if(typeof t=="string"){t=document.getElementById(t);}t.onclick=(function(){var a=o;return function(){a.show();};})();}o.elBg=document.createElement("div");o.elBg.className="alphamanager_bg";o.elContent=document.createElement("div");o.elContent.className="alphamanager_content";o.elDlg=document.createElement("div");var u=["alphamanager_dlg"];if(typeof n["skinMod"]!=="undefined"){var m=n["skinMod"].split(",");for(var s=0;s<m.length;s++){u.push("alphamanager_mod_"+m[s]);}}o.elDlg.className=u.join(" ");o.elDlg.style.width="1300px";o.elDlg.style.marginLeft="-650px";o.setHeight(n.maxDialogHeight);var r=document.getElementsByTagName("body")[0];r.appendChild(o.elBg);r.appendChild(o.elDlg);if(n.showDialogTitle===true){o.elTitle=document.createElement("div");o.elTitle.className="alphamanager_title";o.elDlg.appendChild(o.elTitle);var i=document.createElement("div");i.className="alphamanager_title_text";i.textContent="Alpha Manager";o.elTitle.appendChild(i);var p=document.createElement("div");p.href="javascript:void(0)";p.className="alphamanager_x";p.textContent="×";o.elTitle.appendChild(p);p.onclick=(function(){var a=o;return function(){a.hide();};})();}o.elDlg.appendChild(o.elContent);if(n.showDialogButtons===true){o.elButtons=document.createElement("div");o.elButtons.className="alphamanager_buttons";o.elBtnOk=document.createElement("a");o.elBtnOk.textContent="OK";o.elBtnOk.className="alphamanager_btn alphamanager_btn_ok alphamanager_disabled";o.elButtons.appendChild(o.elBtnOk);o.elBtnOk.onclick=(function(){var a=o;return function(){if(AlphaManager.Utils.hasClass(this,"alphamanager_disabled")){return;}a.parameters.onFileSet(a.files);};})();o.elBtnCancel=document.createElement("a");o.elBtnCancel.textContent="Cancel";o.elBtnCancel.className="alphamanager_btn";o.elButtons.appendChild(o.elBtnCancel);o.elBtnCancel.onclick=(function(){var a=o;return function(){a.hide();};})();o.elDlg.appendChild(o.elButtons);}AlphaManager.instances.push(o);return o;}};AlphaManager.Utils={addClass:function(c,d){if(AlphaManager.Utils.hasClass(c,d)){return;}c.className=c.className.length==0?d:c.className+" "+d;},removeClass:function(h,f){var e=AlphaManager.Utils.getClasses(h);while(e.indexOf(f)>-1){e.splice(e.indexOf(f),1);}var g=e.join(" ").trim();if(g.length>0){h.className=g;}else{if(h.hasAttribute("class")){h.removeAttribute("class");}}},getClasses:function(b){if(typeof(b.className)==="undefined"||b.className==null){return[];}return b.className.split(/\s+/);},hasClass:function(g,f){var h=AlphaManager.Utils.getClasses(g);for(var e=0;e<h.length;e++){if(h[e].toLowerCase()==f.toLowerCase()){return true;}}return false;},embedCss:function(h){var i=document.getElementsByTagName("head")[0].getElementsByTagName("style");
for(var f=i.length-1;f>=0;f--){if(i[f].getAttribute("data-alphamanager")==="true"){i[f].parentNode.removeChild(i[f]);}}var j=document.createElement("style");j.setAttribute("data-alphamanager","true");document.getElementsByTagName("head")[0].appendChild(j);var g=[];g["business"]=".alphamanager_bg { background-color: black; opacity: 0.5; position: fixed; left: 0; top: 0; width: 100%; height: 3000px; z-index: 11111; display: none; } "+".alphamanager_dlg { width: 400px; margin-left: -200px; top: 50%; left: 50%; padding: 0; position: fixed; z-index: 11112; background-color: white; border: 1px solid #999; overflow:hidden; display: none; }"+".alphamanager_show { display: block; }"+".alphamanager_title { box-sizing: border-box; font-size: 18px; font-weight: bold; padding: 7px 0 3px 15px; color: #333; border-bottom: 1px solid #ccc; height: 35px; }"+".alphamanager_title_text { float: left; width: 95%; }"+".alphamanager_x { box-sizing: border-box; float: right; width: 5%; text-align: right; cursor: pointer; padding-right: 17px; color: #999; }"+".alphamanager_x:hover { color: #444; }"+".alphamanager_btn { padding: 4px 10px; font-size: 15px; border: 1px solid #AAA !important; display: inline-block; float: right; cursor: pointer; margin-left: 15px; min-width: 90px; text-align: center; background-color: white; }"+".alphamanager_btn:hover { background-color: #f3f3f3; }"+".alphamanager_btn.alphamanager_disabled, .alphamanager_btn.alphamanager_disabled:hover, .alphamanager_btn.alphamanager_disabled:focus { color: #DDD; border-color: #DDD; background-color: white; cursor: default; }"+".alphamanager_iframe { border: none; width: 100%; height: 100%; }"+".alphamanager_buttons { background: #FAFAFA; height: 60px; padding: 15px 25px 15px 0;}";g["mono"]=".alphamanager_bg { background-color: black; opacity: 0.5; position: fixed; left: 0; top: 0; width: 100%; height: 3000px; z-index: 11111; display: none; } "+".alphamanager_dlg { width: 400px; margin-left: -200px; top: 50%; left: 50%; padding: 0; position: fixed; z-index: 11112; background-color: white; border: 1px solid #999; border-radius: 10px; overflow:hidden; display: none; }"+".alphamanager_show { display: block; }"+".alphamanager_title { box-sizing: border-box; font-size: 18px; font-weight: bold; padding: 7px 0 3px 15px; color: #333; border-bottom: 1px solid #ccc; height: 35px; }"+".alphamanager_title_text { float: left; width: 95%; }"+".alphamanager_x { box-sizing: border-box; float: right; width: 5%; text-align: right; cursor: pointer; padding-right: 17px; color: #999; }"+".alphamanager_x:hover { color: #444; }"+".alphamanager_btn { padding: 4px 10px; font-size: 15px; border: 2px solid #AAA !important; border-radius: 5px; display: inline-block; float: right; cursor: pointer; margin-left: 15px; min-width: 90px; text-align: center; background-color: white; color: #555; }"+".alphamanager_btn:hover { background-color: #555; color: white; border-color: #555; }"+".alphamanager_btn.alphamanager_disabled, .alphamanager_btn.alphamanager_disabled:hover, .alphamanager_btn.alphamanager_disabled:focus { color: #DDD; border-color: #DDD; background-color: white; cursor: default; }"+".alphamanager_iframe { border: none; width: 100%; height: 100%; }"+".alphamanager_buttons { background: #FAFAFA; height: 60px; padding: 15px 25px 15px 0;}"+".alphamanager_mod_blue .alphamanager_btn { border: 2px solid #09F !important; color: #09F; }"+".alphamanager_mod_blue .alphamanager_btn:hover { background-color: #09F; border-color: #09F !important; color: white; }"+".alphamanager_mod_blue .alphamanager_btn.alphamanager_disabled, .alphamanager_mod_blue .alphamanager_btn.alphamanager_disabled:hover, .alphamanager_mod_blue .alphamanager_btn.alphamanager_disabled:focus { color: #DDD; border-color: #DDD; background-color: white; cursor: default; }"+".alphamanager_mod_violet .alphamanager_btn { border: 2px solid #6C538B !important; color: #6C538B !important; }"+".alphamanager_mod_violet .alphamanager_btn:hover { background-color: #6C538B; border-color: #6C538B !important; color: white !important; }"+".alphamanager_mod_violet .alphamanager_btn.alphamanager_disabled, .alphamanager_mod_violet .alphamanager_btn.alphamanager_disabled:hover, .alphamanager_mod_violet .alphamanager_btn.alphamanager_disabled:focus { color: #DDD !important; border-color: #DDD !important; background-color: white; cursor: default; }";g["flat"]=".alphamanager_bg { background-color: black; opacity: 0.5; position: fixed; left: 0; top: 0; width: 100%; height: 3000px; z-index: 11111; display: none; } "+".alphamanager_dlg { width: 400px; margin-left: -200px; top: 50%; left: 50%; padding: 0; position: fixed; z-index: 11112; background-color: white; border-radius: 5px; overflow:hidden; display: none; }"+".alphamanager_show { display: block; }"+".alphamanager_title { box-sizing: border-box; font-size: 18px; font-weight: bold; padding: 7px 0 3px 15px; color: #333; border-bottom: 1px solid #ccc; height: 35px; }"+".alphamanager_title_text { float: left; width: 95%; }"+".alphamanager_x { box-sizing: border-box; float: right; width: 5%; text-align: right; cursor: pointer; padding-right: 17px; color: #999; }"+".alphamanager_x:hover { color: #444; }"+".alphamanager_btn { margin: 0 10px; padding: 5px 0; display: inline-block; float: right; color: white !important; font-size: 15px; margin-bottom: 20px; width: 90px; text-align: center; border-radius: 3px; background-color: #F14444; cursor: pointer; border: none !important; }"+".alphamanager_btn:hover { background-color: #D33232; border: none !important; }"+".alphamanager_btn_ok { background-color: #00FFB8; }"+".alphamanager_btn_ok:hover { background-color: #008661; }"+".alphamanager_btn.alphamanager_disabled, .alphamanager_btn.alphamanager_disabled:hover, .alphamanager_btn.alphamanager_disabled:focus { cursor: default; opacity: 0.3; }"+".alphamanager_iframe { border: none; width: 100%; height: 100%; }"+".alphamanager_buttons { background: #FAFAFA; height:60px; padding: 15px 25px 15px 0;}";
j.innerHTML=g[h];},getBaseUrl:function(){var h=/(^|.*[\\\/])(alphamanager|gplugin)\.js(?:\?.*|;.*)?$/i;var i=null;var g=document.getElementsByTagName("script");for(var j=0;j<g.length;j++){var f=g[j].src.match(h);if(f){i=f[1];break;}}if(i!=null){if(i.indexOf(":/")==-1&&i.slice(0,2)!="//"){if(i.indexOf("/")===0){i=location.href.match(/^.*?:\/\/[^\/]*/)[0]+i;}else{i=location.href.match(/^[^\?]*\/(?:)/)[0]+i;}}}return i;}};