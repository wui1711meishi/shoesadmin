<template>
    <div class="user">
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
                    prop="name"
                    label="昵称"
                    width="80">
            </el-table-column>
            <el-table-column
                    prop="user"
                    label="账号"
                    width="100">
            </el-table-column>
            <el-table-column
                    prop="pass"
                    label="密码"
                    width="100">
            </el-table-column>
            <el-table-column
                    prop="thumb"
                    label="头像"
                    width="150">
            </el-table-column>
            <el-table-column
                    prop="id"
                    label="收藏"
                    width="100">
            </el-table-column>
            <el-table-column
                    prop="id"
                    label="信息"
                    width="380">
            </el-table-column>
        </el-table>
    </div>
</template>
<script>
    export default{
        name: 'user',
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