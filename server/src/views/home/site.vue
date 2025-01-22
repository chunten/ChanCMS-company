<template>
  <div class="pd-20 content-wrap">
    <el-tabs v-model="activeName" @tab-click="handleClick">
      <!-- 基本设置 -->
      <el-tab-pane label="基本设置" class="mt-20" name="first">
        <el-form ref="info" :model="info" label-width="84px">
          <el-form-item label="网站名称" prop="name" :rules="[
            {
              required: true,
              message: '请输入网站名称',
              trigger: 'blur',
            },
            {
              min: 2,
              max: 20,
              message: '长度在 2 到 20 个字符',
              trigger: 'blur',
            },
          ]">
            <el-input v-model="info.name"></el-input>
          </el-form-item>

          <el-form-item prop="domain" label="网站域名">
            <el-input v-model="info.domain"></el-input>
          </el-form-item>
          <el-form-item prop="address" label="地址">
            <el-input v-model="info.address"></el-input>
          </el-form-item>
          <el-form-item prop="tel" label="电话1">
            <el-input v-model="info.tel"></el-input>
          </el-form-item>
          <el-form-item prop="tel1" label="电话2">
            <el-input v-model="info.tel1"></el-input>
          </el-form-item>

          <el-form-item prop="email" label="公司邮箱">
            <el-input v-model="info.email" :rules="[
              {
                type: 'email',
                message: '请输入正确的邮箱',
                trigger: ['blur', 'change'],
              },
            ]"></el-input>
          </el-form-item>

          <el-form-item prop="icp" label="ICP备案号">
            <el-input v-model="info.icp"></el-input>
          </el-form-item>
          <el-form-item class="flex" label="标志">
            <el-upload
              class="avatar-uploader"
              :http-request="upload"
              :show-file-list="false"
              :before-upload="beforeUpload"
            >
              <el-popover
                placement="top-start"
                title="上传"
                :width="200"
                trigger="hover"
                content="上传图片作为封面图，大小200k内"
              >
                <template #reference>
                  <el-icon class="avatar-uploader-icon">
                    <MostlyCloudy />
                  </el-icon>
                </template>
              </el-popover>
            </el-upload>

            <el-popover
              v-if="info.logo"
              placement="right"
              :width="600"
              trigger="hover"
            >
              <template #reference>
                <el-image
                  class="avatar-uploader-icon pointer ml-10"
                  :src="info.logo"
                />
              </template>
              <el-image style="width: 100%" :src="info.logo" />
            </el-popover>

            <el-input class="ml-10 flex-1" v-model="info.logo"></el-input>
          </el-form-item>
          <el-form-item class="flex" label="二维码">
            <el-upload
              class="avatar-uploader"
              :http-request="uploadqrcode"
              :show-file-list="false"
              :before-upload="beforeUpload"
            >
              <el-popover
                placement="top-start"
                title="上传"
                :width="200"
                trigger="hover"
                content="上传图片作为封面图，大小200k内"
              >
                <template #reference>
                  <el-icon class="avatar-uploader-icon">
                    <MostlyCloudy />
                  </el-icon>
                </template>
              </el-popover>
            </el-upload>

            <el-popover
              v-if="info.qrcode"
              placement="right"
              :width="600"
              trigger="hover"
            >
              <template #reference>
                <el-image
                  class="avatar-uploader-icon pointer ml-10"
                  :src="info.qrcode"
                />
              </template>
              <el-image style="width: 100%" :src="info.qrcode" />
            </el-popover>
            <el-input class="ml-10 flex-1" v-model="info.qrcode"></el-input>
          </el-form-item>

          <el-form-item prop="code" label="统计代码">
            <el-input type="textarea" prop="textarea" class="textarea" :rows="3" v-model="info.code"></el-input>
          </el-form-item>

          <el-form-item>
            <el-button type="primary" @click="submit('info')">保存</el-button>
          </el-form-item>
        </el-form>
      </el-tab-pane>

      <!-- seo设置 -->
      <el-tab-pane label="SEO设置" class="mt-20" name="second">
        <el-form ref="seo" :model="seo" label-width="84px">
          <el-form-item label="标题" prop="title" :rules="[
            {
              required: true,
              message: '请输入网站标题',
              trigger: 'blur',
            },
            {
              min: 2,
              max: 20,
              message: '长度在 2 到 20 个字符',
              trigger: 'blur',
            },
          ]">
            <el-input v-model="seo.title"></el-input>
          </el-form-item>

          <el-form-item label="关键词" prop="keywords">
            <el-input v-model="seo.keywords"></el-input>
          </el-form-item>

          <el-form-item label="描述" prop="description" :rules="[
            {
              min: 2,
              max: 255,
              message: '字数限制255',
              trigger: 'blur',
            },
          ]">
            <el-input type="textarea" :rows="3" class="textarea" v-model="seo.description"></el-input>
          </el-form-item>

          <el-form-item>
            <el-button type="primary" @click="submit('seo')">保存</el-button>
          </el-form-item>
        </el-form>
      </el-tab-pane>

      <ConfigSet></ConfigSet>
      <QiNiu></QiNiu>
      <WeChat></WeChat>
    </el-tabs>
  </div>
