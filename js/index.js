// 2. Define some routes
const router = new VueRouter({
   routes: [
    { path: '/', component: httpVueLoader('./hal/main.vue') },
    { path: '/home', component: httpVueLoader('./hal/main.vue')},
    { path: '/ultah', component: httpVueLoader('./hal/ultah.vue')},
    { path: '/galery', component: httpVueLoader('./hal/galery.vue')},
    { path: '/cari', component: httpVueLoader('./hal/cari.vue')},
   ]
});

// whole app router-aware.
 new window.Vue({
    el: '#app',
    components: {
       'my-nav': httpVueLoader('hal/my-nav.vue')

    },
    router,
})
