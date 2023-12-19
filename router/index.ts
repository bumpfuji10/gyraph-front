import { createRouter, createWebHistory } from 'vue-router'
import Login from '../src/components/pages/Login.vue'
import PracticeRecordIndex from '../src/components/pages/PracticeRecordIndex.vue'

const routes = [
  { path: '/', component: PracticeRecordIndex },
  { path: '/login', component: Login },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router
