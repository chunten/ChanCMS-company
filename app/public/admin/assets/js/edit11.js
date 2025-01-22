import{q as e,r as a,a as s,B as t,C as r,D as l,f as o,p as i}from"./element-plus.js";import{d as m,u as p}from"./slide.js";import{a as d}from"./upload.js";import{_ as n}from"./index.js";import{aa as u,o as c,c as j,M as f,K as h,J as g,G as y,a2 as U}from"./@vue.js";import"./dayjs.js";import"./@vueuse.js";import"./@element-plus.js";import"./lodash-es.js";import"./@popperjs.js";import"./async-validator.js";import"./@ctrl.js";import"./memoize-one.js";import"./normalize-wheel-es.js";import"./pinia.js";import"./pinia-plugin-persist.js";import"./vanilla-jsoneditor.js";import"./json-source-map.js";import"./@fortawesome.js";import"./natural-compare-lite.js";import"./@codemirror.js";import"./@lezer.js";import"./crelt.js";import"./@marijn.js";import"./style-mod.js";import"./w3c-keyname.js";import"./@replit.js";import"./codemirror-wrapped-line-indent.js";import"./fast-deep-equal.js";import"./fast-uri.js";import"./jmespath.js";import"./immutable-json-patch.js";import"./jsonrepair.js";import"./vue-router.js";import"./axios.js";import"./js-cookie.js";/* empty css        */const b={class:"mr-10 ml-10 mb-20 pd-20 content-wrap"};const w=n({name:"slide-edit",data:()=>({params:{id:0,title:"",imgUrl:"",linkUrl:"",content:""}}),computed:{},mounted(){},async created(){this.params.id=this.$route.params.id,await this.detail()},methods:{async detail(){try{let e=await m(this.params.id);if(200===e.code){const{id:a,title:s,imgUrl:t,linkUrl:r,content:l}=e.data;this.params={id:a,title:s,imgUrl:t,linkUrl:r,content:l}}else this.$message({message:e.msg,type:"success"})}catch(e){console.error(e)}},handleAttr(e){console.log("e--\x3e",e)},handleSubCid(e){console.log("e--\x3e",e)},beforeUpload(e){return-1===e.type.indexOf("image")?(this.$message("上传文件只能是图片格式"),!1):e.size/1024/1024>.4?(this.$message("上传图片必须小于200k"),!1):void 0},async upload(e){let a=new FormData;a.append("file",e.file);let s=await d(a);200===s.code&&(this.params.imgUrl=s.data.path)},async update(){try{let e=await p(this.params);200==e.code?(this.$message({message:"更新成功^_^",type:"success"}),this.$router.go(-1)):this.$message({message:e.msg,type:"success"})}catch(e){console.log(e)}},submit(e){this.$refs[e].validate((e=>{if(!e)return console.log("error submit!!"),!1;this.update()}))}}},[["render",function(m,p,d,n,w,v){const _=e,V=a,k=u("MostlyCloudy"),x=s,$=t,q=r,z=l,C=o,D=i;return c(),j("div",b,[f(D,{ref:"params",model:m.params,"label-width":"140px",class:"mt-20"},{default:h((()=>[f(V,{label:"轮播标题",rules:[{required:!0,message:"请输入标题",trigger:"blur"}],prop:"title"},{default:h((()=>[f(_,{modelValue:m.params.title,"onUpdate:modelValue":p[0]||(p[0]=e=>m.params.title=e)},null,8,["modelValue"])])),_:1}),f(V,{class:"flex",label:"轮播图"},{default:h((()=>[f(q,{class:"avatar-uploader","http-request":v.upload,"show-file-list":!1,"before-upload":v.beforeUpload},{default:h((()=>[f($,{placement:"top-start",title:"上传",width:200,trigger:"hover",content:"上传图片作为封面图，大小200k内"},{reference:h((()=>[f(x,{class:"avatar-uploader-icon"},{default:h((()=>[f(k)])),_:1})])),_:1})])),_:1},8,["http-request","before-upload"]),m.params.imgUrl?(c(),g($,{key:0,placement:"right",width:600,trigger:"hover"},{reference:h((()=>[f(z,{class:"avatar-uploader-icon pointer ml-10",src:m.params.imgUrl},null,8,["src"])])),default:h((()=>[f(z,{style:{width:"100%"},src:m.params.imgUrl},null,8,["src"])])),_:1})):y("",!0),f(_,{class:"ml-10 flex-1",modelValue:m.params.imgUrl,"onUpdate:modelValue":p[1]||(p[1]=e=>m.params.imgUrl=e)},null,8,["modelValue"])])),_:1}),f(V,{label:"轮播链接"},{default:h((()=>[f(_,{modelValue:m.params.linkUrl,"onUpdate:modelValue":p[2]||(p[2]=e=>m.params.linkUrl=e)},null,8,["modelValue"])])),_:1}),f(V,{label:"备注"},{default:h((()=>[f(_,{modelValue:m.params.content,"onUpdate:modelValue":p[3]||(p[3]=e=>m.params.content=e)},null,8,["modelValue"])])),_:1}),f(V,null,{default:h((()=>[f(C,{type:"primary",onClick:p[4]||(p[4]=e=>v.submit("params"))},{default:h((()=>p[5]||(p[5]=[U("保存")]))),_:1})])),_:1})])),_:1},8,["model"])])}]]);export{w as default};
