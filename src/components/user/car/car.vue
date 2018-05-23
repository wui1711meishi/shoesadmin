<template>
    <div class="car">
        <el-table
                :data="tableData"
                border
                style="width: 100%">
            <el-table-column
                    prop="id"
                    label="ID"
                    width="60">
            </el-table-column>
            <el-table-column
                    prop="sid"
                    label="鞋子ID"
                    width="80">
            </el-table-column>
            <el-table-column
                    prop="uid"
                    label="用户ID"
                    width="100">
            </el-table-column>
            <el-table-column
                    prop="count"
                    label="数量"
                    width="100">
            </el-table-column>
            <el-table-column
                    prop="size"
                    label="尺码"
                    width="150">
            </el-table-column>
            <el-table-column
                    prop="color"
                    label="颜色"
                    width="100">
            </el-table-column>
        </el-table>
    </div>
</template>
<script>
    export default{
        name:'order',
        data(){
            return {
                tableData: [{
                    id: 1,
                    color: '',
                    count: '',
                    sid: '',
                    uid: '',
                    size:'',
                    ordernumber:'',
                }]
            }
        },
        methods: {
            handleClick(row) {
                console.log(row);
            }
        },
        created(){
            this.$http.get('/api/user/car').then(res=>{
                this.tableData=res.body
            })
        }
    }
</script>
<style scoped lang="scss">

</style>