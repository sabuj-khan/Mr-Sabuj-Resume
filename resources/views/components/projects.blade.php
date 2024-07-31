<!-- Projects Section-->
<section class="py-5">
    <div class="container px-5 mb-5">
        <div class="text-center mb-5">
            <h1 class="display-5 fw-bolder mb-0"><span class="text-gradient d-inline">Projects</span></h1>
        </div>
        <div class="row gx-5 justify-content-center">
            <div id="project-list" class="col-lg-11 col-xl-9 col-xxl-8">
                <!-- Project Card 1-->
                
                
            </div>
        </div>
    </div>
</section>


<script>


    getProjectList()

    async function getProjectList(){
        try {
            // Loader showing
            document.getElementById('loading-div').classList.remove('d-none');
            document.getElementById('main-content').classList.add('d-none');

            let response = await axios.get('/project')

            // Loader removing
            document.getElementById('loading-div').classList.add('d-none');
            document.getElementById('main-content').classList.remove('d-none');

            response.data.forEach((item) => {
                document.getElementById('project-list').innerHTML +=`<div class="card overflow-hidden shadow rounded-4 border-0 mb-5">
                    <div class="card-body p-0">
                        <div class="d-flex align-items-center">
                            <div class="p-5">
                                <h2 class="fw-bolder">${item['title']}</h2>
                                <p>${item['details']}</p>
                                <div class="p-img">
                                    <img style="width:150px; height:auto" class="img-fluid" src="${item['previewLink']}" alt="..." />
                                </div>
                            </div>
                            <img style="width:300px; height:400px" class="img-fluid" src="${item['thumbnailLink']}" alt="..." />
                        </div>
                    </div>
                </div>`
            });


        } catch (error) {
            alert(error)
        }
    }


</script>