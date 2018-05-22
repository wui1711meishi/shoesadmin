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
                    <el-option label="运动鞋" value="ydx"></el-option>
                    <el-option label="高跟鞋" value="ggx"></el-option>
                    <el-option label="拖鞋" value="tx"></el-option>
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

            <el-form-item>
                <el-button type="primary" @click="onSubmit">添加</el-button>
            </el-form-item>
        </el-form>
    </div>
</template>
<script>
    export default{
        name:'addproduct',
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
                    discount: ''
                },
            }
        },
        watch:{

        },
        methods: {
            onSubmit() {
                let obj=this.form;
                this.$http.post('/api/product/add',obj,{headers:{"content-type":'application/json'}}).then(res=>{

                })
                this.$router.push({name:'product'})
            }
        }
    }
</script>
<style scoped lang="scss">
    .addproduct{
        padding-top:10px;
        box-sizing: border-box;
        p{
            font-size: 20px;
            margin:0 0 10px 10px;
        }
    }
</style>