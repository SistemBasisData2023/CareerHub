document.addEventListener('DOMContentLoaded', function() {
    loadUserProfile();
});

function loadUserProfile(){
var nama = localStorage.getItem("nama_pelamar")
var email = localStorage.getItem("email_pelamar")
var alamat = localStorage.getItem("alamat_pelamar")
var edu = localStorage.getItem("pendidikan")
var exp = localStorage.getItem("pengalaman")

document.getElementById("nama").textContent = nama
document.getElementById("email").textContent = email
document.getElementById("alamat").textContent = alamat
document.getElementById("education").textContent = edu
document.getElementById("experience").textContent = exp
}