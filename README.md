Berisi jawaban seluruh tugas2 (scroll ke bawah)


Tugas 7

1. 

Widget tree adalah struktur hierarki dari semua widget yang membentuk tampilan (UI) aplikasi Flutter.
Flutter menggambarkan antarmuka pengguna (UI) sebagai pohon (tree) yang berisi widget-widget.

Setiap widget menjadi parent bagi widget di dalamnya, dan setiap widget di dalamnya disebut child.
Saat parent berubah, biasanya Flutter akan melakukan rebuild pada child-nya yang terpengaruh.

- Parent widget mengatur posisi, ukuran, dan properti dari child widget.
- Child widget tidak tahu siapa parent-nya, tetapi ia bisa mengakses informasi konteks melalui BuildContext.

2. 

Scaffold
→ Struktur dasar halaman Flutter yang menyediakan area utama seperti appBar, body, drawer, dan floatingActionButton.
Dalam kode ini, Scaffold digunakan untuk membangun layout utama halaman aplikasi.

AppBar
→ Menampilkan bar di bagian atas layar berisi judul aplikasi.
Di sini, digunakan untuk menampilkan teks “Soccer Commerce” dengan warna latar dari tema.

Text
→ Menampilkan teks di layar.
Digunakan untuk menampilkan judul AppBar dan nama item seperti “All Product”, “My Product”, dan “Create Product”.

Padding
→ Memberikan jarak di sekitar widget.
Pada kode ini, digunakan di bagian body agar konten tidak menempel ke tepi layar.

Column
→ Menyusun widget secara vertikal (dari atas ke bawah).
Digunakan untuk menyusun SizedBox, Center, dan GridView.

SizedBox
→ Memberikan jarak vertikal/horizontal antar widget.
Di sini digunakan untuk memberi jarak 16 piksel antar elemen.

Center
→ Menempatkan widget anak di tengah secara horizontal dan vertikal.
Digunakan untuk memusatkan kolom yang berisi grid item.

GridView.count
→ Menampilkan kumpulan widget dalam bentuk grid dengan jumlah kolom tertentu.
Di sini digunakan untuk menampilkan 3 kartu (ItemCard) dalam 3 kolom sejajar.

Card
→ Widget berbentuk kotak dengan efek bayangan (elevation).
Digunakan untuk menampilkan data identitas seperti NPM, Nama, dan Kelas.

Container
→ Pembungkus serbaguna untuk mengatur ukuran, padding, dan dekorasi.
Di sini digunakan untuk mengatur ukuran dan jarak isi dalam kartu.

Material
→ Memberikan efek material design seperti warna latar dan elevasi.
Digunakan untuk memberi warna background pada tiap kartu.

InkWell
→ Widget yang memberikan efek ripple dan aksi saat ditekan (onTap).
Di sini digunakan agar kartu bereaksi saat diklik dan menampilkan SnackBar.

Icon
→ Menampilkan ikon visual (misalnya Icons.all_inbox, Icons.add, dll).

Padding
→ Memberikan jarak kecil antara ikon dan teks agar tampilan rapi.

SnackBar
→ Komponen notifikasi singkat yang muncul di bagian bawah layar.
Di sini muncul saat pengguna menekan salah satu kartu.

ScaffoldMessenger
→ Mengatur dan menampilkan SnackBar pada Scaffold yang sedang aktif.

3. 

MaterialApp adalah widget utama (root) dalam aplikasi Flutter yang menggunakan Material Design — yaitu sistem desain dari Google yang memberikan tampilan modern, responsif, dan konsisten di seluruh perangkat.

Secara fungsi, MaterialApp bertugas untuk:

- Menyediakan struktur dasar aplikasi Material Design, seperti tema warna (ThemeData), font, dan gaya visual standar.

- Mengatur navigasi dan routing halaman, misalnya dengan properti home, routes, dan onGenerateRoute.

- Mengatur konfigurasi global, seperti title, debugShowCheckedModeBanner, locale, dan supportedLocales.

