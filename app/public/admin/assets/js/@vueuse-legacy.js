System.register(["./@vue-legacy.js"],(function(e,t){"use strict";var n,r,o,i,u,a,l,s,c,d,f,v;return{setters:[e=>{n=e.r,r=e.w,o=e.s,i=e.b,u=e.e,a=e.g,l=e.f,s=e.u,c=e.h,d=e.i,f=e.n,v=e.j}],execute:function(){e({a:function(e,t,n={}){const o=n,{window:i=D}=o,u=G(o,["window"]);let a;const l=L((()=>i&&"ResizeObserver"in i)),s=()=>{a&&(a.disconnect(),a=void 0)},c=r((()=>C(e)),(e=>{s(),l.value&&i&&e&&(a=new ResizeObserver(t),a.observe(e,u))}),{immediate:!0,flush:"post"}),d=()=>{s(),c()};return Q(d),{isSupported:l,stop:d}},b:C,c:function(e,t){const n=o();return i((()=>{n.value=e()}),P(h({},t),{flush:"sync"})),u(n)},d:function(e,t,{window:o=D,initialValue:i=""}={}){const u=n(i),a=v((()=>{var e;return C(t)||(null==(e=null==o?void 0:o.document)?void 0:e.documentElement)}));return r([a,()=>x(e)],(([e,t])=>{var n;if(e&&o){const r=null==(n=o.getComputedStyle(e).getPropertyValue(t))?void 0:n.trim();u.value=r||i}}),{immediate:!0}),r(u,(t=>{var n;(null==(n=a.value)?void 0:n.style)&&a.value.style.setProperty(x(e),t)})),u},e:function(e,t,r={}){const{immediate:o=!0}=r,i=n(!1);let a=null;function l(){a&&(clearTimeout(a),a=null)}function s(){i.value=!1,l()}function c(...n){l(),i.value=!0,a=setTimeout((()=>{i.value=!1,a=null,e(...n)}),x(t))}return o&&(i.value=!0,I&&c()),Q(s),{isPending:u(i),start:c,stop:s}},f:function(e,t=200,n=!1,r=!0,o=!1){return N(function(e,t=!0,n=!0,r=!1){let o,i,u=0,a=!0,l=T;const s=()=>{o&&(clearTimeout(o),o=void 0,l(),l=T)},c=c=>{const d=x(e),f=Date.now()-u,v=()=>i=c();return s(),d<=0?(u=Date.now(),v()):(f>d&&(n||!a)?(u=Date.now(),v()):t&&(i=new Promise(((e,t)=>{l=r?t:e,o=setTimeout((()=>{u=Date.now(),a=!0,e(v()),s()}),Math.max(0,d-f))}))),n||o||(o=setTimeout((()=>a=!0),d)),a=!1,i)};return c}(t,n,r,o),e)},h:function(e,t,n={}){const o=n,{window:i=D}=o,u=q(o,["window"]);let a;const l=L((()=>i&&"MutationObserver"in i)),s=()=>{a&&(a.disconnect(),a=void 0)},c=r((()=>C(e)),(e=>{s(),l.value&&i&&e&&(a=new MutationObserver(t),a.observe(e,u))}),{immediate:!0}),d=()=>{s(),c()};return Q(d),{isSupported:l,stop:d}},j:function({document:e=k}={}){if(!e)return n("visible");const t=n(e.visibilityState);return _(e,"visibilitychange",(()=>{t.value=e.visibilityState})),t},k:function({window:e=D}={}){if(!e)return n(!1);const t=n(e.document.hasFocus());return _(e,"blur",(()=>{t.value=!1})),_(e,"focus",(()=>{t.value=!0})),t},l:function(e,t,o,i={}){var u,a,l;const{clone:s=!1,passive:d=!1,eventName:f,deep:p=!1,defaultValue:m}=i,y=c(),O=(null==y?void 0:y.emit)||(null==(u=null==y?void 0:y.$emit)?void 0:u.bind(y))||(null==(l=null==(a=null==y?void 0:y.proxy)?void 0:a.$emit)?void 0:l.bind(null==y?void 0:y.proxy));let b=f;b=f||b||`update:${t.toString()}`;const w=e=>{return s?j(s)?s(e):(t=e,JSON.parse(JSON.stringify(t))):e;var t},g=()=>E(e[t])?w(e[t]):m;if(d){const o=g(),i=n(o);return r((()=>e[t]),(e=>i.value=w(e))),r(i,(n=>{(n!==e[t]||p)&&O(b,n)}),{deep:p}),i}return v({get:()=>g(),set(e){O(b,e)}})},o:function(e,t,n={}){const{window:r=D,ignore:o=[],capture:i=!0,detectIframe:u=!1}=n;if(!r)return;A&&!B&&(B=!0,Array.from(r.document.body.children).forEach((e=>e.addEventListener("click",T))));let a=!0;const l=e=>o.some((t=>{if("string"==typeof t)return Array.from(r.document.querySelectorAll(t)).some((t=>t===e.target||e.composedPath().includes(t)));{const n=C(t);return n&&(e.target===n||e.composedPath().includes(n))}})),s=[_(r,"click",(n=>{const r=C(e);r&&r!==n.target&&!n.composedPath().includes(r)&&(0===n.detail&&(a=!l(n)),a?t(n):a=!0)}),{passive:!0,capture:i}),_(r,"pointerdown",(t=>{const n=C(e);n&&(a=!t.composedPath().includes(n)&&!l(t))}),{passive:!0}),u&&_(r,"blur",(n=>{var o;const i=C(e);"IFRAME"!==(null==(o=r.document.activeElement)?void 0:o.tagName)||(null==i?void 0:i.contains(r.document.activeElement))||t(n)}))].filter(Boolean);return()=>s.forEach((e=>e()))},r:function(e,t=200,o={}){const i=n(e.value),u=function(e,t=200,n={}){return N(function(e,t={}){let n,r,o=T;const i=e=>{clearTimeout(e),o(),o=T},u=u=>{const a=x(e),l=x(t.maxWait);return n&&i(n),a<=0||void 0!==l&&l<=0?(r&&(i(r),r=null),Promise.resolve(u())):new Promise(((e,s)=>{o=t.rejectOnCancel?s:e,l&&!r&&(r=setTimeout((()=>{n&&i(n),r=null,e(u())}),l)),n=setTimeout((()=>{r&&i(r),r=null,e(u())}),a)}))};return u}(t,n),e)}((()=>{i.value=e.value}),t,o);return r(e,(()=>u())),i},t:Q,u:_});var t,p=Object.defineProperty,m=Object.defineProperties,y=Object.getOwnPropertyDescriptors,O=Object.getOwnPropertySymbols,b=Object.prototype.hasOwnProperty,w=Object.prototype.propertyIsEnumerable,g=(e,t,n)=>t in e?p(e,t,{enumerable:!0,configurable:!0,writable:!0,value:n}):e[t]=n,h=(e,t)=>{for(var n in t||(t={}))b.call(t,n)&&g(e,n,t[n]);if(O)for(var n of O(t))w.call(t,n)&&g(e,n,t[n]);return e},P=(e,t)=>m(e,y(t));const I=e("i","undefined"!=typeof window),E=e=>void 0!==e,j=e=>"function"==typeof e,S=e=>"string"==typeof e,T=()=>{},A=e("g",I&&(null==(t=null==window?void 0:window.navigator)?void 0:t.userAgent)&&/iP(ad|hone|od)/.test(window.navigator.userAgent));function x(e){return"function"==typeof e?e():s(e)}function N(e,t){return function(...n){return new Promise(((r,o)=>{Promise.resolve(e((()=>t.apply(this,n)),{fn:t,thisArg:this,args:n})).then(r).catch(o)}))}}function Q(e){return!!a()&&(l(e),!0)}function C(e){var t;const n=x(e);return null!=(t=null==n?void 0:n.$el)?t:n}const D=I?window:void 0,k=I?window.document:void 0;function _(...e){let t,n,o,i;if(S(e[0])||Array.isArray(e[0])?([n,o,i]=e,t=D):[t,n,o,i]=e,!t)return T;Array.isArray(n)||(n=[n]),Array.isArray(o)||(o=[o]);const u=[],a=()=>{u.forEach((e=>e())),u.length=0},l=r((()=>[C(t),x(i)]),(([e,t])=>{a(),e&&u.push(...n.flatMap((n=>o.map((r=>((e,t,n,r)=>(e.addEventListener(t,n,r),()=>e.removeEventListener(t,n,r)))(e,n,r,t))))))}),{immediate:!0,flush:"post"}),s=()=>{l(),a()};return Q(s),s}let B=!1;function L(e,t=!1){const r=n(),o=()=>r.value=Boolean(e());return o(),function(e,t=!0){c()?d(e):t?e():f(e)}(o,t),r}const M="undefined"!=typeof globalThis?globalThis:"undefined"!=typeof window?window:"undefined"!=typeof global?global:"undefined"!=typeof self?self:{},R="__vueuse_ssr_handlers__";M[R]=M[R]||{};var F,$,V=Object.getOwnPropertySymbols,W=Object.prototype.hasOwnProperty,z=Object.prototype.propertyIsEnumerable,G=(e,t)=>{var n={};for(var r in e)W.call(e,r)&&t.indexOf(r)<0&&(n[r]=e[r]);if(null!=e&&V)for(var r of V(e))t.indexOf(r)<0&&z.call(e,r)&&(n[r]=e[r]);return n},H=Object.getOwnPropertySymbols,J=Object.prototype.hasOwnProperty,U=Object.prototype.propertyIsEnumerable,q=(e,t)=>{var n={};for(var r in e)J.call(e,r)&&t.indexOf(r)<0&&(n[r]=e[r]);if(null!=e&&H)for(var r of H(e))t.indexOf(r)<0&&U.call(e,r)&&(n[r]=e[r]);return n};($=F||(F={})).UP="UP",$.RIGHT="RIGHT",$.DOWN="DOWN",$.LEFT="LEFT",$.NONE="NONE";var K=Object.defineProperty,X=Object.getOwnPropertySymbols,Y=Object.prototype.hasOwnProperty,Z=Object.prototype.propertyIsEnumerable,ee=(e,t,n)=>t in e?K(e,t,{enumerable:!0,configurable:!0,writable:!0,value:n}):e[t]=n;((e,t)=>{for(var n in t)Y.call(t,n)&&ee(e,n,t[n]);if(X)for(var n of X(t))Z.call(t,n)&&ee(e,n,t[n])})({linear:function(e){return e}},{easeInSine:[.12,0,.39,0],easeOutSine:[.61,1,.88,1],easeInOutSine:[.37,0,.63,1],easeInQuad:[.11,0,.5,0],easeOutQuad:[.5,1,.89,1],easeInOutQuad:[.45,0,.55,1],easeInCubic:[.32,0,.67,0],easeOutCubic:[.33,1,.68,1],easeInOutCubic:[.65,0,.35,1],easeInQuart:[.5,0,.75,0],easeOutQuart:[.25,1,.5,1],easeInOutQuart:[.76,0,.24,1],easeInQuint:[.64,0,.78,0],easeOutQuint:[.22,1,.36,1],easeInOutQuint:[.83,0,.17,1],easeInExpo:[.7,0,.84,0],easeOutExpo:[.16,1,.3,1],easeInOutExpo:[.87,0,.13,1],easeInCirc:[.55,0,1,.45],easeOutCirc:[0,.55,.45,1],easeInOutCirc:[.85,0,.15,1],easeInBack:[.36,0,.66,-.56],easeOutBack:[.34,1.56,.64,1],easeInOutBack:[.68,-.6,.32,1.6]})}}}));
