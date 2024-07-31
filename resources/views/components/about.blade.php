  <!-- About Section-->
  <section class="bg-light py-5">
    <div class="container px-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-xxl-8">
                <div class="text-center my-5">
                    <h2 class="display-5 fw-bolder"><span class="text-gradient d-inline">About Me</span></h2>
                    <p id="about-title" class="lead fw-light mb-4"></p>
                    <p id="about-details" class="text-muted"></p>
                    @include('components.social')
                </div>
            </div>
        </div>
    </div>
</section>


<script>
  
    getAbout()
  
      async function getAbout(){
          try {
              let response = await axios.get('/about')
  
              document.getElementById('about-title').innerHTML = response.data['title']
              document.getElementById('about-details').innerHTML = response.data['details']            
  
          } catch (error) {
              alert(error)
          }
      }
  
  
  </script>