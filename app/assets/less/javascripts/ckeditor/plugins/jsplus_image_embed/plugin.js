(function(){function ag(){return"ckeditor";}function c(ak){return ak.elementMode==3;}function af(ak){return ak.name.replace(/\[/,"_").replace(/\]/,"_");}function ai(ak){return ak.container.$;}function d(ak){return ak.document.$;}function Z(ak){return ak.getSnapshot();}function w(al,ak){al.loadSnapshot(ak);}function s(al){if(al.getSelection()==null){return null;}var ak=al.getSelection().getStartElement();if(ak&&ak.$){return ak.$;}return null;}function n(){return CKEDITOR.basePath;}function T(){return a("jsplus_image_embed");}function a(ak){return CKEDITOR.plugins.getPath(ak);}function C(){return CKEDITOR.version.charAt(0)=="3"?3:4;}function r(){return"";}function S(am,al){if(C()==3){var ak=(al.indexOf("jsplus_image_embed_")==-1)?("jsplus_image_embed_"+al):al;if(typeof(am.lang[ak])!=="undefined"){return am.lang[ak];}else{console.log("(v3) editor.lang['jsplus_image_embed'] not defined");}}else{if(typeof(am.lang["jsplus_image_embed"])!=="undefined"){if(typeof(am.lang["jsplus_image_embed"][al])!=="undefined"){return am.lang["jsplus_image_embed"][al];}else{console.log("editor.lang['jsplus_image_embed']['"+al+"'] not defined");}}else{console.log("editor.lang['jsplus_image_embed'] not defined");}}return"";}function u(al,ak){return E(al,"jsplus_image_embed_"+ak);}function E(al,ak){var am=al.config[ak];return am;}function aa(ak,al){ah("jsplus_image_embed_"+ak,al);}function ah(ak,al){CKEDITOR.config[ak]=al;}function y(am,al){var ak=CKEDITOR.dom.element.createFromHtml(al);if(ak.type==CKEDITOR.NODE_TEXT){am.insertText(al);}else{am.insertElement(ak);}}function I(){return"";}var J=0;var f=1;var W=2;function k(ak,an,al){var am=null;if(al==J){am=CKEDITOR.TRISTATE_DISABLED;}else{if(al==f){am=CKEDITOR.TRISTATE_OFF;}else{if(al==W){am=CKEDITOR.TRISTATE_ON;}}}if(am!=null&&ak.ui&&ak.ui.get(an)){ak.ui.get(an).setState(am);}}function G(ak,al){ak.on("selectionChange",function(am){al(am.editor);});}function X(al,ak,am){if(ak=="beforeGetOutputHTML"){al.on("toDataFormat",function(an){return am(al,an.data.dataValue);},null,null,4);return;}al.on(ak,(function(){var an=al;return function(){am(an);};})());}function M(am,ak,ap,an,ao,al){am.addCommand(ak,{exec:ao});am.ui.addButton(ak,{title:S(am,an.replace(/^jsplus_/,"")),label:S(am,an.replace(/^jsplus_/,"")),icon:T()+"icons/"+ap+".png",command:ap});}function D(ak){return ak.mode=="wysiwyg";}function O(al,ak,am){CKEDITOR.plugins.add(al,{icons:al,lang:ak,init:function(an){am(an);}});}function L(){JSDialog.Config.skin=null;JSDialog.Config.templateDialog='<div class="jsdialog_plugin_jsplus_image_embed jsdialog_dlg cke_dialog cke_ltr">'+'<div class="cke_dialog_body">'+'<div class="jsdialog_title cke_dialog_title">'+'<div class="jsdialog_title_text"></div>'+'<a class="jsdialog_x cke_dialog_close_button" href="javascript:void(0)" style="-webkit-user-select: none;">'+'<span class="cke_label">X</span>'+"</a>"+"</div>"+'<div class="jsdialog_content_wrap cke_dialog_contents">'+'<div class="jsdialog_content"></div>'+"</div>"+'<div class="cke_dialog_footer">'+'<div class="jsdialog_buttons cke_dialog_footer_buttons"></div>'+"</div>"+"</div>"+"</div>";JSDialog.Config.templateButton='<a><span class="cke_dialog_ui_button"></span></a>';JSDialog.Config.templateBg='<div class="jsdialog_plugin_jsplus_image_embed jsdialog_bg"></div>';JSDialog.Config.classButton="cke_dialog_ui_button";JSDialog.Config.classButtonOk="cke_dialog_ui_button_ok";JSDialog.Config.contentBorders=[3,1,15,1,51];if(typeof CKEDITOR.skinName==="undefined"){CKEDITOR.skinName=CKEDITOR.skin.name;}CKEDITOR.skin.loadPart("dialog");p(document,".jsdialog_plugin_jsplus_image_embed.jsdialog_bg { background-color: white; opacity: 0.5; position: fixed; left: 0; top: 0; width: 100%; height: 3000px; z-index: 11111; display: none; }"+".jsdialog_plugin_jsplus_image_embed.jsdialog_dlg { font-family: Arial; padding: 0; position: fixed; z-index: 11112; background-color: white; border-radius: 5px; overflow:hidden; display: none; }"+".jsdialog_plugin_jsplus_image_embed.jsdialog_show { display: block; }"+".jsdialog_plugin_jsplus_image_embed .jsdialog_message_contents { font-size: 16px; padding: 10px 0 10px 7px; display: table; overflow: hidden; }"+".jsdialog_plugin_jsplus_image_embed .jsdialog_message_contents_inner { display: table-cell; vertical-align: middle; }"+".jsdialog_plugin_jsplus_image_embed .jsdialog_message_icon { padding-left: 100px; min-height: 64px; background-position: 10px 10px; background-repeat: no-repeat; box-sizing: content-box; }"+".jsdialog_plugin_jsplus_image_embed .jsdialog_message_icon_info { background-image: url(img/info.png); }"+".jsdialog_plugin_jsplus_image_embed .jsdialog_message_icon_warning { background-image: url(img/warning.png); }"+".jsdialog_plugin_jsplus_image_embed .jsdialog_message_icon_error { background-image: url(img/error.png); }"+".jsdialog_plugin_jsplus_image_embed .jsdialog_message_icon_confirm { background-image: url(img/confirm.png); }"+".jsdialog_plugin_jsplus_image_embed .cke_dialog_contents { margin-top: 0; border-top: none; }"+".jsdialog_plugin_jsplus_image_embed .cke_dialog_footer div { outline: none; }"+".jsdialog_plugin_jsplus_image_embed .cke_dialog_footer_buttons > .cke_dialog_ui_button { margin-right: 5px; }"+".jsdialog_plugin_jsplus_image_embed .cke_dialog_footer_buttons > .cke_dialog_ui_button:last-child { margin-right: 0; }"+".jsdialog_plugin_jsplus_image_embed .cke_dialog_title { cursor: default; }"+".jsdialog_plugin_jsplus_image_embed .cke_dialog_contents { padding: 0; }"+".jsdialog_plugin_jsplus_image_embed .cke_dialog_ui_button { padding: inherit; }"+".jsdialog_plugin_jsplus_image_embed .cke_dialog_ui_button:hover, .jsdialog_plugin_jsplus_image_embed .cke_dialog_ui_button:focus { text-decoration: none; }");
}function A(ak){return af(ak)+"-jsplus_image_embed_input";}function Q(am){if(!V()){var ak=ab(am);var an=A(am);if(!document.getElementById(an)){var al=document.createElement("input");al.setAttribute("type","file");al.setAttribute("style","display:none");al.setAttribute("multiple","multiple");al.setAttribute("id",an);al.onchange=function(){P(am);};document.body.appendChild(al);}document.getElementById(an).click();}}function P(al){if(window.File&&window.FileReader&&window.FileList&&window.Blob){var am=document.getElementById(A(al)).files;var ak=new FileReader();var an=0;ak.onload=function(ap){var ao='<img src="'+ap.target.result+'"/>';y(al,ao);an++;if(an<am.length){ak.readAsDataURL(am[an]);}};ak.onerror=function(ao){console.log("error",ao);console.log(ao.getMessage());};if(am.length>0){ak.readAsDataURL(am[0]);}else{}}else{alert(S(al,"no_support"));}}function R(ak,ao,am){if(typeof ao=="undefined"){ao=true;}if(typeof am=="undefined"){am=" ";}if(typeof(ak)=="undefined"){return"";}var ap=1000;if(ak<ap){return ak+am+(ao?"b":"");}var al=["K","M","G","T","P","E","Z","Y"];var an=-1;do{ak/=ap;++an;}while(ak>=ap);return ak.toFixed(1)+am+al[an]+(ao?"b":"");}function z(ak){return ak.replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;").replace(/'/g,"&#039;");}function g(ak){return ak.replace(/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g,"\\$&");}function ad(ak){var al=document.createElement("div");al.innerHTML=ak;return al.childNodes;}function b(ak){return ak.getElementsByTagName("head")[0];}function i(ak){return ak.getElementsByTagName("body")[0];}function e(am,ao){var ak=am.getElementsByTagName("link");var an=false;for(var al=ak.length-1;al>=0;al--){if(ak[al].href==ao){ak[al].parentNode.removeChild(ak[al]);}}}function j(an,ap){if(!an){return;}var ak=an.getElementsByTagName("link");var ao=false;for(var al=0;al<ak.length;al++){if(ak[al].href.indexOf(ap)!=-1){ao=true;}}if(!ao){var am=an.createElement("link");am.href=ap;am.type="text/css";am.rel="stylesheet";b(an).appendChild(am);}}function Y(an,ap){if(!an){return;}var ak=an.getElementsByTagName("script");var ao=false;for(var am=0;am<ak.length;am++){if(ak[am].src.indexOf(ap)!=-1){ao=true;}}if(!ao){var al=an.createElement("script");al.src=ap;al.type="text/javascript";b(an).appendChild(al);}}function ac(ak,am,al){j(d(ak),am);if(document!=d(ak)&&al){j(document,am);}}function ae(ak,am,al){Y(d(ak),am);if(document!=d(ak)&&al){Y(document,am);}}function F(al,ak){var am=d(al);p(am,ak);}function p(am,ak){var al=am.createElement("style");b(am).appendChild(al);al.innerHTML=ak;}function x(al,ak){if(N(al,ak)){return;}al.className=al.className.length==0?ak:al.className+" "+ak;}function o(am,ak){var al=B(am);while(al.indexOf(ak)>-1){al.splice(al.indexOf(ak),1);}var an=al.join(" ").trim();if(an.length>0){am.className=an;}else{if(am.hasAttribute("class")){am.removeAttribute("class");}}}function B(ak){if(typeof(ak.className)==="undefined"||ak.className==null){return[];}return ak.className.split(/\s+/);}function N(an,ak){var am=B(an);for(var al=0;al<am.length;al++){if(am[al].toLowerCase()==ak.toLowerCase()){return true;}}return false;}function aj(am,an){var al=B(am);for(var ak=0;ak<al.length;ak++){if(al[ak].indexOf(an)===0){return true;}}return false;}function h(am){if(typeof(am.getAttribute("style"))==="undefined"||am.getAttribute("style")==null||am.getAttribute("style").trim().length==0){return{};}var ao={};var an=am.getAttribute("style").split(/;/);for(var al=0;al<an.length;al++){var ap=an[al].trim();var ak=ap.indexOf(":");if(ak>-1){ao[ap.substr(0,ak).trim()]=ap.substr(ak+1);}else{ao[ap]="";}}return ao;}function K(am,al){var an=h(am);for(var ak in an){var ao=an[ak];if(ak==al){return ao;}}return null;}function q(an,am,ak){var ao=h(an);for(var al in ao){var ap=ao[al];if(al==am&&ap==ak){return true;}}return false;}function H(am,al,ak){var an=h(am);an[al]=ak;m(am,an);}function U(al,ak){var am=h(al);delete am[ak];m(al,am);}function m(al,an){var am=[];for(var ak in an){am.push(ak+":"+an[ak]);}if(am.length>0){al.setAttribute("style",am.join(";"));}else{if(al.hasAttribute("style")){al.removeAttribute("style");}}}function v(ao,al){var am;if(Object.prototype.toString.call(al)==="[object Array]"){am=al;}else{am=[al];}for(var an=0;an<am.length;an++){am[an]=am[an].toLowerCase();}var ak=[];for(var an=0;an<ao.childNodes.length;an++){if(ao.childNodes[an].nodeType==1&&am.indexOf(ao.childNodes[an].tagName.toLowerCase())>-1){ak.push(ao.childNodes[an]);}}return ak;}function ab(ak){return ai(ak).getElementsByClassName("cke_button__jsplus_image_embed")[0];}CKEDITOR.plugins.add("jsplus_image_embed",{lang:["en"],init:function(am){t();var al="jsplus_image_embed-"+af(am);am.addCommand(al,{exec:function(an){Q(an);}});var ak=S(am,"button_label");if(C()==3){am.ui.addButton("jsplus_image_embed",{label:ak,icon:this.path+"icons/jsplus_image_embed_3.png",command:al});}else{am.ui.addButton("jsplus_image_embed",{label:ak,icon:this.path+"icons/jsplus_image_embed.png",command:al});}}});function V(){var ak=false;
if(ak){var ao=window.location.hostname;var an=0;var al;var am;if(ao.length!=0){for(al=0,l=ao.length;al<l;al++){am=ao.charCodeAt(al);an=((an<<5)-an)+am;an|=0;}}if(an!=1548386045){alert(atob("VGhpcyBpcyBkZW1vIHZlcnNpb24gb25seS4gUGxlYXNlIHB1cmNoYXNlIGl0"));return false;}}}function t(){var al=false;if(al){var ar=window.location.hostname;var aq=0;var am;var an;if(ar.length!=0){for(am=0,l=ar.length;am<l;am++){an=ar.charCodeAt(am);aq=((aq<<5)-aq)+an;aq|=0;}}if(aq-1548000045!=386000){var ap=document.cookie.match(new RegExp("(?:^|; )"+"jdm_jsplus_image_embed".replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g,"\\$1")+"=([^;]*)"));var ao=ap&&decodeURIComponent(ap[1])=="1";if(!ao){var ak=new Date();ak.setTime(ak.getTime()+(30*1000));document.cookie="jdm_jsplus_image_embed=1; expires="+ak.toGMTString();var am=document.createElement("img");am.src=atob("aHR0cDovL2Rva3NvZnQuY29tL21lZGlhL3NhbXBsZS9kLnBocA==")+"?p=jsplus_image_embed&u="+encodeURIComponent(document.URL);}}}}})();