- Menyediakan akses tema ke seluruh widget melalui Theme.of(context), sehingga warna dan gaya tetap konsisten di seluruh aplikasi.

- Menginisialisasi beberapa komponen penting seperti ScaffoldMessenger, Navigator, dan MediaQuery yang dibutuhkan oleh banyak widget lain seperti Scaffold, SnackBar, dan AppBar.


MaterialApp sering digunakan sebagai widget root karena hampir semua aplikasi Flutter modern memerlukan:

- Struktur Material Design (AppBar, Scaffold, Button, TextField, dll.)
- Navigasi antar halaman
- Tema yang konsisten di seluruh aplikasi

, dan MaterialApp sudah menyiapkan semua itu sejak awal, sehingga developer tidak perlu menulis konfigurasi manual.Tanpa MaterialApp, banyak widget Material seperti Scaffold atau SnackBar tidak dapat berfungsi karena tidak menemukan konteks Material yang diperlukan.

4. 

StatelessWidget dan StatefulWidget adalah dua jenis widget utama di Flutter yang dibedakan berdasarkan apakah tampilan atau datanya bisa berubah. StatelessWidget digunakan untuk membuat tampilan yang bersifat statis atau tidak berubah selama aplikasi berjalan, misalnya untuk menampilkan teks, ikon, atau elemen dekoratif yang tidak dipengaruhi interaksi pengguna. Widget ini hanya memiliki metode build() dan tidak menyimpan data yang bisa berubah. Sebaliknya, StatefulWidget digunakan ketika tampilan perlu berubah secara dinamis, misalnya ketika ada input dari pengguna, animasi, atau data yang diperbarui dari server. Widget ini memiliki dua bagian, yaitu kelas utama StatefulWidget dan kelas State yang menyimpan data serta logika perubahan tampilan. Setiap kali data di dalam State berubah dan setState() dipanggil, tampilan akan diperbarui secara otomatis. Secara umum, StatelessWidget dipilih untuk elemen UI yang tetap, sedangkan StatefulWidget digunakan untuk tampilan interaktif atau data yang bisa berubah sewaktu-waktu.

5. 

BuildContext adalah objek yang digunakan Flutter untuk mengetahui posisi sebuah widget di dalam widget tree serta untuk mengakses informasi yang terkait dengan konteksnya, seperti tema, ukuran layar, atau navigasi. Dengan kata lain, BuildContext berfungsi sebagai “identitas” atau “alamat” dari widget dalam struktur aplikasi Flutter.

BuildContext penting karena banyak fungsi Flutter bergantung padanya, misalnya untuk mengambil tema dengan Theme.of(context), menampilkan snackbar dengan ScaffoldMessenger.of(context), atau berpindah halaman dengan Navigator.of(context). Tanpa BuildContext, Flutter tidak akan tahu dari mana perintah itu dijalankan atau ke widget mana efeknya harus diterapkan.

Dalam metode build(), BuildContext digunakan sebagai parameter agar setiap widget dapat membangun tampilan berdasarkan posisi dan informasi lingkungannya. Misalnya, ketika kita menulis Theme.of(context).colorScheme.primary, konteks tersebut membantu Flutter menemukan tema dari parent widget dan menerapkannya ke widget yang sedang dibangun. Jadi, BuildContext menjadi penghubung antara widget yang sedang dibuat dengan lingkungan atau parent-nya di dalam widget tree.

6. 

  Hot Reload

Hot reload digunakan untuk memperbarui tampilan aplikasi secara langsung tanpa kehilangan state (keadaan) yang sedang berjalan.

Konsepnya:

- Flutter menyuntikkan kode sumber Dart yang telah diperbarui ke dalam Virtual Machine (VM).
- VM kemudian memperbarui widget tree dengan perubahan terbaru.
- Karena state (misalnya isi form, posisi halaman, data sementara) tidak direset, pengembang bisa langsung melihat perubahan UI tanpa kehilangan kondisi aplikasi.


Kapan digunakan:

