import{H as e,I as a,r as l,G as t,Q as s,f as o,p as i,s as d,q as r,a as u,B as m,C as n,D as p,t as c}from"./element-plus.js";import{s as f,u as g}from"./site2.js";import{f as h,b as y,a as b}from"./upload.js";import{e as V,A as _,_ as j}from"./index.js";import{o as w,c as v,M as q,K as k,H as x,ab as U,J as C,a2 as $,aa as K,G as W}from"./@vue.js";import"./dayjs.js";import"./@vueuse.js";import"./@element-plus.js";import"./lodash-es.js";import"./@popperjs.js";import"./async-validator.js";import"./@ctrl.js";import"./memoize-one.js";import"./normalize-wheel-es.js";import"./pinia.js";import"./pinia-plugin-persist.js";import"./vanilla-jsoneditor.js";import"./json-source-map.js";import"./@fortawesome.js";import"./natural-compare-lite.js";import"./@codemirror.js";import"./@lezer.js";import"./crelt.js";import"./@marijn.js";import"./style-mod.js";import"./w3c-keyname.js";import"./@replit.js";import"./codemirror-wrapped-line-indent.js";import"./fast-deep-equal.js";import"./fast-uri.js";import"./jmespath.js";import"./immutable-json-patch.js";import"./jsonrepair.js";import"./vue-router.js";import"./axios.js";import"./js-cookie.js";/* empty css        */const N={class:"mr-10 ml-10"};const S={class:"mr-10 ml-10"};const A={class:"mr-10 ml-10"};const I={class:"pd-20 content-wrap"};const z=j({name:"sys-index",components:{ConfigSet:j({name:"ConfigSet",data:()=>({loading:!0,folderList:[],set:{template:"default",appid:"",secret:"",accessKey:"",secretKey:"",domain:"",bucket:"",uploadWay:"1"}}),computed:{},created(){this.query(),this.getFolder()},methods:{async getFolder(){try{let e=await V({url:"".concat(_.BASE_API,"/api/sysApp/folder"),method:"get"});console.log("res---\x3e",e),200===e.code&&e.data.forEach((e=>{this.folderList.push({label:e,value:e})}))}catch(e){console.log(e)}},async query(){try{let e=await h();200===e.code?(this.loading=!1,this.set=e.data):this.$message({message:e.msg,type:"success"})}catch(e){console.log(e)}},async update(){try{let e=await y(this.set);200===e.code?(this.$message({message:"更新成功^_^",type:"success"}),this.query()):this.$message({message:e.msg,type:"success"})}catch(e){console.log(e)}},submit(e){this.$refs[e].validate((e=>{if(!e)return console.log("error submit!!"),!1;this.update()}))}}},[["render",function(r,u,m,n,p,c){const f=e,g=a,h=l,y=t,b=s,V=o,_=i,j=d;return w(),v("div",N,[q(j,{label:"应用配置",class:"mt-20",name:"config"},{default:k((()=>[q(_,{ref:"set",model:r.set,"label-width":"120px"},{default:k((()=>[q(h,{prop:"template",label:"模板"},{default:k((()=>[q(g,{modelValue:r.set.template,"onUpdate:modelValue":u[0]||(u[0]=e=>r.set.template=e),placeholder:"请选择模板"},{default:k((()=>[(w(!0),v(x,null,U(r.folderList,((e,a)=>(w(),C(f,{key:a,label:e.label,value:e.value},null,8,["label","value"])))),128))])),_:1},8,["modelValue"])])),_:1}),q(h,{label:"上传方式"},{default:k((()=>[q(b,{modelValue:r.set.uploadWay,"onUpdate:modelValue":u[1]||(u[1]=e=>r.set.uploadWay=e),class:"ml-4"},{default:k((()=>[q(y,{value:"1"},{default:k((()=>u[3]||(u[3]=[$("普通")]))),_:1}),q(y,{value:"2"},{default:k((()=>u[4]||(u[4]=[$("七牛云")]))),_:1})])),_:1},8,["modelValue"])])),_:1}),q(h,null,{default:k((()=>[q(V,{type:"primary",onClick:u[2]||(u[2]=e=>c.submit("set"))},{default:k((()=>u[5]||(u[5]=[$("保存")]))),_:1})])),_:1})])),_:1},8,["model"])])),_:1})])}]]),QiNiu:j({name:"QiNiu",data:()=>({loading:!0,set:{template:"default",appid:"",secret:"",accessKey:"",secretKey:"",domain:"",bucket:"",uploadWay:"1"}}),computed:{},created(){this.query()},methods:{async query(){try{let e=await h();200===e.code?(this.loading=!1,this.set=e.data):this.$message({message:e.msg,type:"success"})}catch(e){console.log(e)}},async update(){try{let e=await y(this.set);200===e.code?(this.$message({message:"更新成功^_^",type:"success"}),this.query()):this.$message({message:e.msg,type:"success"})}catch(e){console.log(e)}},submit(e){this.$refs[e].validate((e=>{if(!e)return console.log("error submit!!"),!1;this.update()}))}}},[["render",function(e,a,t,s,u,m){const n=r,p=l,c=o,f=i,g=d;return w(),v("div",S,[q(g,{label:"七牛云配置",class:"mt-20",name:"qiniu"},{default:k((()=>[q(f,{ref:"set",model:e.set,"label-width":"120px"},{default:k((()=>[q(p,{prop:"accessKey",label:"accessKey(AK)"},{default:k((()=>[q(n,{modelValue:e.set.accessKey,"onUpdate:modelValue":a[0]||(a[0]=a=>e.set.accessKey=a)},null,8,["modelValue"])])),_:1}),q(p,{prop:"secretKey",label:"secretKey(SK)"},{default:k((()=>[q(n,{modelValue:e.set.secretKey,"onUpdate:modelValue":a[1]||(a[1]=a=>e.set.secretKey=a)},null,8,["modelValue"])])),_:1}),q(p,{prop:"domain",label:"域名"},{default:k((()=>[q(n,{modelValue:e.set.domain,"onUpdate:modelValue":a[2]||(a[2]=a=>e.set.domain=a)},null,8,["modelValue"])])),_:1}),q(p,{prop:"bucket",label:"空间"},{default:k((()=>[q(n,{modelValue:e.set.bucket,"onUpdate:modelValue":a[3]||(a[3]=a=>e.set.bucket=a)},null,8,["modelValue"])])),_:1}),q(p,null,{default:k((()=>[q(c,{type:"primary",onClick:a[4]||(a[4]=e=>m.submit("set"))},{default:k((()=>a[5]||(a[5]=[$("保存")]))),_:1})])),_:1})])),_:1},8,["model"])])),_:1})])}]]),WeChat:j({name:"WeChat",data:()=>({loading:!0,set:{template:"default",appid:"",secret:"",accessKey:"",secretKey:"",domain:"",bucket:"",uploadWay:"1"}}),computed:{},created(){this.query()},methods:{async query(){try{let e=await h();200===e.code?(this.loading=!1,this.set=e.data):this.$message({message:e.msg,type:"success"})}catch(e){console.log(e)}},async update(){try{let e=await y(this.set);200===e.code?(this.$message({message:"更新成功^_^",type:"success"}),this.query()):this.$message({message:e.msg,type:"success"})}catch(e){console.log(e)}},submit(e){this.$refs[e].validate((e=>{if(!e)return console.log("error submit!!"),!1;this.update()}))}}},[["render",function(e,a,t,s,u,m){const n=r,p=l,c=o,f=i,g=d;return w(),v("div",A,[q(g,{label:"微信配置",class:"mt-20",name:"wechat"},{default:k((()=>[q(f,{ref:"set",model:e.set,"label-width":"80px"},{default:k((()=>[q(p,{label:"appid",prop:"appid",rules:[{required:!0,message:"请输入appid",trigger:"blur"}]},{default:k((()=>[q(n,{modelValue:e.set.appid,"onUpdate:modelValue":a[0]||(a[0]=a=>e.set.appid=a)},null,8,["modelValue"])])),_:1}),q(p,{prop:"secret",label:"secret"},{default:k((()=>[q(n,{modelValue:e.set.secret,"onUpdate:modelValue":a[1]||(a[1]=a=>e.set.secret=a)},null,8,["modelValue"])])),_:1}),q(p,null,{default:k((()=>[q(c,{type:"primary",onClick:a[2]||(a[2]=e=>m.submit("set"))},{default:k((()=>a[3]||(a[3]=[$("保存")]))),_:1})])),_:1})])),_:1},8,["model"])])),_:1})])}]])},data:()=>({loading:!0,activeName:"first",activeIndex:"0",info:{id:"",name:"",domain:"",email:"",icp:"",address:"",tel:"",tel1:"",code:""},seo:{id:"",title:"",keywords:"",description:""},infoRules:{name:[{required:!0,message:"请输入网站名称",trigger:"blur"},{min:2,max:20,message:"长度在 2 到 20 个字符",trigger:"blur"}]},seoRules:{title:[{required:!0,message:"不能为空",trigger:"blur"},{min:2,max:50,message:"长度在 2 到 50 个字符",trigger:"blur"}]}}),computed:{},created(){this.query()},methods:{handleClick(e){this.activeIndex=e.index},beforeUpload(e){return-1===e.type.indexOf("image")?(this.$message("上传文件只能是图片格式"),!1):e.size/1024/1024>.9?(this.$message("上传图片必须小于200k"),!1):void 0},async uploadqrcode(e){let a=new FormData;a.append("file",e.file);let l=await b(a);200===l.code&&(this.info.qrcode=l.data.path)},async upload(e){let a=new FormData;a.append("file",e.file);let l=await b(a);200===l.code&&(this.info.logo=l.data.path)},async query(){try{let e=await f();if(200===e.code){this.loading=!1;let{id:a,name:l,domain:t,email:s,icp:o,police:i,copyright:d,code:r,title:u,address:m,tel:n,tel1:p,logo:c,qrcode:f,keywords:g,description:h}=e.data;this.info={id:a,name:l,domain:t,email:s,icp:o,address:m,tel:n,tel1:p,logo:c,qrcode:f,police:i,copyright:d,code:r},this.seo={id:a,title:u,keywords:g,description:h}}else this.$message({message:e.msg,type:"success"})}catch(e){console.log(e)}},async update(e){try{let a=await g(e);200===a.code?(this.$message({message:"更新成功^_^",type:"success"}),this.query()):this.$message({message:a.msg,type:"success"})}catch(a){console.log(a)}},submit(e){this.$refs[e].validate((a=>{if(!a)return console.log("error submit!!"),!1;{let a={info:this.info,seo:this.seo};this.update(a[e])}}))}}},[["render",function(e,a,t,s,f,g){const h=r,y=l,b=K("MostlyCloudy"),V=u,_=m,j=n,x=p,U=o,N=i,S=d,A=K("ConfigSet"),z=K("QiNiu"),F=K("WeChat"),Q=c;return w(),v("div",I,[q(Q,{modelValue:e.activeName,"onUpdate:modelValue":a[15]||(a[15]=a=>e.activeName=a),onTabClick:g.handleClick},{default:k((()=>[q(S,{label:"基本设置",class:"mt-20",name:"first"},{default:k((()=>[q(N,{ref:"info",model:e.info,"label-width":"84px"},{default:k((()=>[q(y,{label:"网站名称",prop:"name",rules:[{required:!0,message:"请输入网站名称",trigger:"blur"},{min:2,max:20,message:"长度在 2 到 20 个字符",trigger:"blur"}]},{default:k((()=>[q(h,{modelValue:e.info.name,"onUpdate:modelValue":a[0]||(a[0]=a=>e.info.name=a)},null,8,["modelValue"])])),_:1}),q(y,{prop:"domain",label:"网站域名"},{default:k((()=>[q(h,{modelValue:e.info.domain,"onUpdate:modelValue":a[1]||(a[1]=a=>e.info.domain=a)},null,8,["modelValue"])])),_:1}),q(y,{prop:"address",label:"地址"},{default:k((()=>[q(h,{modelValue:e.info.address,"onUpdate:modelValue":a[2]||(a[2]=a=>e.info.address=a)},null,8,["modelValue"])])),_:1}),q(y,{prop:"tel",label:"电话1"},{default:k((()=>[q(h,{modelValue:e.info.tel,"onUpdate:modelValue":a[3]||(a[3]=a=>e.info.tel=a)},null,8,["modelValue"])])),_:1}),q(y,{prop:"tel1",label:"电话2"},{default:k((()=>[q(h,{modelValue:e.info.tel1,"onUpdate:modelValue":a[4]||(a[4]=a=>e.info.tel1=a)},null,8,["modelValue"])])),_:1}),q(y,{prop:"email",label:"公司邮箱"},{default:k((()=>[q(h,{modelValue:e.info.email,"onUpdate:modelValue":a[5]||(a[5]=a=>e.info.email=a),rules:[{type:"email",message:"请输入正确的邮箱",trigger:["blur","change"]}]},null,8,["modelValue"])])),_:1}),q(y,{prop:"icp",label:"ICP备案号"},{default:k((()=>[q(h,{modelValue:e.info.icp,"onUpdate:modelValue":a[6]||(a[6]=a=>e.info.icp=a)},null,8,["modelValue"])])),_:1}),q(y,{class:"flex",label:"标志"},{default:k((()=>[q(j,{class:"avatar-uploader","http-request":g.upload,"show-file-list":!1,"before-upload":g.beforeUpload},{default:k((()=>[q(_,{placement:"top-start",title:"上传",width:200,trigger:"hover",content:"上传图片作为封面图，大小200k内"},{reference:k((()=>[q(V,{class:"avatar-uploader-icon"},{default:k((()=>[q(b)])),_:1})])),_:1})])),_:1},8,["http-request","before-upload"]),e.info.logo?(w(),C(_,{key:0,placement:"right",width:600,trigger:"hover"},{reference:k((()=>[q(x,{class:"avatar-uploader-icon pointer ml-10",src:e.info.logo},null,8,["src"])])),default:k((()=>[q(x,{style:{width:"100%"},src:e.info.logo},null,8,["src"])])),_:1})):W("",!0),q(h,{class:"ml-10 flex-1",modelValue:e.info.logo,"onUpdate:modelValue":a[7]||(a[7]=a=>e.info.logo=a)},null,8,["modelValue"])])),_:1}),q(y,{class:"flex",label:"二维码"},{default:k((()=>[q(j,{class:"avatar-uploader","http-request":g.uploadqrcode,"show-file-list":!1,"before-upload":g.beforeUpload},{default:k((()=>[q(_,{placement:"top-start",title:"上传",width:200,trigger:"hover",content:"上传图片作为封面图，大小200k内"},{reference:k((()=>[q(V,{class:"avatar-uploader-icon"},{default:k((()=>[q(b)])),_:1})])),_:1})])),_:1},8,["http-request","before-upload"]),e.info.qrcode?(w(),C(_,{key:0,placement:"right",width:600,trigger:"hover"},{reference:k((()=>[q(x,{class:"avatar-uploader-icon pointer ml-10",src:e.info.qrcode},null,8,["src"])])),default:k((()=>[q(x,{style:{width:"100%"},src:e.info.qrcode},null,8,["src"])])),_:1})):W("",!0),q(h,{class:"ml-10 flex-1",modelValue:e.info.qrcode,"onUpdate:modelValue":a[8]||(a[8]=a=>e.info.qrcode=a)},null,8,["modelValue"])])),_:1}),q(y,{prop:"code",label:"统计代码"},{default:k((()=>[q(h,{type:"textarea",prop:"textarea",class:"textarea",rows:3,modelValue:e.info.code,"onUpdate:modelValue":a[9]||(a[9]=a=>e.info.code=a)},null,8,["modelValue"])])),_:1}),q(y,null,{default:k((()=>[q(U,{type:"primary",onClick:a[10]||(a[10]=e=>g.submit("info"))},{default:k((()=>a[16]||(a[16]=[$("保存")]))),_:1})])),_:1})])),_:1},8,["model"])])),_:1}),q(S,{label:"SEO设置",class:"mt-20",name:"second"},{default:k((()=>[q(N,{ref:"seo",model:e.seo,"label-width":"84px"},{default:k((()=>[q(y,{label:"标题",prop:"title",rules:[{required:!0,message:"请输入网站标题",trigger:"blur"},{min:2,max:20,message:"长度在 2 到 20 个字符",trigger:"blur"}]},{default:k((()=>[q(h,{modelValue:e.seo.title,"onUpdate:modelValue":a[11]||(a[11]=a=>e.seo.title=a)},null,8,["modelValue"])])),_:1}),q(y,{label:"关键词",prop:"keywords"},{default:k((()=>[q(h,{modelValue:e.seo.keywords,"onUpdate:modelValue":a[12]||(a[12]=a=>e.seo.keywords=a)},null,8,["modelValue"])])),_:1}),q(y,{label:"描述",prop:"description",rules:[{min:2,max:255,message:"字数限制255",trigger:"blur"}]},{default:k((()=>[q(h,{type:"textarea",rows:3,class:"textarea",modelValue:e.seo.description,"onUpdate:modelValue":a[13]||(a[13]=a=>e.seo.description=a)},null,8,["modelValue"])])),_:1}),q(y,null,{default:k((()=>[q(U,{type:"primary",onClick:a[14]||(a[14]=e=>g.submit("seo"))},{default:k((()=>a[17]||(a[17]=[$("保存")]))),_:1})])),_:1})])),_:1},8,["model"])])),_:1}),q(A),q(z),q(F)])),_:1},8,["modelValue","onTabClick"])])}]]);export{z as default};
