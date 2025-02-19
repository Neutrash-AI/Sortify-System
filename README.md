# SORTIFY 🚀
Proses penyortiran secara otomatis

## Anggota Tim 👥

### Benaya Imanuela
- **NIM:** 22/494790/TK/54313
- **Role:** UI/UX Designer, Software Engineer 🎨💻

### Nur Rochman
- **NIM:** 22/493623/TK/54086
- **Role:** AI Engineer, Cloud Engineer 🤖☁️

“Project Senior Project TI”

Departemen Teknologi Elektro dan Teknologi Informasi, Fakultas Teknik, Universitas Gadjah Mada

Nama Produk: Sortify

Jenis Produk: Layanan Software 

Latar Belakang:
Sampah yang tidak terpilah dengan baik masih menjadi masalah utama dalam pengelolaan lingkungan. Banyak masyarakat kurang memahami cara memilah sampah karena kurangnya edukasi serta minimnya fasilitas yang mendukung pemilahan otomatis. Akibatnya, sampah organik, anorganik, dan bahan berbahaya sering bercampur, sehingga proses daur ulang menjadi sulit dan meningkatkan volume sampah yang berakhir di tempat pembuangan akhir (TPA).

Salah satu kendala utama dalam pemilahan sampah adalah kurangnya kesadaran dan fasilitas yang mendukung. Banyak tempat sampah umum masih menggunakan sistem manual tanpa teknologi untuk membantu pengguna membuang sampah di tempat yang sesuai. Oleh karena itu, dibutuhkan solusi berbasis teknologi yang dapat membantu masyarakat dalam memilah sampah dengan mudah dan cepat.

Untuk mengatasi masalah ini, kami mengembangkan Sortify, sebuah sistem berbasis kecerdasan buatan (AI), jaringan komputer, dan komputasi awan yang dapat mengenali jenis sampah melalui gambar. Dengan menggunakan teknologi image processing, aplikasi ini dapat mendeteksi jenis sampah dari gambar yang ditampilkan oleh pengguna, lalu mengirimkan hasil klasifikasi ke cloud.  Hasil klasifikasi ini akan ditampilkan dalam bentuk antarmuka web, sehingga pengguna dapat mengakses layanan ini dari berbagai perangkat dengan koneksi internet.


Rumusan Permasalahan:
Bagaimana mengembangkan model AI berbasis image processing yang dapat mengenali dan mengklasifikasikan sampah dengan akurat?
Bagaimana merancang sistem berbasis jaringan komputer yang memungkinkan pengguna mengakses layanan klasifikasi sampah melalui aplikasi web secara real-time?
Bagaimana mengintegrasikan kecerdasan buatan dengan layanan cloud agar pemrosesan gambar dan penyimpanan data dapat dilakukan secara efisien dan dapat diakses kapan saja?
Bagaimana memastikan bahwa aplikasi web memiliki antarmuka yang ramah pengguna serta dapat diakses dengan lancar di berbagai perangkat dan jaringan?

Solusi:
Model AI menggunakan klasifikasi untuk membedakan sampah yang bisa didaur ulang dan tidak. 
Kode backend dan model AI di deploy di cloud dan diakses via Rest API / Web Socket oleh kode frontend. 
Kode Frontend dijalankan secara lokal (atau di raspberry pi) dan terkoneksi dengan ESP32 lewat koneksi serial untuk menggerakkan servo. 
Servo digerakkan dengan memproses input kamera yang diproses model AI yang menghasilkan output 0 atau 1 dan dikonversi ke sinyal pwm untuk menggerakkan servo ke kiri [0] atau kanan [1] (dengan default di tengah dengan anggapan bagian kiri adalah sampah yang tidak bisa didaur ulang dan bagian kanan adalah yang bisa didaur ulang)
Dengan solusi ini, NeuTrash dapat membantu perusahaan atau pemerintah dalam mengelola sampah dengan lebih optimal (B2B).

Rancangan Fitur Solusi:
Fitur
Keterangan
Klasifikasi Sampah
Membedakan mana sampah yang dapat didaur ulang dan tidak berdasarkan inputan gambar
Dashboard monitoring
Mengakumulasi total sampah dan persentase sampah yang dapat didaur ulang dan tidak yang dapat digunakan untuk analisis lanjutan

Analisis Kompetitor:
KOMPETITOR 1
Nama
Trashbot by CleanRobotics
Jenis Kompetitor
Direct
Jenis Produk
Smart trash bin berbasis AI yang dapat memilah sampah secara otomatis
Target Customer
Perusahaan dan institusi yang ingin menerapkan teknologi daur ulang otomatis.
Pemerintah daerah yang menerapkan sistem smart city.
Kelebihan
Kekurangan
Teknologi AI yang dapat memilah sampah secara real-time
Terintegrasi dengan sistem smart waste management
Meminimalisir kesalahan manusia dalam memilah sampah
Produk berbentuk hardware (tidak berbasis aplikasi web)
Harga mahal dan sulit diimplementasikan di skala rumah tangga
Tidak tersedia di semua negara
Key Competitive Advantage & Unique Value
Trashbot menawarkan sistem pemilahan sampah otomatis berbasis AI, tetapi kurang fleksibel untuk pengguna rumahan karena berbentuk hardware dan harganya mahal.


KOMPETITOR 2
Nama
EcoBin
Jenis Kompetitor
Direct
Jenis Produk
Tempat sampah pintar berbasis AI dan IoT
Target Customer
Pemerintah kota yang ingin meningkatkan efisiensi pengelolaan sampah
Komunitas dan institusi yang peduli terhadap lingkungan
Kelebihan
Kekurangan
Pemilahan sampah otomatis menggunakan sensor dan pemrosesan data
Pemantauan kapasitas tempat sampah secara real-time
Mendukung pengelolaan sampah yang efisien
Memerlukan investasi infrastruktur untuk implementasi
Fokus pada hardware, kurang fleksibel dibandingkan solusi berbasis aplikasi
Key Competitive Advantage & Unique Value
Integrasi teknologi AI dan IoT dalam bentuk fisik untuk pemilahan sampah otomatis.


KOMPETITOR 3
Nama
SMASH (Smart Mobile Application for Smart Handling)
Jenis Kompetitor
Direct
Jenis Produk
Aplikasi manajemen sampah berbasis mobile
Target Customer
Masyarakat umum yang ingin terhubung dengan bank sampah
Pemerintah daerah yang membutuhkan sistem manajemen sampah
Kelebihan
Kekurangan
Memfasilitasi koneksi antara pengguna dengan bank sampah terdekat
Menyediakan informasi jenis sampah yang diterima oleh bank sampah
Fitur e-Smash untuk manajemen sampah di tingkat pemerintah daerah
Tidak memiliki fitur pemilahan sampah otomatis berbasis AI
Bergantung pada partisipasi aktif dari bank sampah dan pengguna
Key Competitive Advantage & Unique Value
Platform yang menghubungkan masyarakat dengan bank sampah melalui aplikasi mobile



