<template>
    <div class="admin">
        <el-table
                :data="tableData"
                border
                style="width: 100%">
            <el-table-column
                    prop="id"
                    label="ID"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="name"
                    label="昵称"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="user"
                    label="账号"
                    width="200">
            </el-table-column>
            <el-table-column
                    prop="pass"
                    label="密码"
                    width="200">
            </el-table-column>
            <el-table-column
                    prop="thumb"
                    label="头像"
                    width="200">
            </el-table-column>
        </el-table>
    </div>
</template>
<script>
    export default{
        name:'admin',
        data(){
            return {
                tableData: [{
                    id: 1,
                    name: '王小虎',
                    user: 'admin',
                    pass: '123456',
                    thumb: '',
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