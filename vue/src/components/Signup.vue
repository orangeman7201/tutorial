<template>
    <v-row class="text-center">

      <!-- title -->
      <v-col cols="12" class="text-h3">
          sign up
      </v-col>

      <!-- form -->
      <v-col cols="12">
        <v-form>
          <v-container>
            <v-row>
              <v-col cols=12>
                <v-text-field
                  v-model="name"
                  label="name"
                  required
                  outlined
                  class="mb-2"
                ></v-text-field>
                <v-text-field
                  v-model="email"
                  label="email"
                  required
                  outlined
                  class="mb-2"
                ></v-text-field>
                <v-text-field
                  v-model="password"
                  label="password"
                  required
                  outlined
                  class="mb-2"
                ></v-text-field>
                <v-text-field
                  v-model="confirmation"
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
        <v-btn>create account</v-btn>
      </v-col>


    </v-row>
</template>

<script>
  export default {
    name: 'HelloWorld',
  }
</script>