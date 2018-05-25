<template>
  <div class="addproduct">
    <p>添加产品</p>
    <el-form ref="form" :model="form" label-width="80px">
      <el-form-item label="产品名称">
        <el-input v-model="form.name"></el-input>
      </el-form-item>

      <el-form-item label="英文名称">
        <el-input v-model="form.ename"></el-input>
      </el-form-item>

      <el-form-item label="价格">
        <el-input v-model="form.price"></el-input>
      </el-form-item>

      <el-form-item label="描述">
        <el-input v-model="form.description"></el-input>
      </el-form-item>

      <el-form-item label="折扣">
        <el-input v-model="form.discount"></el-input>
      </el-form-item>

      <el-form-item label="类别">
        <el-select v-model="form.category" placeholder="请选择类型">
          <el-option label="运动鞋" value="运动鞋"></el-option>
          <el-option label="高跟鞋" value="高跟鞋"></el-option>
          <el-option label="拖鞋" value="拖鞋"></el-option>
        </el-select>
      </el-form-item>

      <el-form-item label="是否精选">
        <el-switch v-model="form.fine"></el-switch>
      </el-form-item>

      <el-form-item label="标签">
        <el-checkbox-group v-model="form.label">
          <el-checkbox label="高邦" name="gb"></el-checkbox>
          <el-checkbox label="内增高" name="nzg"></el-checkbox>
          <el-checkbox label="气垫" name="qd"></el-checkbox>
          <el-checkbox label="防水" name="fs"></el-checkbox>
        </el-checkbox-group>
      </el-form-item>
      <el-form-item label="添加图片">
        <el-upload
          class="upload-demo"
          action="/api/banner"
          :on-remove="handleRemove"
          :on-success="handleSuccess"
          :file-list="form.fileList"
          multiple
          list-type="picture">
          <el-button size="small" type="primary">点击上传</el-button>
          <div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
        </el-upload>
      </el-form-item>

      <el-form-item label="添加大图">
        <el-upload
          class="upload-demo"
          action="/api/banner"
          :on-remove="handleRemove_1"
          :on-success="handleSuccess_1"
          :file-list="form.fileList_1"
          multiple
          list-type="picture">
          <el-button size="small" type="primary">点击上传大图</el-button>
          <div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
        </el-upload>
      </el-form-item>

      <el-form-item>
        <el-button type="primary" @click="onSubmit">添加</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>
<script>
  export default{
    name: 'addproduct',
    data(){
      return {
        form: {
          name: '',
          category: '',
          ename: '',
          price: '',
          fine: false,
          label: [],
          description: '',
          discount: '',
          fileList:[],
          fileList_1:[]
        },
      }
    },
    watch: {},
    methods: {
      onSubmit() {
        let obj=Object.assign({},this.form);
        obj.fileList=JSON.stringify(obj.fileList);
        obj.fileList_1=JSON.stringify(obj.fileList_1);
        this.$http.post('/api/product/add', obj, {headers: {"content-type": 'application/json'}}).then(res => {
          if (res.body == '1') {
            this.$message({
              message: '添加成功',
              type: 'success'
            });
            this.$router.push({name: 'product'});
          } else {
            this.$message({
              message: '添加失败',
              type: 'success'
            });
            this.$router.push({name: 'product'});
          }
        })
      },
      handleRemove(file, filelist) {
        this.form.fileList = filelist;
      },
      handleSuccess(response, file, filelist){
        this.form.fileList = filelist;
      },
      handleRemove_1(file, filelist) {
        this.form.fileList_1 = filelist;
      },
      handleSuccess_1(response, file, filelist){
        this.form.fileList_1 = filelist;
      }
    }
  }
</script>
<style scoped lang="scss">
  .addproduct {
    padding-top: 10px;
    box-sizing: border-box;
    p {
      font-size: 20px;
      margin: 0 0 10px 10px;
    }
  }
</style>
