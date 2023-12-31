import { createRouter, createWebHistory } from 'vue-router'
import Login from '../src/components/pages/Login.vue'
import PracticeRecordIndex from '../src/components/pages/PracticeRecordIndex.vue'
import Signup from '../src/components/pages/Signup.vue'
import VeeValidate from '../src/components/pages/VeeValidate.vue'

const routes = [
  { path: '/', component: PracticeRecordIndex },
  { path: '/login', component: Login },
  { path: '/signup', component: Signup },
  { path: '/vee_validate', component: VeeValidate },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router
