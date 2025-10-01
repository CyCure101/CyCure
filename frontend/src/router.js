import { createRouter, createWebHistory } from 'vue-router'
import Login from '../../../CyCure/frontend/src/views/login.vue'
import Main from '../../../CyCure/frontend/src/views/main.vue'
import Quiz from '../../../CyCure/frontend/src/views/quiz.vue'

const routes = [
    { path: '/login', component: Login },
    { path: '/main', component: Main },
    { path: '/quiz', component: Quiz },
    { path: '/', redirect: '/login' } // default route
]

const router = createRouter({
    history: createWebHistory(),
    routes,
})

export default router
