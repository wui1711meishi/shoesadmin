<template>
    <div class="welcome">
        <h2>欢迎登录 TITOLO 后台管理，祝您生活愉快！</h2>
    </div>
</template>
<script>
    export default{
        name:'welcome',
        data(){
            return {}
        }
    }
</script>
<style scoped lang="scss">
    .welcome{
        width: 100%;
        height:100%;
        position: absolute;
        line-height: 400px;
    }
    h2 {
        text-align: center;
        font-size:20px;
    }
</style>