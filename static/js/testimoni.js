
document.addEventListener('DOMContentLoaded', function() {
 
    displayRating()
    if(localStorage.getItem("id_pelamar")){
      setTimeout(function() {
        document.getElementById("addRatingContent").style.display="block";
        
      }, 70); 
    }
    else{
      setTimeout(function() {
        document.getElementById("addRatingContent").style.display="none";
      }, 70);
    }
     
  });

function displayRating(){
    const url = `http://127.0.0.1:5000/getRating`;
    fetch(url, {
        method: "GET",
        headers: {
          "Content-Type": "application/json"
        }
    })
    .then(response=>response.json())
    .then(data=>{
        var commentList = document.getElementById("commentList");
        commentList.innerHTML = "";
        if(data.success){
            data.payload.forEach(commentItem=> {
                var commentItemElement = document.createElement("div");
                commentItemElement.className = "job-item p-4 mb-4";  //ini harus diganti
                var commentHtml = `
            <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
            <p>${commentItem.komentar}</p>
            <div class="d-flex align-items-center">
              <img class="img-fluid flex-shrink-0 rounded" src="/static/img/testimonial-1.jpg" style="width: 50px; height: 50px;">
              <div class="ps-3">
                <h5 class="mb-1">${commentItem.nama_pelamar}</h5>
                <small>Rating : ${commentItem.rating} &#9733;</small>
              </div>
            </div>
          `;
          commentItemElement.innerHTML = commentHtml;
                commentList.appendChild(commentItemElement)
            });

        }
        else{
            alert(data.message)
            window.location.href = "http://127.0.0.1:5000/error404";
        }
    })
    .catch(error => {
        console.error("Error:", error);
    });
}




function addRating(){
    var id_pelamar=localStorage.getItem("id_pelamar");
    var rating = document.getElementById("rating").value;
    var comment = document.getElementById("comment").value;

    const reqData = {
        id_pelamar:id_pelamar,
        rating:rating,
        komentar:comment
    }

    fetch("http://localhost:5000/addRating",{
    method: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify(reqData)
  })
  .then(response=>response.json())
  .then(data=>{
    if(data.success){
        //hide something, visible something
        alert(data.message)
        location.reload();
    }
    else{
        alert(data.message)
    }
  })
  .catch(error => {
        console.error("Error:", error);
    });

}