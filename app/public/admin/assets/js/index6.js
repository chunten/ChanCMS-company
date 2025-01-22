import{f as e,F as t,M as s,N as i,P as a,K as o}from"./element-plus.js";import{G as l,E as r,v as m,H as n}from"./@element-plus.js";import{l as p,a as d}from"./field.js";import{h as c}from"./model.js";import{_ as u}from"./index.js";import{aa as h,o as j,c as f,M as y,K as g,a2 as b,S as w,J as C}from"./@vue.js";import"./dayjs.js";import"./@vueuse.js";import"./lodash-es.js";import"./@popperjs.js";import"./async-validator.js";import"./@ctrl.js";import"./memoize-one.js";import"./normalize-wheel-es.js";import"./pinia.js";import"./pinia-plugin-persist.js";import"./vanilla-jsoneditor.js";import"./json-source-map.js";import"./@fortawesome.js";import"./natural-compare-lite.js";import"./@codemirror.js";import"./@lezer.js";import"./crelt.js";import"./@marijn.js";import"./style-mod.js";import"./w3c-keyname.js";import"./@replit.js";import"./codemirror-wrapped-line-indent.js";import"./fast-deep-equal.js";import"./fast-uri.js";import"./jmespath.js";import"./immutable-json-patch.js";import"./jsonrepair.js";import"./vue-router.js";import"./axios.js";import"./js-cookie.js";/* empty css        */const S={class:"content-wrap"};const k=u({name:"field-index",setup:()=>({Edit:l,Delete:r,View:m,Search:n}),data:()=>({query:{mid:""},model:"",tableName:"",multipleSelection:[],tableData:[],count:0,cur:1,loading:!0}),computed:{},created(){this.query=this.$route.query,this.list()},update(){},methods:{async list(){try{let e=await p(this.query.mid,this.cur);if(200===e.code){const t=e.data;this.tableData=[...t.list],this.model=t.model.model,this.tableName=t.model.tableName,this.count=t.count,this.loading=!1}}catch(e){console.log(e)}},toggleSelection(e){e?e.forEach((e=>{this.$refs.multipleTable.toggleRowSelection(e)})):this.$refs.multipleTable.clearSelection()},handleSelectionChange(e){this.multipleSelection=e},handleCurrentChange(e){this.cur=Number(e),sessionStorage.setItem("cur",Number(e)),this.list()},toEdit(e){console.log(e);const{id:t,ename:s}=e;this.$router.push({name:"field-edit",query:{fid:t,mid:this.query.mid,table:s,model:this.model}})},delSome(){},hasUse:async e=>await c(e),async handleDel(e){let{id:t}=e;try{if(0===(await this.hasUse(this.query.mid)).data.count){200===(await d(t)).code&&(this.$message({message:"删除成功 ^_^",type:"success"}),this.list())}else this.$message({message:"当前模型正在使用，字段不能删除 ^_^",type:"success"})}catch(s){console.log(s)}}}},[["render",function(l,r,m,n,p,d){const c=e,u=h("router-link"),k=t,q=s,_=i,v=a,x=o;return j(),f("div",S,[y(k,{type:"flex",class:"mt-10 mb-10",justify:"end"},{default:g((()=>[y(u,{to:{name:"field-add",query:{mid:l.query.mid,table:l.tableName,model:l.model}}},{default:g((()=>[y(c,{type:"primary",round:""},{default:g((()=>r[0]||(r[0]=[b("新增")]))),_:1})])),_:1},8,["to"])])),_:1}),w((j(),C(_,{ref:"multipleTable",data:l.tableData,"tooltip-effect":"dark",style:{width:"100%"},"row-key":"id",onSelectionChange:d.handleSelectionChange},{default:g((()=>[y(q,{type:"selection",width:"55"}),y(q,{prop:"id",label:"编号"}),y(q,{prop:"cname",label:"中文名称"}),y(q,{prop:"ename",label:"字段名称"}),y(q,{prop:"orderBy",label:"排序"}),y(q,{fixed:"right",label:"操作",width:"150"},{default:g((e=>[y(c,{icon:n.Edit,circle:"",onClick:t=>d.toEdit(e.row)},null,8,["icon","onClick"]),y(c,{icon:n.Delete,circle:"",onClick:t=>d.handleDel(e.row)},null,8,["icon","onClick"])])),_:1})])),_:1},8,["data","onSelectionChange"])),[[x,l.loading]]),y(k,{type:"flex",class:"mt-20",justify:"space-between"},{default:g((()=>[y(v,{background:"",layout:"prev, pager, next",onCurrentChange:d.handleCurrentChange,"page-size":10,total:l.count,"hide-on-single-page":""},null,8,["onCurrentChange","total"])])),_:1})])}]]);export{k as default};
