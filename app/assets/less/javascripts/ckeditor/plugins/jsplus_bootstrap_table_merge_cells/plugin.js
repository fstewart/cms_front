(function(){function t(A){var z=v(A);var B=0;for(var y=0;y<z.length;y++){var x=z[y];var C=getElementsByTagNameOnlyChildren(x,["td","th"]);if(C.length>B){B=C.length;}}return B;}function g(x){return getElementsByTagNameOnlyChildren(x,["td","th"]);}function o(B){var A;for(var x=0;x<B.length;x++){var y=B[x];var z=getStyle(y,"text-align");if(typeof(A)=="undefined"){A=z;}else{if(z!==A){return"do_not_change";}}}if(typeof(A)=="undefined"||A==null){A="default";}if(A!="left"&&A!="center"&&A!="right"&&A!="default"){A="do_not_change";}return A;}function j(B){var A;for(var x=0;x<B.length;x++){var y=B[x];var z=getStyle(y,"vertical-align");if(typeof(A)=="undefined"){A=z;}else{if(z!==A){return"do_not_change";}}}if(typeof(A)=="undefined"||A==null){A="default";}if(A!="top"&&A!="middle"&&A!="bottom"&&A!="default"){A="do_not_change";}return A;}function w(z){var A=k(s(z));for(var y=0;y<A.length;y++){for(var x=0;x<A[y].length;x++){if(A[y][x]==z){return x;}}}return -1;}function h(x){if(x.hasAttribute("colspan")){var y=parseInt(x.getAttribute("colspan"));if(!isNaN(y)&&y>0){return y;}}return 1;}function e(x){if(x.hasAttribute("rowspan")){var y=parseInt(x.getAttribute("rowspan"));if(!isNaN(y)&&y>0){return y;}}return 1;}function v(E){var z=[];var F=[null,"tbody","thead","tfoot"];for(var y=0;y<F.length;y++){var G=F[y];var A=G==null?[E]:getElementsByTagNameOnlyChildren(E,G);if(A.length>0){for(var C=0;C<A.length;C++){var x=A[C];var D=getElementsByTagNameOnlyChildren(x,["tr"]);for(var B=0;B<D.length;B++){z.push(D[B]);}}}}var G=F[y];var A=getElementsByTagNameOnlyChildren(E,["thead","tfoot"]);for(var C=0;C<A.length;C++){if(getElementsByTagNameOnlyChildren(A[C],["td","th"]).length>0){z.push(A[C]);}}return z;}function n(B){var C=[];var A=v(B);for(var z=0;z<A.length;z++){var y=getElementsByTagNameOnlyChildren(A[z],["td","th"]);for(var x=0;x<y.length;x++){C.push(y[x]);}}return C;}function a(y){var z=[];var B=n(y);var x=o(B);if(x=="left"||x=="center"||x=="right"){z.push("text-align:"+x);}var A=j(B);if(A=="top"||A=="middle"||A=="bottom"){z.push("vertical-align:"+A);}return z.join(";");}function q(x){if(x.tagName=="THEAD"){return true;}for(var y=0;y<2;y++){x=x.parentNode;if(x==null||x.tagName=="TBODY"||x.tagName=="TABLE"){return false;}if(x.tagName=="THEAD"){return true;}}return false;}function m(x,y){var z=window.document.createElement(x);if(y.length>0){z.setAttribute("style",y);}z.innerHTML="&nbsp;";return z;}function p(x,z,y){var A=getEditorName();if(typeof window["jsplus_"+A+"_listeners"]==="undefined"){window["jsplus_"+A+"_listeners"]={};}if(typeof window["jsplus_"+A+"_listeners"][z]==="undefined"){window["jsplus_"+A+"_listeners"][z]={};}if(typeof window["jsplus_"+A+"_listeners"][z][getEditorId(x)]==="undefined"){window["jsplus_"+A+"_listeners"][z][getEditorId(x)]=[];}window["jsplus_"+A+"_listeners"][z][getEditorId(x)].push((function(){var B=x;return function(){y(B);};})());}function r(y,z){var A=getEditorName();if(typeof window["jsplus_"+A+"_listeners"]!=="undefined"&&typeof window["jsplus_"+A+"_listeners"][z]!=="undefined"&&typeof window["jsplus_"+A+"_listeners"][z][getEditorId(y)]!="undefined"){for(var x=0;x<window["jsplus_"+A+"_listeners"][z][getEditorId(y)].length;x++){window["jsplus_"+A+"_listeners"][z][getEditorId(y)][x](y);}}}function u(y,F,x){var E=getElementsByTagNameOnlyChildren(y,["td","th"]);var C=0;for(var A=0;A<E.length;A++){var G=E[A];if(C==F){var D=m(G.tagName,x);G.parentNode.insertBefore(D,G);return;}var B=h(G);C+=B;if(C>F){G.setAttribute("colspan",B+1);return;}}var z="td";if(E.length>0){z=E[E.length-1].tagName;}else{if(q(y)){z="th";}}for(;C<=F;C++){var D=m(G.tagName,x);y.appendChild(D);}}function c(z,D,C){var A=z.parentNode.tagName=="THEAD"?"th":"td";var F=t(D);var x=a(D);var y=window.document.createElement("tr");for(var B=0;B<F;B++){var E=window.document.createElement(A);if(x.length>0){E.setAttribute("style",x);}E.innerHTML="&nbsp;";y.appendChild(E);}if(C){z.parentNode.insertBefore(y,z);}else{if(z.nextSibling!=null){z.parentNode.insertBefore(y,z.nextSibling);}else{z.parentNode.appendChild(y);}}return y;}function d(x,y){p(x,"table_tools",y);}function l(x){r(x,"table_tools");}function s(x){var y=x.parentNode;while(y!=null){if(y.tagName=="TABLE"){return y;}y=y.parentNode;}return null;}function k(I){var H=v(I);var x=-1;var G=[];for(var B=0;B<H.length;B++){x++;!G[x]&&(G[x]=[]);var F=-1;var J=getElementsByTagNameOnlyChildren(H[B],["td","th"]);for(var A=0;A<J.length;A++){var E=J[A];F++;while(G[x][F]){F++;}var z=h(E);var C=e(E);for(var y=0;y<C;y++){if(!G[x+y]){G[x+y]=[];}for(var D=0;D<z;D++){G[x+y][F+D]=J[A];}}F+=z-1;}}return G;}function i(){return CKEDITOR.version.charAt(0)=="3"?3:4;}function f(y,x){var z=y.config[x];return z;}function b(z,y){if(i()==3){var x=(y.indexOf("jsplus_bootstrap_table_merge_cells_")==-1)?("jsplus_bootstrap_table_merge_cells_"+y):y;if(typeof(z.lang[x])!=="undefined"){return z.lang[x];}else{console.log("(v3) editor.lang['jsplus_bootstrap_table_merge_cells'] not defined");}}else{if(typeof(z.lang["jsplus_bootstrap_table_merge_cells"])!=="undefined"){if(typeof(z.lang["jsplus_bootstrap_table_merge_cells"][y])!=="undefined"){return z.lang["jsplus_bootstrap_table_merge_cells"][y];
}else{console.log("editor.lang['jsplus_bootstrap_table_merge_cells']['"+y+"'] not defined");}}else{console.log("editor.lang['jsplus_bootstrap_table_merge_cells'] not defined");}}return"";}CKEDITOR.plugins.add("jsplus_bootstrap_table_merge_cells",{icons:"jsplus_bootstrap_table_merge_cells",lang:"en,ru",init:function(y){var x={"add_row_up":"rowInsertBefore","add_row_down":"rowInsertAfter","add_col_left":"columnInsertBefore","add_col_right":"columnInsertAfter","delete_row":"rowDelete","delete_col":"columnDelete","delete_cell":"cellDelete","merge_cells":"cellMerge","merge_cell_right":"cellMergeRight","merge_cell_down":"cellMergeDown","split_cell_vert":"cellVerticalSplit","split_cell_hor":"cellHorizontalSplit","add_cell_left":"cellInsertBefore","add_cell_right":"cellInsertAfter"};var z=false;if("jsplus_bootstrap_table_merge_cells".indexOf("bootstrap")>-1){if(f(y,"jsplus_bootstrap_include_bw_icons")===true){z=true;}}if("jsplus_bootstrap_table_merge_cells".indexOf("foundation")>-1){if(f(y,"jsplus_foundation_include_bw_icons")===true){z=true;}}if(z){y.ui.addButton("jsplus_bootstrap_table_merge_cells",{title:b(y,"jsplus_bootstrap_table_merge_cells".replace(/^jsplus(_bootstrap|_foundation)?_table_/,"")),icon:this.path+"icons/jsplus_bootstrap_table_merge_cells_bw.png",command:x["jsplus_bootstrap_table_merge_cells".replace(/^jsplus(_bootstrap|_foundation)?_table_/,"")],onclick:function(){l(y);}});}else{y.ui.addButton("jsplus_bootstrap_table_merge_cells",{title:b(y,"jsplus_bootstrap_table_merge_cells".replace(/^jsplus(_bootstrap|_foundation)?_table_/,"")),icon:this.path+"icons/jsplus_bootstrap_table_merge_cells.png",command:x["jsplus_bootstrap_table_merge_cells".replace(/^jsplus(_bootstrap|_foundation)?_table_/,"")],onclick:function(){l(y);}});}y.on("instanceReady",function(){if(y.ui.get("jsplus_bootstrap_table_merge_cells")&&y.ui.get("jsplus_bootstrap_table_merge_cells").setState){y.ui.get("jsplus_bootstrap_table_merge_cells").setState(CKEDITOR.TRISTATE_DISABLED);}});y.on("mode",function(){if(y.ui.get("jsplus_bootstrap_table_merge_cells")&&y.ui.get("jsplus_bootstrap_table_merge_cells").setState){y.ui.get("jsplus_bootstrap_table_merge_cells").setState(CKEDITOR.TRISTATE_DISABLED);}});}});})();