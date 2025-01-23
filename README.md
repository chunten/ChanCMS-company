# ChanCMS内容管理系统-企业网站版

## 🍇注意！注意！注意！
本版本是在ChanCMS的基本上开发的【企业网站模板】版本，并对一些不习惯的地方进行了升级改造,无意中发现这个CMS不错，但是加作者和交流群反馈很少，无奈之下就自己做了一些修改，做了一个这种完整的【企业站】模板的。

### 🍒项目效果图
<img  src="https://github.com/chunten/ChanCMS-company/blob/main/gitreposuse/home.png">
<img  src="https://github.com/chunten/ChanCMS-company/blob/main/gitreposuse/2.png">
<img  src="https://github.com/chunten/ChanCMS-company/blob/main/gitreposuse/3.png">


### 🍅可以加我微信交流学习，人多的话我会建个群，一起讨论，如果真的对你有帮助，可以打个赏
<img src="https://github.com/chunten/ChanCMS-company/blob/main/gitreposuse/4.jpg">


## 🌈认真看下面的几点
```
|-ChanCMS-master\package.json
 |-dev
 |-clear
 |-prd 
 
|-ChanCMS-master\server\package.json
 |-dev
 |-build
 |-build:prd 
 |-preview
 |-lint
```
* 用WebStorm打开会有2个可以运行的服务（如上），如果不对后台功能进行修改直接在本地运行第一个的dev，运行即可：运行后打开`localhost`就可以看到效果，记得把数据库先要配置好。
* 如果想对后台功能进行修改或开发，就需要在本地同时打开第二个dev，这个时候你的编辑器会有网址直接打开就可以进入后台，然后在server里找到源文件进行修改
* server文件夹在作者原项目中是单独的一个库，这是这个系统的后台的源文件，在`app/public/admin`下是生成过后的生成文件
* 对server内的文件修改好后可以build生成一下，生成后把`server`下`dist`内的文件复制到`app/public/admin`下，直接覆盖，那就可以在`localhost`进行访问看到效果了，平时修改时直接在`server`下`dev`修改查看即可。
* gitreposuse文件夹是为了在github上展示图片设置的，你download项目后可以直接删除
* 有点耐心，项目一开始你没了解清楚的情况下可能总是运行不起来，这可能不是项目的问题，你需要的仅仅是一点耐心，你第一次接触这项目用了两天时间才把这项目运行起来，所以别灰心
* 后台地址:`http://本地域名/public/admin/index.html`
* 数据库数据在data里面放着，直接导入mysql,然后修改一下配置就行了，mysql5.5以下的版本一些表的时间设置可能要修改一下，根据导入时的出错提示修改一下即可。




🍉🍉🍉🍉🍉🍉🍉🍉🍉🍉🍉🍉🍉🍉🍉🍉🍉


## 🍌下面是ChanCMS的基本介绍
ChanCMS的地址：https://github.com/mingkong2023/ChanCMS

ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。轻量、灵活、稳定、高性能、易扩展，让开发更简单。


## 🌈系统特色

* 自研。基于自研chanjs轻量级mvc框架实现，轻量、灵活、稳定、高性能、可持续。
* SEO。专注于`seo`,伪静态`html`和拼音导航，灵活设置关键词和描述。
* 安全。基于`knex`,高防`sql`注入，接口权限校验，为安全提供保障。
* 灵活。碎片功能，支持零碎文案配置，方便各类灵活文案配置。
* 高扩展。支持扩展模型，字段配置，可动态生成表，超强扩展。
* 模块化。一切模块相互独立，互不干扰。
* 插件化。灵活开发，支持完整功能模块。
* 无头cms，为多端提供接口支持。

## 🚧功能介绍

* 网站信息
* 站点管理
* 栏目管理
* 文章模块
* 标签管理
* 碎片管理 (广告，碎片文案，公司地址、电话、名称，微信等万能模块)
* 扩展模型
* 文章采集
* 用户管理
* 菜单管理
* 登录日志
* 在线留言
* 中英切换
* 语音播报
* pdf预览（按需加载）
* 本地上传&七牛云上传
* 日志功能

## ⛱️软件架构

* nodejs v20.16.0+
* express 4.18+
* mysql v5.7.26
* knex (sql操作)
* art-template v4.13.2+
* pm2   v5.2.2
* jwt  
* pm2 (prd)
* nodemon (dev)
  
