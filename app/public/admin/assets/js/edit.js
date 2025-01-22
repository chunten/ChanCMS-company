import{s as e,t as a,u as l,r as t,v as s,q as i,w as o,x as d,y as r,A as u,a as m,B as n,C as p,D as c,f,n as g,F as h,G as v,H as b,I as y,J as V,p as _,K as j}from"./element-plus.js";import{_ as w}from"./DialogCroper.js";import{f as U}from"./category.js";import{f as C,a as k,d as x,u as I}from"./article.js";import{s as P}from"./tag.js";import{u as A,v as D,a as S}from"./upload.js";import{_ as N,t as T}from"./tinymce.js";import{_ as $,d as q,b as F,t as z,h as L,g as O,f as R,c as E}from"./index.js";import{aa as J,o as B,c as G,a as H,M as K,K as M,J as Z,G as Q,S as W,a2 as X,H as Y,ab as ee,T as ae}from"./@vue.js";import"./dayjs.js";import"./@vueuse.js";import"./@element-plus.js";import"./lodash-es.js";import"./@popperjs.js";import"./async-validator.js";import"./@ctrl.js";import"./memoize-one.js";import"./normalize-wheel-es.js";import"./vue-cropper.js";import"./pinia.js";import"./pinia-plugin-persist.js";import"./vanilla-jsoneditor.js";import"./json-source-map.js";import"./@fortawesome.js";import"./natural-compare-lite.js";import"./@codemirror.js";import"./@lezer.js";import"./crelt.js";import"./@marijn.js";import"./style-mod.js";import"./w3c-keyname.js";import"./@replit.js";import"./codemirror-wrapped-line-indent.js";import"./fast-deep-equal.js";import"./fast-uri.js";import"./jmespath.js";import"./immutable-json-patch.js";import"./jsonrepair.js";import"./vue-router.js";import"./axios.js";import"./js-cookie.js";/* empty css        */const le={class:"content-wrap"},te={class:"mr-10 ml-10"},se={class:"mr-10 ml-10 mb-20"},ie={class:"cover row"},oe={class:"cover flex align-center"},de={class:"pos-r img-item"},re={class:"imgs-btn"},ue={style:{width:"100%",margin:"0 auto",display:"flex","justify-content":"center",position:"fixed",bottom:"0",background:"#fff","border-top":"1px solid #ddd",padding:"10px 0px"}};const me=$({name:"article-edit",components:{Vue3Tinymce:N,DialogCroper:w},data:()=>({setting:T,loading:!0,categorySelected:[],categoryProps:{checkStrictly:!0},activeName:"first",activeIndex:"0",category:[],cateList:[],views:[],autoImg:!1,autoDes:!1,picNum:1,taglist:[],file:null,img:"",params:{id:0,cid:0,subCid:[],title:"",shortTitle:"",tagId:"",attr:[],articleView:"",source:"",author:"",description:"",img:"",createdAt:new Date,updatedAt:new Date,content:"",status:"0",pv:1,link:""},field:[],fieldParams:{},dialogImageUrl:"",dialogVisible:!1,disabled:!1,paramsRules:{title:[{required:!0,message:"请输入栏目名称",trigger:"blur"},{min:2,max:50,message:"名称长度在 2 到 50 个字符之间",trigger:"blur"}]},cur:1,keywords:"",drawer:!1,drawerList:["/public/cover/01.jpg","/public/cover/02.jpg","/public/cover/03.jpg","/public/cover/04.jpg","/public/cover/05.jpg","/public/cover/06.jpg","/public/cover/07.jpg","/public/cover/08.jpg","/public/cover/09.jpg","/public/cover/10.jpg"]}),computed:{},async mounted(){this.setting.images_upload_url=await A()},async created(){this.params.id=this.$route.params.id,await this.detail(),await this.query(),this.searchTag(),this.getviews()},unmounted(){},methods:{async getviews(){try{let e=await D();200===e.code&&(this.views=e.data.filter((e=>{if("404.html"!==e&&"500.html"!==e)return!0})).map((e=>({label:e,value:e}))))}catch(e){console.log(e)}},tinymce(){this.loading=!1},handleClick(e){this.activeIndex=e.index},setContent(e){this.params.content=e},selectCover(e){this.params.img=e},async searchTag(e){try{let a=await P(this.cur,e,100);if(200===a.code){let e=[];a.data.list.forEach((a=>{e.push({label:a.name,value:a.id})})),this.taglist=e}}catch(a){console.log(a)}},async query(){try{let e=await U();if(200===e.code){let a=e.data,l=q(this.params.cid,a);this.categorySelected=l,this.findField(this.params.cid);let t=F(z(a));this.cateList=F(a),this.category=[...t]}}catch(e){console.log(e)}},handleChange(e){-1!=e[0]?(this.params.cid=e[e.length-1],this.findField(this.params.cid)):this.field=[]},async findField(e){try{let a=await C(e);200===a.code&&(a.data.fields.forEach((e=>{if(e.default&&e.default.includes("[{")&&e.default.includes("options")){e.default;let a=JSON.parse(e.default);e.default=a.options||[]}"8"==e.type&&(e.values=[])})),this.field=a.data.fields,this.field.forEach(((e,a)=>{this.fieldParams[e.ename].includes("[{")?e.values=JSON.parse(this.fieldParams[e.ename]):e.values=this.fieldParams[e.ename]})))}catch(a){console.log(a)}},async detail(){try{let e=await k(this.params.id);if(200===e.code){let a=e.data;a.content=L(a.content),a.attr=a.attr?a.attr.split(","):[],a.subCid=a.subCid?a.subCid.split(",").map((e=>Number(e))):[],a.oldTagId=a.tagId,a.tagId=a.tagId?a.tagId.split(",").map((e=>Number(e))):[],a.status=a.status.toString(),a.updatedAt=new Date(a.createdAt),this.params=a,this.fieldParams=a.field,this.loading=!1}}catch(e){console.error(e)}},handleAttr(e){console.log("e--\x3e",e)},handleSubCid(e){console.log("e--\x3e",e)},beforeUpload(e){if(-1===e.type.indexOf("image"))return this.$message("上传文件只能是图片格式"),!1;this.file=e;const a=new FileReader;return a.onload=async e=>{let a;a="object"==typeof e.target.result?window.URL.createObjectURL(new Blob([e.target.result])):e.target.result,this.img=a,this.$refs.dialogCrop.dialogFormVisible=!0},a.readAsArrayBuffer(e),!1},async upload(e=this.file){if(e.size/1024/1024>.9)return this.$message("上传图片必须小于200k"),!1;let a=new FormData;a.append("file",e||this.file);let l=await S(a);200===l.code&&(this.params.img=l.data.path)},beforeUploadPics(e){return-1===e.type.indexOf("image")?(this.$message("上传文件只能是图片格式"),!1):e.size/1024/1024>.2?(this.$message("上传图片必须小于200k"),!1):void 0},async uploadPics(e){const{data:{index:a},file:l}=e;let t=new FormData;t.append("file",l);let s=await S(t);if(200===s.code){const{filename:e,path:l}=s.data;Array.isArray(this.field[a].values)?this.field[a].values.push({name:e,url:l}):this.field[a].values=[{name:e,url:l}]}},async toPreview(e){this.dialogImageUrl=e.url,this.dialogVisible=!0},async handleRemove(e){this.field.forEach(((a,l)=>{Array.isArray(a.values)&&a.values.forEach(((l,t)=>{l.url==e.url&&(this.delfile(e.url),a.values.splice(t,1))}))}))},async delfile(e){try{await x(e)}catch(a){console.log(a)}},async update(){try{let e={...this.params};e.attr=e.attr.toString(),e.subCid=e.subCid.toString(),e.tagId=e.tagId.toString(),!e.img&&this.autoImg&&(e.img=O(e.content)[0]),!e.description&&this.autoDes&&(e.description=R(e.content).substr(0,255)),this.field.map(((e,a)=>{this.fieldParams[e.ename]="object"==typeof e.values?JSON.stringify(e.values):e.values}));let a=await I({...e,field:this.fieldParams});200==a.code?(this.$message({message:"更新成功^_^",type:"success"}),this.$router.go(-1)):this.$message({message:a.msg,type:"success"})}catch(e){console.log(e)}},submit(e){this.$refs[e].validate(((e,a)=>{if(!e)return E(a),!1;0!=this.params.cid?this.update():this.$message({message:"请选择栏目",type:"success"})}))}}},[["render",function(U,C,k,x,I,P){const A=e,D=a,S=l,N=t,T=s,$=i,q=o,F=d,z=r,L=u,O=J("MostlyCloudy"),R=m,E=n,me=p,ne=c,pe=f,ce=g,fe=h,ge=J("vue3-tinymce"),he=v,ve=b,be=y,ye=J("ZoomIn"),Ve=J("Delete"),_e=V,je=J("Plus"),we=_,Ue=w,Ce=j;return B(),G(Y,null,[H("div",le,[H("div",te,[K(D,{modelValue:U.activeName,"onUpdate:modelValue":C[0]||(C[0]=e=>U.activeName=e),onTabClick:P.handleClick},{default:M((()=>[K(A,{label:"基本信息",name:"first"}),K(A,{label:"扩展信息",name:"second"}),U.field.length>0?(B(),Z(A,{key:0,label:"模型信息",name:"three"})):Q("",!0)])),_:1},8,["modelValue","onTabClick"])]),H("div",se,[W((B(),Z(we,{ref:"params",model:U.params,"label-width":"90px"},{default:M((()=>[W(H("div",null,[K(fe,{gutter:20},{default:M((()=>[K(T,{sm:24,md:12},{default:M((()=>[K(N,{label:"文章栏目"},{default:M((()=>[K(S,{props:U.categoryProps,"show-all-levels":!1,modelValue:U.categorySelected,"onUpdate:modelValue":C[1]||(C[1]=e=>U.categorySelected=e),options:U.category,onChange:P.handleChange},null,8,["props","modelValue","options","onChange"])])),_:1})])),_:1}),K(T,{sm:24,md:12},{default:M((()=>[K(N,{label:"文章标题",prop:"title",rules:[{required:!0,message:"请输入文章标题",trigger:"blur"},{min:1,max:100,message:"标题不能超过100个字",trigger:"blur"}]},{default:M((()=>[K($,{modelValue:U.params.title,"onUpdate:modelValue":C[2]||(C[2]=e=>U.params.title=e)},null,8,["modelValue"])])),_:1})])),_:1}),K(T,{sm:24,md:12},{default:M((()=>[K(N,{label:"tag标签"},{default:M((()=>[K(q,{modelValue:U.params.tagId,"onUpdate:modelValue":C[3]||(C[3]=e=>U.params.tagId=e),options:U.taglist,placeholder:"请选择标签",style:{width:"240px"},multiple:"",filterable:"",remote:"","remote-method":P.searchTag},null,8,["modelValue","options","remote-method"])])),_:1})])),_:1}),K(T,{sm:24,md:12},{default:M((()=>[K(N,{label:"内容属性"},{default:M((()=>[K(z,{modelValue:U.params.attr,"onUpdate:modelValue":C[4]||(C[4]=e=>U.params.attr=e),onChange:P.handleAttr},{default:M((()=>[K(F,{label:"1",value:"1"},{default:M((()=>C[25]||(C[25]=[X("头条")]))),_:1}),K(F,{label:"2",value:"2"},{default:M((()=>C[26]||(C[26]=[X("推荐")]))),_:1}),K(F,{label:"3",value:"3"},{default:M((()=>C[27]||(C[27]=[X("轮播")]))),_:1}),K(F,{label:"4",value:"4"},{default:M((()=>C[28]||(C[28]=[X("热门")]))),_:1})])),_:1},8,["modelValue","onChange"])])),_:1})])),_:1}),K(T,{sm:24,md:12},{default:M((()=>[K(N,{label:"发布时间"},{default:M((()=>[K(L,{modelValue:U.params.createdAt,"onUpdate:modelValue":C[5]||(C[5]=e=>U.params.createdAt=e),type:"datetime",placeholder:"选择日期时间"},null,8,["modelValue"])])),_:1})])),_:1}),K(T,{sm:24,md:12},{default:M((()=>[K(N,{class:"flex",label:"缩略图"},{default:M((()=>[K(me,{class:"avatar-uploader","http-request":P.upload,"show-file-list":!1,"before-upload":P.beforeUpload},{default:M((()=>[K(E,{placement:"top-start",title:"上传",width:200,trigger:"hover",content:"上传图片作为封面图，大小200k内"},{reference:M((()=>[K(R,{class:"avatar-uploader-icon"},{default:M((()=>[K(O)])),_:1})])),_:1})])),_:1},8,["http-request","before-upload"]),U.params.img?(B(),Z(E,{key:0,placement:"right",width:400,trigger:"hover"},{reference:M((()=>[K(ne,{class:"avatar-uploader-icon pointer ml-10",src:U.params.img},null,8,["src"])])),default:M((()=>[K(ne,{style:{width:"100%"},src:U.params.img},null,8,["src"])])),_:1})):Q("",!0),K(pe,{type:"primary",class:"ml-10",onClick:C[6]||(C[6]=e=>U.drawer=!0)},{default:M((()=>C[29]||(C[29]=[X(" 默认封面图 ")]))),_:1}),K(ce,{modelValue:U.drawer,"onUpdate:modelValue":C[7]||(C[7]=e=>U.drawer=e),title:"默认封面图",class:"w-300","with-header":!1},{default:M((()=>[H("div",ie,[(B(!0),G(Y,null,ee(U.drawerList,((e,a)=>(B(),Z(ne,{key:a,src:e,onClick:a=>P.selectCover(e),fit:"cover"},null,8,["src","onClick"])))),128))])])),_:1},8,["modelValue"]),K($,{class:"ml-10 flex-1",modelValue:U.params.img,"onUpdate:modelValue":C[8]||(C[8]=e=>U.params.img=e)},null,8,["modelValue"])])),_:1})])),_:1})])),_:1}),K(N,{label:"内容摘要"},{default:M((()=>[K($,{type:"textarea",rows:2,placeholder:"请输入内容",modelValue:U.params.description,"onUpdate:modelValue":C[9]||(C[9]=e=>U.params.description=e)},null,8,["modelValue"])])),_:1}),K(N,{label:"文章内容"},{default:M((()=>[K(ge,{modelValue:U.params.content,"onUpdate:modelValue":C[10]||(C[10]=e=>U.params.content=e),setting:U.setting,onInit:P.tinymce,"script-src":"/public/admin/tinymce/tinymce.min.js"},null,8,["modelValue","setting","onInit"])])),_:1}),K(fe,{gutter:20},{default:M((()=>[K(T,{sm:24,md:12,lg:8},{default:M((()=>[K(N,{label:"自动封面"},{default:M((()=>[K(F,{modelValue:U.autoImg,"onUpdate:modelValue":C[12]||(C[12]=e=>U.autoImg=e)},{default:M((()=>[C[30]||(C[30]=X(" 文章第 ")),K($,{modelValue:U.picNum,"onUpdate:modelValue":C[11]||(C[11]=e=>U.picNum=e),class:"w-80 mr-8 ml-8",placeholder:"请输入内容"},null,8,["modelValue"]),C[31]||(C[31]=X("张图 "))])),_:1},8,["modelValue"])])),_:1})])),_:1}),K(T,{sm:24,md:12,lg:8},{default:M((()=>[K(N,{label:"提取描述"},{default:M((()=>[K(F,{modelValue:U.autoDes,"onUpdate:modelValue":C[13]||(C[13]=e=>U.autoDes=e)},{default:M((()=>C[32]||(C[32]=[X("提取文章描述")]))),_:1},8,["modelValue"])])),_:1})])),_:1}),K(T,{sm:24,md:12,lg:8},{default:M((()=>[K(N,{label:"是否显示"},{default:M((()=>[K(he,{modelValue:U.params.status,"onUpdate:modelValue":C[14]||(C[14]=e=>U.params.status=e),value:"0"},{default:M((()=>C[33]||(C[33]=[X("发布")]))),_:1},8,["modelValue"]),K(he,{modelValue:U.params.status,"onUpdate:modelValue":C[15]||(C[15]=e=>U.params.status=e),value:"1"},{default:M((()=>C[34]||(C[34]=[X("不发布")]))),_:1},8,["modelValue"])])),_:1})])),_:1})])),_:1})],512),[[ae,0==U.activeIndex]]),W(H("div",null,[K(fe,{gutter:20},{default:M((()=>[K(T,{sm:24,md:12},{default:M((()=>[K(N,{label:"短标题",prop:"name"},{default:M((()=>[K($,{modelValue:U.params.shortTitle,"onUpdate:modelValue":C[16]||(C[16]=e=>U.params.shortTitle=e)},null,8,["modelValue"])])),_:1})])),_:1}),K(T,{sm:24,md:12},{default:M((()=>[K(N,{label:"内容模板"},{default:M((()=>[K(be,{modelValue:U.params.articleView,"onUpdate:modelValue":C[17]||(C[17]=e=>U.params.articleView=e),placeholder:"请选择模板"},{default:M((()=>[(B(!0),G(Y,null,ee(U.views,(e=>(B(),Z(ve,{key:e.value,label:e.label,value:e.value},null,8,["label","value"])))),128))])),_:1},8,["modelValue"])])),_:1})])),_:1}),K(T,{sm:24,md:12},{default:M((()=>[K(N,{label:"来源"},{default:M((()=>[K($,{modelValue:U.params.source,"onUpdate:modelValue":C[18]||(C[18]=e=>U.params.source=e)},null,8,["modelValue"])])),_:1})])),_:1}),K(T,{sm:24,md:12},{default:M((()=>[K(N,{label:"作者"},{default:M((()=>[K($,{modelValue:U.params.author,"onUpdate:modelValue":C[19]||(C[19]=e=>U.params.author=e)},null,8,["modelValue"])])),_:1})])),_:1}),K(T,{sm:24,md:12},{default:M((()=>[K(N,{label:"外链跳转"},{default:M((()=>[K($,{modelValue:U.params.link,"onUpdate:modelValue":C[20]||(C[20]=e=>U.params.link=e),max:"120"},null,8,["modelValue"])])),_:1})])),_:1}),K(T,{sm:24,md:12},{default:M((()=>[K(N,{label:"浏览数"},{default:M((()=>[K($,{modelValue:U.params.pv,"onUpdate:modelValue":C[21]||(C[21]=e=>U.params.pv=e)},null,8,["modelValue"])])),_:1})])),_:1})])),_:1})],512),[[ae,1==U.activeIndex]]),W(H("div",null,[K(fe,{gutter:20},{default:M((()=>[(B(!0),G(Y,null,ee(U.field,((e,a)=>(B(),Z(T,{key:a,sm:24,md:24,lg:24},{default:M((()=>[["1","7"].includes(e.type)?(B(),Z(N,{key:0,label:e.cname},{default:M((()=>[K($,{modelValue:e.values,"onUpdate:modelValue":a=>e.values=a,max:"120"},null,8,["modelValue","onUpdate:modelValue"])])),_:2},1032,["label"])):["2","9"].includes(e.type)?(B(),Z(N,{key:1,label:e.cname},{default:M((()=>[K($,{type:"textarea",rows:4,placeholder:"请输入内容",modelValue:e.values,"onUpdate:modelValue":a=>e.values=a},null,8,["modelValue","onUpdate:modelValue"])])),_:2},1032,["label"])):["3","4","5"].includes(e.type)?(B(),Z(N,{key:2,label:e.cname},{default:M((()=>[K(be,{modelValue:e.values,"onUpdate:modelValue":a=>e.values=a,placeholder:"请选择"},{default:M((()=>[(B(!0),G(Y,null,ee(e.default,(e=>(B(),Z(ve,{key:e.value,label:e.label,value:e.value},null,8,["label","value"])))),128))])),_:2},1032,["modelValue","onUpdate:modelValue"])])),_:2},1032,["label"])):"6"===e.type?(B(),Z(N,{key:3,label:e.cname},{default:M((()=>[K(L,{modelValue:e.values,"onUpdate:modelValue":a=>e.values=a,"default-value":new Date,type:"datetime",placeholder:"请选择"},null,8,["modelValue","onUpdate:modelValue","default-value"])])),_:2},1032,["label"])):"8"===e.type?(B(),Z(N,{key:4,label:e.cname,class:"flex align-c justify-center"},{default:M((()=>[H("div",oe,[(B(!0),G(Y,null,ee(e.values,((e,a)=>(B(),G("div",de,[(B(),Z(ne,{key:a,src:e.url,fit:"cover"},null,8,["src"])),H("div",re,[K(R,{onClick:a=>P.toPreview(e)},{default:M((()=>[K(ye)])),_:2},1032,["onClick"]),K(R,{onClick:a=>P.handleRemove(e)},{default:M((()=>[K(Ve)])),_:2},1032,["onClick"])])])))),256))]),K(_e,{modelValue:U.dialogVisible,"onUpdate:modelValue":C[22]||(C[22]=e=>U.dialogVisible=e)},{default:M((()=>[K(ne,{"w-full":"",src:U.dialogImageUrl,alt:"Preview Image"},null,8,["src"])])),_:1},8,["modelValue"]),K(me,{multiple:"","http-request":P.beforeUploadPics,data:{...e,index:a},"before-upload":P.beforeUpload,limit:10,"show-file-list":!1},{default:M((()=>[K(R,{class:"upload-icon"},{default:M((()=>[K(je)])),_:1})])),_:2},1032,["http-request","data","before-upload"])])),_:2},1032,["label"])):Q("",!0)])),_:2},1024)))),128))])),_:1})],512),[[ae,2==U.activeIndex&U.field.length>0]]),K(N,null,{default:M((()=>[K(pe,{type:"primary",onClick:C[23]||(C[23]=e=>P.submit("params"))},{default:M((()=>C[35]||(C[35]=[X("保存")]))),_:1})])),_:1})])),_:1},8,["model"])),[[Ce,U.loading]])])]),K(Ue,{ref:"dialogCrop",img:U.img,file:U.file,onCrop:P.upload},null,8,["img","file","onCrop"]),H("div",ue,[K(pe,{type:"primary",onClick:C[24]||(C[24]=e=>P.submit("params")),size:"large"},{default:M((()=>C[36]||(C[36]=[X("保存")]))),_:1})])],64)}],["__scopeId","data-v-05dab213"]]);export{me as default};
