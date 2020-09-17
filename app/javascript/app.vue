<template>
  <div>
    <router-view></router-view>
  </div>
</template>

<script>
import Vue from 'vue'
import VueRouter from 'vue-router'

import UserIndexPage from 'UserIndexPage.vue'
import UserDetailPage from 'UserDetailPage.vue'
import UserNewPage from 'UserNewPage.vue'


const router = new VueRouter({
  routes: [
    { path: '/',
      component: UserIndexPage  },
    { path: '/users/:id(\\d+)',  // :id は数値のみに制限する
      name: 'UserDetailPage',
      component: UserDetailPage },
    { path: '/users/new',
      name: 'UserNewPage',
      component: UserNewPage }
  ]
})

Vue.use(VueRouter)

export default {
  router
}
</script>

<style scoped>
</style>