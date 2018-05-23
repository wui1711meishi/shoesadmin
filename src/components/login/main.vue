<template>
  <div id="app">
    <!--顶部-->
    <el-header>
        <div class="logo">
          TITOLO 管理中心
        </div>
      <div class="admin">
        <div class="adminimg">
          <img style="width: 100%" src="../../assets/img/thumb.jpg" alt="">
        </div>
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
    <el-container style="">
      <!--左侧导航-->
      <el-aside width="200px" >
        <el-menu
                :default-openeds="[]"
                class="el-menu-vertical-demo"
                @open="handleOpen"
                @close="handleClose"
                background-color="#333"
                text-color="#eee"
                active-text-color="#ffd04b">
          <el-menu-item index="0">
            <template slot="title">
              <a target="content" href="/#/welcome">
                <i class="el-icon-menu"></i>欢迎页面
              </a>
            </template>
          </el-menu-item>
          <el-menu-item index="0">
            <template slot="title">
              <a target="content" href="/#/admin">
                <i class="el-icon-menu"></i>管理员
              </a>
            </template>
          </el-menu-item>
          <el-menu-item index="0">
            <template slot="title">
              <a target="content" href="/#/user">
                <i class="el-icon-menu"></i>用户管理
              </a>
            </template>
          </el-menu-item>
          <el-menu-item index="0">
            <template slot="title">
              <a target="content" href="/#/banner">
                <i class="el-icon-menu"></i>轮播图管理
              </a>
            </template>
          </el-menu-item>
          <el-menu-item index="0">
            <template slot="title">
              <a target="content" href="/#/product">
                <i class="el-icon-menu"></i>产品管理
              </a>
            </template>
          </el-menu-item>
        </el-menu>
      </el-aside>
      <!--内容-->
      <el-main>
        <iframe name="content" class="frame" src="/#/welcome" frameborder="0"></iframe>
      </el-main>
    </el-container>

    <!--底部-->
    <el-footer>
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

<style scoped>
  .el-header {
    z-index: 10;
    background-color: #333;
    color: #eee;
    font-size: 12px;
    line-height: 60px;
    box-shadow: 0 5px 10px rgba(0,0,0,0.9);
  }
  .logo{
    font-size:20px;
    font-weight: bold;
  }
  .el-container{
    height: 500px;
    width: 100%;
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
  .admin .adminimg{
    width: 50px;
    height:50px;
    overflow: hidden;
    margin-right: 20px;
    float: left;
    margin-top: 5px;
  }
  .admin .adminimg img{
    width: 100%;
    height:100%;
    border-radius: 50%;
  }
  .admin i{
    color: #eee;
  }
  .el-container a{
    color: #eee;
  }
  .frame{
    width: 100%;
    height:99%;
  }
  .el-footer{
    font-size:12px;
    line-height:60px;
    color: #eee;
    background:#333;
    text-align: center
  }

</style>
