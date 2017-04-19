CKEDITOR.dialog.add("cellProperties",function(r){function u(c){return function(e){for(var g=c(e[0]),f=1;f<e.length;f++){if(c(e[f])!==g){g=null;break;}}"undefined"!=typeof g&&(this.setValue(g),CKEDITOR.env.gecko&&("select"==this.type&&!g)&&(this.getInputElement().$.selectedIndex=-1));};}function o(c){if(c=b.exec(c.getStyle("width")||c.getAttribute("width"))){return c[2];}}var q=r.lang.table,v=q.cell,t=r.lang.common,p=CKEDITOR.dialog.validate,b=/^(\d+(?:\.\d+)?)(px|%)$/,s={type:"html",html:"&nbsp;"},a="rtl"==r.lang.dir,n=r.plugins.colordialog;return{title:v.title,minWidth:CKEDITOR.env.ie&&CKEDITOR.env.quirks?450:410,minHeight:CKEDITOR.env.ie&&(CKEDITOR.env.ie7Compat||CKEDITOR.env.quirks)?230:220,contents:[{id:"info",label:v.title,accessKey:"I",elements:[{type:"hbox",widths:["40%","5%","40%"],children:[{type:"vbox",padding:0,children:[{type:"hbox",widths:["70%","30%"],children:[{type:"text",id:"width",width:"100px",label:t.width,validate:p.number(v.invalidWidth),onLoad:function(){var e=this.getDialog().getContentElement("info","widthType").getElement(),d=this.getInputElement(),f=d.getAttribute("aria-labelledby");d.setAttribute("aria-labelledby",[f,e.$.id].join(" "));},setup:u(function(d){var c=parseInt(d.getAttribute("width"),10),d=parseInt(d.getStyle("width"),10);return !isNaN(d)?d:!isNaN(c)?c:"";}),commit:function(e){var d=parseInt(this.getValue(),10),f=this.getDialog().getValueOf("info","widthType")||o(e);isNaN(d)?e.removeStyle("width"):e.setStyle("width",d+f);e.removeAttribute("width");},"default":""},{type:"select",id:"widthType",label:r.lang.table.widthUnit,labelStyle:"visibility:hidden","default":"px",items:[[q.widthPx,"px"],[q.widthPc,"%"]],setup:u(o)}]},{type:"hbox",widths:["70%","30%"],children:[{type:"text",id:"height",label:t.height,width:"100px","default":"",validate:p.number(v.invalidHeight),onLoad:function(){var e=this.getDialog().getContentElement("info","htmlHeightType").getElement(),d=this.getInputElement(),f=d.getAttribute("aria-labelledby");d.setAttribute("aria-labelledby",[f,e.$.id].join(" "));},setup:u(function(d){var c=parseInt(d.getAttribute("height"),10),d=parseInt(d.getStyle("height"),10);return !isNaN(d)?d:!isNaN(c)?c:"";}),commit:function(d){var c=parseInt(this.getValue(),10);isNaN(c)?d.removeStyle("height"):d.setStyle("height",CKEDITOR.tools.cssLength(c));d.removeAttribute("height");}},{id:"htmlHeightType",type:"html",html:"<br />"+q.widthPx}]},s,{type:"select",id:"wordWrap",label:v.wordWrap,"default":"yes",items:[[v.yes,"yes"],[v.no,"no"]],setup:u(function(d){var c=d.getAttribute("noWrap");if("nowrap"==d.getStyle("white-space")||c){return"no";}}),commit:function(c){"no"==this.getValue()?c.setStyle("white-space","nowrap"):c.removeStyle("white-space");c.removeAttribute("noWrap");}},s,{type:"select",id:"hAlign",label:v.hAlign,"default":"",items:[[t.notSet,""],[t.alignLeft,"left"],[t.alignCenter,"center"],[t.alignRight,"right"],[t.alignJustify,"justify"]],setup:u(function(d){var c=d.getAttribute("align");return d.getStyle("text-align")||c||"";}),commit:function(d){var c=this.getValue();c?d.setStyle("text-align",c):d.removeStyle("text-align");d.removeAttribute("align");}},{type:"select",id:"vAlign",label:v.vAlign,"default":"",items:[[t.notSet,""],[t.alignTop,"top"],[t.alignMiddle,"middle"],[t.alignBottom,"bottom"],[v.alignBaseline,"baseline"]],setup:u(function(d){var c=d.getAttribute("vAlign"),d=d.getStyle("vertical-align");switch(d){case"top":case"middle":case"bottom":case"baseline":break;default:d="";}return d||c||"";}),commit:function(d){var c=this.getValue();c?d.setStyle("vertical-align",c):d.removeStyle("vertical-align");d.removeAttribute("vAlign");}}]},s,{type:"vbox",padding:0,children:[{type:"select",id:"cellType",label:v.cellType,"default":"td",items:[[v.data,"td"],[v.header,"th"]],setup:u(function(c){return c.getName();}),commit:function(c){c.renameNode(this.getValue());}},s,{type:"text",id:"rowSpan",label:v.rowSpan,"default":"",validate:p.integer(v.invalidRowSpan),setup:u(function(c){if((c=parseInt(c.getAttribute("rowSpan"),10))&&1!=c){return c;}}),commit:function(d){var c=parseInt(this.getValue(),10);c&&1!=c?d.setAttribute("rowSpan",this.getValue()):d.removeAttribute("rowSpan");}},{type:"text",id:"colSpan",label:v.colSpan,"default":"",validate:p.integer(v.invalidColSpan),setup:u(function(c){if((c=parseInt(c.getAttribute("colSpan"),10))&&1!=c){return c;}}),commit:function(d){var c=parseInt(this.getValue(),10);c&&1!=c?d.setAttribute("colSpan",this.getValue()):d.removeAttribute("colSpan");}},s,{type:"hbox",padding:0,widths:["60%","40%"],children:[{type:"text",id:"bgColor",label:v.bgColor,"default":"",setup:u(function(d){var c=d.getAttribute("bgColor");return d.getStyle("background-color")||c;}),commit:function(c){this.getValue()?c.setStyle("background-color",this.getValue()):c.removeStyle("background-color");c.removeAttribute("bgColor");}},n?{type:"button",id:"bgColorChoose","class":"colorChooser",label:v.chooseColor,onLoad:function(){this.getElement().getParent().setStyle("vertical-align","bottom");
},onClick:function(){r.getColorFromDialog(function(c){c&&this.getDialog().getContentElement("info","bgColor").setValue(c);this.focus();},this);}}:s]},s,{type:"hbox",padding:0,widths:["60%","40%"],children:[{type:"text",id:"borderColor",label:v.borderColor,"default":"",setup:u(function(d){var c=d.getAttribute("borderColor");return d.getStyle("border-color")||c;}),commit:function(c){this.getValue()?c.setStyle("border-color",this.getValue()):c.removeStyle("border-color");c.removeAttribute("borderColor");}},n?{type:"button",id:"borderColorChoose","class":"colorChooser",label:v.chooseColor,style:(a?"margin-right":"margin-left")+": 10px",onLoad:function(){this.getElement().getParent().setStyle("vertical-align","bottom");},onClick:function(){r.getColorFromDialog(function(c){c&&this.getDialog().getContentElement("info","borderColor").setValue(c);this.focus();},this);}}:s]}]}]}]}],onShow:function(){this.cells=CKEDITOR.plugins.tabletools.getSelectedCells(this._.editor.getSelection());this.setupContent(this.cells);},onOk:function(){for(var f=this._.editor.getSelection(),e=f.createBookmarks(),h=this.cells,g=0;g<h.length;g++){this.commitContent(h[g]);}this._.editor.forceNextSelectionCheck();f.selectBookmarks(e);this._.editor.selectionChange();},onLoad:function(){var c={};this.foreach(function(d){d.setup&&d.commit&&(d.setup=CKEDITOR.tools.override(d.setup,function(e){return function(){e.apply(this,arguments);c[d.id]=d.getValue();};}),d.commit=CKEDITOR.tools.override(d.commit,function(e){return function(){c[d.id]!==d.getValue()&&e.apply(this,arguments);};}));});}};});