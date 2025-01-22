import{r as e,w as t,s as n,b as o,e as r,g as i,f as a,u,h as s,i as l,n as c,j as d}from"./@vue.js";var f,v=Object.defineProperty,p=Object.defineProperties,m=Object.getOwnPropertyDescriptors,y=Object.getOwnPropertySymbols,O=Object.prototype.hasOwnProperty,b=Object.prototype.propertyIsEnumerable,w=(e,t,n)=>t in e?v(e,t,{enumerable:!0,configurable:!0,writable:!0,value:n}):e[t]=n;function g(e,t){const i=n();var a,u;return o((()=>{i.value=e()}),(a=((e,t)=>{for(var n in t||(t={}))O.call(t,n)&&w(e,n,t[n]);if(y)for(var n of y(t))b.call(t,n)&&w(e,n,t[n]);return e})({},t),u={flush:null!=void 0?void 0:"sync"},p(a,m(u)))),r(i)}const h="undefined"!=typeof window,P=()=>{},I=h&&(null==(f=null==window?void 0:window.navigator)?void 0:f.userAgent)&&/iP(ad|hone|od)/.test(window.navigator.userAgent);function E(e){return"function"==typeof e?e():u(e)}function j(e,t){return function(...n){return new Promise(((o,r)=>{Promise.resolve(e((()=>t.apply(this,n)),{fn:t,thisArg:this,args:n})).then(o).catch(r)}))}}function S(e){return!!i()&&(a(e),!0)}function T(e,t=200,n={}){return j(function(e,t={}){let n,o,r=P;const i=e=>{clearTimeout(e),r(),r=P};return a=>{const u=E(e),s=E(t.maxWait);return n&&i(n),u<=0||void 0!==s&&s<=0?(o&&(i(o),o=null),Promise.resolve(a())):new Promise(((e,l)=>{r=t.rejectOnCancel?l:e,s&&!o&&(o=setTimeout((()=>{n&&i(n),o=null,e(a())}),s)),n=setTimeout((()=>{o&&i(o),o=null,e(a())}),u)}))}}(t,n),e)}function A(n,o=200,r={}){const i=e(n.value),a=T((()=>{i.value=n.value}),o,r);return t(n,(()=>a())),i}function x(e,t=200,n=!1,o=!0,r=!1){return j(function(e,t=!0,n=!0,o=!1){let r,i,a=0,u=!0,s=P;const l=()=>{r&&(clearTimeout(r),r=void 0,s(),s=P)};return c=>{const d=E(e),f=Date.now()-a,v=()=>i=c();return l(),d<=0?(a=Date.now(),v()):(f>d&&(n||!u)?(a=Date.now(),v()):t&&(i=new Promise(((e,t)=>{s=o?t:e,r=setTimeout((()=>{a=Date.now(),u=!0,e(v()),l()}),Math.max(0,d-f))}))),n||r||(r=setTimeout((()=>u=!0),d)),u=!1,i)}}(t,n,o,r),e)}function N(t,n,o={}){const{immediate:i=!0}=o,a=e(!1);let u=null;function s(){u&&(clearTimeout(u),u=null)}function l(){a.value=!1,s()}function c(...e){s(),a.value=!0,u=setTimeout((()=>{a.value=!1,u=null,t(...e)}),E(n))}return i&&(a.value=!0,h&&c()),S(l),{isPending:r(a),start:c,stop:l}}function Q(e){var t;const n=E(e);return null!=(t=null==n?void 0:n.$el)?t:n}const C=h?window:void 0,D=h?window.document:void 0;function k(...e){let n,o,r,i;if("string"==typeof e[0]||Array.isArray(e[0])?([o,r,i]=e,n=C):[n,o,r,i]=e,!n)return P;Array.isArray(o)||(o=[o]),Array.isArray(r)||(r=[r]);const a=[],u=()=>{a.forEach((e=>e())),a.length=0},s=t((()=>[Q(n),E(i)]),(([e,t])=>{u(),e&&a.push(...o.flatMap((n=>r.map((o=>((e,t,n,o)=>(e.addEventListener(t,n,o),()=>e.removeEventListener(t,n,o)))(e,n,o,t))))))}),{immediate:!0,flush:"post"}),l=()=>{s(),u()};return S(l),l}let _=!1;function B(e,t,n={}){const{window:o=C,ignore:r=[],capture:i=!0,detectIframe:a=!1}=n;if(!o)return;I&&!_&&(_=!0,Array.from(o.document.body.children).forEach((e=>e.addEventListener("click",P))));let u=!0;const s=e=>r.some((t=>{if("string"==typeof t)return Array.from(o.document.querySelectorAll(t)).some((t=>t===e.target||e.composedPath().includes(t)));{const n=Q(t);return n&&(e.target===n||e.composedPath().includes(n))}})),l=[k(o,"click",(n=>{const o=Q(e);o&&o!==n.target&&!n.composedPath().includes(o)&&(0===n.detail&&(u=!s(n)),u?t(n):u=!0)}),{passive:!0,capture:i}),k(o,"pointerdown",(t=>{const n=Q(e);n&&(u=!t.composedPath().includes(n)&&!s(t))}),{passive:!0}),a&&k(o,"blur",(n=>{var r;const i=Q(e);"IFRAME"!==(null==(r=o.document.activeElement)?void 0:r.tagName)||(null==i?void 0:i.contains(o.document.activeElement))||t(n)}))].filter(Boolean);return()=>l.forEach((e=>e()))}function L(t,n=!1){const o=e(),r=()=>o.value=Boolean(t());return r(),function(e,t=!0){s()?l(e):t?e():c(e)}(r,n),o}const M="undefined"!=typeof globalThis?globalThis:"undefined"!=typeof window?window:"undefined"!=typeof global?global:"undefined"!=typeof self?self:{},R="__vueuse_ssr_handlers__";function F(n,o,{window:r=C,initialValue:i=""}={}){const a=e(i),u=d((()=>{var e;return Q(o)||(null==(e=null==r?void 0:r.document)?void 0:e.documentElement)}));return t([u,()=>E(n)],(([e,t])=>{var n;if(e&&r){const o=null==(n=r.getComputedStyle(e).getPropertyValue(t))?void 0:n.trim();a.value=o||i}}),{immediate:!0}),t(a,(e=>{var t;(null==(t=u.value)?void 0:t.style)&&u.value.style.setProperty(E(n),e)})),a}function V({document:t=D}={}){if(!t)return e("visible");const n=e(t.visibilityState);return k(t,"visibilitychange",(()=>{n.value=t.visibilityState})),n}M[R]=M[R]||{};var W=Object.getOwnPropertySymbols,$=Object.prototype.hasOwnProperty,z=Object.prototype.propertyIsEnumerable;function G(e,n,o={}){const r=o,{window:i=C}=r,a=((e,t)=>{var n={};for(var o in e)$.call(e,o)&&t.indexOf(o)<0&&(n[o]=e[o]);if(null!=e&&W)for(var o of W(e))t.indexOf(o)<0&&z.call(e,o)&&(n[o]=e[o]);return n})(r,["window"]);let u;const s=L((()=>i&&"ResizeObserver"in i)),l=()=>{u&&(u.disconnect(),u=void 0)},c=t((()=>Q(e)),(e=>{l(),s.value&&i&&e&&(u=new ResizeObserver(n),u.observe(e,a))}),{immediate:!0,flush:"post"}),d=()=>{l(),c()};return S(d),{isSupported:s,stop:d}}var H,J,U=Object.getOwnPropertySymbols,q=Object.prototype.hasOwnProperty,K=Object.prototype.propertyIsEnumerable;function X(e,n,o={}){const r=o,{window:i=C}=r,a=((e,t)=>{var n={};for(var o in e)q.call(e,o)&&t.indexOf(o)<0&&(n[o]=e[o]);if(null!=e&&U)for(var o of U(e))t.indexOf(o)<0&&K.call(e,o)&&(n[o]=e[o]);return n})(r,["window"]);let u;const s=L((()=>i&&"MutationObserver"in i)),l=()=>{u&&(u.disconnect(),u=void 0)},c=t((()=>Q(e)),(e=>{l(),s.value&&i&&e&&(u=new MutationObserver(n),u.observe(e,a))}),{immediate:!0}),d=()=>{l(),c()};return S(d),{isSupported:s,stop:d}}(J=H||(H={})).UP="UP",J.RIGHT="RIGHT",J.DOWN="DOWN",J.LEFT="LEFT",J.NONE="NONE";var Y=Object.defineProperty,Z=Object.getOwnPropertySymbols,ee=Object.prototype.hasOwnProperty,te=Object.prototype.propertyIsEnumerable,ne=(e,t,n)=>t in e?Y(e,t,{enumerable:!0,configurable:!0,writable:!0,value:n}):e[t]=n;function oe(n,o,r,i={}){var a,u,l;const{clone:c=!1,passive:f=!1,eventName:v,deep:p=!1,defaultValue:m}=i,y=s(),O=(null==y?void 0:y.emit)||(null==(a=null==y?void 0:y.$emit)?void 0:a.bind(y))||(null==(l=null==(u=null==y?void 0:y.proxy)?void 0:u.$emit)?void 0:l.bind(null==y?void 0:y.proxy));let b=v;b=v||b||"update:".concat(o.toString());const w=e=>{return c?(e=>"function"==typeof e)(c)?c(e):(t=e,JSON.parse(JSON.stringify(t))):e;var t},g=()=>void 0!==n[o]?w(n[o]):m;if(f){const r=g(),i=e(r);return t((()=>n[o]),(e=>i.value=w(e))),t(i,(e=>{(e!==n[o]||p)&&O(b,e)}),{deep:p}),i}return d({get:()=>g(),set(e){O(b,e)}})}function re({window:t=C}={}){if(!t)return e(!1);const n=e(t.document.hasFocus());return k(t,"blur",(()=>{n.value=!1})),k(t,"focus",(()=>{n.value=!0})),n}((e,t)=>{for(var n in t)ee.call(t,n)&&ne(e,n,t[n]);if(Z)for(var n of Z(t))te.call(t,n)&&ne(e,n,t[n])})({linear:function(e){return e}},{easeInSine:[.12,0,.39,0],easeOutSine:[.61,1,.88,1],easeInOutSine:[.37,0,.63,1],easeInQuad:[.11,0,.5,0],easeOutQuad:[.5,1,.89,1],easeInOutQuad:[.45,0,.55,1],easeInCubic:[.32,0,.67,0],easeOutCubic:[.33,1,.68,1],easeInOutCubic:[.65,0,.35,1],easeInQuart:[.5,0,.75,0],easeOutQuart:[.25,1,.5,1],easeInOutQuart:[.76,0,.24,1],easeInQuint:[.64,0,.78,0],easeOutQuint:[.22,1,.36,1],easeInOutQuint:[.83,0,.17,1],easeInExpo:[.7,0,.84,0],easeOutExpo:[.16,1,.3,1],easeInOutExpo:[.87,0,.13,1],easeInCirc:[.55,0,1,.45],easeOutCirc:[0,.55,.45,1],easeInOutCirc:[.85,0,.15,1],easeInBack:[.36,0,.66,-.56],easeOutBack:[.34,1.56,.64,1],easeInOutBack:[.68,-.6,.32,1.6]});export{G as a,Q as b,g as c,F as d,N as e,x as f,I as g,X as h,h as i,V as j,re as k,oe as l,B as o,A as r,S as t,k as u};
