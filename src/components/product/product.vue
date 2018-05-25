<template>
    <div class="product">
        <a class="tjcp" target="content" href="/#/addproduct">添加产品</a>
        <el-table
                :data="tableData"
                border
                style="width: 100%">
            <el-table-column
                    prop="id"
                    label="ID"
                    width="40">
            </el-table-column>
            <el-table-column
                    prop="name"
                    label="名称"
                    width="100">
            </el-table-column>
            <el-table-column
                    prop="ename"
                    label="英文名称"
                    width="100">
            </el-table-column>
            <el-table-column
                    prop="price"
                    label="价格"
                    width="50">
            </el-table-column>
            <el-table-column
                    prop="description"
                    label="描述"
                    width="300">
            </el-table-column>
            <el-table-column
                    prop="salecount"
                    label="销售量"
                    width="50">
            </el-table-column>
            <el-table-column
                    prop="fine"
                    label="精选"
                    width="60">
            </el-table-column>
            <el-table-column
                    prop="discount"
                    label="折扣"
                    width="50">
            </el-table-column>
            <el-table-column
                    prop="time"
                    label="时间"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="category"
                    label="分类"
                    width="70">
            </el-table-column>
            <el-table-column
                    prop="label"
                    label="标签"
                    width="60">
            </el-table-column>
            <el-table-column
                    fixed="right"
                    label="操作"
                    width="100">
                <template slot-scope="scope">
                    <el-button @click="handleClick(scope.row)" type="text" size="small">编辑</el-button>
                    <el-button @click="hac(scope.row)" type="text" size="small">删除</el-button>
                </template>
            </el-table-column>
        </el-table>
    </div>
</template>
<script>
    export default{
        name:'product',
        data(){
            return {
                tableData: []
            }
        },
        methods: {
            handleClick(row) {
                this.$router.push({name:'changeproduct',params:{row:row}})
            },
            hac(row){
                let obj={id:row.id};
                this.$http.post('/api/product/delete',obj,{headers:{"content-type":'application/json'}}).then(res=>{
                    if(res.body=='1'){
                        let index=this.tableData.findIndex((val,ind)=>{
                                return val.id==obj.id;
                        })
                        this.tableData.splice(index,1);
                        this.$message({
                            message: '删除成功',
                            type: 'success'
                        });
                    }else{
                        this.$message({
                            message: '删除失败',
                            type: 'warning'
                        });
                    }
                })
            }

        },
        created(){
            this.$http.get('/api/product').then(res=>{
                this.tableData=res.body;
            })
        }
    }
</script>
<style scoped lang="scss">
    .tjcp{
        background: gray;
        border-radius: 5px;
        color:white;
        width:90px;
        height:30px;
        display: inline-block;
        text-align: center;
        line-height: 30px;
        margin:10px;
    }
</style>
