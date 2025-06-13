# Laporan Praktikum Manajemen Data

![Logo PENS](https://www.seekpng.com/png/detail/416-4164571_logo-pens-png-electronic-engineering-polytechnic-institute-of.png)


Repositori ini menyajikan hasil pengerjaan tugas praktikum mata kuliah **Manajemen Data**, yang mencakup implementasi script Linux serta pengembangan dan deployment aplikasi Python menggunakan Docker.

---

## **Informasi Praktikum**

* **Mata Kuliah:** Manajemen Data
* **Dosen Pengampu:** Isbat Uzzin Nadhori S.Kom., M.T
* **Program Studi:** Sains Data Terapan
* **Departemen:** Teknik Informatika dan Komputer
* **Institusi:** Politeknik Elektronika Negeri Surabaya
* **Tahun Ajaran:** 2024/2025

---

## **Disusun Oleh**

* **Nama:** Arfi Adi Nugroho
* **NIM:** 3324600019

---

## **Struktur Repositori Proyek**

Repositori ini diorganisir dalam dua subfolder utama, yang merepresentasikan bagian-bagian tugas praktikum:

### **`tugas1_quizzes/`**

Folder ini berisi koleksi script Bash dan AWK yang dikembangkan untuk menyelesaikan soal-soal Quiz pada Tugas 1, berfokus pada otomasi dan analisis data di lingkungan Linux.

* **Quiz 1:** Monitoring Service SSH
    * `nrp_monssh.sh`: Script Bash untuk memantau status service SSH secara berkala.
* **Quiz 2:** Otomasi Backup File
    * `nrp_backup.sh`: Script Bash untuk melakukan backup file secara otomatis dengan rotasi dan penjadwalan via `crontab`.
* **Quiz 3:** Analisis Data Sensor (Menggunakan AWK)
    * `data.txt`: Contoh file input data sensor.
    * `nrp_maxsuhu.awk`: Script AWK untuk mengidentifikasi suhu maksimum dari `data.txt`.
    * `nrp_rata2kelembaban.awk`: Script AWK untuk menghitung rata-rata kelembaban dari `data.txt`.
* **Quiz 4:** Filter Informasi Pengguna (`/etc/passwd`)
    * `filter_users.sh`: Script (atau rangkaian perintah) untuk mengekstrak dan memfilter informasi pengguna dari `/etc/passwd`.

### **`tugas2_app/`**

Folder ini memuat file-file aplikasi Python yang telah dikonteinerisasi menggunakan Docker, yaitu sebuah sistem pakar diagnosis infeksi gastro usus.

* **`diagnosis_gastrousus.py`**: Kode sumber utama aplikasi sistem pakar berbasis Streamlit.
* **`requirements.txt`**: Daftar pustaka (dependencies) Python yang diperlukan oleh aplikasi, yang akan diinstal di dalam Docker *image*.
* **`Dockerfile`**: Instruksi langkah demi langkah untuk membangun *image* Docker yang berisi aplikasi ini dan semua lingkungannya.

---

## **Cara Menjalankan / Menggunakan Aplikasi (Tugas 2)**

Untuk menjalankan aplikasi sistem pakar diagnosis gastro usus yang ada di `tugas2_app/` ini, pastikan Anda telah menginstal **Docker Desktop** di sistem Anda.

1.  **Clone Repositori:**
    Buka terminal  dan kloning repositori ini ke sistem lokal Anda:
    ```bash
    git clone https://github.com/Arfiadi/praktikum-docker-linux
    ```
    *url adalah url repository ini.*

2.  **Navigasi ke Direktori Aplikasi:**
    Masuk ke direktori yang berisi file-file aplikasi Docker:
    ```bash
    cd praktikum-docker-linux/tugas2_app
    ```

3.  **Bangun Docker Image:**
    Buat *image* Docker dari `Dockerfile` yang tersedia. Proses ini akan mengunduh *base image* Python dan menginstal dependensi Streamlit.
    ```bash
    docker build -t gastro-diagnosis-app:latest .
    ```

4.  **Jalankan Docker Container:**
    Luncurkan *container* dari *image* yang telah dibangun, memetakan port 8501 ke *host* agar aplikasi dapat diakses. Gunakan opsi `-d` untuk berjalan di *background*.
    ```bash
    docker run -d -p 8501:8501 gastro-diagnosis-app:latest
    ```
    *port bisa diganti sesuai kebutuhan Anda.*
    
    *Verifikasi container berjalan:*
    ```bash
    docker ps
    ```

6.  **Akses Aplikasi:**
    Buka *browser* web Anda dan kunjungi URL berikut:
    ```
    http://localhost:8501
    ```
    Aplikasi sistem pakar diagnosis akan tampil di *browser* Anda.

---

## **Dokumentasi Lengkap**

Dokumentasi laporan yang lebih detail, analisis mendalam dari setiap langkah seluruh tugas praktikum dapat ditemukan pada:

* **Dokumen Laporan (File Word):** [https://1drv.ms/w/c/e62ae71f1d83fc73/Eayayee8G8JFuNkfG9UOKx4BCl78PkMDSQ54qZc1aoDipw?e=M66gGN]

---

Terima kasih telah mengunjungi repositori ini!
