<template>
  <v-app>
    <v-row align="center" justify="center">
    <v-alert type="success" :value="state" dense outlined transition="fade-transition" width="30%" class="alert">welcome to sampleapp</v-alert>
    </v-row>
    <v-row class="text-center my-5">

      <v-col cols="12" class="d-flex justify-start">
        <p class="ml-5"><v-img :src="`${user.gravatar}`" height="50px" width="50px"></v-img></p>
        <p class="mx-5">{{user.name}}</p>
        <p>{{user.email}}</p>
      </v-col>

    </v-row>
  </v-app>
</template>

<script>
  import axios from 'axios';
  export default {
    data() {
      return {
        user: {
          name: '',
          email: '',
          gravatar: ''
        },
        state: true
      }
    },
    created () {
      setTimeout(() => {
        this.state = false
      }, 4000)
    },
    mounted () {
      axios
      .get(`http://127.0.0.1:3000/users/${this.$route.params.id}.json`)
      .then(res => {
        this.user.name = res.data.name;
        this.user.email = res.data.email;
        this.user.gravatar = res.data.gravatar_id;
      })
      .catch(error => {
        console.log(error)
      })
    },
  }
</script>