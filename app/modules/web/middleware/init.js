const {
  config,
  modules: {
    web: {
      service: { common },
    },
    api: {
      service: { site, frag, tag, friendlink },
    },
  },
  helper: { utils },
} = Chan;

module.exports = () => {
  return async (req, res, next) => {
    try {
      let { env, appName, version } = config;
      if ("site" in req.app.locals && env == "prd") {
        await next();
        return;
      }
      // 站点
      const _site = await site.find();
      // 分类
      const _category = await common.category();
      //导航
      const nav = utils.tree(_category);
      // 友情链接
      const _friendlink = await friendlink.list();

      //获取碎片 默认100条
      const _frag = await frag.list();
      //获取热门标签 默认20条
      const _tag = await tag.hot();

      req.app.locals = {
        ...req.app.locals,
        appName,
        version,
        site: _site,
        nav,
        category: _category,
        friendlink: _friendlink,
        frag: _frag,
        tag: _tag,
      };

      await next();
    } catch (error) {
      next(error);
    }
  };
};
