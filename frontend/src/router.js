import { createRouter, createWebHistory } from 'vue-router'
import Login from './views/login.vue'
import Main from './views/main.vue'
import Quiz from './views/quiz.vue'

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
