System.register(["./@codemirror-legacy.js"],(function(t,e){"use strict";var i,n,s,o;return{setters:[t=>{i=t.V,n=t.g,s=t.D,o=t.R}],execute:function(){t("w",[i.fromClass(class{constructor(t){this.view=t,this.indentUnit=n(t.state),this.initialPaddingLeft=null,this.isChrome=null===window||void 0===window?void 0:window.navigator.userAgent.includes("Chrome"),this.generate(t.state)}update(t){const e=n(t.state);(e!==this.indentUnit||t.docChanged||t.viewportChanged)&&(this.indentUnit=e,this.generate(t.state))}generate(t){const e=new o;this.initialPaddingLeft?this.addStyleToBuilder(e,t,this.initialPaddingLeft):this.view.requestMeasure({read:t=>{const i=t.contentDOM.querySelector(".cm-line");i&&(this.initialPaddingLeft=window.getComputedStyle(i).getPropertyValue("padding-left"),this.addStyleToBuilder(e,t.state,this.initialPaddingLeft)),this.decorations=e.finish()}}),this.decorations=e.finish()}addStyleToBuilder(t,e,i){const n=this.getVisibleLines(e);for(const o of n){const{numColumns:n,containsTab:a}=this.numColumns(o.text,e.tabSize),d=`calc(${n+this.indentUnit}ch + ${i})`,r=this.isChrome?`calc(-${n+this.indentUnit}ch - ${a?1:0}px)`:`-${n+this.indentUnit}ch`;t.add(o.from,o.from,s.line({attributes:{style:`padding-left: ${d}; text-indent: ${r};`}}))}}getVisibleLines(t){const e=new Set;let i=null;for(const{from:n,to:s}of this.view.visibleRanges){let o=n;for(;o<=s;){const n=t.doc.lineAt(o);i!==n&&(e.add(n),i=n),o=n.to+1}}return e}numColumns(t,e){let i=0,n=!1;t:for(let s=0;s<t.length;s++)switch(t[s]){case" ":i+=1;continue t;case"\t":i+=e-i%e,n=!0;continue t;case"\r":continue t;default:break t}return{numColumns:i,containsTab:n}}},{decorations:t=>t.decorations})])}}}));
