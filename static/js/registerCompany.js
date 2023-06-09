function redirecttoLoginPelamar(){
    window.location.href = "http://127.0.0.1:5000/loginPelamar";
}

function register(){
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var alamat = document.getElementById("address").value;
    var deskripsi = document.getElementById("description").value;

var formData = {
    nama_perusahaan: name,
    email_perusahaan: email,
    pswd_perusahaan: password,
    alamat_perusahaan: alamat,
    deskripsi_perusahaan : deskripsi,
};

    fetch("http://127.0.0.1:5000/registrasiPerusahaan", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify(formData)
    })
    .then(response => {
      if(response.status=200){
        return response.json();
      }
      else{
        throw new Error("HTTP status code: "+response.status)
      }
    })
    .then(data => {
      // Tangani respons dari backend
      if (data.success) {
        console.log(data)
        alert(data.message);
        redirecttoLoginPelamar()
      } else {
        // Jika register gagal, tampilkan pesan kesalahan
        alert(data.message);
      }
    })
    .catch(error => {
      console.error("Error:", error);
      // Tangani kesalahan
    });
  }
  
  
  document.getElementById("index").addEventListener("submit", function(event) {
    event.preventDefault(); // Mencegah pengiriman formulir secara default
    register();
  });