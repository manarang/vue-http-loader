<template>
 <header class="site-header">
      <div class="container">
          <div class="row">
              <div class="col-lg-12 col-12 d-flex flex-wrap">
                  <p class="d-flex me-4 mb-0">
                      <i class="bi-person custom-icon me-2"></i>
                         <strong class="text-dark">Alumni SMPK3 Diponegoro tahun 1965</strong>
                  </p>
               </div>
          </div>
      </div>
    <nav class="navbar navbar-expand-lg">
        <div class="container bg-secondary">
            <router-link class="navbar-brand" to="/">SMPK3</router-link>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
              aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav align-items-lg-center ms-auto me-lg-5">
                    <li class="nav-item">
                        <router-link class="nav-link click-scroll" to="/home">Home</router-link>
                    </li>
                    <li class="nav-item">
                       <router-link class="nav-link click-scroll" to="/ultah">Ultah</router-link>
                    </li>
                    <li class="nav-item">
                       <router-link class="nav-link click-scroll" to="/galery">Galeri</router-link>
                    </li>
                    <li class="nav-item">
                       <router-link class="nav-link click-scroll" to="/cari">Cari</router-link>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
 </header>
</template>
