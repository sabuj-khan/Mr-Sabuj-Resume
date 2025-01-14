 <!-- Header-->
 <header class="py-5">
    <div class="container px-5 pb-5">
        <div class="row gx-5 align-items-center">

            
            <div class="col-xxl-5">
                <!-- Header text content-->
                <div class="text-center text-xxl-start">
                    <div class="badge bg-gradient-primary-to-secondary text-white mb-4"><div class="text-uppercase" id="keyline"></div></div>
                    <div class="fs-3 fw-light text-muted" id="slogan"></div>
                    <h1 class="display-3 fw-bolder mb-5"><span class="text-gradient d-inline" id="hero-title"></span></h1>
                    <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xxl-start mb-3">
                        <a class="btn btn-primary btn-lg px-5 py-3 me-sm-3 fs-6 fw-bolder" href="{{ url('resume') }}">Resume</a>
                        <a class="btn btn-outline-dark btn-lg px-5 py-3 fs-6 fw-bolder" href="{{ url('/projects') }}">Projects</a>
                    </div>
                </div>
            </div>

            <div class="col-xxl-7">
                <div class="d-flex justify-content-center mt-5 mt-xxl-0">
                    <div class="profile">
                        <img class="profile-img" src="assets/profile.png" alt="..." />
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>




<script>
  
  getHeroSection()

    async function getHeroSection(){
        try {

            // Loader showing
            document.getElementById('loading-div').classList.remove('d-none');
            document.getElementById('main-content').classList.add('d-none');
            
            let response = await axios.get('/heroSection')

            document.getElementById('keyline').innerHTML = response.data['keyLine']
            document.getElementById('hero-title').innerHTML = response.data['title']
            document.getElementById('slogan').innerHTML = response.data['shortTitle']


            

           

        } catch (error) {
            alert(error)
        }
    }


</script>