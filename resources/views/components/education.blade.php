<!-- Education Section-->
<section>
    <h2  class="text-secondary fw-bolder mb-4">Education</h2>
    <!-- Education Card 1-->
    <div id="education-list">

    </div>

    

   

</section>

<script>


    getEducationList()

    async function getEducationList(){
        try {
            let response = await axios.get('/education')

            response.data.forEach((item) => {
                document.getElementById('education-list').innerHTML +=`<div class="card shadow border-0 rounded-4 mb-5">
        <div class="card-body p-5">
            <div class="row align-items-center gx-5">
                <div class="col text-center text-lg-start mb-4 mb-lg-0">
                    <div class="bg-light p-4 rounded-4">
                        <div class="text-secondary fw-bolder mb-2">${item['duration']}</div>
                        <div class="mb-2">
                            <div class="small fw-bolder">${item['institute']}</div>
                            <div class="small text-muted">${item['address']}</div>
                        </div>
                        <div class="fst-italic">
                            <div class="small text-muted">${item['degree']}</div>
                            <div class="small text-muted">${item['field']}</div>
                        </div>
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