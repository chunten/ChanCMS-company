System.register(["./element-plus-legacy.js","./sys_role-legacy.js","./index-legacy.js","./@vue-legacy.js","./dayjs-legacy.js","./@vueuse-legacy.js","./@element-plus-legacy.js","./lodash-es-legacy.js","./@popperjs-legacy.js","./async-validator-legacy.js","./@ctrl-legacy.js","./memoize-one-legacy.js","./normalize-wheel-es-legacy.js","./pinia-legacy.js","./pinia-plugin-persist-legacy.js","./vanilla-jsoneditor-legacy.js","./json-source-map-legacy.js","./@fortawesome-legacy.js","./natural-compare-lite-legacy.js","./@codemirror-legacy.js","./@lezer-legacy.js","./crelt-legacy.js","./@marijn-legacy.js","./style-mod-legacy.js","./w3c-keyname-legacy.js","./@replit-legacy.js","./codemirror-wrapped-line-indent-legacy.js","./fast-deep-equal-legacy.js","./fast-uri-legacy.js","./jmespath-legacy.js","./immutable-json-patch-legacy.js","./jsonrepair-legacy.js","./vue-router-legacy.js","./axios-legacy.js","./js-cookie-legacy.js","./saduocss-legacy.js"],(function(e,l){"use strict";var a,s,u,t,n,r,c,o,m,d,g,i;return{setters:[e=>{a=e.q,s=e.r,u=e.G,t=e.f,n=e.p},e=>{r=e.c},e=>{c=e._},e=>{o=e.o,m=e.c,d=e.M,g=e.K,i=e.a2},null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],execute:function(){const l={class:"mr-10 ml-10 mb-20 pd-20 content-wrap"};e("default",c({name:"role-add",data:()=>({params:{name:"",value:"",status:"1"},paramsRules:{name:[{required:!0,message:"请输入标签名称",trigger:"blur"},{min:2,max:20,message:"名称长度在 2 到 20 个字符之间",trigger:"blur"}]}}),computed:{},mounted(){},async created(){},methods:{handleAttr(e){console.log("e--\x3e",e)},handleSubCid(e){console.log("e--\x3e",e)},async create(){try{let e=await r(this.params);200==e.code?(this.$message({message:"新增成功^_^",type:"success"}),this.$router.go(-1)):this.$message({message:e.msg,type:"success"})}catch(e){console.log(e)}},submit(e){this.$refs[e].validate((e=>{if(!e)return console.log("error submit!!"),!1;this.create()}))}}},[["render",function(e,r,c,y,p,j){const f=a,h=s,b=u,v=t,V=n;return o(),m("div",l,[d(V,{ref:"params",model:e.params,"label-width":"84px",class:"mt-20"},{default:g((()=>[d(h,{label:"角色名称",rules:[{required:!0,message:"请输入角色名称",trigger:"blur"}],prop:"name"},{default:g((()=>[d(f,{modelValue:e.params.name,"onUpdate:modelValue":r[0]||(r[0]=l=>e.params.name=l)},null,8,["modelValue"])])),_:1}),d(h,{label:"角色值"},{default:g((()=>[d(f,{modelValue:e.params.value,"onUpdate:modelValue":r[1]||(r[1]=l=>e.params.value=l)},null,8,["modelValue"])])),_:1}),d(h,{label:"是否显示"},{default:g((()=>[d(b,{modelValue:e.params.status,"onUpdate:modelValue":r[2]||(r[2]=l=>e.params.status=l),value:"1"},{default:g((()=>r[5]||(r[5]=[i("启用")]))),_:1},8,["modelValue"]),d(b,{modelValue:e.params.status,"onUpdate:modelValue":r[3]||(r[3]=l=>e.params.status=l),value:"2"},{default:g((()=>r[6]||(r[6]=[i("关闭")]))),_:1},8,["modelValue"])])),_:1}),d(h,null,{default:g((()=>[d(v,{type:"primary",onClick:r[4]||(r[4]=e=>j.submit("params"))},{default:g((()=>r[7]||(r[7]=[i("保存")]))),_:1})])),_:1})])),_:1},8,["model"])])}]]))}}}));
