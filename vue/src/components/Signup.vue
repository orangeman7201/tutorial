<template>
    <v-row class="text-center">

      <!-- title -->
      <v-col cols="12" class="text-h3">
          sign up
      </v-col>

      <!-- error_message -->
      <v-col v-if="this.errors.length !== 0" class="red--text">
        <div v-for="error in errors" :key="error.id">
          <p>{{error}}</p>
        </div>
      </v-col>

      <!-- form -->
      <v-col cols="12">
        <v-form>
          <v-container>
            <v-row>
              <v-col cols=12>
                <v-text-field
                  v-model="user.name"
                  label="name"
                  required
                  outlined
                  class="mb-2"
                ></v-text-field>
                <v-text-field
                  v-model="user.email"
                  label="email"
                  required
                  outlined
                  class="mb-2"
                ></v-text-field>
                <v-text-field
                  v-model="user.password"
                  label="password"
                  required
                  outlined
                  class="mb-2"
                ></v-text-field>
                <v-text-field
                  v-model="user.confirmation"
                  label="confirmation"
                  required
                  outlined
                ></v-text-field>
              </v-col>
            </v-row>
          </v-container>
        </v-form>
      </v-col>

      <!-- button -->
      <v-col>
        <v-btn @click.prevent="signup">create account</v-btn>
      </v-col>


    </v-row>
</template>

<script>
  import axios from 'axios';
  export default {
    data () {
      return {
        user: {
          name: '',
          email: '',
          password: '',
          confirmation: ''
        },
        errors: '',
      }
    },
    methods: {
      signup: function() {
        this.errors = '';
      axios
      .post('http://127.0.0.1:3000/users', this.user)
      .then(res => {
        if(res.data.id) {
          this.$router.push({name: 'UserDetailPage', params: { id: res.data.id } })
        }else{
          this.errors = res.data
        }
      })
      .catch(error => {
        console.log('error')
        console.log(error)
      })
      }
    }
  }
</script>