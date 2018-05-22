<template>
    <div class="product">
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
                    prop="user"
                    label="英文名称"
                    width="100">
            </el-table-column>
            <el-table-column
                    prop=""
                    label="价格"
                    width="70">
            </el-table-column>
            <el-table-column
                    prop="thumb"
                    label="描述"
                    width="200">
            </el-table-column>
            <el-table-column
                    prop="id"
                    label="销售量"
                    width="70">
            </el-table-column>
            <el-table-column
                    prop="id"
                    label="精选"
                    width="50">
            </el-table-column>
            <el-table-column
                    prop="id"
                    label="折扣"
                    width="80">
            </el-table-column>
            <el-table-column
                    prop="id"
                    label="时间"
                    width="80">
            </el-table-column>
            <el-table-column
                    prop="id"
                    label="分类"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="id"
                    label="标签"
                    width="100">
            </el-table-column>
            <el-table-column
                    fixed="right"
                    label="操作"
                    width="100">
                <template slot-scope="scope">
                    <el-button @click="handleClick(scope.row)" type="text" size="small">编辑</el-button>
                    <el-button type="text" size="small">删除</el-button>
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
                tableData: [{
                    id: 1,
                    nickname: '王小虎',
                    user: 'admin',
                    pass: '123456',
                    img: '',
                    collection:'',
                    information:'',
                }]
            }
        },
        methods: {
            handleClick(row) {
                console.log(row);
            }
        },
    }
</script>
<style scoped lang="scss">

</style>
