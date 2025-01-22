import{q as s,r as e,f as a,p as t}from"./element-plus.js";import{c as r,h as m}from"./tag.js";import{p as o}from"./pinyin-pro.js";import{_ as p}from"./index.js";import{o as i,c as l,M as n,K as u,a2 as c}from"./@vue.js";import"./dayjs.js";import"./@vueuse.js";import"./@element-plus.js";import"./lodash-es.js";import"./@popperjs.js";import"./async-validator.js";import"./@ctrl.js";import"./memoize-one.js";import"./normalize-wheel-es.js";import"./pinia.js";import"./pinia-plugin-persist.js";import"./vanilla-jsoneditor.js";import"./json-source-map.js";import"./@fortawesome.js";import"./natural-compare-lite.js";import"./@codemirror.js";import"./@lezer.js";import"./crelt.js";import"./@marijn.js";import"./style-mod.js";import"./w3c-keyname.js";import"./@replit.js";import"./codemirror-wrapped-line-indent.js";import"./fast-deep-equal.js";import"./fast-uri.js";import"./jmespath.js";import"./immutable-json-patch.js";import"./jsonrepair.js";import"./vue-router.js";import"./axios.js";import"./js-cookie.js";/* empty css        */const d={class:"mr-10 ml-10 mb-20 pd-20 content-wrap"};const j=p({name:"tag-add",components:{},data:()=>({params:{name:"",path:""},paramsRules:{name:[{required:!0,message:"请输入栏目名称",trigger:"blur"},{min:2,max:50,message:"名称长度在 2 到 50 个字符之间",trigger:"blur"}]}}),computed:{},async mounted(){},created(){},unmounted(){},watch:{"params.name":function(s,e){this.params.path=o(s,{toneType:"none"}).replace(/\s+/g,"")}},methods:{async create(){try{let s=await r(this.params);200==s.code?(this.$message({message:"新增成功^_^",type:"success"}),this.$router.go(-1)):this.$message({message:s.msg,type:"success"})}catch(s){console.log(s)}},async has(){try{let s=await m(this.params.path);200==s.code?s.data?this.$message({message:"标签已存在，请不要再添加了",type:"success"}):this.create():this.$message({message:s.msg,type:"success"})}catch(s){console.log(s)}},submit(s){this.$refs[s].validate((s=>{if(!s)return console.log("error submit!!"),!1;this.has()}))}}},[["render",function(r,m,o,p,j,h){const g=s,f=e,y=a,b=t;return i(),l("div",d,[n(b,{ref:"params",model:r.params,rules:r.paramsRules,"label-width":"84px",class:"mt-20"},{default:u((()=>[n(f,{label:"标签名称",prop:"name"},{default:u((()=>[n(g,{modelValue:r.params.name,"onUpdate:modelValue":m[0]||(m[0]=s=>r.params.name=s),placeholder:"请输入汉字"},null,8,["modelValue"])])),_:1}),n(f,{label:"标签标识"},{default:u((()=>[n(g,{modelValue:r.params.path,"onUpdate:modelValue":m[1]||(m[1]=s=>r.params.path=s),placeholder:"模板使用标识"},null,8,["modelValue"])])),_:1}),n(f,null,{default:u((()=>[n(y,{type:"primary",onClick:m[2]||(m[2]=s=>h.submit("params"))},{default:u((()=>m[3]||(m[3]=[c("保存")]))),_:1})])),_:1})])),_:1},8,["model","rules"])])}]]);export{j as default};
