document.getElementById("addjob").addEventListener("submit",addJob);

function addJob(){
    var id_perusahaan = localStorage.getItem("id_perusahaan");
    //gaji,posisi,deskripsi,kualifikasi
    var gaji = document.getElementById("gaji").value;
    var posisi=document.getElementById("posisi").value;
    var kualifikasi=document.getElementById("kualifikasi").value;
    var deskripsi = document.getElementById("deskripsi").value;
    var nama_kategori = document.getElementById("kategori").value;
    var id_kategori=0;
    //bikin if condition untuk kategori? 
    if(nama_kategori == "teknologi"){
        id_kategori=1;
    }
    else if(nama_kategori == "finance"){
        id_kategori=2;
    }
    else if(nama_kategori == "manufacture"){
        id_kategori=3;
    }
    else if(nama_kategori == "creative"){
        id_kategori=4;
    }
    else if(nama_kategori == "services"){
        id_kategori=5;
    }
    else if(nama_kategori == "healthcare"){
        id_kategori=6;
    }
    else if(nama_kategori == "marketing"){
        id_kategori=7;
    }
    else if(nama_kategori == "education"){
        id_kategori=8;
    }

    const reqData={
        id_perusahaan : id_perusahaan,
        gaji : gaji,
        posisi : posisi,
        kualifikasi : kualifikasi,
        deskripsi : deskripsi ,
        id_kategori:id_kategori
    };

    console.log(reqData);

    fetch("http://localhost:5000/addJob",{
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(reqData)
    })
    .then(response=>response.json())
    .then(data => {
        if(data.success){
            alert(data.message)
            window.location.href="http://127.0.0.1:5000/company";
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