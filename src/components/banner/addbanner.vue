<template>
  <div class="addBanner">
    <el-input v-model="form.input" placeholder="请输入图片名称" class="input"></el-input>
    <el-upload
      class="upload-demo"
      action="/api/banner"
      :on-remove="handleRemove"
      :on-success="handleSuccess"
      :file-list="form.fileList"
      list-type="picture">
      <el-button size="small" type="primary">点击上传</el-button>
      <div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
    </el-upload>
    <el-button type="primary" size="small" @click="onSubmit">立即创建</el-button>
  </div>
</template>

<script>
  export default{
    name: 'addbanner',
    data(){
      return {
        form: {
          input: '',
          fileList:[]
        }
      }
    },
    methods: {
      onSubmit(){
        let obj=Object.assign({},this.form);
        obj.fileList=JSON.stringify(obj.fileList);
        this.$http.post('/api/banner/submit', obj, {
          headers: {
            "content-type": 'application/json'
          }
        }).then(function (res) {
          if(res.body==='1'){
            this.$message({
              message: '添加成功',
              type: 'success'
            });
            this.$router.push({name:'banner'});
          }else {
            this.$message({
              message: '添加失败',
              type: 'success'
            });
          }
        })
      },
      handleRemove(file, filelist) {
        this.form.fileList = filelist;
      },
      handleSuccess(response, file, filelist){
        this.form.fileList = filelist;
      }
    }
  }
</script>
<style scoped lang="scss">
  .input {
    margin-bottom: 30px;
  }

  .addBanner {
    width: 500px;
    margin: 100px auto;
  }
</style>
