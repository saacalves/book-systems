//import Vue from 'vue'
import VueRouter from 'vue-router'

const routes = [
    { path: '/', name: 'Home'},
    { path: './views/estante', name: 'Estante'},
];

export default new VueRouter({
    routes,
});