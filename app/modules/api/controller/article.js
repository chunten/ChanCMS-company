const dayjs = require("dayjs");
const path = require("path");

const {
  modules: {
    api: {
      service: { article },
    },
  },
  config: { APP_PATH,  version, appName, port, versionTime, author },
  helper: {
    utils: { filterBody, delImg },
    api: { success },
  },
} = Chan;

class ArticleController {
  // 增
  async create(req, res, next) {
    try {
      const body = req.body;
      body.defaultParams.createdAt = dayjs(body.defaultParams.createdAt).format(
        "YYYY-MM-DD HH:mm:ss"
      );
      body.defaultParams.updatedAt = dayjs(body.defaultParams.updatedAt).format(
        "YYYY-MM-DD HH:mm:ss"
      );
      body.defaultParams.content = filterBody(body.defaultParams.content);
      const data = await article.create(body);
      res.json({ ...success, data: data });
    } catch (err) {
      next(err);
    }
  }

  // 删除
  async delete(req, res, next) {
    try {
      const { id } = req.query;
      const data = await article.delete(id);
      res.json({ ...success, data: data });
    } catch (err) {
      next(err);
    }
  }

  // 改
  async update(req, res, next) {
    try {
      const body = req.body;
      body.createdAt = dayjs(body.createdAt).format("YYYY-MM-DD HH:mm:ss");
      body.updatedAt = dayjs(body.updatedAt).format("YYYY-MM-DD HH:mm:ss");
      body.content = filterBody(body.content);
      const data = await article.update(body);
      res.json({ ...success, data: data });
    } catch (err) {
      next(err);
    }
  }

  // 查
  async find(req, res, next) {
    try {
      const data = await article.find();
      res.json({ ...success, data: data });
    } catch (err) {
      next(err);
    }
  }

  // 查
  async detail(req, res, next) {
    try {
      const { id } = req.query;
      const data = await article.detail(id);
      res.json({ ...success, data: data });
    } catch (err) {
      next(err);
    }
  }

  // 查子栏目
  async findSubId(req, res, next) {
    try {
      const { id } = req.query;
      const data = await article.findSubId(id);
      res.json({ ...success, data: data });
    } catch (err) {
      next(err);
    }
  }

  // 搜索
  async search(req, res, next) {
    try {
      const { cur, keyword, cid = 0, pageSize = 20 } = req.query;
      const data = await article.search(keyword, cur, pageSize, +cid);
      data.list.forEach((ele) => {
        ele.createdAt = dayjs(ele.createdAt).format("YYYY-MM-DD HH:mm:ss");
      });
      res.json({ ...success, data: data });
    } catch (err) {
      next(err);
    }
  }

  // 列表
  async list(req, res, next) {
    try {
      const { cur, cid, pageSize = 10 } = req.query;
      const data = await article.list(cur, pageSize, cid);
      data.list.forEach((ele) => {
        ele.updatedAt = dayjs(ele.updatedAt).format("YYYY-MM-DD HH:mm:ss");
      });
      res.json({ ...success, data: data });
    } catch (err) {
      next(err);
    }
  }

  // 上传图片
  async upload(req, res, next) {
    try {
      let file = req.files;
      const { originalname, filename, path } = file[0];
      res.json({
        ...success,
        data: {
          link: path.replace("app", ""),
          domain: req.hostname,
          originalname,
          filename,
          path: "/" + path.replace(/\\/g, "/").replace(/^app\//, ""),
        },
      });
    } catch (err) {
      next(err);
    }
  }

  async findField(req, res, next) {
    try {
      const { cid } = req.query;
      const data = await article.findField(cid);
      res.json({ ...success, data: data });
    } catch (err) {
      next(err);
    }
  }

  async tongji(req, res, next) {
    try {
      
      const data = await article.tongji();
      res.json({
        ...success,
        data: { ...data, version, appName, port, versionTime, author },
      });
    } catch (err) {
      next(err);
    }
  }

  async delfile(req, res, next) {
    try {
      const { url } = req.query;
      let filePath = path.join(APP_PATH, url);
      let data = delImg(filePath);
      res.json({ ...success, data });
    } catch (err) {
      next(err);
    }
  }
}

module.exports = ArticleController;
