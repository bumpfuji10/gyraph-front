import { createRouter, createWebHistory } from 'vue-router'
import Login from '../src/components/pages/Login.vue'
import PracticeRecordIndex from '../src/components/pages/PracticeRecordIndex.vue'
import Signup from '../src/components/pages/Signup.vue'

const routes = [
  { path: '/', component: PracticeRecordIndex },
  { path: '/login', component: Login },
  { path: '/signup', component: Signup },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router
