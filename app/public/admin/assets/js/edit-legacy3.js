System.register(["./element-plus-legacy.js","./category-legacy.js","./collect-legacy.js","./index-legacy.js","./@vue-legacy.js","./dayjs-legacy.js","./@vueuse-legacy.js","./@element-plus-legacy.js","./lodash-es-legacy.js","./@popperjs-legacy.js","./async-validator-legacy.js","./@ctrl-legacy.js","./memoize-one-legacy.js","./normalize-wheel-es-legacy.js","./pinia-legacy.js","./pinia-plugin-persist-legacy.js","./vanilla-jsoneditor-legacy.js","./json-source-map-legacy.js","./@fortawesome-legacy.js","./natural-compare-lite-legacy.js","./@codemirror-legacy.js","./@lezer-legacy.js","./crelt-legacy.js","./@marijn-legacy.js","./style-mod-legacy.js","./w3c-keyname-legacy.js","./@replit-legacy.js","./codemirror-wrapped-line-indent-legacy.js","./fast-deep-equal-legacy.js","./fast-uri-legacy.js","./jmespath-legacy.js","./immutable-json-patch-legacy.js","./jsonrepair-legacy.js","./vue-router-legacy.js","./axios-legacy.js","./js-cookie-legacy.js","./saduocss-legacy.js"],(function(e,a){"use strict";var l,s,t,r,c,u,i,d,o,n,m,g,p,y,h,f,j,_,b,V,v,T,U,k,w,x,N,C,q,P,$;return{setters:[e=>{l=e.q,s=e.r,t=e.G,r=e.Q,c=e.f,u=e.s,i=e.R,d=e.u,o=e.t,n=e.p},e=>{m=e.f},e=>{g=e.d,p=e.g,y=e.a,h=e.u},e=>{f=e._,j=e.d,_=e.b,b=e.t,V=e.c},e=>{v=e.o,T=e.c,U=e.M,k=e.K,w=e.a,x=e.a2,N=e.J,C=e.H,q=e.ab,P=e.P,$=e.G},null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],execute:function(){var a=document.createElement("style");a.textContent="[data-v-c028c903] .show .el-form-item__content{flex-direction:column;align-items:start}.article p[data-v-c028c903]{margin-bottom:10px}\n/*$vite$:1*/",document.head.appendChild(a);const S={class:"mb-20 bg-fff pd-20"},z={class:"flex w-full"},D={class:"flex w-full"},L={class:"flex w-full"},A=["href"],H={class:"flex w-full"},M={class:"f-15"},E=["innerHTML"];e("default",f({name:"collect-edit",data:()=>({activeName:"list",categorySelected:[],categoryProps:{checkStrictly:!0},category:[],params:{taskName:"",targetUrl:"",listTag:"",startNum:1,endNum:1,increment:1,pages:[],titleTag:"",articleTag:"",charset:"1",parseData:"return data;",status:"1",cid:0},listPages:[],article:{}}),computed:{},mounted(){},async created(){this.params.id=this.$route.params.id,await this.detail(),await this.query()},methods:{async query(){try{let e=await m();if(200===e.code){let a=e.data,l=j(this.params.cid,a);this.categorySelected=l;let s=_(b(a));this.cateList=_(a),this.category=[...s]}}catch(e){console.log(e)}},handleChange(e){-1!=e[0]&&(this.params.cid=e[e.length-1])},async detail(){try{let e=await g(this.params.id);if(200===e.code){let a=e.data;a.pages=a.pages.split(","),this.params=a}}catch(e){console.error(e)}},handleAttr(e){console.log("e--\x3e",e)},handleSubCid(e){console.log("e--\x3e",e)},async getPages(){try{let{targetUrl:e,listTag:a,charset:l}=this.params,s=await p({targetUrl:e,listTag:a,charset:l});if(200==s.code){let a=s.data;const l=/^(.*:\/\/[^\/]+).*$/,t=e.match(l)[1];a[0].includes("http")||(a=a.map((e=>t+e))),this.params.pages=a,this.$message({message:"列表地址获取成功^_^",type:"success"})}}catch(e){console.log(e)}},async getListPages(){try{let{targetUrl:e,startNum:a,endNum:l,increment:s}=this.params,t=[];for(let r=a;r<=l;r+=s){let a=e.replace("${page}",r);t.push(a)}this.listPages=t,this.listPages.map((async(e,a)=>{let{listTag:l,charset:s}=this.params;if(a>0){let a=await p({targetUrl:e,listTag:l,charset:s});200==a.code&&(this.params.pages=[...this.params.pages,...a.data])}}))}catch(e){console.log(e)}},async getArticle(){try{let{taskUrl:e,titleTag:a,articleTag:l,parseData:s,charset:t}=this.params;e=this.params.pages[0]||"";let r=await y({taskUrl:e,titleTag:a,articleTag:l,parseData:s,charset:t});200==r.code&&(this.article=r.data,this.$message({message:"内功获取成功^_^",type:"success"}))}catch(e){console.log(e)}},async update(){try{this.params.pages=this.params.pages.toString();let e=await h(this.params);200==e.code?(this.$message({message:"新增成功^_^",type:"success"}),this.$router.go(-1)):this.$message({message:e.msg,type:"success"})}catch(e){console.log(e)}},submit(e){this.$refs[e].validate(((e,a)=>{if(!e)return V(a),!1;this.update()}))}}},[["render",function(e,a,m,g,p,y){const h=l,f=s,j=t,_=r,b=c,V=u,G=i,R=d,B=o,I=n;return v(),T("div",S,[U(I,{ref:"params",model:e.params,"label-width":"84px"},{default:k((()=>[U(B,{modelValue:e.activeName,"onUpdate:modelValue":a[13]||(a[13]=a=>e.activeName=a),class:"demo-tabs"},{default:k((()=>[U(V,{label:"列表测试",name:"list"},{default:k((()=>[U(f,{label:"任务名称",prop:"taskName",rules:[{required:!0,message:"请输入任务名称",trigger:"blur"}]},{default:k((()=>[U(h,{modelValue:e.params.taskName,"onUpdate:modelValue":a[0]||(a[0]=a=>e.params.taskName=a),placeholder:"例：前端库-chat问答"},null,8,["modelValue"])])),_:1}),U(f,{label:"列表网址",prop:"targetUrl",rules:[{required:!0,message:"请输入匹配网址",trigger:"blur"}]},{default:k((()=>[w("div",z,[U(h,{class:"flex-1",modelValue:e.params.targetUrl,"onUpdate:modelValue":a[1]||(a[1]=a=>e.params.targetUrl=a),placeholder:"/SEO/1_${page}.html"},null,8,["modelValue"])])])),_:1}),U(f,{label:"字符集",prop:"charset",rules:[{required:!0,message:"请选择字符集",trigger:"blur"}]},{default:k((()=>[U(_,{modelValue:e.params.charset,"onUpdate:modelValue":a[2]||(a[2]=a=>e.params.charset=a),class:"ml-4"},{default:k((()=>[U(j,{value:"1",size:"large"},{default:k((()=>a[14]||(a[14]=[x("uft-8")]))),_:1}),U(j,{value:"2",size:"large"},{default:k((()=>a[15]||(a[15]=[x("gb2312")]))),_:1})])),_:1},8,["modelValue"])])),_:1}),U(f,{label:"列表链接",prop:"listTag",rules:[{required:!0,message:"请输入文章列表标签",trigger:"blur"}]},{default:k((()=>[w("div",D,[U(h,{class:"flex-1",modelValue:e.params.listTag,"onUpdate:modelValue":a[3]||(a[3]=a=>e.params.listTag=a),placeholder:"例：.content h4 a"},null,8,["modelValue"]),U(b,{class:"ml-5",type:"primary",onClick:y.getPages},{default:k((()=>a[16]||(a[16]=[x(" 测试 ")]))),_:1},8,["onClick"])])])),_:1}),U(f,{label:"开始页面"},{default:k((()=>[w("div",L,[U(h,{class:"flex-1",modelValue:e.params.startNum,"onUpdate:modelValue":a[4]||(a[4]=a=>e.params.startNum=a)},null,8,["modelValue"]),a[18]||(a[18]=w("span",{class:"ml-5 mr-5"},"至",-1)),U(h,{class:"flex-1",modelValue:e.params.endNum,"onUpdate:modelValue":a[5]||(a[5]=a=>e.params.endNum=a)},null,8,["modelValue"]),a[19]||(a[19]=w("span",{class:"ml-5 mr-5"},"每页递增",-1)),U(h,{class:"flex-1 mr-5",modelValue:e.params.increment,"onUpdate:modelValue":a[6]||(a[6]=a=>e.params.increment=a)},null,8,["modelValue"]),U(b,{type:"primary",onClick:y.getListPages},{default:k((()=>a[17]||(a[17]=[x("测试")]))),_:1},8,["onClick"])])])),_:1}),e.listPages.length>0?(v(),N(f,{key:0,label:"列表地址"},{default:k((()=>[(v(!0),T(C,null,q(e.listPages,((e,a)=>(v(),T("p",{class:"mr-30",key:a},P(e),1)))),128))])),_:1})):$("",!0),e.params.pages.length>0?(v(),N(f,{key:1,label:"文章地址"},{default:k((()=>[(v(!0),T(C,null,q(e.params.pages,((e,a)=>(v(),T("p",{class:"mr-30",key:a},P(e),1)))),128))])),_:1})):$("",!0)])),_:1}),U(V,{label:"内容测试",name:"article"},{default:k((()=>[U(f,{label:"目标地址"},{default:k((()=>[w("a",{class:"mr-10",href:e.params.pages[0],target:"_blank"},P(e.params.pages[0]),9,A),a[20]||(a[20]=x("（默认第一个作为测试） "))])),_:1}),U(f,{label:"文章标题",prop:"titleTag",rules:[{required:!0,message:"请输入文章标题",trigger:"blur"}]},{default:k((()=>[U(h,{class:"flex-1",placeholder:"例：.title",modelValue:e.params.titleTag,"onUpdate:modelValue":a[7]||(a[7]=a=>e.params.titleTag=a)},null,8,["modelValue"])])),_:1}),U(f,{label:"文章内容",prop:"articleTag",rules:[{required:!0,message:"请输入文章内容",trigger:"blur"}]},{default:k((()=>[U(h,{placeholder:"例：.article",modelValue:e.params.articleTag,"onUpdate:modelValue":a[8]||(a[8]=a=>e.params.articleTag=a)},null,8,["modelValue"])])),_:1}),U(f,{label:"处理函数",prop:"parseData",rules:[{required:!0,message:"如果无特殊处理，请直接填写  return data;",trigger:"blur"}]},{default:k((()=>[w("div",H,[U(h,{class:"flex-1",type:"textarea",rows:13,modelValue:e.params.parseData,"onUpdate:modelValue":a[9]||(a[9]=a=>e.params.parseData=a),placeholder:"如果不做任何处理，直接返回data。拿到的文本是变量是data,可以直接js函数可以处理成需要的数据，最终需要返回data。例：\n            data = data.replaceAll('<BR>','<br/>');\n            return data;\n            //或\n            return data;\n            "},null,8,["modelValue"]),U(b,{class:"ml-5",type:"primary",onClick:y.getArticle},{default:k((()=>a[21]||(a[21]=[x(" 测试 ")]))),_:1},8,["onClick"])])])),_:1}),e.article.title?(v(),N(f,{key:0,label:"采集结果"},{default:k((()=>[U(G,{class:"w-full",shadow:"never"},{header:k((()=>[w("p",M,[a[22]||(a[22]=w("span",{class:"c-999"},"标题：",-1)),x(P(e.article.title),1)])])),default:k((()=>[a[23]||(a[23]=w("p",{class:"f-15"},[w("span",{class:"c-999"},"内容：")],-1)),w("div",{class:"f-15 article",innerHTML:e.article.article},null,8,E)])),_:1})])),_:1})):$("",!0)])),_:1}),U(V,{label:"保存配置",name:"save"},{default:k((()=>[U(f,{label:"保存栏目",prop:"articleTag",rules:[{required:!0,message:"请输入保存栏目",trigger:"blur"}]},{default:k((()=>[U(R,{props:e.categoryProps,"show-all-levels":!1,modelValue:e.categorySelected,"onUpdate:modelValue":a[10]||(a[10]=a=>e.categorySelected=a),options:e.category,onChange:y.handleChange},null,8,["props","modelValue","options","onChange"])])),_:1}),U(f,{label:"发布状态",prop:"status",rules:[{required:!0,message:"请选择字符集",trigger:"blur"}]},{default:k((()=>[U(_,{modelValue:e.params.status,"onUpdate:modelValue":a[11]||(a[11]=a=>e.params.status=a),class:"ml-4"},{default:k((()=>[U(j,{value:"1",size:"large"},{default:k((()=>a[24]||(a[24]=[x("草稿")]))),_:1}),U(j,{value:"2",size:"large"},{default:k((()=>a[25]||(a[25]=[x("发布")]))),_:1})])),_:1},8,["modelValue"])])),_:1}),U(f,null,{default:k((()=>[U(b,{type:"primary",onClick:a[12]||(a[12]=e=>y.submit("params"))},{default:k((()=>a[26]||(a[26]=[x("保存")]))),_:1})])),_:1})])),_:1})])),_:1},8,["modelValue"])])),_:1},8,["model"])])}],["__scopeId","data-v-c028c903"]]))}}}));
