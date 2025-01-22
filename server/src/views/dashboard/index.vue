<template>
  <div class="dashboard-container">
    <!-- 欢迎标题 -->
    <div class="welcome-header">
      <h2>ChanCMS欢迎您！</h2>
      <p>登录用户：{{ username }} 所在城市：{{ city }} 当前IP：{{ ip }}</p>
    </div>

    <!-- 统计卡片 -->
    <el-row :gutter="20" class="stat-cards">
      <el-col :span="6">
        <el-card shadow="hover">
          <div class="stat-item">
            <el-icon size="40" color="#36A3F7"><Document /></el-icon>
            <div class="stat-info">
              <div class="stat-title">文章内容</div>
              <div class="stat-value">{{ stats.articles }} 篇</div>
            </div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card shadow="hover">
          <div class="stat-item">
            <el-icon  size="40" color="#40C9C6"><Folder /></el-icon>
            <div class="stat-info">
              <div class="stat-title">文章分类</div>
              <div class="stat-value">{{ stats.categories }} 个</div>
            </div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card shadow="hover">
          <div class="stat-item">
            <el-icon  size="40" color="#F4516C"><ChatDotRound /></el-icon>
            <div class="stat-info">
              <div class="stat-title">留言信息</div>
              <div class="stat-value">{{ stats.messages }} 条</div>
            </div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card shadow="hover">
          <div class="stat-item">
            <el-icon  size="40" color="#34BFA3"><Refresh /></el-icon>
            <div class="stat-info">
              <div class="stat-title">七日更新</div>
              <div class="stat-value">{{ stats.updates }} 条</div>
            </div>
          </div>
        </el-card>
      </el-col>
    </el-row>

    <!-- 系统信息展示 -->
    <el-row :gutter="20" class="system-info">
      <el-col :span="12">
        <el-card class="chart-card">
          <template #header>
            <div class="card-header">
              <span>ChanCMS架构</span>
            </div>
          </template>
          <div class="chart-container" ref="chartRef"></div>
        </el-card>
      </el-col>
      <el-col :span="12">
        <el-card>
          <template #header>
            <div class="card-header">
              <span>系统特色</span>
            </div>
          </template>
          <div class="feature-list">
            <p><strong>基础：</strong>ChanCMS基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。轻量、灵活、易用、安全。</p>
            <p><strong>自研：</strong>自研chanis框架mvc思想，长久可持续。</p>
            <p><strong>模块：</strong>支持模块化、插件化、扩展模型、前后端分离架构。</p>
            <p><strong>API：</strong>支持wap、微信小程序、app等多端提供接口支持。</p>
            <p><strong>SEO：</strong>专注于seo，灵活设置路由、关键词和描述。</p>
            <p><strong>安全：</strong>基于knex防注入、接口权限验证、为安全提供保障。</p>
            <p><strong>灵活：</strong>碎片功能，完全局变量，灵活配置使用。</p>
          </div>
        </el-card>
      </el-col>
    </el-row>

    <!-- 技术架构信息 -->
    <el-card class="tech-info">
      <template #header>
        <div class="card-header">
          <span>技术架构</span>
        </div>
      </template>
      <el-descriptions :column="2" border>
        <el-descriptions-item label="服务架构">nodejs express mysql</el-descriptions-item>
        <el-descriptions-item label="前端架构">vite vue3 element-plus</el-descriptions-item>
        <el-descriptions-item label="程序路径">F:\chanCMS\chanCMS-master\</el-descriptions-item>
        <el-descriptions-item label="程序版本">3.0.12</el-descriptions-item>
        <el-descriptions-item label="发布时间">2024-12-06</el-descriptions-item>
        <el-descriptions-item label="技术开发">烟安</el-descriptions-item>
        <el-descriptions-item label="联系微信">yanyutao2014</el-descriptions-item>
        <el-descriptions-item label="联系邮箱">867528315@qq.com</el-descriptions-item>
      </el-descriptions>
    </el-card>
  </div>
</template>

<script setup>
import * as articleApi from "@/api/article.js";
import * as categoryApi from "@/api/category.js";
import * as siteApi from "@/api/site.js";
import { ref, onMounted } from 'vue'
import { Document, Folder, ChatDotRound, Refresh } from '@element-plus/icons-vue'
import * as echarts from 'echarts'
import { userStore } from "@/stores/user";
import {getIp} from '@/api/login_log'
import {siteInfo} from "@/api/site.js";


const user = userStore();
const username = user.userInfo.username;
// 数据
const city = ref()
const ip = ref()


const stats = ref({
  articles: 0,
  categories: 0,
  messages: 0,
  updates: 0
})

const chartRef = ref(null)

// 初始化图表
onMounted(async () => {
  const ipAll = await getIp()
  city.value = ipAll.data.city
  ip.value = ipAll.ip
  const chart = echarts.init(chartRef.value)
  const option = {
    series: [{
      type: 'pie',
      radius: ['40%', '70%'],
      data: [
        { value: 30, name: 'nodejs', itemStyle: { color: '#FFD700' } },
        { value: 15, name: 'mysql', itemStyle: { color: '#90EE90' } },
        { value: 20, name: 'vue3', itemStyle: { color: '#32CD32' } },
        { value: 25, name: 'javascript', itemStyle: { color: '#1E90FF' } },
        { value: 5, name: 'css3', itemStyle: { color: '#4169E1' } },
        { value: 5, name: 'html5', itemStyle: { color: '#483D8B' } }
      ],
      label: {
        show: true,
        position: 'outside'
      }
    }]
  }
  chart.setOption(option)
  // 获取统计数据
  const res = await articleApi.tongji()
  const res1 = await categoryApi.find()
  stats.value={
    articles: res.data.article,
    categories: res1.data.length,
    messages: res.data.message,
    updates: res.data.week
  }
  const res2 = await siteApi.siteInfo()
  console.log(res2)
})


</script>

<style scoped>
.dashboard-container {
  padding: 20px;
}

.welcome-header {
  margin-bottom: 20px;
}

.welcome-header h2 {
  margin-bottom: 10px;
}

.stat-cards {
  margin-bottom: 20px;
}

.stat-item {
  display: flex;
  align-items: center;
  gap: 20px;
}

.stat-info {
  flex-grow: 1;
}

.stat-title {
  font-size: 14px;
  color: #666;
}

.stat-value {
  font-size: 20px;
  font-weight: bold;
  margin-top: 5px;
}

.system-info {
  margin-bottom: 20px;
}

.chart-container {
  height: 300px;
}

.feature-list p {
  margin: 10px 0;
  line-height: 1.6;
}

.card-header {
  font-weight: bold;
}

.tech-info {
  margin-bottom: 20px;
}

:deep(.el-card__body) {
  padding: 20px;
}

:deep(.el-descriptions) {
  margin: 20px 0;
}
</style>
