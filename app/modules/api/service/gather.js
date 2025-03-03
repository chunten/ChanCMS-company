const { knex } = Chan;
const BaseService = require("./base");
class GatherService extends BaseService {
  model = "plus_gather";

  async common(url) {
    try {
      if (global.fetch) {
        const result = await fetch(url);
        const data = await result.json();
        return data;
      }
      return "当前node版本不支持fetch";
    } catch (err) {
      throw err;
    }
  }

  // 增加
  async create(body) {
    try {
      const result = await this.insert(this.model, body);
      return result ? "success" : "fail";
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 删
  async delete(id) {
    try {
      const result = await knex(this.model).where("id", "=", id).del();
      return result ? "success" : "fail";
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 修改
  async update(body) {
    const { id } = body;
    delete body.id;
    try {
      const result = await knex(this.model).where("id", "=", id).update(body);
      return result ? "success" : "fail";
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 列表
  async list(cur = 1, pageSize = 10) {
    try {
      // 查询个数
      const total = await knex(this.model).count("id", { as: "count" });
      const offset = parseInt((cur - 1) * pageSize);
      // const list = await knex.select(['id',
      // 'taskName',
      // 'targetUrl',
      // 'parseData',
      // 'status','cid','updatedAt'])
      //   .from(this.model)
      //   .limit(pageSize)
      //   .offset(offset)
      //   .orderBy('id', 'desc');

      const list = await knex(this.model)
        .select(
          "plus_gather.id",
          "plus_gather.taskName",
          "plus_gather.targetUrl",
          "plus_gather.parseData",
          "plus_gather.status",
          "plus_gather.cid",
          "plus_gather.updatedAt",
          "cms_category.name as category"
        )
        .innerJoin("cms_category", "plus_gather.cid", "cms_category.id")
        .limit(pageSize)
        .offset(offset)
        .orderBy("plus_gather.id", "desc");

      const count = total[0].count || 1;
      return {
        count: count,
        total: Math.ceil(count / pageSize),
        current: +cur,
        list: list,
      };
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 查
  async detail(id) {
    try {
      const data = await knex(this.model)
        .where("id", "=", id)
        .select(["id", "taskName", "targetUrl", "parseData", "status", "cid"]);
      return data[0];
    } catch (err) {
      throw err;
    }
  }

  // 搜索
  async search(key = "", cur = 1, pageSize = 10) {
    try {
      // 查询个数
      const sql = `SELECT COUNT(id) as count FROM ? p  WHERE p.name LIKE '%${key}%'`;
      const total = await knex.raw(sql, [this.model]);
      // 翻页
      const offset = parseInt((cur - 1) * pageSize);
      const sql_list = `SELECT p.id,p.taskName,p.targetUrl,p.updatedAt,p.status FROM ? p WHERE p.taskName LIKE '%${key}%' ORDER BY id DESC LIMIT ?,?`;
      const list = await knex.raw(sql_list, [
        this.model,
        offset,
        parseInt(pageSize),
      ]);
      const count = total[0].count || 1;
      return {
        count: count,
        total: Math.ceil(count / pageSize),
        current: +cur,
        list: list[0],
      };
    } catch (err) {
      throw err;
    }
  }
}

module.exports = GatherService;
