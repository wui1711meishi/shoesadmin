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
                    prop="nickname"
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
                    prop="img"
                    label="头像"
                    width="150">
            </el-table-column>
            <el-table-column
                    prop="collection"
                    label="收藏"
                    width="100">
            </el-table-column>
            <el-table-column
                    prop="information"
                    label="信息"
                    width="340">
            </el-table-column>
            <el-table-column
                    fixed="right"
                    label="我的"
                    width="200">
                <template slot-scope="scope">
                    <el-button @click="handleClick(scope.row)" type="text" size="small">订单</el-button>
                    <el-button @click="hac(scope.row)" type="text" size="small">购物车</el-button>
                </template>
            </el-table-column>

        </el-table>
        <el-dialog class="order" title="订单" :visible.sync="dialogTableVisible">
            <el-table  :data="gridData">
                <el-table-column property="id" label="ID" width="50"></el-table-column>
                <el-table-column property="uid" label="用户ID" width="150"></el-table-column>
                <el-table-column property="cid" label="购物车ID" width="150"></el-table-column>
                <el-table-column property="ordernumber" label="订单号"></el-table-column>
            </el-table>
        </el-dialog>
        <el-dialog class="order" title="购物车" :visible.sync="dialogTableVisible2">
            <el-table  :data="gridData2">
                <el-table-column property="id" label="ID" width="50"></el-table-column>
                <el-table-column property="uid" label="用户ID" width="100"></el-table-column>
                <el-table-column property="sid" label="鞋子ID" width="100"></el-table-column>
                <el-table-column property="color" label="颜色" width="90"></el-table-column>
                <el-table-column property="size" label="尺码" width="70"></el-table-column>
                <el-table-column property="count" label="数量" width="70"></el-table-column>
            </el-table>
        </el-dialog>
    </div>
</template>
<script>
    export default{
        name: 'user',
        data(){
            return {
                tableData: [{
                    id: 1,
                    nickname: '',
                    user: '',
                    pass: '',
                    img: '',
                    collection:'',
                    information:'',
                }],
                gridData: [{
                    id: '2016-05-02',
                    uid: '王小虎',
                    sid: '上海市普陀区金沙江路 1518 弄'
                },],
                gridData2: [{
                    id: '2016-05-02',
                    uid: '王小虎',
                    sid: '上海市普陀区金沙江路 1518 弄'
                },],
                dialogTableVisible: false,
                dialogTableVisible2: false,

            }
        },
        methods: {
            handleClick(row) {
                this.$http.get('/api/user/order?id='+row.id).then(res=>{
                    this.gridData=res.body
                })
                this.dialogTableVisible = true
            },
            hac(row){
                this.$http.get('/api/user/car?id='+row.id).then(res=>{
                    this.gridData2=res.body
                })
                this.dialogTableVisible2 = true
            }
        },
        created(){
            this.$http.get('/api/user').then(res=>{
                this.tableData=res.body
            })
        }
    }
</script>
<style scoped lang="scss">
    .order{
        width:1400px;
        margin-left: -110px;
        margin-top: -60px;
    }
</style>