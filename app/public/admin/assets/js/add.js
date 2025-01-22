import{s as e,t as a,u as l,r as t,v as s,q as o,w as d,x as i,y as r,A as u,a as m,B as n,C as p,D as c,f,n as g,F as h,G as v,H as V,I as b,J as y,p as _,K as j}from"./element-plus.js";import{_ as w}from"./DialogCroper.js";import{f as U}from"./category.js";import{d as k,f as C,c as x}from"./article.js";import{s as I}from"./tag.js";import{u as D,v as A,a as P}from"./upload.js";import{_ as S,t as T}from"./tinymce.js";import{_ as $,b as q,t as N,g as F,f as L,c as z}from"./index.js";import{aa as O,o as R,c as E,a as J,M as B,K as M,J as G,G as H,S as K,a2 as Z,H as Q,ab as W,T as X}from"./@vue.js";import"./dayjs.js";import"./@vueuse.js";import"./@element-plus.js";import"./lodash-es.js";import"./@popperjs.js";import"./async-validator.js";import"./@ctrl.js";import"./memoize-one.js";import"./normalize-wheel-es.js";import"./vue-cropper.js";import"./pinia.js";import"./pinia-plugin-persist.js";import"./vanilla-jsoneditor.js";import"./json-source-map.js";import"./@fortawesome.js";import"./natural-compare-lite.js";import"./@codemirror.js";import"./@lezer.js";import"./crelt.js";import"./@marijn.js";import"./style-mod.js";import"./w3c-keyname.js";import"./@replit.js";import"./codemirror-wrapped-line-indent.js";import"./fast-deep-equal.js";import"./fast-uri.js";import"./jmespath.js";import"./immutable-json-patch.js";import"./jsonrepair.js";import"./vue-router.js";import"./axios.js";import"./js-cookie.js";/* empty css        */const Y={class:"content-wrap"},ee={class:"mr-10 ml-10"},ae={class:"mr-10 ml-10 mb-20"},le={class:"cover row"},te={class:"cover flex align-center"},se={class:"pos-r img-item"},oe={class:"imgs-btn"};const de=$({name:"article-add",components:{Vue3Tinymce:S,DialogCroper:w},data:()=>({setting:T,loading:!0,categorySelected:[],categoryProps:{checkStrictly:!0},activeName:"first",activeIndex:"0",category:[],cateList:[],views:[],autoImg:!1,autoDes:!1,picNum:1,taglist:[],file:null,img:"",params:{cid:0,title:"",shortTitle:"",tagId:"",attr:[],articleView:"",source:"",author:"",description:"",img:"",createdAt:new Date,updatedAt:new Date,content:"欢迎使用ChanCMS系统",status:"0",pv:1,link:""},field:[],dialogImageUrl:"",dialogVisible:!1,disabled:!1,cur:1,keywords:"",drawer:!1,drawerList:["/public/cover/01.jpg","/public/cover/02.jpg","/public/cover/03.jpg","/public/cover/04.jpg","/public/cover/05.jpg","/public/cover/06.jpg","/public/cover/07.jpg","/public/cover/08.jpg","/public/cover/09.jpg","/public/cover/10.jpg"]}),computed:{},async mounted(){this.setting.images_upload_url=await D()},created(){this.query(),this.searchTag(),this.getviews()},unmounted(){},methods:{async getviews(){try{let e=await A();200===e.code&&(this.views=e.data.filter((e=>{if("404.html"!==e&&"500.html"!==e)return!0})).map((e=>({label:e,value:e}))))}catch(e){console.log(e)}},handleClick(e){this.activeIndex=e.index},setContent(e){this.params.content=e},tinymce(){this.loading=!1},selectCover(e){this.params.img=e},async searchTag(e){try{let a=await I(this.cur,e);if(200===a.code&&a.data){let e=[];a.data.list.forEach((a=>{e.push({label:a.name,value:a.id})})),this.taglist=e}}catch(a){console.log(a)}},async query(){try{let e=await U();if(200===e.code){let a=q(N(e.data)),l=q(e.data);this.cateList=l,this.category=[...a]}}catch(e){console.log(e)}},handleChange(e){-1!=e[0]?(this.params.cid=e[e.length-1],this.findField(this.params.cid)):this.field=[]},handleAttr(e){console.log("e--\x3e",e)},handleSubCid(e){console.log("e--\x3e",e)},beforeUpload(e){if(-1===e.type.indexOf("image"))return this.$message("上传文件只能是图片格式"),!1;this.file=e;const a=new FileReader;return a.onload=async e=>{let a;a="object"==typeof e.target.result?window.URL.createObjectURL(new Blob([e.target.result])):e.target.result,this.img=a,this.$refs.dialogCrop.dialogFormVisible=!0},a.readAsArrayBuffer(e),!1},async upload(e=this.file){if(e.size/1024/1024>.2)return this.$message("上传图片必须小于200k"),!1;let a=new FormData;a.append("file",e||this.file);let l=await P(a);200===l.code&&(this.params.img=l.data.path)},beforeUploadPics(e){return-1===e.type.indexOf("image")?(this.$message("上传文件只能是图片格式"),!1):e.size/1024/1024>.2?(this.$message("上传图片必须小于200k"),!1):void 0},async uploadPics(e){const{data:{index:a},file:l}=e;let t=new FormData;t.append("file",l);let s=await P(t);if(200===s.code){const{filename:e,path:l}=s.data;Array.isArray(this.field[a].values)?this.field[a].values.push({name:e,url:l}):this.field[a].values=[{name:e,url:l}]}},async toPreview(e){this.dialogImageUrl=e.url,this.dialogVisible=!0},async handleRemove(e){this.field.forEach(((a,l)=>{Array.isArray(a.values)&&a.values.forEach(((l,t)=>{l.url==e.url&&(this.delfile(e.url),a.values.splice(t,1))}))}))},async delfile(e){try{await k(e)}catch(a){console.log(a)}},async findField(e){try{let a=await C(e);200===a.code&&(a.data.fields.forEach((e=>{if(e.default&&e.default.includes("[{")&&e.default.includes("options")){e.default;let a=JSON.parse(e.default);e.default=a.options||[]}"8"==e.type&&(e.values=[])})),this.field=a.data.fields)}catch(a){console.log(a)}},async create(){try{let e={...this.params};e.attr=e.attr.toString(),e.tagId=e.tagId.toString(),!e.img&&this.autoImg&&(e.img=F(e.content)[0]),!e.description&&this.autoDes&&(e.description=L(e.content).substr(0,255));let a={};this.field.map((e=>{a[e.ename]="object"==typeof e.values?JSON.stringify(e.values):e.values}));let l=await x({defaultParams:e,fieldParams:a});200==l.code?(this.$message({message:"更新成功^_^",type:"success"}),this.$router.go(-1)):this.$message({message:l.msg,type:"success"})}catch(e){console.log(e)}},submit(e){this.$refs[e].validate(((e,a)=>{if(!e)return z(a),!1;0!=this.params.cid?this.create():this.$message({message:"请选择栏目",type:"success"})}))}}},[["render",function(U,k,C,x,I,D){const A=e,P=a,S=l,T=t,$=s,q=o,N=d,F=i,L=r,z=u,de=O("MostlyCloudy"),ie=m,re=n,ue=p,me=c,ne=f,pe=g,ce=h,fe=O("vue3-tinymce"),ge=v,he=V,ve=b,Ve=O("ZoomIn"),be=O("Delete"),ye=y,_e=O("Plus"),je=_,we=w,Ue=j;return R(),E(Q,null,[J("div",Y,[J("div",ee,[B(P,{modelValue:U.activeName,"onUpdate:modelValue":k[0]||(k[0]=e=>U.activeName=e),onTabClick:D.handleClick},{default:M((()=>[B(A,{label:"基本信息",name:"first"}),B(A,{label:"扩展信息",name:"second"}),U.field.length>0?(R(),G(A,{key:0,label:"模型信息",name:"three"})):H("",!0)])),_:1},8,["modelValue","onTabClick"])]),J("div",ae,[B(je,{ref:"params",model:U.params,"label-width":"90px"},{default:M((()=>[K((R(),E("div",null,[B(ce,{gutter:20},{default:M((()=>[B($,{sm:24,md:12},{default:M((()=>[B(T,{label:"文章栏目"},{default:M((()=>[B(S,{props:U.categoryProps,"show-all-levels":!1,modelValue:U.categorySelected,"onUpdate:modelValue":k[1]||(k[1]=e=>U.categorySelected=e),options:U.category,onChange:D.handleChange},null,8,["props","modelValue","options","onChange"])])),_:1})])),_:1}),B($,{sm:24,md:12},{default:M((()=>[B(T,{label:"文章标题",prop:"title",rules:[{required:!0,message:"请输入文章标题",trigger:"blur"},{min:1,max:100,message:"标题不能超过100个字",trigger:"blur"}]},{default:M((()=>[B(q,{modelValue:U.params.title,"onUpdate:modelValue":k[2]||(k[2]=e=>U.params.title=e)},null,8,["modelValue"])])),_:1})])),_:1}),B($,{sm:24,md:12},{default:M((()=>[B(T,{label:"tag标签"},{default:M((()=>[B(N,{modelValue:U.params.tagId,"onUpdate:modelValue":k[3]||(k[3]=e=>U.params.tagId=e),options:U.taglist,placeholder:"请选择标签",style:{width:"240px"},multiple:"",filterable:"",remote:"","remote-method":D.searchTag},null,8,["modelValue","options","remote-method"])])),_:1})])),_:1}),B($,{sm:24,md:12},{default:M((()=>[B(T,{label:"内容属性"},{default:M((()=>[B(L,{modelValue:U.params.attr,"onUpdate:modelValue":k[4]||(k[4]=e=>U.params.attr=e),onChange:D.handleAttr},{default:M((()=>[B(F,{label:"1",value:"1"},{default:M((()=>k[24]||(k[24]=[Z("头条")]))),_:1}),B(F,{label:"2",value:"2"},{default:M((()=>k[25]||(k[25]=[Z("推荐")]))),_:1}),B(F,{label:"3",value:"3"},{default:M((()=>k[26]||(k[26]=[Z("轮播")]))),_:1}),B(F,{label:"4",value:"4"},{default:M((()=>k[27]||(k[27]=[Z("热门")]))),_:1})])),_:1},8,["modelValue","onChange"])])),_:1})])),_:1}),B($,{sm:24,md:12},{default:M((()=>[B(T,{label:"发布时间"},{default:M((()=>[B(z,{modelValue:U.params.createdAt,"onUpdate:modelValue":k[5]||(k[5]=e=>U.params.createdAt=e),"default-value":new Date,type:"datetime",placeholder:"选择日期时间"},null,8,["modelValue","default-value"])])),_:1})])),_:1}),B($,{sm:24,md:12},{default:M((()=>[B(T,{class:"flex",label:"缩略图"},{default:M((()=>[B(ue,{class:"avatar-uploader","http-request":D.upload,"show-file-list":!1,"before-upload":D.beforeUpload},{default:M((()=>[B(re,{placement:"top-start",title:"上传",width:200,trigger:"hover",content:"上传图片作为封面图，大小200k内"},{reference:M((()=>[B(ie,{class:"avatar-uploader-icon"},{default:M((()=>[B(de)])),_:1})])),_:1})])),_:1},8,["http-request","before-upload"]),U.params.img?(R(),G(re,{key:0,placement:"right",width:400,trigger:"hover"},{reference:M((()=>[B(me,{class:"avatar-uploader-icon pointer ml-10",src:U.params.img},null,8,["src"])])),default:M((()=>[B(me,{style:{width:"100%"},src:U.params.img},null,8,["src"])])),_:1})):H("",!0),B(ne,{type:"primary",class:"ml-10",onClick:k[6]||(k[6]=e=>U.drawer=!0)},{default:M((()=>k[28]||(k[28]=[Z(" 默认封面图 ")]))),_:1}),B(pe,{modelValue:U.drawer,"onUpdate:modelValue":k[7]||(k[7]=e=>U.drawer=e),title:"默认封面图",class:"w-300","with-header":!1},{default:M((()=>[J("div",le,[(R(!0),E(Q,null,W(U.drawerList,((e,a)=>(R(),G(me,{key:a,src:e,onClick:a=>D.selectCover(e),fit:"cover"},null,8,["src","onClick"])))),128))])])),_:1},8,["modelValue"]),B(q,{class:"ml-10 flex-1",modelValue:U.params.img,"onUpdate:modelValue":k[8]||(k[8]=e=>U.params.img=e)},null,8,["modelValue"])])),_:1})])),_:1})])),_:1}),B(T,{label:"内容摘要"},{default:M((()=>[B(q,{type:"textarea",rows:2,placeholder:"请输入内容",modelValue:U.params.description,"onUpdate:modelValue":k[9]||(k[9]=e=>U.params.description=e)},null,8,["modelValue"])])),_:1}),B(T,{label:"文章内容"},{default:M((()=>[B(fe,{modelValue:U.params.content,"onUpdate:modelValue":k[10]||(k[10]=e=>U.params.content=e),setting:U.setting,onInit:D.tinymce,"script-src":"/public/admin/tinymce/tinymce.min.js"},null,8,["modelValue","setting","onInit"])])),_:1}),B(ce,{gutter:20},{default:M((()=>[B($,{sm:24,md:12,lg:8},{default:M((()=>[B(T,{label:"自动封面"},{default:M((()=>[B(F,{modelValue:U.autoImg,"onUpdate:modelValue":k[12]||(k[12]=e=>U.autoImg=e)},{default:M((()=>[k[29]||(k[29]=Z(" 文章第 ")),B(q,{modelValue:U.picNum,"onUpdate:modelValue":k[11]||(k[11]=e=>U.picNum=e),class:"w-80 mr-8 ml-8",placeholder:"请输入内容"},null,8,["modelValue"]),k[30]||(k[30]=Z("张图 "))])),_:1},8,["modelValue"])])),_:1})])),_:1}),B($,{sm:24,md:12,lg:8},{default:M((()=>[B(T,{label:"提取描述"},{default:M((()=>[B(F,{modelValue:U.autoDes,"onUpdate:modelValue":k[13]||(k[13]=e=>U.autoDes=e)},{default:M((()=>k[31]||(k[31]=[Z("提取文章描述")]))),_:1},8,["modelValue"])])),_:1})])),_:1}),B($,{sm:24,md:12,lg:8},{default:M((()=>[B(T,{label:"是否显示"},{default:M((()=>[B(ge,{modelValue:U.params.status,"onUpdate:modelValue":k[14]||(k[14]=e=>U.params.status=e),value:"0"},{default:M((()=>k[32]||(k[32]=[Z("发布")]))),_:1},8,["modelValue"]),B(ge,{modelValue:U.params.status,"onUpdate:modelValue":k[15]||(k[15]=e=>U.params.status=e),value:"1"},{default:M((()=>k[33]||(k[33]=[Z("不发布")]))),_:1},8,["modelValue"])])),_:1})])),_:1})])),_:1})])),[[X,0==U.activeIndex],[Ue,U.loading]]),K(J("div",null,[B(ce,{gutter:20},{default:M((()=>[B($,{sm:24,md:12},{default:M((()=>[B(T,{label:"短标题",prop:"name"},{default:M((()=>[B(q,{modelValue:U.params.shortTitle,"onUpdate:modelValue":k[16]||(k[16]=e=>U.params.shortTitle=e)},null,8,["modelValue"])])),_:1})])),_:1}),B($,{sm:24,md:12},{default:M((()=>[B(T,{label:"内容模板"},{default:M((()=>[B(ve,{modelValue:U.params.articleView,"onUpdate:modelValue":k[17]||(k[17]=e=>U.params.articleView=e),placeholder:"请选择模板"},{default:M((()=>[(R(!0),E(Q,null,W(U.views,(e=>(R(),G(he,{key:e.value,label:e.label,value:e.value},null,8,["label","value"])))),128))])),_:1},8,["modelValue"])])),_:1})])),_:1}),B($,{sm:24,md:12},{default:M((()=>[B(T,{label:"来源"},{default:M((()=>[B(q,{modelValue:U.params.source,"onUpdate:modelValue":k[18]||(k[18]=e=>U.params.source=e)},null,8,["modelValue"])])),_:1})])),_:1}),B($,{sm:24,md:12},{default:M((()=>[B(T,{label:"作者"},{default:M((()=>[B(q,{modelValue:U.params.author,"onUpdate:modelValue":k[19]||(k[19]=e=>U.params.author=e)},null,8,["modelValue"])])),_:1})])),_:1}),B($,{sm:24,md:12},{default:M((()=>[B(T,{label:"外链跳转"},{default:M((()=>[B(q,{modelValue:U.params.link,"onUpdate:modelValue":k[20]||(k[20]=e=>U.params.link=e),max:"120"},null,8,["modelValue"])])),_:1})])),_:1}),B($,{sm:24,md:12},{default:M((()=>[B(T,{label:"浏览数"},{default:M((()=>[B(q,{modelValue:U.params.pv,"onUpdate:modelValue":k[21]||(k[21]=e=>U.params.pv=e)},null,8,["modelValue"])])),_:1})])),_:1})])),_:1})],512),[[X,1==U.activeIndex]]),K(J("div",null,[B(ce,{gutter:20},{default:M((()=>[(R(!0),E(Q,null,W(U.field,((e,a)=>(R(),G($,{key:a,sm:24,md:24,lg:24},{default:M((()=>[["1","7"].includes(e.type)?(R(),G(T,{key:0,label:e.cname},{default:M((()=>[B(q,{modelValue:e.values,"onUpdate:modelValue":a=>e.values=a,max:"120"},null,8,["modelValue","onUpdate:modelValue"])])),_:2},1032,["label"])):["2","9"].includes(e.type)?(R(),G(T,{key:1,label:e.cname},{default:M((()=>[B(q,{type:"textarea",rows:4,placeholder:"请输入内容",modelValue:e.values,"onUpdate:modelValue":a=>e.values=a},null,8,["modelValue","onUpdate:modelValue"])])),_:2},1032,["label"])):["3","4","5"].includes(e.type)?(R(),G(T,{key:2,label:e.cname},{default:M((()=>[B(ve,{modelValue:e.values,"onUpdate:modelValue":a=>e.values=a,placeholder:"请选择"},{default:M((()=>[(R(!0),E(Q,null,W(e.default,(e=>(R(),G(he,{key:e.value,label:e.label,value:e.value},null,8,["label","value"])))),128))])),_:2},1032,["modelValue","onUpdate:modelValue"])])),_:2},1032,["label"])):"6"===e.type?(R(),G(T,{key:3,label:e.cname},{default:M((()=>[B(z,{modelValue:e.values,"onUpdate:modelValue":a=>e.values=a,"default-value":new Date,type:"datetime",placeholder:"请选择"},null,8,["modelValue","onUpdate:modelValue","default-value"])])),_:2},1032,["label"])):"8"===e.type?(R(),G(T,{key:4,label:e.cname,class:"flex align-c justify-center"},{default:M((()=>[J("div",te,[(R(!0),E(Q,null,W(e.values,((e,a)=>(R(),E("div",se,[(R(),G(me,{key:a,src:e.url,fit:"cover"},null,8,["src"])),J("div",oe,[B(ie,{onClick:a=>D.toPreview(e)},{default:M((()=>[B(Ve)])),_:2},1032,["onClick"]),B(ie,{onClick:a=>D.handleRemove(e)},{default:M((()=>[B(be)])),_:2},1032,["onClick"])])])))),256))]),B(ye,{modelValue:U.dialogVisible,"onUpdate:modelValue":k[22]||(k[22]=e=>U.dialogVisible=e)},{default:M((()=>[B(me,{"w-full":"",src:U.dialogImageUrl,alt:"Preview Image"},null,8,["src"])])),_:1},8,["modelValue"]),B(ue,{multiple:"","http-request":D.uploadPics,data:{...e,index:a},"before-upload":D.beforeUploadPics,limit:10,"show-file-list":!1},{default:M((()=>[B(ie,{class:"upload-icon"},{default:M((()=>[B(_e)])),_:1})])),_:2},1032,["http-request","data","before-upload"])])),_:2},1032,["label"])):H("",!0)])),_:2},1024)))),128))])),_:1})],512),[[X,2==U.activeIndex&U.field.length>0]]),B(T,null,{default:M((()=>[B(ne,{type:"primary",onClick:k[23]||(k[23]=e=>D.submit("params"))},{default:M((()=>k[34]||(k[34]=[Z("保存")]))),_:1})])),_:1})])),_:1},8,["model"])])]),B(we,{ref:"dialogCrop",img:U.img,file:U.file,onCrop:D.upload},null,8,["img","file","onCrop"])],64)}],["__scopeId","data-v-8232fbd1"]]);export{de as default};