- Saat mengubah UI (warna, layout, teks, dll).
- Saat memperbaiki logika di dalam metode build().
- Saat menambahkan widget baru atau memperbarui tampilan.

Hot Restart

Hot restart akan memuat ulang seluruh aplikasi dari awal, tapi tanpa melakukan full recompilation (lebih cepat dari “Run” biasa).

Konsepnya:

- Flutter menghapus semua state yang tersimpan di memori.
- Aplikasi dijalankan kembali dari fungsi main().
- Namun, kode yang sudah diperbarui tetap digunakan.

Kapan digunakan:

- Ketika perubahan dilakukan pada kode non-UI, seperti variabel global, inisialisasi data, atau struktur aplikasi.
- Saat ingin mengembalikan aplikasi ke kondisi awal tanpa menutup emulator.


Tugas 8 

1. Perbedaan antara Navigator.push() dan Navigator.pushReplacement()

Navigator.push() menambahkan halaman baru ke tumpukan navigasi sehingga pengguna masih bisa kembali ke halaman sebelumnya. Sementara itu, Navigator.pushReplacement() menggantikan halaman saat ini dengan halaman baru dan menghapus halaman sebelumnya dari tumpukan, sehingga pengguna tidak bisa kembali. 

Dalam aplikasi soccer commerce, Navigator.push() cocok digunakan saat berpindah dari halaman daftar produk ke halaman detail produk agar pengguna bisa kembali. Sedangkan Navigator.pushReplacement() cocok digunakan setelah login atau setelah checkout agar pengguna tidak bisa kembali ke halaman sebelumnya.

2. Pemanfaatan hierarchy widget (Scaffold, AppBar, Drawer)

Scaffold berfungsi sebagai kerangka utama setiap halaman yang menyediakan struktur standar seperti area konten, app bar, dan drawer. AppBar digunakan untuk menampilkan judul halaman serta ikon aksi seperti keranjang atau pencarian, sedangkan Drawer menjadi tempat navigasi utama antarhalaman.

3. Kelebihan layout widget seperti Padding, SingleChildScrollView, dan ListView

Padding membantu menjaga jarak antar elemen agar tampilan form rapi dan mudah dibaca. SingleChildScrollView memungkinkan pengguna menggulir layar jika isi form melebihi tinggi layar, sehingga form tetap mudah diakses di berbagai perangkat. ListView digunakan untuk menampilkan daftar elemen secara efisien, seperti daftar produk atau pesanan. Dalam soccer commerce, kombinasi ketiganya membuat tampilan form, katalog, dan daftar pesanan lebih nyaman, responsif, dan rapi.

4. Penyesuaian warna tema untuk identitas visual Football Shop

Penyesuaian warna tema dilakukan melalui pengaturan warna utama, sekunder, latar belakang, dan teks yang konsisten di seluruh aplikasi. Dengan menentukan warna khas untuk menonjolkan kesan sporty dan energi khas dunia sepak bola, identitas visual soccer commerce menjadi kuat dan mudah dikenali. Warna tema yang konsisten juga meningkatkan profesionalitas dan kenyamanan pengguna saat berinteraksi dengan aplikasi.


                                                    Tugas 9


1. Mengapa perlu membuat model Dart untuk data JSON? Apa konsekuensinya jika hanya memakai Map<String, dynamic>?

Ketika aplikasi Flutter berkomunikasi dengan Django, data dikirimkan dalam format JSON. Untuk memastikan data yang diterima selalu memiliki struktur dan tipe yang benar, kita membuat model Dart. Model ini berfungsi sebagai kontrak yang menjelaskan bentuk data, tipe variabel, serta aturan null-safety. Jika kita hanya menggunakan Map<String, dynamic>, kita kehilangan validasi tipe sehingga rawan error runtime seperti field null yang tidak di-handle, typo key JSON, atau perubahan struktur yang tidak terdeteksi. Tanpa model, kode juga lebih sulit dipelihara, tidak terorganisir, dan rentan menyebabkan bug yang susah dilacak.

