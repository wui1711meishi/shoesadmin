<template>
  <div class="bgimg">
    <div class="title">
      <h1>请登录</h1>
    </div>
    <div class="login-form">
      <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
      </div>
      <div class="clear"></div>
      <form>
        <input type="text" class="text" placeholder="请输入用户名" v-model="username">
        <div class="key">
          <input type="password" placeholder="请输入密码" v-model="password">
        </div>
        <input type="text" class="position" v-model="code">
        <img class="img" src="/api/login/captcha" alt="" onclick="this.src='/api/login/captcha?'+Math.random()">
      </form>
      <div class="signin">
        <input type="submit" value="Login" @click="login">
      </div>
    </div>
  </div>

</template>

<script>
  export default {
    name: 'login',
    data(){
      return {
        username: '',
        password: '',
        code: ''
      }
    },
    methods: {
      login(){
        let data = {username: this.username, password: this.password, code: this.code};
        this.$http.post('/api/login', data, {
          headers: {
            "content-type": 'application/json'
          }
        }).then(res => {
            if (res.body != 'ok') {
              alert(res.body)
            } else {
              this.$router.push({name: 'main'})
            }
          }
        )
      }
    }
  }
</script>

<style scoped lang='scss'>
  body {

    font-family: 'Open Sans', sans-serif;
    background-size: cover;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    min-height: 1050px;
  }

  .bgimg {
    position: absolute;
    width: 100%;
    height: 100%;
    background: url('../../assets/img/bg1.jpg') no-repeat 0px 0px;
  }

  .wrap {
    margin: 0 auto;
    width: 80%;
  }

  body a, form li, input[type="submit"], input[type="text"], .sixth-login input[type="submit"], .third-login input[type="submit"] {
    transition: 0.1s all;
    -webkit-transition: 0.1s all;
    -moz-transition: 0.1s all;
    -o-transition: 0.1s all;
  }

  /*--close--*/
  .close {
    background: url('../../assets/img/close.png') no-repeat 0px 0px;
    cursor: pointer;
    width: 20px;
    height: 20px;
    position: absolute;
    left: 20px;
    top: 20px;
    -webkit-transition: color 0.2s ease-in-out;
    -moz-transition: color 0.2s ease-in-out;
    -o-transition: color 0.2s ease-in-out;
    transition: color 0.2s ease-in-out;
  }

  /*--/close--*/
  .title > h1 {
    font-family: 'Exo 2', sans-serif;
    text-align: center;
    padding-top: 100px;
    font-weight: normal;
    color: #2B2B36;
    font-size: 30px;
  }

  .login-form {
    background: #2b2b36;
    position: relative;
    width: 30%;
    margin: 30px auto 0;
    text-align: center;
    border-radius: 15px;
    -webkit-border-radius: 15px;
    -moz-border-radius: 15px;
    -o-border-radius: 15px;
  }

  .img {
    position: absolute;
    right: 16px;
    top: 183px;
  }

  .head img {
    width: 100%;
  }

  .avtar img {
    margin: 2em 0 0;
  }

  .head-info {
    padding: 5px 0;
    text-align: center;
    font-weight: 600;
    font-size: 2em;
    color: #fff;
    background: #23232e;
    height: 50px;
    border-top-left-radius: 10px;
    -webkit-border-top-left-radius: 10px;
    -moz-border-top-left-radius: 10px;
    -o-border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    -webkit-border-top-right-radius: 10px;
    -moz-border-top-right-radius: 10px;
    -o-border-top-right-radius: 10 p
  }

  input[type="text"] {
    width: 70%;
    padding: 1em 2em 1em 3em;
    color: #9199aa;
    font-size: 18px;
    outline: none;
    background: url('../../assets/img/adm.png') no-repeat 10px 15px;
    border: none;
    font-weight: 100;
    border-bottom: 1px solid #484856;
    /*margin-top: 2em;*/
  }

  input[type="password"] {
    width: 70%;
    padding: 1em 2em 1em 3em;
    color: #dd3e3e;
    font-size: 18px;
    outline: none;
    background: url('../../assets/img/key.png') no-repeat 10px 23px;
    border: none;
    font-weight: 100;
    border-bottom: 1px solid #484856;
  }

  .key {
    background: url('../../assets/img/pass.png') no-repeat 447px 17px;
  }

  input[type="submit"] {
    font-size: 30px;
    color: #fff;
    outline: none;
    border: none;
    background: #3ea751;
    width: 100%;
    padding: 18px 0;
    border-bottom-left-radius: 15px;
    -webkit-border-bottom-left-radius: 15px;
    -moz-border-bottom-left-radius: 15px;
    -o-border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;
    -webkit-border-bottom-right-radius: 15px;
    -moz-border-bottom-right-radius: 15px;
    -o-border-bottom-right-radius: 15px;
    cursor: pointer;
  }

  input[type="submit"]:hover {
    background: #ff2775;
    border-bottom-left-radius: 15px;
    -webkit-border-bottom-left-radius: 15px;
    -moz-border-bottom-left-radius: 15px;
    -o-border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;
    -webkit-border-bottom-right-radius: 15px;
    -moz-border-bottom-right-radius: 15px;
    -o-border-bottom-right-radius: 15px;
    transition: 1s all;
    -webkit-transition: 1s all;
    -moz-transition: 1s all;
    -o-transition: 1s all;
  }

  label.lbl-1 {
    background: #6756ea;
    width: 20px;
    height: 20px;
    display: block;
    float: right;
    border-radius: 50%;
    margin: 16px 10px 0px 0px;
  }

  label.lbl-2 {
    background: #ea569a;
    width: 20px;
    height: 20px;
    display: block;
    float: right;
    border-radius: 50%;
    margin: 16px 10px 0px 0px;
  }

  label.lbl-3 {
    background: #f1c85f;
    width: 20px;
    height: 20px;
    display: block;
    float: right;
    border-radius: 50%;
    margin: 16px 10px 0px 0px;
  }

  /*--copyrights--*/
  .copy-rights {
    text-align: center;
    margin-top: 8em;
  }

  .copy-rights p {
    color: #FFF;
    font-size: 1em;
    line-height: 1.8em;
  }

  .copy-rights p a {
    color: #ff2a75;
    -webkit-transition: all 0.3s ease-out;
    -moz-transition: all 0.3s ease-out;
    -ms-transition: all 0.3s ease-out;
    -o-transition: all 0.3s ease-out;
    transition: all 0.3s ease-out;
    text-decoration: none;
  }

  .copy-rights p a:hover {
    color: #3faa53;
    text-decoration: none;
    transition: 0.1s all;
    -webkit-transition: 0.1s all;
    -moz-transition: 0.1s all;
    -o-transition: 0.1s all;
  }
</style>
