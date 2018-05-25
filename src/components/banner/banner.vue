<template>
  <div class="bannerTable">
    <el-row>
      <el-button round><a href="/#/addbanner" class="addimg">增加图片</a></el-button>
    </el-row>
    <el-table
      :data="tableData"
      style="width: 100%">
      <el-table-column
        prop="id"
        label="id"
        width="180">
      </el-table-column>
      <el-table-column
        label="图片"
        width="300">
        <template slot-scope="scope">
          <img src=scope.row.img alt="">
        </template>
      </el-table-column>
      <el-table-column
        prop="sid"
        label="sid"
        width="100">
      </el-table-column>
      <el-table-column label="操作">
        <template slot-scope="scope">
          <el-button
            size="mini"
            @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
          <el-button
            size="mini"
            type="danger"
            @click="handleDelete(scope.$index, scope.row)">删除
          </el-button>
        </template>
      </el-table-column>
    </el-table>
  </div>

</template>
<script>
  export default{
    name: 'banner',
    data(){
      return {
        tableData: []
      }
    },
    methods: {
      handleDelete(index, row) {
        this.$http.get('/api/banner/del?id='+row.id).then(res=>{
          if(res.body=='1'){
            this.$message({
              message: '删除成功',
              type: 'success'
            });
          }else {
            this.$message({
              message: '删除失败',
              type: 'warning'
            });
          }
        })
      },
      handleEdit(index,row) {
        this.$router.push({name:'changebanner',params:{row:row}})
      },
    },
    created(){
      this.$http.get('/api/banner/bannerset').then(res=>{
        this.tableData=res.body;
        console.log(res.body);
      })
    }
  }
</script>
<style scoped lang="scss">
.bannerTable{
  width: 100%;
  height: 100%;
  padding: 50px;
  box-sizing: border-box;
  .addimg{
    color: #999;
  }
  .el-table th>.cell{
    text-align: center;
  }
}
</style>
