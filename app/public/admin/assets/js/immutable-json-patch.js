function t(t){return Array.isArray(t)}function e(t){return null!==t&&"object"==typeof t&&(void 0===t.constructor||"Object"===t.constructor.name)}function n(t){return!(!t||"object"!=typeof t)&&"add"===t.op}function r(t){return!(!t||"object"!=typeof t)&&"remove"===t.op}function o(t){return!(!t||"object"!=typeof t)&&"replace"===t.op}function i(t){return!(!t||"object"!=typeof t)&&"copy"===t.op}function c(t){return!(!t||"object"!=typeof t)&&"move"===t.op}function f(t,e){return t===e}function u(t){return t.slice(0,t.length-1)}function s(t){return"object"==typeof t&&null!==t}function a(n){if(t(n)){const t=n.slice();return Object.getOwnPropertySymbols(n).forEach((e=>{t[e]=n[e]})),t}if(e(n)){const t={...n};return Object.getOwnPropertySymbols(n).forEach((e=>{t[e]=n[e]})),t}return n}function p(t,e,n){if(t[e]===n)return t;{const r=a(t);return r[e]=n,r}}function l(n,r){let o=n,i=0;for(;i<r.length;)o=e(o)?o[r[i]]:t(o)?o[parseInt(r[i])]:void 0,i++;return o}function h(n,r,o){let i=arguments.length>3&&void 0!==arguments[3]&&arguments[3];if(0===r.length)return o;const c=r[0],f=h(n?n[c]:void 0,r.slice(1),o,i);if(e(n)||t(n))return p(n,c,f);if(i){const t=d.test(c)?[]:{};return t[c]=f,t}throw new Error("Path does not exist")}const d=/^\d+$/;function g(t,e,n){if(0===e.length)return n(t);if(!s(t))throw new Error("Path doesn't exist");const r=e[0];return p(t,r,g(t[r],e.slice(1),n))}function y(n,r){if(0===r.length)return n;if(!s(n))throw new Error("Path does not exist");if(1===r.length){const o=r[0];if(o in n){const r=a(n);return t(r)&&r.splice(parseInt(o),1),e(r)&&delete r[o],r}return n}const o=r[0];return p(n,o,y(n[o],r.slice(1)))}function v(t,e,n){const r=e.slice(0,e.length-1),o=e[e.length-1];return g(t,r,(t=>{if(!Array.isArray(t))throw new TypeError("Array expected at path "+JSON.stringify(r));const e=a(t);return e.splice(parseInt(o),0,n),e}))}function w(t,e){return void 0!==t&&(0===e.length||null!==t&&w(t[e[0]],e.slice(1)))}function m(t){const e=t.split("/");return e.shift(),e.map((t=>t.replace(/~1/g,"/").replace(/~0/g,"~")))}function b(t){return t.map(j).join("")}function j(t){return"/"+String(t).replace(/~/g,"~0").replace(/\//g,"~1")}function O(t,e){return t+j(e)}function E(t,e){return t.startsWith(e)&&(t.length===e.length||"/"===t[e.length])}function S(t,e,n){let r=t;for(let o=0;o<e.length;o++){I(e[o]);let t=e[o];if(n&&n.before){const e=n.before(r,t);if(void 0!==e){if(void 0!==e.document&&(r=e.document),void 0!==e.json)throw new Error('Deprecation warning: returned object property ".json" has been renamed to ".document"');void 0!==e.operation&&(t=e.operation)}}const i=r,c=U(r,t.path);if("add"===t.op)r=P(r,c,t.value);else if("remove"===t.op)r=N(r,c);else if("replace"===t.op)r=J(r,c,t.value);else if("copy"===t.op)r=A(r,c,q(t.from));else if("move"===t.op)r=x(r,c,q(t.from));else{if("test"!==t.op)throw new Error("Unknown JSONPatch operation "+JSON.stringify(t));k(r,c,t.value)}if(n&&n.after){const e=n.after(r,t,i);void 0!==e&&(r=e)}}return r}function J(t,e,n){return h(t,e,n)}function N(t,e){return y(t,e)}function P(t,e,n){return T(t,e)?v(t,e,n):h(t,e,n)}function A(t,e,n){const r=l(t,n);if(T(t,e))return v(t,e,r);return h(t,e,l(t,n))}function x(t,e,n){const r=l(t,n),o=y(t,n);return T(o,e)?v(o,e,r):h(o,e,r)}function k(t,e,n){if(void 0===n)throw new Error('Test failed: no value provided (path: "'.concat(b(e),'")'));if(!w(t,e))throw new Error('Test failed: path not found (path: "'.concat(b(e),'")'));const r=l(t,e);if(o=r,i=n,JSON.stringify(o)!==JSON.stringify(i))throw new Error('Test failed, value differs (path: "'.concat(b(e),'")'));var o,i}function T(t,e){if(0===e.length)return!1;const n=l(t,u(e));return Array.isArray(n)}function I(t){if(!["add","remove","replace","copy","move","test"].includes(t.op))throw new Error("Unknown JSONPatch op "+JSON.stringify(t.op));if("string"!=typeof t.path)throw new Error('Required property "path" missing or not a string in operation '+JSON.stringify(t));if(("copy"===t.op||"move"===t.op)&&"string"!=typeof t.from)throw new Error('Required property "from" missing or not a string in operation '+JSON.stringify(t))}function U(t,e){return function(t,e){if("-"!==(n=e)[n.length-1])return e;var n;const r=u(e),o=l(t,r);return r.concat(o.length)}(t,m(e))}function q(t){return m(t)}function D(t,e,n){let r=[];return S(t,e,{before:(t,e)=>{let o;const i=U(t,e.path);if("add"===e.op)o=$(t,i);else if("remove"===e.op)o=W(t,i);else if("replace"===e.op)o=R(t,i);else if("copy"===e.op)o=function(t,e){return $(t,e)}(t,i);else if("move"===e.op)o=function(t,e,n){if(e.length<n.length&&function(t,e){let n=arguments.length>2&&void 0!==arguments[2]?arguments[2]:f;if(t.length<e.length)return!1;for(let r=0;r<e.length;r++)if(!n(t[r],e[r]))return!1;return!0}(n,e))return[{op:"replace",path:b(e),value:t}];const r={op:"move",from:b(e),path:b(n)};return!T(t,e)&&w(t,e)?[r,...W(t,e)]:[r]}(t,i,q(e.from));else{if("test"!==e.op)throw new Error("Unknown JSONPatch operation "+JSON.stringify(e));o=[]}let c;if(n&&n.before){const r=n.before(t,e,o);if(r&&r.revertOperations&&(o=r.revertOperations),r&&r.document&&(c=r.document),r&&r.json)throw new Error('Deprecation warning: returned object property ".json" has been renamed to ".document"')}if(r=o.concat(r),void 0!==c)return{document:c}}}),r}function R(t,e){return[{op:"replace",path:b(e),value:l(t,e)}]}function W(t,e){return[{op:"add",path:b(e),value:l(t,e)}]}function $(t,e){return T(t,e)||!w(t,e)?[{op:"remove",path:b(e)}]:R(t,e)}export{O as a,t as b,b as c,S as d,w as e,E as f,l as g,n as h,e as i,o as j,U as k,r as l,i as m,c as n,j as o,m as p,D as r,h as s};
