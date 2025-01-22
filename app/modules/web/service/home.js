const CommonService = require("./common.js");
const dayjs = require("dayjs");
let {
  modules: {
    api: {
      service: {friendlink },
    },
    web: {
      service: { common },
    },
  },
  helper: {
    utils: { filterFields, formatDay },
  },
} = Chan;

class HomeService {
  constructor() {}
  // 首页
  async home() {
    try {
      //banner轮播图
      let banner = await common.bannerSlide();

      //文章轮播图
      let slide = await common.getArticleList(0, 5, 3);
      const slideField = ["id", "title", "path", "link", "img","content"];
      slide = filterFields(slide, slideField);

      //头条
      let top = await common.getArticleList(0, 1, 1);
      const topField = ["id", "title", "path", "description", "img"];
      top = filterFields(top, topField);

      //最新文章
      let news = await common.getArticleList(0, 5);
      const newField = ["id", "title", "path", "createdAt"];
      news = filterFields(news, newField);

      let topnews = { top: top[0], news };

      //图片列表(10条)
      let imgs = await common.getNewImgList(8);
      const imgsField = ["id", "title", "path", "img"];
      imgs = filterFields(imgs, imgsField);

      //推荐（10条）
      let recommend = await common.getArticleList(0, 10, 2);

      //热门（10条访问量）
      let hot = await common.getArticlePvList(10);

      //推荐带图片
      let recommendImgs = await common.getNewImgList(5, "", 2);
      const recommendImgsField = ["id", "title", "path", "img", "description"];
      recommendImgs = filterFields(recommendImgs, recommendImgsField);

      //业务服务列表
      let serverList= await common.getArticleListByCid(6,6)
      //客户案例
      let caseList= await common.getArticleListByCid(2,6)
      //荣誉资质
      let honorList= await common.getArticleListByCid(19,6)
      //新闻动态的子类
      let newsCate= await common.getBrotherCategory(20)
      let newsInfo=[]
      newsCate.map(async (m,i)=>{
        let res=await common.getArticleListByCid(m.id,4)
        res.map(m=>{
          m.createdAt=dayjs(m.createdAt).format(
              "YYYY-MM-DD"
          );
        })
        newsInfo.push(res)
      })
      let homeNews={
        category:newsCate,
        list:newsInfo
      }





      let introduce=await this.pageOne(15)
      let culture=await this.pageOne(20)
      //友情链接
      let link = await friendlink.list(1,50);
      return {homeNews,honorList,caseList,serverList, banner,introduce,culture, slide, topnews, imgs, recommend, recommendImgs, hot,friendlink:link.list };
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 列表页
  async list(id, currentPage = 1, pageSize = 20) {
    try {
      // 文章列表
      const data = await common.list(id, currentPage, pageSize);
      data.list = formatDay(data.list);
      // 本类推荐
      let recommend = await common.getArticleListByCid(id, 5, 2);
      // 本类热门
      let hot = await common.getArticlePvList(10, id);
      const hotField = ["id", "title", "path"];
      hot = filterFields(hot, hotField);
      // 本类图文
      const imgs = await common.getNewImgList(5, id);
      return { data, recommend, hot, imgs };
    } catch (err) {
      console.error(err);
      throw err;
    }
  }
  // 单页
  async pageOne(id) {
    try {
      // 本类最新
      let data = await common.getArticleByAid(id);
      // 本类图文
      return { ...data};
    } catch (err) {
      console.error(err);
      throw err;
    }
  }
  // 文章页
  async article(id) {
    try {
      // 本类最新
      let news = await common.getArticleListByCid(id, 10);
      // 本类热门
      let hot = await common.getArticlePvList(10, id);
      const hotField = ["id", "title", "path"];
      hot = filterFields(hot, hotField);
      // 本类图文
      const imgs = await common.getNewImgList(5, id);
      return { news, hot, imgs };
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 单页列表页
  async page(id, currentPage = 1, pageSize = 10) {
    try {
      const data = await common.list(id, currentPage, pageSize);
      data.list = formatDay(data.list);
      return data;
    } catch (err) {
      console.error(err);
      throw err;
    }
  }
}

module.exports = HomeService;
