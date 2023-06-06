//Save As addLetter.js
document.getElementById("applyJobButton").addEventListener("click",applyJob);
//document.getElementById("editLetterButton").addEventListener("click",editLetter);
document.getElementById("deleteLetterButton").addEventListener("click",deleteLetter);

function applyJob(){
    //get data: tanggal and filename from HTML
    var id_pekerjaan = localStorage.getItem("id_pekerjaan")
    var tanggal = document.getElementById("tanggal").value;
    var filename = document.getElementById("filename").value;

    const reqData={
        id_pekerjaan:id_pekerjaan,
        tanggal:tanggal,
        filename:filename
    };

    fetch("http://localhost:5000/addLetter",{
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(reqData)
    })
    .then(response => response.json())
    .then(data=>{
        if(data.success){
            document.getElementById("applyJobButton").style.visibility="hidden";
            //unhide tombol edit dan delete?
            //document.getElementById("edit").style.visibility="visible";  //untuk style.displat: none untuk hide, block untuk unhide
            document.getElementById("delete").style.visibility="visible";
            alert("Lamaran ditambahkan")
        }
        else{
            alert(data.message)
        }
    })
    .catch(error => {
        console.error("Error:", error);
        // Tangani kesalahan
      });
}

function deleteLetter(){
    var id_pekerjaan = localStorage.getItem("id_pekerjaan")

    const reqData={
        id_pekerjaan:id_pekerjaan
    }

    fetch("http://localhost:5000/removeLetter",{
        method: "DELETE",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(reqData)
    })
    .then(response=>response.json())
    .then(data=>{
        if(data.success){
            document.getElementById("applyJobButton").style.visibility="visible";
            //unhide tombol edit dan delete?
            //document.getElementById("edit").style.visibility="visible";  //untuk style.displat: none untuk hide, block untuk unhide
            document.getElementById("delete").style.visibility="hidden";
            alert("Lamaran ditambahkan")
        }
        else{
            alert(data.message)
        }
    })
    .catch(error => {
        console.error("Error:", error);
        // Tangani kesalahan
      });

}