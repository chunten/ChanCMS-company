const {
  modules: {
    api: {
      service: { sysApp },
    },
  },
  config:{ template, env}
} = Chan;

module.exports = () => {
  return async (req, res, next) => {
    try {
      if ("domain" in req.app.locals && env == "prd") {
        await next();
        return;
      }
      let sysConfig = await sysApp.find();
      let _template = sysConfig.template || template;
      
      const base_url = `/public/template/${_template}`;
      Chan.config.template = _template;
      req.app.locals = {
        template: _template,
        domain:sysConfig.domain,
        base_url,
      };
      await next();
    } catch (error) {
      next(error);
    }
  };
};