</template>

<script>
import { siteInfo, update } from "@/api/site.js";
import { upload } from "@/api/upload.js";
import ConfigSet from "./components/config.vue";
import QiNiu from "./components/qiniu.vue";
import WeChat from "./components/wechat.vue";
export default {
  name: "sys-index",
  components: { ConfigSet, QiNiu, WeChat },
  data: () => {
    return {
      loading: true,
      activeName: "first",
      activeIndex: "0",
      info: {
        id: "",
        name: "",
        domain: "",
        email: "",
        icp: "",
        address:'',
        tel:'',
        tel1:"",
        code: "",
      },
      seo: {
        id: "",
        title: "",
        keywords: "",
        description: "",
      },
      infoRules: {
        name: [
          { required: true, message: "请输入网站名称", trigger: "blur" },
          {
            min: 2,
            max: 20,
            message: "长度在 2 到 20 个字符",
            trigger: "blur",
          },
        ],
      },
      seoRules: {
        title: [
          { required: true, message: "不能为空", trigger: "blur" },
          {
            min: 2,
            max: 50,
            message: "长度在 2 到 50 个字符",
            trigger: "blur",
          },
        ],
      },
    };
  },
  computed: {},
  created() {
    this.query();
  },
  methods: {
    handleClick(tab) {
      this.activeIndex = tab.index;
    },
    beforeUpload(rawFile) {
      if (rawFile.type.indexOf("image") === -1) {
        this.$message("上传文件只能是图片格式");
        return false;
      }
      if (rawFile.size / 1024 / 1024 > 0.9) {
        this.$message("上传图片必须小于200k");
        return false;
      }
    },
    //上传缩略图
    async uploadqrcode(file) {
      let fd = new FormData();
      //把上传文件的添加到 ForDate对象中
      fd.append("file", file.file);
      let res = await upload(fd);
      if (res.code === 200) {
        this.info.qrcode = res.data.path;
      }
    },
//上传缩略图
    async upload(file) {
      let fd = new FormData();
      //把上传文件的添加到 ForDate对象中
      fd.append("file", file.file);
      let res = await upload(fd);
      if (res.code === 200) {
        this.info.logo = res.data.path;
      }
    },
    //查询
    async query() {
      try {
        let res = await siteInfo();
        if (res.code === 200) {
          this.loading = false;
          let {
            id,
            name,
            domain,
            email,
            icp,
            police,
            copyright,
            code,
            title,
            address,
            tel,
            tel1,
            logo,
            qrcode,
            keywords,
            description,
          } = res.data;
          this.info = {
            id,
            name,
            domain,
            email,
            icp,
            address,
            tel,
            tel1,
            logo,
            qrcode,
            police,
            copyright,
            code,

          };
          this.seo = { id, title, keywords, description };
        } else {
          this.$message({
            message: res.msg,
            type: "success",
          });
        }
      } catch (error) {
        console.log(error);
      }
    },

    //更新基本信息
    async update(data) {
      try {
        let res = await update(data);
        if (res.code === 200) {
          this.$message({
            message: "更新成功^_^",
            type: "success",
          });
          this.query();
        } else {
          this.$message({
            message: res.msg,
            type: "success",
          });
        }
      } catch (error) {
        console.log(error);
      }
    },

    submit(formName) {
      this.$refs[formName].validate((valid) => {
        if (valid) {
          let data = {
            'info': this.info,
            'seo': this.seo
          }
          this.update(data[formName]);

        } else {
          console.log("error submit!!");
          return false;
        }
      });
    },
  },
};
</script>
<style></style>
