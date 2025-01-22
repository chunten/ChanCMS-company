import{s as e,t as a,u as l,r as t,q as s,a as o,B as r,C as i,D as d,H as m,I as p,G as u,Q as n,g as c,f as h,p as g}from"./element-plus.js";import{a as y,v as f}from"./upload.js";import{f as V,a as v,u as j}from"./category.js";import{s as b}from"./article.js";import{_,d as w,b as U,t as S,c as k}from"./index.js";import{l as x}from"./model.js";import{p as P}from"./pinyin-pro.js";import{aa as C,o as $,c as I,a as q,M as T,K as z,S as B,J as L,G as D,H as F,ab as A,a2 as E,T as K,P as N}from"./@vue.js";import"./dayjs.js";import"./@vueuse.js";import"./@element-plus.js";import"./lodash-es.js";import"./@popperjs.js";import"./async-validator.js";import"./@ctrl.js";import"./memoize-one.js";import"./normalize-wheel-es.js";import"./pinia.js";import"./pinia-plugin-persist.js";import"./vanilla-jsoneditor.js";import"./json-source-map.js";import"./@fortawesome.js";import"./natural-compare-lite.js";import"./@codemirror.js";import"./@lezer.js";import"./crelt.js";import"./@marijn.js";import"./style-mod.js";import"./w3c-keyname.js";import"./@replit.js";import"./codemirror-wrapped-line-indent.js";import"./fast-deep-equal.js";import"./fast-uri.js";import"./jmespath.js";import"./immutable-json-patch.js";import"./jsonrepair.js";import"./vue-router.js";import"./axios.js";import"./js-cookie.js";/* empty css        */const O={class:"content-wrap"},G={class:"mr-10 ml-10"},H={class:"mr-10 ml-10 mb-20"};const M=_({name:"category-edit",data:()=>({id:0,categorySelected:[],categorySelectedPath:"",categoryProps:{checkStrictly:!0},activeName:"first",activeIndex:"0",cate:[],category:[],modList:[],modelFlag:!1,views:[],params:{pid:0,seoTitle:"",seoKeywords:"",seoDescription:"",name:"",path:"",pinyin:"",tong:"",mid:"0",description:"",url:"",orderBy:0,type:"0",target:"0",status:"0",articleView:"",listView:""}}),computed:{},created(){this.id=this.$route.params.id,this.modelList(),this.query(),this.findById(),this.hasArticle(),this.getviews()},methods:{beforeUpload(e){return-1===e.type.indexOf("image")?(this.$message("上传文件只能是图片格式"),!1):e.size/1024/1024>.9?(this.$message("上传图片必须小于200k"),!1):void 0},async upload(e){let a=new FormData;a.append("file",e.file);let l=await y(a);200===l.code&&(this.params.tong=l.data.path)},createPinyin(e){this.params.pinyin=P(e,{toneType:"none"}).replace(/\s+/g,""),this.params.path=this.categorySelectedPath?this.categorySelectedPath+this.params.pinyin:"/"+this.categorySelectedPath+this.params.pinyin},changePath(e){this.params.path=this.categorySelectedPath?this.categorySelectedPath+e:"/"+this.categorySelectedPath+e},handleClick(e){this.activeIndex=e.index},async hasArticle(){try{let e=await b(1,"",this.id);200==e.code&&(this.modelFlag=e.data.count>0)}catch(e){console.log(e)}},async query(){try{let e=await V();if(200===e.code){let a=e.data;this.cate=e.data;let l=w(this.id,a);l.length>1&&(l.length=l.length-1),console.log(l),this.categorySelected=l;let t=U(S(a));this.category=[...t]}}catch(e){console.log(e)}},async getviews(){try{let e=await f();200===e.code&&(this.views=e.data.filter((e=>{if("404.html"!==e&&"500.html"!==e)return!0})).map((e=>({label:e,value:e}))))}catch(e){console.log(e)}},async modelList(){try{let e=await x(this.cur);200===e.code&&(this.modList=e.data.list.map((e=>(e.id=e.id.toString(),e))))}catch(e){console.log(e)}},async findById(){try{let e=await v(this.id);if(console.log(e),200===e.code){this.params=e.data;let a=[];this.cate.forEach((l=>{l.id==e.data.pid&&a.push("/"+l.pinyin)})),this.categorySelectedPath=a.join("")+"/"}}catch(e){console.error(e)}},handleChange(e){let a=[];Object.values(e).forEach((e=>{this.cate.forEach((l=>{l.id==e&&a.push("/"+l.pinyin)}))})),this.categorySelectedPath=a.join("")+"/",this.params.path=this.categorySelectedPath+this.params.pinyin,-1!=e[0]&&(this.params.pid=e[e.length-1])},checkStrictly(){if("article"==this.params.pinyin)return this.$message({message:"不能使用article作为拼音",type:"success"}),!1;return!!/^[a-zA-Z][a-zA-Z0-9]*$/.test(this.params.pinyin)||(this.$message({message:"拼音只能包含26个字母和数字，且首字母不能是数字",type:"success"}),!1)},async update(){try{let e=await j(this.params);e.code?(this.$message({message:"更新成功^_^",type:"success"}),this.$router.go(-1)):this.$message({message:e.msg,type:"success"})}catch(e){console.log(e)}},submit(e){this.$refs[e].validate(((e,a)=>{if(!e)return k(a),!1;this.checkStrictly()&&this.update()}))}}},[["render",function(y,f,V,v,j,b){const _=e,w=a,U=l,S=t,k=s,x=C("MostlyCloudy"),P=o,M=r,Q=i,Z=d,J=m,R=p,W=u,X=n,Y=C("QuestionFilled"),ee=c,ae=h,le=g;return $(),I("div",O,[q("div",G,[T(w,{modelValue:y.activeName,"onUpdate:modelValue":f[0]||(f[0]=e=>y.activeName=e),onTabClick:b.handleClick},{default:z((()=>[T(_,{label:"基本信息",name:"first"}),T(_,{label:"SEO设置",name:"second"}),T(_,{label:"扩展信息",name:"third"})])),_:1},8,["modelValue","onTabClick"])]),q("div",H,[T(le,{ref:"params",model:y.params,"label-width":"84px",class:"w640"},{default:z((()=>[B(q("div",null,[0!=y.params.pid?($(),L(S,{key:0,label:"上级栏目"},{default:z((()=>[T(U,{props:y.categoryProps,"show-all-levels":!1,modelValue:y.categorySelected,"onUpdate:modelValue":f[1]||(f[1]=e=>y.categorySelected=e),options:y.category,onChange:b.handleChange,placeholder:"不选择为顶级栏目"},null,8,["props","modelValue","options","onChange"])])),_:1})):D("",!0),T(S,{label:"栏目名称",prop:"name",rules:[{required:!0,message:"请输入栏目名称",trigger:"blur"},{min:1,max:50,message:"栏目不能超过50个字",trigger:"blur"}]},{default:z((()=>[T(k,{modelValue:y.params.name,"onUpdate:modelValue":f[2]||(f[2]=e=>y.params.name=e),onChange:b.createPinyin},null,8,["modelValue","onChange"])])),_:1}),T(S,{label:"栏目标识"},{default:z((()=>[T(k,{modelValue:y.params.pinyin,"onUpdate:modelValue":f[3]||(f[3]=e=>y.params.pinyin=e),onChange:b.changePath,placeholder:"注：首页请填写home"},null,8,["modelValue","onChange"])])),_:1}),T(S,{label:"栏目路径"},{default:z((()=>[T(k,{modelValue:y.params.path,"onUpdate:modelValue":f[4]||(f[4]=e=>y.params.path=e),disabled:""},null,8,["modelValue"])])),_:1}),T(S,{class:"flex",label:"通栏图片"},{default:z((()=>[T(Q,{class:"avatar-uploader","http-request":b.upload,"show-file-list":!1,"before-upload":b.beforeUpload},{default:z((()=>[T(M,{placement:"top-start",title:"上传",width:200,trigger:"hover",content:"上传图片作为封面图，大小200k内"},{reference:z((()=>[T(P,{class:"avatar-uploader-icon"},{default:z((()=>[T(x)])),_:1})])),_:1})])),_:1},8,["http-request","before-upload"]),y.params.tong?($(),L(M,{key:0,placement:"right",width:600,trigger:"hover"},{reference:z((()=>[T(Z,{class:"avatar-uploader-icon pointer ml-10",src:y.params.tong},null,8,["src"])])),default:z((()=>[T(Z,{style:{width:"100%"},src:y.params.tong},null,8,["src"])])),_:1})):D("",!0),T(k,{class:"ml-10 flex-1",modelValue:y.params.tong,"onUpdate:modelValue":f[5]||(f[5]=e=>y.params.tong=e)},null,8,["modelValue"])])),_:1}),T(S,{label:"列表模板"},{default:z((()=>[T(R,{modelValue:y.params.listView,"onUpdate:modelValue":f[6]||(f[6]=e=>y.params.listView=e),placeholder:"Select"},{default:z((()=>[($(!0),I(F,null,A(y.views,(e=>($(),L(J,{key:e.value,label:e.label,value:e.value},null,8,["label","value"])))),128))])),_:1},8,["modelValue"])])),_:1}),T(S,{label:"内容模板"},{default:z((()=>[T(R,{modelValue:y.params.articleView,"onUpdate:modelValue":f[7]||(f[7]=e=>y.params.articleView=e),placeholder:"Select"},{default:z((()=>[($(!0),I(F,null,A(y.views,(e=>($(),L(J,{key:e.value,label:e.label,value:e.value},null,8,["label","value"])))),128))])),_:1},8,["modelValue"])])),_:1}),T(S,{label:"栏目类型"},{default:z((()=>[T(W,{modelValue:y.params.type,"onUpdate:modelValue":f[8]||(f[8]=e=>y.params.type=e),value:"0"},{default:z((()=>f[22]||(f[22]=[E("栏目")]))),_:1},8,["modelValue"]),T(W,{modelValue:y.params.type,"onUpdate:modelValue":f[9]||(f[9]=e=>y.params.type=e),value:"1"},{default:z((()=>f[23]||(f[23]=[E("单页")]))),_:1},8,["modelValue"])])),_:1}),T(S,{label:"是否显示"},{default:z((()=>[T(W,{modelValue:y.params.status,"onUpdate:modelValue":f[10]||(f[10]=e=>y.params.status=e),value:"0"},{default:z((()=>f[24]||(f[24]=[E("显示")]))),_:1},8,["modelValue"]),T(W,{modelValue:y.params.status,"onUpdate:modelValue":f[11]||(f[11]=e=>y.params.status=e),value:"1"},{default:z((()=>f[25]||(f[25]=[E("隐藏")]))),_:1},8,["modelValue"])])),_:1})],512),[[K,0==y.activeIndex]]),B(q("div",null,[T(S,{label:"seo标题"},{default:z((()=>[T(k,{modelValue:y.params.seoTitle,"onUpdate:modelValue":f[12]||(f[12]=e=>y.params.seoTitle=e)},null,8,["modelValue"])])),_:1}),T(S,{label:"seo关键词"},{default:z((()=>[T(k,{modelValue:y.params.seoKeywords,"onUpdate:modelValue":f[13]||(f[13]=e=>y.params.seoKeywords=e)},null,8,["modelValue"])])),_:1}),T(S,{label:"seo描述"},{default:z((()=>[T(k,{type:"textarea",prop:"textarea",rows:2,modelValue:y.params.seoDescription,"onUpdate:modelValue":f[14]||(f[14]=e=>y.params.seoDescription=e)},null,8,["modelValue"])])),_:1})],512),[[K,1==y.activeIndex]]),B(q("div",null,[T(S,{label:"栏目链接"},{default:z((()=>[T(k,{modelValue:y.params.url,"onUpdate:modelValue":f[15]||(f[15]=e=>y.params.url=e)},null,8,["modelValue"])])),_:1}),T(S,{label:"扩展模型"},{default:z((()=>[T(X,{modelValue:y.params.mid,"onUpdate:modelValue":f[16]||(f[16]=e=>y.params.mid=e)},{default:z((()=>[T(W,{value:"0"},{default:z((()=>f[26]||(f[26]=[E("基本模型")]))),_:1}),y.modList.length>0?($(!0),I(F,{key:0},A(y.modList,((e,a)=>($(),L(W,{disabled:y.modelFlag,key:a,value:e.id},{default:z((()=>[E(N(e.model)+"模型 ",1)])),_:2},1032,["disabled","value"])))),128)):D("",!0)])),_:1},8,["modelValue"]),T(ee,{content:"如果栏目已经存在文章，则不能更换模型",effect:"light",placement:"top-start"},{default:z((()=>[T(P,{class:"ml-20 pointer"},{default:z((()=>[T(Y,{class:"c-165dff"})])),_:1})])),_:1})])),_:1}),T(S,{label:"打开方式"},{default:z((()=>[T(W,{modelValue:y.params.target,"onUpdate:modelValue":f[17]||(f[17]=e=>y.params.target=e),value:"0"},{default:z((()=>f[27]||(f[27]=[E("当前页面")]))),_:1},8,["modelValue"]),T(W,{modelValue:y.params.target,"onUpdate:modelValue":f[18]||(f[18]=e=>y.params.target=e),value:"1"},{default:z((()=>f[28]||(f[28]=[E("新页面")]))),_:1},8,["modelValue"])])),_:1}),T(S,{label:"栏目排序"},{default:z((()=>[T(k,{modelValue:y.params.orderBy,"onUpdate:modelValue":f[19]||(f[19]=e=>y.params.orderBy=e)},null,8,["modelValue"])])),_:1}),T(S,{label:"栏目描述"},{default:z((()=>[T(k,{type:"textarea",prop:"textarea",rows:2,modelValue:y.params.description,"onUpdate:modelValue":f[20]||(f[20]=e=>y.params.description=e)},null,8,["modelValue"])])),_:1})],512),[[K,2==y.activeIndex]]),T(S,null,{default:z((()=>[T(ae,{type:"primary",onClick:f[21]||(f[21]=e=>b.submit("params"))},{default:z((()=>f[29]||(f[29]=[E("保存")]))),_:1})])),_:1})])),_:1},8,["model"])])])}]]);export{M as default};
