var JSONP=function(c){function f(j,l){function i(){try{delete c[k];}catch(m){c[k]=null;}d.removeChild(h);b[j]=[arguments[0]];try{l.apply(this,arguments);}catch(m){}}if(!b[j]){var k=e+g++,h=a.createElement("script");h.setAttribute("async",true);c[k]=i;d.insertBefore(h,d.lastChild).src=j+"="+k;}else{setTimeout(function(){l.apply(this,b[j]);},200);}}var g=0,e="__JSONP__",a=c.document,b={},d=a.documentElement;return f;}(this);CKEDITOR.plugins.add("jsplus_translator",{lang:"en,ru",icons:"jsplus_translator,jsplus_translator_settings,jsplus_translator_reverse",init:function(g){var o={"_":{},"last":{},"now":{}};if(!g.lang.jsplus_translator){g.lang.jsplus_translator={alert_title:"alert",alert_replace_button:"replace",alert_append_button:"append",direction:"The direction of translation",service:"Service",yandex_translate_api:"Yandex Translate API",bing_translate_api:"Bing Translate API",googleopts_translate_api:"Google Translate API",assign_hotkeys:"Assign hotkeys",what_to_do:"What to do",inline_replace:"Inline replace",inline_append:"Inline append",show_dialog:"Show dialog",translate:"Translate",translate_settings:"Translate Settings",translate_reverse:"Translate Reverse",langs:{"ru":"Russian","en":"English","pl":"Polish","hu":"Hungarian","uk":"Ukrainian","de":"German","fr":"French","be":"Belarusian","sq":"Albanian","es":"Spanish","it":"Italian","hy":"Armenian","da":"Danish","pt":"Portuguese","sk":"Slovak","sl":"Slovenian","nl":"Dutch","bg":"Bulgarian","ca":"Catalan","hr":"Croatian","cs":"Czech","el":"Greek","no":"Norwegian","mk":"Macedonian","sv":"Swedish","fi":"Finnish","et":"Estonian","lv":"Latvian","lt":"Lithuanian","tr":"Turkish","ro":"Romanian","sr":"Serbian","az":"Azerbaijani"},};}o.now={jsplus_yandex_key:g.config.jsplus_yandex_key?g.config.jsplus_yandex_key:"trnsl.1.1.20130819T112450Z.e14ecaa487166a0d.86f8dd0967b040960bdc710ece4be7420e88ddb2",jsplus_translator_default_from_language:g.config.jsplus_translator_default_from_language?g.config.jsplus_translator_default_from_language:"en",jsplus_translator_default_to_language:g.config.jsplus_translator_default_to_language?g.config.jsplus_translator_default_to_language:"de",jsplus_ontranslate:g.config.jsplus_ontranslate?g.config.jsplus_ontranslate:"replace",jsplus_hotkeys:g.config.jsplus_hotkeys?g.config.jsplus_hotkeys:CKEDITOR.CTRL+13,jsplus_service:g.config.jsplus_service?g.config.jsplus_service:"yandex",jsplus_bing_interval_update_token:g.config.jsplus_bing_interval_update_token?g.config.jsplus_bing_interval_update_token:9*60*1000,jsplus_bing_client_id:g.config.jsplus_bing_client_id?g.config.jsplus_bing_client_id:"",jsplus_bing_client_secret:g.config.jsplus_bing_client_secret?g.config.jsplus_bing_client_secret:"",jsplus_keycode:g.config.jsplus_keycode?g.config.jsplus_keycode:"adel",jsplus_version:"1.0.5",jsplus_direction_support:{yandex:["ru-en","ru-pl","ru-hu","ru-uk","ru-de","ru-fr","ru-be","ru-sq","ru-es","ru-it","ru-hy","ru-da","ru-pt","ru-sk","ru-sl","ru-nl","ru-bg","ru-ca","ru-hr","ru-cs","ru-el","ru-no","ru-mk","ru-sv","ru-fi","ru-et","ru-lv","ru-lt","ru-tr","ru-ro","ru-sr","ru-az","en-ru","en-hu","en-uk","en-de","en-fr","en-be","en-sq","en-es","en-it","en-da","en-pt","en-sk","en-sl","en-nl","en-ca","en-cs","en-el","en-no","en-mk","en-sv","en-fi","en-et","en-lv","en-lt","en-tr","pl-ru","pl-uk","pl-be","hu-ru","hu-en","uk-ru","uk-en","uk-pl","uk-de","uk-fr","uk-es","uk-it","uk-bg","uk-cs","uk-tr","uk-ro","uk-sr","de-ru","de-en","de-uk","de-fr","de-be","de-es","de-it","de-tr","fr-ru","fr-en","fr-uk","fr-de","fr-be","be-ru","be-en","be-pl","be-de","be-fr","be-es","be-it","be-bg","be-cs","be-tr","be-ro","be-sr","sq-ru","sq-en","es-ru","es-en","es-uk","es-de","es-be","it-ru","it-en","it-uk","it-de","it-be","hy-ru","da-ru","da-en","pt-ru","pt-en","sk-ru","sk-en","sl-ru","sl-en","nl-ru","nl-en","bg-ru","bg-uk","bg-be","ca-ru","ca-en","hr-ru","cs-ru","cs-en","cs-uk","cs-be","el-ru","el-en","no-ru","no-en","mk-ru","mk-en","sv-ru","sv-en","fi-ru","fi-en","et-ru","et-en","lv-ru","lv-en","lt-ru","lt-en","tr-ru","tr-en","tr-uk","tr-de","tr-be","ro-ru","ro-uk","ro-be","sr-ru","sr-uk","sr-be","az-ru"],bing:["ru-en","ru-pl","ru-hu","ru-uk","ru-de","ru-fr","ru-be","ru-sq","ru-es","ru-it","ru-hy","ru-da","ru-pt","ru-sk","ru-sl","ru-nl","ru-bg","ru-ca","ru-hr","ru-cs","ru-el","ru-no","ru-mk","ru-sv","ru-fi","ru-et","ru-lv","ru-lt","ru-tr","ru-ro","ru-sr","ru-az","en-ru","en-hu","en-uk","en-de","en-fr","en-be","en-sq","en-es","en-it","en-da","en-pt","en-sk","en-sl","en-nl","en-ca","en-cs","en-el","en-no","en-mk","en-sv","en-fi","en-et","en-lv","en-lt","en-tr","pl-ru","pl-uk","pl-be","hu-ru","hu-en","uk-ru","uk-en","uk-pl","uk-de","uk-fr","uk-es","uk-it","uk-bg","uk-cs","uk-tr","uk-ro","uk-sr","de-ru","de-en","de-uk","de-fr","de-be","de-es","de-it","de-tr","fr-ru","fr-en","fr-uk","fr-de","fr-be","be-ru","be-en","be-pl","be-de","be-fr","be-es","be-it","be-bg","be-cs","be-tr","be-ro","be-sr","sq-ru","sq-en","es-ru","es-en","es-uk","es-de","es-be","it-ru","it-en","it-uk","it-de","it-be","hy-ru","da-ru","da-en","pt-ru","pt-en","sk-ru","sk-en","sl-ru","sl-en","nl-ru","nl-en","bg-ru","bg-uk","bg-be","ca-ru","ca-en","hr-ru","cs-ru","cs-en","cs-uk","cs-be","el-ru","el-en","no-ru","no-en","mk-ru","mk-en","sv-ru","sv-en","fi-ru","fi-en","et-ru","et-en","lv-ru","lv-en","lt-ru","lt-en","tr-ru","tr-en","tr-uk","tr-de","tr-be","ro-ru","ro-uk","ro-be","sr-ru","sr-uk","sr-be","az-ru"],google:["ru-en","ru-pl","ru-hu","ru-uk","ru-de","ru-fr","ru-be","ru-sq","ru-es","ru-it","ru-hy","ru-da","ru-pt","ru-sk","ru-sl","ru-nl","ru-bg","ru-ca","ru-hr","ru-cs","ru-el","ru-no","ru-mk","ru-sv","ru-fi","ru-et","ru-lv","ru-lt","ru-tr","ru-ro","ru-sr","ru-az","en-ru","en-hu","en-uk","en-de","en-fr","en-be","en-sq","en-es","en-it","en-da","en-pt","en-sk","en-sl","en-nl","en-ca","en-cs","en-el","en-no","en-mk","en-sv","en-fi","en-et","en-lv","en-lt","en-tr","pl-ru","pl-uk","pl-be","hu-ru","hu-en","uk-ru","uk-en","uk-pl","uk-de","uk-fr","uk-es","uk-it","uk-bg","uk-cs","uk-tr","uk-ro","uk-sr","de-ru","de-en","de-uk","de-fr","de-be","de-es","de-it","de-tr","fr-ru","fr-en","fr-uk","fr-de","fr-be","be-ru","be-en","be-pl","be-de","be-fr","be-es","be-it","be-bg","be-cs","be-tr","be-ro","be-sr","sq-ru","sq-en","es-ru","es-en","es-uk","es-de","es-be","it-ru","it-en","it-uk","it-de","it-be","hy-ru","da-ru","da-en","pt-ru","pt-en","sk-ru","sk-en","sl-ru","sl-en","nl-ru","nl-en","bg-ru","bg-uk","bg-be","ca-ru","ca-en","hr-ru","cs-ru","cs-en","cs-uk","cs-be","el-ru","el-en","no-ru","no-en","mk-ru","mk-en","sv-ru","sv-en","fi-ru","fi-en","et-ru","et-en","lv-ru","lv-en","lt-ru","lt-en","tr-ru","tr-en","tr-uk","tr-de","tr-be","ro-ru","ro-uk","ro-be","sr-ru","sr-uk","sr-be","az-ru"],},};
if(window.localStorage){o.last=JSON.parse(localStorage.getItem("settings.last"));localStorage.setItem("settings.last",JSON.stringify(o.now));}var k=false;if(o.last){for(var r in o.now){if(o.last[r]!=o.now[r]&&(/boolean|number|string/).test(typeof o.last[r])){k=true;break;}}}else{k=true;}g.on("startTokenizer",function(){if(o._.jsplus_service=="bing"){clearInterval(n);var s=function(){JSONP(CKEDITOR.basePath+"plugins/jsplus_translator/bing.php?keycode="+o._.jsplus_keycode+"&client_id="+o._.jsplus_bing_client_id+"&client_secret="+o._.jsplus_bing_client_secret+"&callback",function(t){i=t.token;});};n=setInterval(s,o._.jsplus_bing_interval_update_token);s();}else{clearInterval(n);}});g.on("updateSettings",function(){if(window.localStorage){localStorage.setItem("settings.current",JSON.stringify(o._));}g.fire("startTokenizer");});if(k){o._=o.now;g.fire("updateSettings");}else{o._=JSON.parse(localStorage.getItem("settings.current"));if(!o._){o._=o.now;g.fire("updateSettings");}}g.fire("startTokenizer");var j=0,b=0,m="",a="",i="",n=0;var c=function(t,u){var s=function(w,v){v=v||{};return CKEDITOR.tools.extend({id:t,type:"button",label:t,"class":"cke_dialog_ui_button_ok",onClick:function(x){var y=x.data.dialog;u&&u.apply&&u.apply(this);y.hide();}},v,true);};s.type="button";s.override=function(v){return CKEDITOR.tools.extend(function(w){return s(w,v);},{type:"button"},true);};return s;};CKEDITOR.dialog.add("jsplus_translator_alert",function(s){return{title:s.lang.jsplus_translator.alert_title,minWidth:200,minHeight:70,resizable:false,contents:[{id:"tab22",label:"",title:"",expand:true,padding:0,elements:[{id:"elementId",type:"html",html:"",}]}],buttons:[CKEDITOR.dialog.okButton,c(s.lang.jsplus_translator.alert_replace_button,function(){e(b,a,m);}),c(s.lang.jsplus_translator.alert_append_button,function(){l(b,a,m);}),],onShow:function(){},onOk:function(){},};});var f=[{CTRL:CKEDITOR.CTRL,ALT:CKEDITOR.ALT,SHIFT:CKEDITOR.SHIFT,"CTRL+SHIFT":CKEDITOR.CTRL+CKEDITOR.SHIFT,"CTRL+ALT":CKEDITOR.CTRL+CKEDITOR.ALT,"ALT+SHIFT":CKEDITOR.ALT+CKEDITOR.ALT,"CAPS LOCK":20,"NUM LOCK":144,},{"Q":81,"W":87,"E":69,"R":82,"T":84,"Y":89,"U":85,"I":73,"O":79,"P":80,"[":219,"]":221,"A":65,"S":83,"D":68,"F":70,"G":71,"H":72,"J":74,"K":75,"L":76,";":186,"'":222,"Z":90,"X":88,"C":67,"V":86,"B":66,"N":78,"M":77,",":188,".":190,"/":191,"1":49,"2":50,"3":51,"4":52,"5":53,"6":54,"7":55,"8":56,"9":57,"0":58,"-":59,"=":60,"+":187,"*":106,"Arrow Up":38,"Arrow Down":40,"Arrow Left":37,"Arrow Right":39,"Enter":13,"Esc":27,"Space":32,},];CKEDITOR.dialog.add("jsplus_translator",function(s){return{title:s.lang.jsplus_translator.translate_settings,minWidth:500,minHeight:70,resizable:false,contents:[{id:"tab1",label:"",title:"",expand:true,padding:0,elements:[{id:"elementId",type:"html",html:"<div>"+"<style>"+".jsplus_select{width:100%;line-height:28px; min-height: 28px; height:31px;  border:1px solid #ccc; padding:3px; margin:0px;}"+".jsplus_select option[disabled]{color:#ccc;}"+".jsplus_radio,.jsplus_checkbox{vertical-align: baseline;display: inline;white-space: nowrap;}"+".jsplus_radio input,.jsplus_checkbox input{float: left;margin-left: -20px;}"+"</style>"+'<table style="width:100%;">'+"<tr>"+'<td style="padding:5px 0px;">'+"<strong>"+s.lang.jsplus_translator.direction+"</strong>"+"</td>"+'<td style="padding:5px 15px;">'+"<strong>"+s.lang.jsplus_translator.service+"</strong>"+"</td>"+"</tr>"+'<tr style="padding-bottom:15px;">'+'<td style="width:450px;vertical-align:top;">'+'<table style="width:100%;">'+"<tr>"+'<td style="width:45%;vertical-align:middle;">'+'<select class="jsplus_select" id="jsplus_translate_from"></select>'+"</td>"+'<td style="text-align:center;vertical-align:middle;"><img onclick="var from = document.getElementById(\'jsplus_translate_from\'),to = document.getElementById(\'jsplus_translate_to\'), buf = from.value;from.value = to.value; to.value = buf; from.onchange.apply(from);" style="verticla-align:middle;" src="'+CKEDITOR.basePath+"plugins/jsplus_translator/icons/reverse.png"+'"/></td>'+'<td style="width:45%;vertical-align:middle;"><select class="jsplus_select" id="jsplus_translate_to"></select></td>'+"</tr>"+"</table>"+"</td>"+'<td style="vertical-align:top;padding-left:35px;padding-bottom:15px;">'+'<div class="control-group">'+'<div class="controls">'+'<label class="radio jsplus_radio"><input '+((!o._.jsplus_service||o._.jsplus_service=="yandex")?"checked":"")+' type="radio" value="yandex" name="jsplus_service" id="jsplus_service1"/>'+s.lang.jsplus_translator.yandex_translate_api+"</label><br/>"+'<label class="radio jsplus_radio"><input '+((o._.jsplus_service=="bing")?"checked":"")+' type="radio"  '+' value="bing" id="jsplus_service2" name="jsplus_service"/>'+s.lang.jsplus_translator.bing_translate_api+"</label><br/>"+'<label class="radio jsplus_radio"><input '+((o._.jsplus_service=="google")?"checked":"")+' type="radio" '+' value="google" id="jsplus_service3" name="jsplus_service"/>'+s.lang.jsplus_translator.google_translate_api+"</label>"+"</div>"+"</div>"+"</td>"+"</tr>"+"<tr>"+'<td style="padding:5px 0px;">'+"<strong>"+s.lang.jsplus_translator.assign_hotkeys+"</strong>"+"</td>"+'<td style="padding:5px 15px;">'+"<strong>"+s.lang.jsplus_translator.what_to_do+"</strong>"+"</td>"+"</tr>"+"<tr>"+'<td style="vertical-align:top;">'+'<table style="width:100%;">'+"<tr>"+'<td style="width:45%;">'+'<select  class="jsplus_select" id="jsplus_translate_keycode_one">'+(function(){var t=[];
for(var u in f[0]){t.push('<option value="'+f[0][u]+'">'+u+"</option>");}return t.join("");})()+"</select>"+"</td>"+'<td style="text-align:center;vertical-align:middle;font-size:2.0em;font-weight:700;">+</td>'+'<td style="width:45%;">'+'<select class="jsplus_select" id="jsplus_translate_keycode_two">'+(function(){var t=[],v=document.createElement("div");for(var u in f[1]){v.innerHTML=u;t.push('<option value="'+f[1][u]+'">'+v.innerHTML+"</option>");}return t.join("");})()+"</select>"+"</td>"+"</tr>"+"</table>"+"</td>"+'<td style="vertical-align:top;padding-left:35px;padding-bottom:15px;">'+'<div class="control-group">'+'<div class="controls">'+'<label class="radio jsplus_radio"><input '+((!o._.jsplus_ontranslate||o._.jsplus_ontranslate=="replace")?"checked":"")+' type="radio" name="jsplus_ontranslate" id="jsplus_ontranslate1" value="replace"/>'+s.lang.jsplus_translator.inline_replace+"</label><br/>"+'<label class="radio jsplus_radio"><input '+((o._.jsplus_ontranslate=="append")?"checked":"")+' type="radio" name="jsplus_ontranslate" id="jsplus_ontranslate2" value="append"/>'+s.lang.jsplus_translator.inline_append+"</label><br/>"+'<label class="radio jsplus_radio"><input '+((o._.jsplus_ontranslate=="dialog")?"checked":"")+' type="radio" name="jsplus_ontranslate" id="jsplus_ontranslate3" value="dialog"/>'+s.lang.jsplus_translator.show_dialog+"</label><br/>"+"</div>"+"</div>"+"</td>"+"</tr>"+"</table>"+"</div>",}]}],buttons:[CKEDITOR.dialog.okButton],onLoad:function(){var z=document.getElementById("jsplus_translate_from"),y=document.getElementById("jsplus_translate_to"),t={},w={},x="";z.vars={};z.reverse=y;y.reverse=z;y.vars={};for(var v in o._.jsplus_direction_support[o._.jsplus_service]){x=o._.jsplus_direction_support[o._.jsplus_service][v].split("-");if(!z.vars[x[0]]){z.vars[x[0]]=[];}if(!y.vars[x[1]]){y.vars[x[1]]=[];}z.vars[x[0]].push(x[1]);y.vars[x[1]].push(x[0]);}for(x in z.vars){var u=document.createElement("option");u.value=x;u.innerHTML=s.lang.jsplus_translator.langs[x];if(x==(o._.jsplus_translator_default_from_language||"en")){u.setAttribute("selected",true);}z.appendChild(u);}for(x in y.vars){var u=document.createElement("option");u.value=x;if(x==(o._.jsplus_translator_default_to_language||"de")){u.setAttribute("selected",true);}u.innerHTML=s.lang.jsplus_translator.langs[x];y.appendChild(u);}z.onchange=function(){var D=this.value,B=this.reverse.childNodes,C="";for(var A=0;A<B.length;A++){if(B[A].style){B[A][(this.vars[D].indexOf(B[A].value)!==-1)?"removeAttribute":"setAttribute"]("disabled",true);}(this.vars[D].indexOf(B[A].value)!==-1&&C=="")&&(C=B[A].value);}if(this.vars[this.value].indexOf(this.reverse.value)===-1){this.reverse.value=C;}o._[this.id.replace("translate_","translator_default_")+"_language"]=this.value;o._[this.reverse.id.replace("translate_","translator_default_")+"_language"]=this.reverse.value;s.fire("jsplus_translate_update");s.fire("updateSettings");};y.onchange=function(){o._[this.id.replace("translate_","translator_default_")+"_language"]=this.value;s.fire("updateSettings");};z.onchange.apply(z);document.getElementById("jsplus_ontranslate1").onclick=document.getElementById("jsplus_ontranslate2").onclick=document.getElementById("jsplus_ontranslate3").onclick=function(){o._.jsplus_ontranslate=this.value;s.fire("updateSettings");};document.getElementById("jsplus_service1").onclick=document.getElementById("jsplus_service2").onclick=document.getElementById("jsplus_service3").onclick=function(){o._.jsplus_service=this.value;s.fire("updateSettings");};document.getElementById("jsplus_translate_keycode_one").onchange=document.getElementById("jsplus_translate_keycode_two").onchange=function(){if(o._.jsplus_hotkeys){delete s.keystrokeHandler.keystrokes[o._.jsplus_hotkeys];}o._.jsplus_hotkeys=parseInt(document.getElementById("jsplus_translate_keycode_one").value)+parseInt(document.getElementById("jsplus_translate_keycode_two").value);s.fire("updateSettings");s.keystrokeHandler.keystrokes[o._.jsplus_hotkeys]="jsplus_translator";};},onShow:function(){var v=document.getElementById("jsplus_translate_from");v.value=o._.jsplus_translator_default_from_language;document.getElementById("jsplus_translate_to").value=o._.jsplus_translator_default_to_language;v.onchange.apply(v);var u=document.getElementById("jsplus_translate_keycode_one").childNodes;for(var t=0;t<u.length;t++){if((o._.jsplus_hotkeys-parseInt(u[t].value))<256&&(o._.jsplus_hotkeys-parseInt(u[t].value))>=0){document.getElementById("jsplus_translate_keycode_one").value=parseInt(u[t].value);document.getElementById("jsplus_translate_keycode_two").value=o._.jsplus_hotkeys-parseInt(u[t].value);break;}}},onOk:function(){},};});g.addCommand("jsplus_translator_settings",new CKEDITOR.dialogCommand("jsplus_translator"));var q=function(x,u){for(var v=0,y=u.length,t=x.length;v<y&&v<t;v++){/[А-ЯЁA-Z]/.test(u.substr(v,1))&&(x=x.substr(0,v-1)+x.substr(v,1).toUpperCase()+x.substr(v+1));}return x;};var e=function(s,t,u){s.setStart(s.startContainer,s.startOffset);
s.setEnd(s.startContainer,s.endOffset+1);s.deleteContents();var v=new CKEDITOR.dom.text(q(t,u));s.insertNode(v);s.collapse(false);g.getSelection().selectRanges([s]);g.fire("saveSnapshot");};var l=function(s,t,u){s.setStart(s.startContainer,s.endOffset+1);s.setEnd(s.startContainer,s.endOffset+1);var v=new CKEDITOR.dom.text(" "+q(t,u));s.insertNode(v);s.collapse(false);g.getSelection().selectRanges([s]);g.fire("saveSnapshot");};var p=/[\s\t\r\n,\.\!\?\/\\\[\]\(\)><\*:;\#\@\%"'\+]/g;var d=function(u){j=g.getSelection();b=j.getRanges()[0];if(b.startContainer.type==CKEDITOR.NODE_TEXT){var y=b.startContainer.getText(),t=b.startOffset,s=b.endOffset-1;for(;t>0;t--){if(p.test(y.substr(t,1))){t++;break;}}b.startOffset=t;for(;s<y.length-1;s++){if(p.test(y.substr(s,1))){s--;break;}}b.endOffset=s;m=y.substring(t,s+1).replace(p," ");var w=0,x;var v=function(z){if(z.code==200){g.fire("saveSnapshot");switch(o._.jsplus_ontranslate){case"replace":e(b,a=z.text[0],m);break;case"append":l(b,a=z.text[0],m);break;case"dialog":alert_dialog=g.openDialog("jsplus_translator_alert");alert_dialog.getContentElement("tab22","elementId").getElement().setHtml(q(a=z.text[0],m));break;}}};if(m.length>3){switch(o._.jsplus_service){case"yandex":JSONP("https://translate.yandex.net/api/v1.5/tr.json/translate?key="+(o._.jsplus_yandex_key||"")+"&lang="+o._.jsplus_translator_default_from_language+"-"+o._.jsplus_translator_default_to_language+"&text="+encodeURIComponent(m)+"&callback",v);break;case"bing":JSONP("http://api.microsofttranslator.com/V2/Ajax.svc/Translate?appId="+encodeURIComponent("Bearer "+i)+"&from="+o._.jsplus_translator_default_from_language+"&to="+o._.jsplus_translator_default_to_language+"&text="+encodeURIComponent(m)+"&oncomplete",function(z){v({code:200,text:[z]});});break;case"google":JSONP(CKEDITOR.basePath+"plugins/jsplus_translator/google.php?keycode="+o._.jsplus_keycode+"&from="+o._.jsplus_translator_default_from_language+"&to="+o._.jsplus_translator_default_to_language+"&text="+encodeURIComponent(m)+"&callback",v);break;}}}};if(g.contextMenu){g.addMenuGroup("jsplus_group");g.addMenuItem("jsplus_translator",{label:g.lang.jsplus_translator.translate,command:"jsplus_translator",group:"jsplus_group"});g.contextMenu.addListener(function(s,t){b=t.getRanges()[0];if(b.startContainer.type==CKEDITOR.NODE_TEXT||b.startContainer.type==CKEDITOR.NODE_ELEMENT){return{jsplus_translator:CKEDITOR.TRISTATE_OFF};}});}g.addCommand("jsplus_translator",{exec:function(){d(g.getSelection());}});g.addCommand("jsplus_translator_reverse",{exec:function(){var s=o._.jsplus_translator_default_from_language;o._.jsplus_translator_default_from_language=o._.jsplus_translator_default_to_language;o._.jsplus_translator_default_to_language=s;g.fire("jsplus_translate_update");g.fire("updateSettings");}});g.ui.addButton("jsplus_translator",{title:g.lang.jsplus_translator.translate,command:"jsplus_translator",group:"jsplus_translator",state:CKEDITOR.TRISTATE_DISABLED,icon:this.path+"icons/jsplus_translator.png"});g.ui.addButton("jsplus_translator_settings",{title:g.lang.jsplus_translator.translate_settings,command:"jsplus_translator_settings",group:"jsplus_translator",icon:this.path+"icons/jsplus_translator_settings.png"});g.ui.addButton("jsplus_translator_reverse",{title:g.lang.jsplus_translator.translate_reverse,command:"jsplus_translator_reverse",group:"jsplus_translator",icon:this.path+"icons/jsplus_translator_reverse.png"});var h=function(){if(g.mode!="wysiwyg"){return;}var s=g.getSelection().getRanges();g.ui.get("jsplus_translator").setState(s.length&&s[0].startContainer&&s[0].startContainer.type==CKEDITOR.NODE_TEXT?CKEDITOR.TRISTATE_OFF:CKEDITOR.TRISTATE_DISABLED);};g.on("selectionChange",function(s){h();});g.on("instanceReady",function(){var t=document.getElementById(g.ui.get("jsplus_translator_reverse")._.id).childNodes[0];t.style.position="relative";var u=[document.createElement("div"),document.createElement("div")];for(var s=0;s<2;++s){u[s].style.position="absolute";u[s].style.fontSize="9px";u[s].style.fontWeight="normal";u[s].style.cursor="default";if(s==1){u[s].style.right="0";u[s].style.bottom="1px";u[s].style.color="white";}else{u[s].style.left="1px";u[s].style.top="-1px";}t.appendChild(u[s]);}g.on("jsplus_translate_update",function(){u[0].innerHTML=o._.jsplus_translator_default_from_language;u[1].innerHTML=o._.jsplus_translator_default_to_language;});g.fire("jsplus_translate_update");});g.on("contentDom",function(){var s=0;g.editable().attachListener(CKEDITOR.env.ie?g.editable():g.document.getDocumentElement(),"mouseup",function(){s=setTimeout(function(){h();},0);});g.on("destroy",function(){clearTimeout(s);});g.editable().on("keyup",h);});if(o._.jsplus_hotkeys){g.keystrokeHandler.keystrokes[o._.jsplus_hotkeys]="jsplus_translator";}}});