### 项目架构

```JavaScript
|- data
|- app
    |- config
    |- extend 
    |- middleware 
    |- modules
      |-api 后台api
        |-- controller
        |-- service
        |-- middleware(可选)
        |-- router.js
      |-home 模板渲染
        |-- controller
        |-- middleware(可选)
        |-- service
        |-- view
        |-- router.js
      |-common 通用api，提供给h5 app 小程序等调用
        |-- controller
        |-- middleware(可选)
        |-- service
        |-- view
        |-- router.js
    |- plugins 
        |- plus-pdf 插件——pdf按需加载
          |-- controller
          |-- service(可选)
          |-- middleware(可选)
          |-- router.js
        |- plus-wechat 插件——微信小程序登录
          |-- controller
          |-- service(可选)
          |-- middleware(可选)
          |-- router.js
        ***  
    |- public
    |- utils
    |- router.js
  app.js
|-server    后台代码,之前是单独的模块,我直接合并到了项目中,如果使用后要对后台进行修改,在这里修改即可
    |-src
  ```

* **注:ChanCMS自带基于vue3+element-plus+js研发的后台管理界面,如果不满足你编码风格，如native等其它UI，或热衷于如react + antd +TS技术，可以自行调用接口进行二次开发**
* **后台管理ChanAdmin源码以及接口参考 [https://gitee.com/yanyutao0402/ChanAdmin](https://gitee.com/yanyutao0402/ChanAdmin)**

### 🍅️案例

* 案例一   [香港日报](http://www.hongkongdaily.net/)
* 案例二   [国际健康健美长寿论坛](http://www.internationjms.cn/)
* 案例三   [世界大健康运动联盟](http://www.worldhealthgames.com/)
* 案例四   [世界气功网](http://www.shijieqigong.com/)
* 案例五   [诺德房产](https://www.nuodefangchan.com/)
* 案例六   [蝌蚪云](https://kd-yun.top/)
* 案例七   [昂翊信息](http://www.angyi-iot.com/)
* 案例八   [萌狮换电](http://www.51mshd.com/)
* 案例九   [七弈国象](https://doc.7yi.link/)
* 案例十   [历史人物网](https://ancestries.cn/)
* 案例十一 [同宇宙官网](http://www.zdmedia.com.cn:81/)
* 案例十二 [HANSA中国](http://www.hansa-asia.com/)
* 案例十三 [北京智慧城市供需对接平台](https://gongxudj.com/#/headerNav/newHome)
* 案例十四 [精通有道IT技术团队官网](http://www.wmjtyd.net/)
* 案例十五 [北京辉达环保科技有限公司](http://www.huidaep.com/)
<!-- * 案例十   [超前端](https://zoye.top/) -->

* 演示站1  [雅俗共赏](http://www.cqsmservices.cn/)

## 👵开发文档

* **官网:<https://www.chancms.top>**
* **官网文档 <https://www.chancms.top/docs/index.html>**
* **视频教程：<https://space.bilibili.com/1885628820>**

## ❤️项目关注

* **码云：<https://gitee.com/yanyutao0402/chanyue-cms>**

## 👴项目交流

 如果喜欢我们的项目，请点个 Star。
 微信群交流请联系微信: `yanyutao2014` 🧒 👧 👱  🧔 👴,纯技术交流，广告党勿扰，谢谢合作！！！

## 许可证

本项目采用 [Apache License 2.0](LICENSE) 许可证。详情请参阅 [LICENSE](LICENSE) 文件。

## 警告

* 禁止用于任何非法商业用途或其他任何违法或不道德的行为。
* 不当使用本项目中的代码或资源而导致的任何直接或间接损失，项目维护者及贡献者概不负责。
* 请尊重法律和道德规范，合理合法地使用本项目的资源。
* 任何违反上述规定的行为都将受到法律追究。

## 管理后台部分截图

![登录](https://pic.imgdb.cn/item/6749e83fd0e0a243d4db4f12.jpg)
![board](https://pic.imgdb.cn/item/6749e83fd0e0a243d4db4f11.jpg)
![category](https://pic.imgdb.cn/item/6749e83fd0e0a243d4db4f10.jpg)
![article](https://pic.imgdb.cn/item/6749e83fd0e0a243d4db4f13.jpg)
