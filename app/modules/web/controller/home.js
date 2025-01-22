const {
  modules: {
    web: {
      service: { common, home },
    },
    api: {
      service: { article,category },
    },
  },
  helper: {
    utils: { pages, getChildrenId, treeById, filterFields, htmlDecode },
  },
} = Chan;

const ArticleService = article;
const CategoryService = category;

class HomeController {
  // 首页
  async index(req, res, next) {
    try {
      const { nav, template } = req.app.locals;

      let result = {};

      if (!("banner" in res.locals)) {
        result = await home.home();
        res.locals = { ...res.locals, ...result };
      }

      // 指定多栏目栏目获取文章列表
      // await common.getArticleListByCids([59,1,29,]) 不传入默认所有栏目
      let data = await common.getArticleListByCids();
      let defaultView = "index.html";
      if (nav.length > 0 && nav[0].pinyin == "home" && nav[0].listView) {
        defaultView = nav[0].listView;
      }
      res.render(`${template}/${defaultView}`, { ...result, ...data });
    } catch (error) {
      console.error(error);
      next(error);
    }
  }

  // 列表页
  async list(req, res, next) {
    try {
      const { template } = req.app.locals;
      const { cate, current, cid } = req.params;
      const currentPage = parseInt(current) || 1;
      const pageSize = 10;
      const { category } = req.app.locals;
      let tong={}
      // 当前栏目和当前栏目下所有子导航
      let navSub = getChildrenId(cate || cid, category);
      //获取栏目id
      const id = cid || navSub.cate.id || "";
      if (!id) {
        await res.render(`${template}/404.html`);
        return;
      }
      tong=await CategoryService.findId(id)
      let brotherCategory = await common.getBrotherCategory(tong.pid===0?tong.id:tong.pid);
      // 当前位置
      let position = treeById(id, category);
      const positionField = ["id", "name", "path"];
      position = filterFields(position, positionField);
      //列表页全量数据
      const data = await home.list(id, currentPage, pageSize);
      //分页
      let { count } = data.data;
      let href = "";
      let pageHtml = "";
      if (position.length > 0) {
        href = position.slice(-1)[0].path + "/index";
        pageHtml = pages(currentPage, count, pageSize, href);
      }
      //获取模板
      let view = navSub?.cate?.listView || "list.html";
      await res.render(`${template}/${view}`, {
        position,
        cate: navSub.cate,
        navSub,
        pageHtml,
        ...data,
        tong:tong.tong,
        brotherCategory,
        cid:id
      });
    } catch (error) {
      console.error(error);
      next(error);
    }
  }

  // 详情页
  async article(req, res, next) {
    try {
      const { template } = req.app.locals;
      let { id } = req.params;
      let tong={}
      const { category } = req.app.locals;
      if (id.includes(".html")) {
        id = id.replace(".html", "");
      }

      if (!id) {
        await res.render(`${template}/404.html`);
        return;
      }

      // 文章列表
      const article = await ArticleService.detail(id);
      console.log("文章内容",article)
      //当前栏目的兄弟栏目
      const nowCategory=await CategoryService.findId(article.cid)
      tong=await CategoryService.findId(article.cid)
      let brotherCategory = await common.getBrotherCategory(nowCategory.pid);
      console.log(brotherCategory)


      if (!article) {
        await res.render(`${template}/404.html`);
        return;
      }

      // 栏目id
      const cid = article.cid || "";
      console.log("文章id ",id)
      console.log('栏目id',cid)
      //
      // 内容标签
      article.tags = await common.fetchTagsByArticleId(id);

      article.content = htmlDecode(article.content);
      // 扩展字段
      Object.getOwnPropertyNames(article.field).forEach(function (key) {
        if (
          typeof article.field[key] == "string" &&
          article.field[key].includes("{")
        ) {
          article.field[key] = JSON.parse(article.field[key]);
        }
      });
      // 当前栏目和当前栏目下所有子导航
      const navSub = getChildrenId(cid, category);

      // 当前位置
      const position = treeById(cid, category);
      // 增加数量
      await ArticleService.count(id);
      //上一页
      const pre = await ArticleService.pre(id, cid);
      //下一页
      const next = await ArticleService.next(id, cid);
      //热门 推荐 图文
      const data = await home.article(cid);
      //获取模板
      let view = article.articleView || navSub.cate.articleView;
      await res.render(`${template}/${view}`, {
        ...data,
        cate: navSub.cate,
        article,
        brotherCategory,
        cid,
        navSub,
        position,
        tong:tong.tong,
        pre,
        next,
      });
    } catch (error) {
      console.error(error);
      next(error);
    }
  }

