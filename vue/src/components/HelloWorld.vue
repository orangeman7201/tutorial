<template>
  <v-app>

    <v-row class="text-center">

      <v-col cols="12" class="mb-4">
        <h1 class="display-2 font-weight-bold mb-3">
          Welcome to Sample app
        </h1>

        <p class="subheading font-weight-regular">
          This is a sample app
        </p>
      </v-col>

      <v-col
        cols="12"
      >
        <v-btn to="/signup">Sign up now!</v-btn>
      </v-col>

    </v-row>



  </v-app>

</template>

<script>
// import axios from 'axios';
// 下のやつ必要ない可能性ある。もう一回コメント化しとく
// axios.interceptors.request.use((config) => {
//   if(['get', 'post', 'put', 'patch', 'delete'].includes(config.method)) {
//     // config.headers['X-Requested-With'] = 'XMLHttpReq'
//     // config.headers['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
//     console.log(config)
//   }
//   return config;
// }, (error) => {
//   return Promise.reject(error);
// });

  export default {
  data () {
    return {
      envState: '',
    }
  },
  // mounted () {
  //   if(this.envState !== 'dev') {
  //     axios
  //     .get('http://127.0.0.1:3000/env')
  //     .then(res => {
  //       console.log(res)
  //     })
  //     .catch(error => {
  //       console.log(error)
  //     })
  //   }
  // },
  }
</script>
