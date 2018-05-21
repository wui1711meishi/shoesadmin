<template>
  <div id="app">
    <!--顶部-->
    <el-header style=" font-size: 12px">
        <div class="logo">
          TITOLO 管理中心
        </div>
      <div class="admin">
        <!--<div class="adminimg">-->
          <!--<img style="width: 100%" src="/assets/img/gg.jpg" alt="">-->
        <!--</div>-->
        <span>王小虎</span>
        <el-dropdown>
          <i class="el-icon-arrow-down" style="margin-left: 15px"></i>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item>查看</el-dropdown-item>
            <el-dropdown-item>新增</el-dropdown-item>
            <el-dropdown-item>删除</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </div>
    </el-header>
    <el-container style="height: 500px; ">
      <!--左侧导航-->
      <el-aside width="200px" >
        <el-menu
                :default-openeds="['1', '3']"
                class="el-menu-vertical-demo"
                @open="handleOpen"
                @close="handleClose"
                background-color="#333"
                text-color="#eee"
                active-text-color="#ffd04b">
          <el-submenu index="1">
            <template slot="title"><i class="el-icon-message"></i>导航一</template>
            <el-menu-item-group>
              <template slot="title">分组一</template>
              <el-menu-item index="1-1">选项1</el-menu-item>
              <el-menu-item index="1-2">选项2</el-menu-item>
            </el-menu-item-group>
            <el-menu-item-group title="分组2">
              <el-menu-item index="1-3">选项3</el-menu-item>
            </el-menu-item-group>
            <el-submenu index="1-4">
              <template slot="title">选项4</template>
              <el-menu-item index="1-4-1">选项4-1</el-menu-item>
            </el-submenu>
          </el-submenu>
          <el-submenu index="2">
            <template slot="title"><i class="el-icon-menu"></i>导航二</template>
            <el-menu-item-group>
              <template slot="title">分组一</template>
              <el-menu-item index="2-1">选项1</el-menu-item>
              <el-menu-item index="2-2">选项2</el-menu-item>
            </el-menu-item-group>
            <el-menu-item-group title="分组2">
              <el-menu-item index="2-3">选项3</el-menu-item>
            </el-menu-item-group>
            <el-submenu index="2-4">
              <template slot="title">选项4</template>
              <el-menu-item index="2-4-1">选项4-1</el-menu-item>
            </el-submenu>
          </el-submenu>
          <el-submenu index="3">
            <template slot="title"><i class="el-icon-setting"></i>导航三</template>
            <el-menu-item-group>
              <template slot="title">分组一</template>
              <el-menu-item index="3-1">选项1</el-menu-item>
              <el-menu-item index="3-2">选项2</el-menu-item>
            </el-menu-item-group>
            <el-menu-item-group title="分组2">
              <el-menu-item index="3-3">选项3</el-menu-item>
            </el-menu-item-group>
            <el-submenu index="3-4">
              <template slot="title">选项4</template>
              <el-menu-item index="3-4-1">选项4-1</el-menu-item>
            </el-submenu>
          </el-submenu>
        </el-menu>
      </el-aside>
      <!--内容-->
      <el-main>
        <iframe class="frame" src="/#/car" frameborder="0"></iframe>
      </el-main>
    </el-container>

    <!--底部-->
    <el-footer style="font-size:12px;line-height:60px;color: #eee;background:#333; text-align: center">
      &copy; 版权所有 TITOLO 2015-2018
    </el-footer>
  </div>
</template>

<script>
export default {
  data(){
    return {

    }
  },
  methods: {
     handleOpen(key, keyPath) {
//         console.log(key, keyPath);
     },
      handleClose(key, keyPath) {
//          console.log(key, keyPath);
      }
  },
  created(){
  this.$http.get('/api/test').then(res=>{
      console.log(res)
  })
  }
}
</script>

<style>
  *{
    margin: 0;
    padding: 0;
  }
  .el-header {
    z-index: 10000;
    background-color: #333;
    color: #eee;
    line-height: 60px;
    box-shadow: 0 5px 10px rgba(0,0,0,0.9);
  }

  .el-aside {
    color: #333;
    background: #333;
  }
  .el-main{
     padding: 0;
   }
  .logo{
    float: left;
  }
  .admin{
    float: right;
  }
  .admin i{
    color: #eee;
  }
  .frame{
    width: 100%;
    height:100%;
  }

</style>
