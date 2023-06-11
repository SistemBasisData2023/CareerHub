# CareerHub - Online Job Search Portal

CareerHub adalah sebuah aplikasi web yang dirancang untuk menjadi portal pencarian dan perekrutan pekerjaan secara online. Aplikasi ini dibangun menggunakan framework Flask dengan bahasa pemrograman Python.

## Final Database Management System Project
Proyek ini dibuat oleh kelompok I9 dari Praktikum Sistem Basis Data yang terdiri dari:
```
1. Ahmad Rifqi F. - 2106731301
2. Brian Yudha S. - 2106637082
3. Muhammad Cavan Naufal A. - 2106702730
```
Sebagai tugas pemrograman akhir pada Semester Genap 2021/2022 untuk mata kuliah Sistem Basis Data + Lab. (ENCE604016) dalam program studi Sarjana Teknik Komputer, Departemen Teknik Elektro, Fakultas Teknik, Universitas Indonesia.

---

## Fitur-Fitur

Berikut adalah fitur-fitur yang disediakan oleh CareerHub:
```
- Registrasi dan login pengguna (pelamar)
- Perusahaan dapat mempublikasikan pekerjaan yang tersedia
- Pencarian pekerjaan berdasarkan posisi, perusahaan, atau kategori pekerjaan
- Melihat detail pekerjaan termasuk deskripsi, kualifikasi, dan gaji yang ditawarkan
- Pelamar dapat mengirimkan lamaran untuk pekerjaan yang diminati
- Pengelolaan status lamaran oleh pelamar dan perusahaan
- Pelamar dapat memberikan ulasan dan rating terhadap pekerjaan yang pernah dilamar
- Melihat riwayat lamaran dan statusnya
```

---
## Tabel Database

Proyek ini menggunakan basis data PostgreSQL dengan beberapa tabel yang digunakan:

### Tabel ```Perusahaan```
```
- id_perusahaan (integer): ID unik perusahaan
- nama_perusahaan (string): Nama perusahaan
- deskripsi_perusahaan (string): Deskripsi perusahaan
- alamat_perusahaan (string): Alamat perusahaan
```

### Tabel ```Kategori Pekerjaan```
```
- id_kategori (integer): ID unik kategori pekerjaan
- nama_kategori (string): Nama kategori pekerjaan
```

### Tabel ```Pekerjaan```
```
- id_pekerjaan (integer): ID unik pekerjaan
- id_perusahaan (integer): ID perusahaan terkait
- id_kategori (integer): ID kategori pekerjaan
- posisi (string): Nama posisi pekerjaan
- deskripsi_pekerjaan (string): Deskripsi pekerjaan
- kualifikasi (string): Persyaratan kualifikasi pekerjaan
- gaji (integer): Gaji yang ditawarkan untuk pekerjaan
```

### Tabel ```Pelamar```
```
- id_pelamar (integer): ID unik pelamar
- nama_pelamar (string): Nama pelamar
- alamat_pelamar (string): Alamat pelamar
- pengalaman_kerja (string): Riwayat pengalaman kerja pelamar
- pendidikan_terakhir (string): Pendidikan terakhir pelamar
```

### Tabel ```Lamaran```
```
- id_lamaran (integer): ID unik lamaran
- id_pekerjaan (integer): ID pekerjaan terkait
- id_pelamar (integer): ID pelamar yang mengajukan lamaran
- tanggal_lamaran (date): Tanggal pengajuan lamaran
- status (string): Status lamaran (diterima, ditolak, dalam proses)
```

### Tabel ```Ulasan Pekerjaan```
```
- id_ulasan (integer): ID unik ulasan
- id_pekerjaan (integer): ID pekerjaan yang ditinjau
- id_pelamar (integer): ID pelamar yang memberikan ulasan
- rating (integer): Rating yang diberikan (skala 1-5)
- komentar (string): Komentar terkait pekerjaan
```
---

## Relation Table and UML Diagram View
<details>
  <summary>Relation Table and UML Diagram View:</summary>

  ```ERD:```

![alt text](![ERD](https://github.com/SistemBasisData2023/CareerHub/assets/88435892/abd1858d-c9b4-406e-b24e-67913c36553b)
)

```UML:```

![alt text](![UML](https://github.com/SistemBasisData2023/CareerHub/assets/88435892/b446a6c1-1d5b-409b-8084-68b8bdeed5a1))

</details>

## User and Admin Flowchart View
<details>
  <summary>User and Admin Flowchart View:</summary>

  ```Flowchart of User```

![alt text](![flowchart_user](https://github.com/SistemBasisData2023/CareerHub/assets/88435892/cb1f3459-8ae7-4df8-bb21-1c9d6bfd8905))

```Flowchart of Company```

![alt text](![flowchart_company](https://github.com/SistemBasisData2023/CareerHub/assets/88435892/0f050644-8d36-45bd-9f8b-63a96dc11eb3))

</details>


---
```Logo CareerHub```
![alt text](![logoCareerHub](https://github.com/SistemBasisData2023/CareerHub/assets/88435892/421ad99e-9f24-4c4f-a8d8-617a3dd79e13)
)

---
