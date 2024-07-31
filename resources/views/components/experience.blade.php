 <!-- Experience Section-->
 <section>
    <div class="d-flex align-items-center justify-content-between mb-4">
        <h2 class="text-primary fw-bolder mb-0">Experience</h2>
        <a target="_blank" id="resumeLink" class="btn btn-primary px-4 py-3" href="#!">
            <div class="d-inline-block bi bi-download me-2"></div>
            Download Resume
        </a>
    </div>

    <div id="experience-list">
         <!-- Experience Card 1-->
        
    </div>
   

   

</section>


<script>

    getResumeLink();

    async function getResumeLink(){
        try {

            let response = await axios.get('/resumeLink')

            let link = response.data['downloadLink']

            document.getElementById('resumeLink').setAttribute('href', link)
            
        } catch (error) {
            alert(error)
        }
    }


    getExperienceList()

    async function getExperienceList(){
        try {

            // Loader showing
            document.getElementById('loading-div').classList.remove('d-none');
            document.getElementById('main-content').classList.add('d-none');
            
            let response = await axios.get('/experiences')

            response.data.forEach((item) => {
                document.getElementById('experience-list').innerHTML +=`<div class="card shadow border-0 rounded-4 mb-5">
            <div class="card-body p-5">
                <div class="row align-items-center gx-5">
                    <div class="col text-center text-lg-start mb-4 mb-lg-0">
                        <div class="bg-light p-4 rounded-4">
                            <div class="text-primary fw-bolder mb-2">${item['duration']}</div>
                            <div class="small fw-bolder">${item['designation']}</div>
                            <div class="small text-muted">${item['company']}</div>
                            <div class="small text-muted">${item['address']}</div>
                        </div>
                    </div>
                    <div class="col-lg-8"><div>${item['details']}</div></div>
                </div>
            </div>
        </div>`
            });


        } catch (error) {
            alert(error)
        }
    }


</script>