  // 单页
  async page(req, res, next) {
    try {
      const { cate, id } = req.params;
      const { category, template } = req.app.locals;

      // 当前栏目和当前栏目下所有子导航
      let cid = "";
      let navSub = {};
      let article = {};
      let position = {};
      let tong={}

      if (!id && !cate) {
        await res.render(`${template}/404.html`);
        return;
      }

      //通过拼音找到对应的栏目
      if (cate) {
        navSub = getChildrenId(cate, category);
        //获取栏目id
        cid = navSub.cate.id || "";
      }

      //文章id查找栏目id
      if (id) {
        // 文章列表
        article = await ArticleService.detail(id);
        // 栏目id
        cid = article.cid || "";
      }

      //没找到栏目 去404
      if (!cid) {
        await res.render(`${template}/404.html`);
        return;
      }

      tong=await CategoryService.findId(cid)

      //获取单页列表
      const data = await home.page(cid, 1, 20);

      if (data.list.length > 0 && !id) {
        article = await ArticleService.detail(data.list[0].id);
      }

      //没找到文章 去404
      if (Object.keys(article).length > 0) {
        // 当前位置
        position = treeById(article.cid, category);
        // 增加数量
        await ArticleService.count(article.id);
      }
      let brotherCategory = await common.getBrotherCategory(tong.pid===0?tong.id:tong.pid);
      console.log(brotherCategory)
      //获取模板
      let view = navSub?.cate?.articleView || "page.html";
      if(Object.keys(article).length !== 0 && article.pics.length!==0){
        article.pics=JSON.parse(article.pics)
      }

      await res.render(`${template}/${view}`, {
        data: data.list,
        cate: navSub.cate,
        navSub,
        position,
        article,
        brotherCategory,
        tong:tong.tong,
        cid
      });
    } catch (error) {
      console.log("xxxxxxxxxx")
      console.error(error);
      next(error);
    }
  }

  // 搜索页
  async search(req, res, next) {
    try {
      const { template } = req.app.locals;
      const { keywords, id } = req.params;

      if (keywords.length > 50) {
        await res.render(`${template}/404.html`);
        return;
      }

      const page = id || 1;
      const pageSize = 10;
      // 文章列表
      const data = await ArticleService.search(keywords, page, pageSize);
      //分页
      let { count } = data;
      let href = "/search/" + keywords;
      let pageHtml = pages(page, count, pageSize, href);
      data.list.forEach((ele) => {
        ele.titles = ele.title.replace(
          new RegExp(keywords, "gi"),
          `<span class='c-red'>${keywords}</span>`
        );
      });
      await res.render(`${template}/search.html`, {
        keywords,
        data,
        pageHtml,
      });
    } catch (error) {
      console.error(error);
      next(error);
    }
  }

  // tag
  async tag(req, res, next) {
    try {
      const { template } = req.app.locals;
      const { path, current=1 } = req.params;
      const { tag } = req.query;
      const page = current;
      const pageSize = 10;
      // 文章列表
      const data = await common.tags(path, page, pageSize);

      //分页
      let { count } = data;
      let href = `/tags/${path}/tag`;
      let query = `?tag=${tag}`
      let pageHtml = pages(page, count, pageSize, href,query);

      await res.render(`${template}/tag.html`, { data, path, tag, pageHtml });
    } catch (error) {
      console.error(error);
      next(error);
    }
  }
}

module.exports = HomeController;
