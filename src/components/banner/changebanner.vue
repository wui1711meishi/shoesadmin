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
  export default {
    name: 'changebanner',
    data(){
      return {
        form: {
            id:'',
          input: '',
          fileList: []
        }
      }
    },
    methods:{
      onSubmit(){
        let obj=Object.assign({},this.form);
        obj.fileList=JSON.stringify(obj.fileList);
        this.$http.post('/api/banner/changeget', obj, {
          headers: {
            "content-type": 'application/json'
          }
        }).then(function (res) {
          if(res.body==='1'){
            this.$message({
              message: '编辑成功',
              type: 'success'
            });
            this.$router.push({name:'banner'});
          }else {
            this.$message({
              message: '编辑失败',
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
    },
    created(){
      let id = this.$route.params['row'].id;
        this.$http.get('/api/banner/update?id='+id).then(res=>{
          console.log(res);
          this.form.input=res.body[0].sid;
          this.form.id=res.body[0].id;
          let arr=[];
          arr.push(JSON.parse(res.body[0].img));
          this.form.fileList=arr;
        })
    }
  }
</script>

<style scoped lang='scss'>
</style>
