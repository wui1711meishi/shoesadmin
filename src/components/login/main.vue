<template>
  <div id="app">
    <el-input v-model="input" placeholder="请输入内容"></el-input>
  </div>
</template>

<script>
export default {
  data(){
    return {
    input: ''
    }
  },
  created(){
  this.$http.get('/api/test').then(res=>{
      console.log(res)
  })
  }
}
</script>

<style>
</style>
