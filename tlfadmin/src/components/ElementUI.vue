<template>
  <div>
      <!-- 标签使用原则:
          规则: 先定义,后使用
          语法: el-breadcrumb 找到名称为Breadcrumb组件进行展现
          定义elementUI的组件: 按需导入组件
             从elementUI中导入特定的组件
             1.import {Breadcrumb} from 'element-ui'
             2.Vue.use(Breadcrumb)  声明为全局组件.子组件可以直接调用


      -->
      <!-- 1.添加面包屑导航 -->
      <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
        <el-breadcrumb-item>活动管理</el-breadcrumb-item>
        <el-breadcrumb-item>活动列表</el-breadcrumb-item>
        <el-breadcrumb-item>活动详情</el-breadcrumb-item>
      </el-breadcrumb>

      <!-- 2.定义卡片视图  -->
      <el-card class="box-card">
        <div class="text item">
          <!-- 4.栅格: 每行24格,可以动态的缩放 -->
          <el-row :gutter="20">
            <el-col :span="8">
              <!-- 3.定义文本输入框-->
              <el-input placeholder="请输入内容" v-model="input3" class="input-with-select">
                 <el-button slot="append" icon="el-icon-search"></el-button>
              </el-input>
            </el-col>
            <el-col :span="3">
                <el-button type="primary">主要按钮</el-button>
            </el-col>
          </el-row>
        </div>
        <hr>
        <!-- 定义表格
          :data 一般采用数组的方式 定义表格数据!!!
          label="ID" 列字段名称
          stripe: 默认为false   启用为true  斑马纹
          border: 默认为false   启用为true  边框线
        -->
        <h1>定义表格</h1>
         <el-table :data="tableData" style="width: 100%"  stripe border>
              <el-table-column
                label="编号" prop="id">
              </el-table-column>
              <el-table-column
                label="名称" prop="name">
              </el-table-column>
              <el-table-column
                label="年龄" prop="age">
              </el-table-column>
              <el-table-column
                label="性别" prop="sex">
              </el-table-column>
         </el-table>
      </el-card>
  </div>
</template>

<script>
    //对外声明组件属性/方法等参数.要被根组件调用
    export default {
      data(){
        return {
          tableData: [
            {id:100, name:"黑熊精", age: 3000, sex:"男"},
            {id:100, name:"黑旋风", age: 3000, sex:"男"},
            {id:100, name:"黑心肠", age: 3000, sex:"男"},
            {id:100, name:"黑手党", age: 3000, sex:"男"}
          ]
        }
      }
    }
</script>

<style lang="less" scoped>
</style>