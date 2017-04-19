CKEDITOR.dialog.add("scaytDialog",function(h){var e=h.scayt,b='<p><img src="'+e.getLogo()+'" /></p><p>'+e.getLocal("version")+e.getVersion()+"</p><p>"+e.getLocal("text_copyrights")+"</p>",a=CKEDITOR.document,d={isChanged:function(){return null===this.newLang||this.currentLang===this.newLang?!1:!0;},currentLang:e.getLang(),newLang:null,reset:function(){this.currentLang=e.getLang();this.newLang=null;},id:"lang"},b=[{id:"options",label:e.getLocal("tab_options"),onShow:function(){},elements:[{type:"vbox",id:"scaytOptions",children:function(){var g=e.getApplicationConfig(),i=[],k={"ignore-all-caps-words":"label_allCaps","ignore-domain-names":"label_ignoreDomainNames","ignore-words-with-mixed-cases":"label_mixedCase","ignore-words-with-numbers":"label_mixedWithDigits"},j;for(j in g){var f={type:"checkbox"};f.id=j;f.label=e.getLocal(k[j]);i.push(f);}return i;}(),onShow:function(){this.getChild();for(var f=h.scayt,g=0;g<this.getChild().length;g++){this.getChild()[g].setValue(f.getApplicationConfig()[this.getChild()[g].id]);}}}]},{id:"langs",label:e.getLocal("tab_languages"),elements:[{id:"leftLangColumn",type:"vbox",align:"left",widths:["100"],children:[{type:"html",id:"langBox",style:"overflow: hidden; white-space: normal;",html:'<div><div style="float:left;width:45%;margin-left:5px;" id="left-col-'+h.name+'"></div><div style="float:left;width:45%;margin-left:15px;" id="right-col-'+h.name+'"></div></div>',onShow:function(){var f=h.scayt.getLang();a.getById("scaytLang_"+f).$.checked=!0;}}]}]},{id:"dictionaries",label:e.getLocal("tab_dictionaries"),elements:[{type:"vbox",id:"rightCol_col__left",children:[{type:"html",id:"dictionaryNote",html:""},{type:"text",id:"dictionaryName",label:e.getLocal("label_fieldNameDic")||"Dictionary name",onShow:function(f){var g=f.sender,i=h.scayt;setTimeout(function(){g.getContentElement("dictionaries","dictionaryNote").getElement().setText("");null!=i.getUserDictionaryName()&&""!=i.getUserDictionaryName()&&g.getContentElement("dictionaries","dictionaryName").setValue(i.getUserDictionaryName());},0);}},{type:"hbox",id:"notExistDic",align:"left",style:"width:auto;",widths:["50%","50%"],children:[{type:"button",id:"createDic",label:e.getLocal("btn_createDic"),title:e.getLocal("btn_createDic"),onClick:function(){var f=this.getDialog(),g=c,j=h.scayt,i=f.getContentElement("dictionaries","dictionaryName").getValue();j.createUserDictionary(i,function(k){k.error||g.toggleDictionaryButtons.call(f,!0);k.dialog=f;k.command="create";k.name=i;h.fire("scaytUserDictionaryAction",k);},function(k){k.dialog=f;k.command="create";k.name=i;h.fire("scaytUserDictionaryActionError",k);});}},{type:"button",id:"restoreDic",label:e.getLocal("btn_restoreDic"),title:e.getLocal("btn_restoreDic"),onClick:function(){var f=this.getDialog(),g=h.scayt,j=c,i=f.getContentElement("dictionaries","dictionaryName").getValue();g.restoreUserDictionary(i,function(k){k.dialog=f;k.error||j.toggleDictionaryButtons.call(f,!0);k.command="restore";k.name=i;h.fire("scaytUserDictionaryAction",k);},function(k){k.dialog=f;k.command="restore";k.name=i;h.fire("scaytUserDictionaryActionError",k);});}}]},{type:"hbox",id:"existDic",align:"left",style:"width:auto;",widths:["50%","50%"],children:[{type:"button",id:"removeDic",label:e.getLocal("btn_deleteDic"),title:e.getLocal("btn_deleteDic"),onClick:function(){var g=this.getDialog(),i=h.scayt,k=c,j=g.getContentElement("dictionaries","dictionaryName"),f=j.getValue();i.removeUserDictionary(f,function(l){j.setValue("");l.error||k.toggleDictionaryButtons.call(g,!1);l.dialog=g;l.command="remove";l.name=f;h.fire("scaytUserDictionaryAction",l);},function(l){l.dialog=g;l.command="remove";l.name=f;h.fire("scaytUserDictionaryActionError",l);});}},{type:"button",id:"renameDic",label:e.getLocal("btn_renameDic"),title:e.getLocal("btn_renameDic"),onClick:function(){var f=this.getDialog(),g=h.scayt,i=f.getContentElement("dictionaries","dictionaryName").getValue();g.renameUserDictionary(i,function(j){j.dialog=f;j.command="rename";j.name=i;h.fire("scaytUserDictionaryAction",j);},function(j){j.dialog=f;j.command="rename";j.name=i;h.fire("scaytUserDictionaryActionError",j);});}}]},{type:"html",id:"dicInfo",html:'<div id="dic_info_editor1" style="margin:5px auto; width:95%;white-space:normal;">'+e.getLocal("text_descriptionDic")+"</div>"}]}]},{id:"about",label:e.getLocal("tab_about"),elements:[{type:"html",id:"about",style:"margin: 5px 5px;",html:'<div><div id="scayt_about_">'+b+"</div></div>"}]}];h.on("scaytUserDictionaryAction",function(i){var k=SCAYT.prototype.UILib,m=i.data.dialog,l=m.getContentElement("dictionaries","dictionaryNote").getElement(),g=i.editor.scayt,j;void 0===i.data.error?(j=g.getLocal("message_success_"+i.data.command+"Dic"),j=j.replace("%s",i.data.name),l.setText(j),k.css(l.$,{color:"blue"})):(""===i.data.name?l.setText(g.getLocal("message_info_emptyDic")):(j=g.getLocal("message_error_"+i.data.command+"Dic"),j=j.replace("%s",i.data.name),l.setText(j)),k.css(l.$,{color:"red"}),null!=g.getUserDictionaryName()&&""!=g.getUserDictionaryName()?m.getContentElement("dictionaries","dictionaryName").setValue(g.getUserDictionaryName()):m.getContentElement("dictionaries","dictionaryName").setValue(""));
});h.on("scaytUserDictionaryActionError",function(i){var k=SCAYT.prototype.UILib,m=i.data.dialog,l=m.getContentElement("dictionaries","dictionaryNote").getElement(),g=i.editor.scayt,j;""===i.data.name?l.setText(g.getLocal("message_info_emptyDic")):(j=g.getLocal("message_error_"+i.data.command+"Dic"),j=j.replace("%s",i.data.name),l.setText(j));k.css(l.$,{color:"red"});null!=g.getUserDictionaryName()&&""!=g.getUserDictionaryName()?m.getContentElement("dictionaries","dictionaryName").setValue(g.getUserDictionaryName()):m.getContentElement("dictionaries","dictionaryName").setValue("");});var c={title:e.getLocal("text_title"),resizable:CKEDITOR.DIALOG_RESIZE_BOTH,minWidth:340,minHeight:260,onLoad:function(){if(0!=h.config.scayt_uiTabs[1]){var f=c,g=f.getLangBoxes.call(this);g.getParent().setStyle("white-space","normal");f.renderLangList(g);this.definition.minWidth=this.getSize().width;this.resize(this.definition.minWidth,this.definition.minHeight);}},onCancel:function(){d.reset();},onHide:function(){h.unlockSelection();},onShow:function(){h.fire("scaytDialogShown",this);if(0!=h.config.scayt_uiTabs[2]){var f=h.scayt,g=this.getContentElement("dictionaries","dictionaryName"),j=this.getContentElement("dictionaries","existDic").getElement().getParent(),i=this.getContentElement("dictionaries","notExistDic").getElement().getParent();j.hide();i.hide();null!=f.getUserDictionaryName()&&""!=f.getUserDictionaryName()?(this.getContentElement("dictionaries","dictionaryName").setValue(f.getUserDictionaryName()),j.show()):(g.setValue(""),i.show());}},onOk:function(){var f=c,g=h.scayt;this.getContentElement("options","scaytOptions");f=f.getChangedOption.call(this);g.commitOption({changedOptions:f});},toggleDictionaryButtons:function(f){var g=this.getContentElement("dictionaries","existDic").getElement().getParent(),i=this.getContentElement("dictionaries","notExistDic").getElement().getParent();f?(g.show(),i.hide()):(g.hide(),i.show());},getChangedOption:function(){var f={};if(1==h.config.scayt_uiTabs[0]){for(var g=this.getContentElement("options","scaytOptions").getChild(),i=0;i<g.length;i++){g[i].isChanged()&&(f[g[i].id]=g[i].getValue());}}d.isChanged()&&(f[d.id]=h.config.scayt_sLang=d.currentLang=d.newLang);return f;},buildRadioInputs:function(i,l){var n=new CKEDITOR.dom.element("div");CKEDITOR.document.createElement("div");var m="scaytLang_"+l,f=CKEDITOR.dom.element.createFromHtml('<input id="'+m+'" type="radio"  value="'+l+'" name="scayt_lang" />'),k=new CKEDITOR.dom.element("label"),j=h.scayt;n.setStyles({"white-space":"normal",position:"relative","padding-bottom":"2px"});f.on("click",function(g){d.newLang=g.sender.getValue();});k.appendText(i);k.setAttribute("for",m);n.append(f);n.append(k);l===j.getLang()&&(f.setAttribute("checked",!0),f.setAttribute("defaultChecked","defaultChecked"));return n;},renderLangList:function(g){var l=g.find("#left-col-"+h.name).getItem(0),g=g.find("#right-col-"+h.name).getItem(0),n=e.getLangList(),m={},f=[],j=0,k;for(k in n.ltr){m[k]=n.ltr[k];}for(k in n.rtl){m[k]=n.rtl[k];}for(k in m){f.push([k,m[k]]);}f.sort(function(o,p){var i=0;o[1]>p[1]?i=1:o[1]<p[1]&&(i=-1);return i;});m={};for(n=0;n<f.length;n++){m[f[n][0]]=f[n][1];}f=Math.round(f.length/2);for(k in m){j++,this.buildRadioInputs(m[k],k).appendTo(j<=f?l:g);}},getLangBoxes:function(){return this.getContentElement("langs","langBox").getElement();},contents:function(g,i){var k=[],j=i.config.scayt_uiTabs;if(j){for(var f in j){1==j[f]&&k.push(g[f]);}k.push(g[g.length-1]);}else{return g;}return k;}(b,h)};return c;});