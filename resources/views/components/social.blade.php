<div class="d-flex justify-content-center fs-2 gap-4">
    <a id="twitter" class="text-gradient" href="#"><i class="bi bi-twitter"></i></a>
    <a id="linkedin" class="text-gradient" href="#"><i class="bi bi-linkedin"></i></a>
    <a id="github" class="text-gradient" href="#!"><i class="bi bi-github"></i></a>
    <a id="facebook" class="text-gradient" href="#!"><i class="bi bi-facebook"></i></a>
</div> 

<script>
  
  getSocial()
  
      async function getSocial(){
          try {
              let response = await axios.get('/social')

               // Loader removing
            document.getElementById('loading-div').classList.add('d-none');
            document.getElementById('main-content').classList.remove('d-none');
  
              document.getElementById('twitter').href = response.data['twitterLink']            
              document.getElementById('linkedin').href = response.data['twitterLink']            
              document.getElementById('github').href = response.data['twitterLink']            
              document.getElementById('facebook').href = response.data['facebookLink']            
  
          } catch (error) {
              alert(error)
          }
      }
  
  
  </script>