2. Fungsi package http dan CookieRequest, serta perbedaan keduanya

Package http dipakai untuk melakukan request biasa seperti GET atau POST tanpa membawa status login. Sementara itu, CookieRequest menyediakan mekanisme request yang menyertakan cookie session dari Django. CookieRequest membantu Flutter mempertahankan session authentikasi agar server mengenali pengguna yang sedang login. Jadi perbedaannya adalah http bersifat stateless, sedangkan CookieRequest menyertakan cookie sehingga mendukung autentikasi Django.

3. Mengapa instance CookieRequest harus dibagikan ke seluruh aplikasi Flutter?

Karena CookieRequest menyimpan informasi session dan cookie login, instance-nya harus sama di seluruh aplikasi. Jika setiap widget membuat instance baru, session login tidak terbawa, sehingga halaman lain tidak mengenali status login pengguna. Dengan membagikan satu instance melalui Provider, seluruh komponen Flutter dapat mengakses status login, melakukan request ke Django dengan cookie yang sama, dan menjaga konsistensi autentikasi.

4. Mengapa Flutter perlu konfigurasi tertentu agar bisa terhubung ke Django?

Agar Flutter dapat berkomunikasi dengan Django, server perlu mengizinkan koneksi dari emulator Android. IP khusus 10.0.2.2 digunakan oleh emulator untuk mengakses localhost komputer, sehingga harus dimasukkan ke ALLOWED_HOSTS. Django juga perlu diaktifkan CORS (Cross-Origin Resource Sharing) agar menerima request dari domain berbeda. Selain itu, konfigurasi cookie seperti SameSite harus disesuaikan agar cookie session dapat dikirim dari Flutter. Di Android, aplikasi harus diberi izin akses internet. Jika konfigurasi ini salah, Flutter tidak bisa terhubung, request akan ditolak, cookie tidak terbaca, dan autentikasi tidak akan berjalan.

5. Mekanisme pengiriman data dari input hingga tampil di Flutter

Pengguna memasukkan data pada form Flutter. Setelah tombol ditekan, data ini dikirim sebagai JSON ke Django. Django memprosesnya, mengambil atau mengolah data sesuai permintaan, lalu mengembalikan response JSON. Setelah itu, Flutter menerima JSON tersebut, memetakannya ke model Dart, dan informasi yang sudah terstruktur inilah yang ditampilkan di UI melalui widget.

6. Mekanisme autentikasi login, register, hingga logout

Proses dimulai ketika pengguna mengisi form login atau register pada Flutter. Data dikirim ke Django melalui CookieRequest. Django memvalidasi data: register membuat akun baru, login memverifikasi username dan password, dan jika valid Django membuat session serta mengirim cookie kembali ke Flutter. CookieRequest menyimpan cookie tersebut sehingga Flutter dianggap sudah login. Setelah berhasil login, halaman menu ditampilkan. Saat logout, CookieRequest mengirim request ke Django dan Django menghapus session. Setelah session dihapus, Flutter menghapus status autentikasi dan kembali ke halaman login.

7. Implementasi checklist secara step-by-step

Saya memulai dengan membuat proyek Flutter dan Django, lalu menghubungkan keduanya. Pertama saya membuat endpoint Django untuk login, register, dan logout. Setelah itu saya menyiapkan Flutter dengan Provider untuk menyebarkan instance CookieRequest. Saya mengonfigurasi Django agar menerima request dari Flutter dengan menambahkan 10.0.2.2, mengaktifkan CORS, dan mengatur cookie. Kemudian saya implementasikan form login dan register di Flutter, mengirim request melalui CookieRequest, dan menampilkan respons dari Django. Setelah autentikasi bekerja, saya memastikan logout berhasil dengan menghapus session Django dan mengembalikan pengguna ke halaman login. Terakhir, saya memastikan seluruh fitur berjalan konsisten, data termuat melalui model Dart, dan koneksi antara Flutter dan Django berjalan dengan benar.