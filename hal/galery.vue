<template>
<section class="artists-section section-padding">
   <div class="container" v-if="gl">
      <div class="col-12 text-center">
          <h3 class="mb-1">Foto reuni</h3>
       </div>
      <div class="row justify-content-center">
          <div class="col-lg-5 col-12" v-for="foto in items">
              <div class="artists-thumb">
                  <div class="artists-image-wrap">
                     <a class="btn" @click="fullFoto(foto.id)" >
                        <img v-bind:src="foto.thumb" class="rounded" >
                     </a>
                  </div>
              </div>
          </div>  
      </div>
   </div>
   <div class="container" v-if="fl" v-for="gb in foto">
       <div class="row-cols-lg-auto"> 
         <img v-bind:src="gb.lokasi" class="rounded" >
       </div>
   </div>
</section>    
</template>

<script>
module.exports = {
    data: function() {
        return {
            gl: true,
            fl: false,
            items: [],
            foto: [],
        };
    },
    methods: {
       getFoto() {
         axios.get('../foto.php')
         .then(
            response => { this.items = response.data;
         });
       },
       fullFoto(id) {
          let fd = new FormData();
          fd.append('id', id);
          axios({
           method: 'post',
           url: '../foto1.php',
           data: fd,
           config: {headers: {'Content-Type': 'multipart/form-data'}}
         })
         .then(
              response => { this.foto = response.data;
         });
          this.gl = false;
          this.fl = true;
       },      
    },
    mounted: function() {
       this.getFoto();      
    },
};
</script>

