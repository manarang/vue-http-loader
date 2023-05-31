<template>
<section class="pricing-section section-padding section-bg">
   <div class="container" v-if="cr">
      <div class="row">
          <div class="col-12 col-lg-8 mx-auto">
              <h2 class="text-center mb-3">Yang berulang tahun</h2>
          </div>
          <div class="col-lg-6 col-12" v-for="data in items">
            <div class="col-5 col-lg-4 mt-sm-1">{{data.lama}}</div>
            <div class="col-5 col-lg-4 mt-sm-1">{{data.nama}}</div>
            <div class="col-1 d-none d-lg-block" >{{data.kelas1}}</div>
            <div class="col-1 d-none d-lg-block" >{{data.kelas2}}</div>
            <div class="col-1 d-none d-lg-block" >{{data.kelas3}}</div>
            <div class="col-1"><a class="btn btn-sm" @click="getId(data.id)" ><img src="img/check.svg"/></a></div>
          </div>
      </div>
   </div>
  <div class="container" v-if="fl" v-for="dd in ultah" >
    <div class="row">
      <div class="col-lg-4 col-6 border border-danger"><h4>Data Rinci</h4></div>
    </div>
    <div class="row">
      <div class="col-lg-2 col-4 border border-danger">Nama Lama</div>  
      <div class="col-lg-6 col-7 border border-danger">{{dd.lama}}</div>
    </div>
    <div class="row">
      <div class="col-lg-2 col-4 border border-danger">Nama Baru</div>
      <div class="col-lg-6 col-7 border border-danger">{{dd.nama}}</div>
    </div>
    <div class="row">
      <div class="col-lg-2 col-12 border border-danger">Alamat</div>
      <div class="col-lg-8 col-12 border border-danger">{{dd.alamat}}</div>
    </div>
    <div class="row">
       <div class="col-lg-2 col-4 border border-danger">Tgl. Lahir</div>
      <div class="col-lg-2 col-6 border border-danger">{{dd.lahir}}</div>
    </div>
    <div class="row">
      <div class="col-lg-2 col-4 border border-danger">No WA</div>
      <div class="col-lg-2 col-6 border border-danger">{{dd.phone}}</div>
    </div>
    <div class="row">
      <div class="col-lg-2 col-4 border border-danger">Kelas 1</div>
      <div class="col-lg-1 col-2 border border-danger">{{dd.kelas1}}</div>
    </div>
    <div class="row">
      <div class="col-lg-2 col-4 border border-danger">Kelas 2</div>
      <div class="col-lg-1 col-2 border border-danger">{{dd.kelas2}}</div>
    </div>
    <div class="row">
      <div class="col-lg-2 col-4 border border-danger">Kelas 3</div>
      <div class="col-lg-1 col-2 border border-danger">{{dd.kelas3}}</div>
    </div>    
  </div>
</section>
</template>


<script>
module.exports = {
    data: function() {
        return {
            cr: true,
            fl: false,
            items: [],
            ultah: [],
        };
    },
    methods: {
      getUltah() {
         axios.get('../ultah.php')
         .then(
              response => { this.items = response.data;
         });
      },
      getId(id) {
         let fd = new FormData();
         fd.append('id', id);
         axios({
           method: 'post',
           url: '../getid.php',
           data: fd,
           config: {headers: {'Content-Type': 'multipart/form-data'}}
         })
         .then(
              response => { this.ultah = response.data;
         });
         this.cr = false;
         this.fl = true;
      },
    },
    mounted: function() {
      this.getUltah();
    },
};
</script>



