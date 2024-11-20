# lazacil_mobile

A new Flutter project for the Lazacil mobile version.

- Nama : Ischika Afrilla
- NPM : 2306227955
- PBP F

# Daftar Isi
- [Tugas 7](#tugas-7)
- [Tugas 8](#tugas-8)
- [Tugas 9](#tugas-9)

## Tugas 7
1. Jelaskan apa yang dimaksud dengan *stateless widget* dan *stateful widget*, dan jelaskan perbedaan dari keduanya.

    - *Stateless Widget* adalah jenis *widget* yang tidak memiliki *state* (keadaan) yang dapat berubah setelah *widget* itu dibuat. Dengan kata lain, semua data atau informasi yang ditampilkan oleh *widget* ini bersifat tetap atau konstan selama *widget* tersebut aktif dalam aplikasi.
    - *Stateful Widget* adalah jenis *widget* yang memiliki *state* yang dapat berubah selama *widget* tersebut aktif dalam aplikasi. *State* ini memungkinkan *widget* untuk merespons perubahan data atau interaksi pengguna, sehingga tampilan atau perilaku *widget* dapat berubah sesuai dengan keadaan atau input yang diterima.

      | Perbedaan | *Stateless Widget* | *Stateful Widget* |
      | ---- | ----- | ----- |
      | Mutabilitas | Tidak dapat berubah setelah dibangun	| Dapat berubah seiring waktu | 
      | *State* | Tidak memiliki *state* | Memiliki *state* yang dapat diubah |
      | Penggunaan | Untuk tampilan statis atau konstan | Untuk tampilan dinamis atau interaktif |
      | *Method* `build()` | Dipanggil satu kali saat *widget* dibangun | Dipanggil setiap kali `setState()` dipanggil |
      | Contoh Kegunaan | Teks, gambar, ikon | Tombol, form, *slider*, animasi | 

2. Sebutkan *widget* apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

    Pada proyek ini saya menggunakan *widget*:

      - `Scaffold`: Menyediakan struktur dasar untuk halaman, seperti `AppBar`, `body`, dan elemen-elemen dasar lainnya pada aplikasi.
      - `AppBar`: Menampilkan bagian atas halaman yang berisi judul aplikasi "Lazacil" berwarna putih dan tebal. `AppBar` juga mengambil warna dari skema tema aplikasi.
      - `Padding`: Menyediakan `padding` di sekitar `body` halaman agar konten tidak langsung menempel ke tepi layar.
      - `Column`: Menyusun *widget* secara vertikal. `Column` digunakan untuk menyusun `Row` yang berisi `InfoCard` dan elemen-elemen lainnya secara vertikal.
      - `Row`: Menyusun *widget* `InfoCard` secara horizontal agar terlihat seperti satu baris di dalam tampilan.
      - `InfoCard`: *Widget* kustom yang dibuat untuk menampilkan informasi berupa "NPM", "Name", dan "Class". Setiap `InfoCard` menggunakan *widget* `Card` sebagai struktur utama, ditambah dengan teks judul dan konten yang diatur secara vertikal.
      - `SizedBox`: Memberikan jarak antar *widget* secara vertikal dengan nilai 16.0.
      - `Center`: Menempatkan *widget* di tengah layar secara horizontal.
      - `GridView.count`: Mengatur tampilan item dalam bentuk `grid` dengan tiga kolom. Setiap elemen di dalam `grid` adalah `ItemCard`, yang diulang sesuai jumlah item yang ada di dalam daftar `items`.
      - `ItemCard`: Widget kustom yang menampilkan ikon dan nama item. `ItemCard` menggunakan `Material` dan `InkWell` untuk memberikan efek animasi saat ditekan. Ketika `ItemCard` ditekan, akan muncul `SnackBar` yang menampilkan pesan sesuai nama item yang ditekan.
      - `SnackBar`: Menampilkan pesan singkat pada bagian bawah layar sebagai respon terhadap interaksi pengguna.
      - `Material`: Membungkus `ItemCard` agar bisa diberikan warna latar belakang sesuai tema aplikasi.
      - `InkWell`: Menambahkan efek *ripple* pada `ItemCard` saat ditekan, memberikan tampilan interaktif bagi pengguna.
      - `Icon`: Menampilkan ikon sesuai dengan yang telah ditentukan dalam setiap item pada daftar `items`.
      - `Text`: Digunakan untuk menampilkan teks di berbagai tempat, seperti pada judul "Lazacil", informasi NPM, nama, kelas, dan nama item dalam `ItemCard`.

3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

    Fungsi `setState()` digunakan untuk memberi tahu *framework* bahwa ada perubahan pada *state* dari sebuah *Stateful Widget* yang perlu diperbarui. Dengan memanggil `setState()`, kita memicu Flutter untuk membangun ulang (*rebuild*) *widget* tersebut, sehingga tampilan akan diperbarui sesuai dengan *state* yang baru.

    Fungsi `setState()` biasanya berdampak pada variabel-variabel atau properti yang ada di dalam kelas *state* dari `Stateful Widget`, yakni:
    
      - Variabel *State*: Variabel yang menentukan keadaan dari *widget*, misalnya jumlah `counter`, teks, warna, atau kondisi tertentu (seperti `isLoggedIn`, `isLoading`, dsb).
      - List dan Map: Jika *widget* menampilkan list atau objek map, maka perubahan pada elemen-elemen dalam list atau map tersebut juga memerlukan `setState()` untuk diperbarui di layar.
      - Data dari Input Pengguna: Variabel yang menyimpan input pengguna, seperti teks dari `TextField`, status `Checkbox`, atau posisi *slider*.

4. Jelaskan perbedaan antara `const` dengan `final`.

    `const` dan `final` digunakan untuk mendeklarasikan variabel yang nilainya tidak dapat diubah setelah dideklarasikan.

    | Perbedaan | `const` | `final` |
    | ---- | ----- | ----- |
    | Waktu Inisialisasi | Waktu kompilasi	| Waktu kompilasi atau runtime | 
    | Immutabilitas Objek | Sepenuhnya *immutable* dan disimpan di memori tunggal | *Immutable*, tetapi bisa mereferensikan objek *mutable* |
    | Penggunaan Objek Konstan | Dapat digunakan untuk membuat objek konstan | Tidak dapat digunakan untuk membuat objek konstan |
    | Perubahan Nilai | Tidak bisa berubah | Tidak bisa berubah setelah diinisialisasi |

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

    - Buat proyek Flutter baru bernama `lazacil_mobile` *(melanjutkan tugas sebelumnya)* dengan menjalankan *prompt* `flutter create lazacil_mobile` lalu masuk ke dalam direktori *root folder* proyek `lazacil_mobile`.
    - Coba jalankan proyek dengan prompt `flutter run` lalu lihat hasilnya.
    - Buat repositori baru dengan nama `lazacil-mobile` pada GitHub lalu *push* proyek `lazacil_mobile` ke repositori tersebut.
    - Buat file baru bernama `menu.dart` pada direktori `lazacil_mobile/lib` lalu tambahkan `import 'package:flutter/material.dart';` pada bagian paling atas.
    - *Cut* baris ke-39 sampai akhir dari file `main.dart` ke `menu.dart`.
    - Tambahkan `import 'package:lazacil_mobile/menu.dart';` pada bagian paling atas `main.dart`.
    - Coba jalankan proyek dengan prompt `flutter run` dan pastikan aplikasi tetap berjalan dengan baik.
    - Ubah tema aplikasi pada `main.dart` menjadi seperti ini.

      ```dart
      colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ).copyWith(secondary: Colors.pink[200]),
      ```

    - Ubah `const MyHomePage(title: 'Flutter Demo Home Page')` pada `main.dart` menjadi `MyHomePage(),`
    - Ubah sifat widget halaman dari *stateful* menjadi *stateless* pada `menu.dart`, dengan cara:
      - Menghapus semua isi dari `class MyHomePage ...` seperti `const MyHomePage({super.key, required this.title});`, variabel `final String title`;, komentar-komentar pada berkas, dan `State<MyHomePage> createState() => _MyHomePageState();`.
      - Mengubah `... extends StatefulWidget` menjadi `... extends StatelessWidget` pada `class MyHomePage`.
      - Menambahkan `MyHomePage({super.key});` sebagai constructor class `MyHomePage`.
      - Menghapus seluruh `class _MyHomePageState extends State<MyHomePage>`.
      - Menambahkan `Widget build` pada `class MyHomePage ...`.
    - Deklarasikan tiga variabel bertipe *string* yang berisi NPM, nama, dan kelas pada `class MyHomePage` di `menu.dart`.
    - Buat *class* baru bernama `InfoCard` pada `menu.dart`.
    - Buat *class* baru bernama `ItemHomePage` pada `menu.dart`.
    - Buat `List<ItemHomepage> items` pada *class* `MyHomePage` yang berisi tombol Lihat Daftar Produk, Tambah Produk, dan Logout.
    - Buat *class* baru bernama `ItemCard` pada `menu.dart` untuk menampilkan tombol-tombol yang sudah dibuat.
    - Ubah `Widget build()` pada `class MyHomePage` agar dapat mengintegrasikan `InfoCard` dan `ItemCard` untuk ditampilkan pada `MyHomePage`.
    - Coba jalankan `flutter analyze` pada *root folder* proyek untuk memastikan tidak ada masalah pada kode.
    - Terakhir, *push* kode ke GitHub seperti biasa.

## Tugas 8
1. Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

    `const` digunakan untuk membuat nilai atau *widget* yang bersifat *immutable* (tidak dapat diubah) dan *compile-time constant* (konstan saat kompilasi).

    - Kegunaan :
      - Mendefinisikan nilai konstan
      - Membuat *widget* konstan
      - Mengoptimalkan *widget tree*
    
    - Keuntungan :
      - Peningkatan performa
      - Pengurangan beban CPU
      - Optimasi pada saat kompilasi
      - Stabilitas aplikasi yang lebih baik

    - Kapan sebaiknya menggunakan `const`:
      - Untuk *widget* statis
      - Untuk nilai/objek yang tidak berubah
      - Untuk konstruktor *widget*
      - Untuk optimalisasi di dalam *widget tree*

    - Kapan sebaiknya tidak menggunakan `const`:
      - Jika objek atau nilai akan berubah
      - Untuk objek yang bergantung pada nilai non-konstan
      - Jika membuat *debug* lebih sulit

2. Jelaskan dan bandingkan penggunaan *Column* dan *Row* pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

    - *Column* :
      - Mengatur anak-anaknya secara vertikal, dari atas ke bawah.
      - Cocok digunakan ketika ingin menampilkan elemen-elemen dalam bentuk daftar ke bawah, seperti teks atau tombol berurutan secara vertikal.

    - *Row* :
      - Mengatur anak-anaknya secara horizontal, dari kiri ke kanan.
      - Cocok digunakan ketika ingin menampilkan elemen-elemen secara berjajar, seperti ikon, tombol, atau elemen lain yang harus ditampilkan berdampingan.


    - Contoh implementasi *Column*

      ```dart
      // Menyusun title dan content secara vertikal.
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          Text(content),
        ],
      ),
      ```

    - Contoh implementasi *Row*

      ```dart
      children: [
        // Row untuk menampilkan 3 InfoCard secara horizontal.
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InfoCard(title: 'NPM', content: npm),
            InfoCard(title: 'Name', content: name),
            InfoCard(title: 'Class', content: className),
          ],
        ),
      ],
      ```

      | Fitur | *Column* | *Row* |
      | ---- | ----- | ----- |
      | Susunan elemen | Vertikal (dari atas ke bawah)	| Horizontal (dari kiri ke kanan) | 
      | `mainAxisAlignment` | Mengatur posisi di sumbu vertikal | Mengatur posisi di sumbu horizontal |
      | `crossAxisAlignment` | Mengatur posisi di sumbu horizontal | Mengatur posisi di sumbu vertikal |
      | Cocok untuk | Daftar elemen bertingkat ke bawah | Elemen berjajar di satu baris |
      | Contoh penggunaan | Form, daftar item, paragraf teks | Toolbar, baris ikon atau tombol |

3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman *form* yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

    Elemen input yang digunakan:
      - TextFormField untuk Nama Produk
      - TextFormField untuk Jumlah Produk
      - TextFormField untuk Deskripsi Produk
      - ElevatedButton untuk Simpan Data

    Ya, terdapat elemen input Flutter lain yang tidak saya gunakan, yaitu:
      - Checkbox
      - Radio
      - Switch
      - Slider
      - DatePicker
      - DropdownButton

4. Bagaimana cara kamu mengatur tema (*theme*) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

    Saya menggunakan `ThemeData` pada `MaterialApp` untuk mengatur tema (*theme*) dalam aplikasi yang saya buat. Dengan `ThemeData`, saya dapat mengatur secara global berbagai elemen UI seperti warna, font, dan gaya lainnya. Sebagai contoh, saya menetapkan `primarySwatch` ke `Colors.pink` untuk memberikan nuansa warna yang seragam pada elemen-elemen seperti `AppBar` dan tombol. Selain itu, dengan mengaktifkan `useMaterial3`, aplikasi saya mengikuti standar Material Design 3 yang lebih modern dan responsif.

    Ya, saya mengimplementasikan tema pada aplikasi yang saya buat karena aplikasi sudah memiliki tema dasar yang diatur melalui `ThemeData`, dengan warna primer `Colors.pink` dan warna sekunder `Colors.pink[200]`. Warna *primary swatch* digunakan untuk elemen UI yang penting seperti `AppBar`, dan warna *secondary* digunakan pada komponen tambahan.

5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

    Cara saya menangani navigasi dalam aplikasi Flutter yang memiliki banyak halaman adalah dengan menggunakan *widget* `Navigator`. *Widget* `Navigator` menampilkan halaman-halaman dalam bentuk tumpukan (*stack*) yang memudahkan pengelolaan alur navigasi. Untuk menavigasi ke halaman baru, kita dapat mengakses `Navigator` melalui `BuildContext` dan memanggil fungsi-fungsi seperti `push()`, `pop()`, atau `pushReplacement()`. Selain itu, untuk mempermudah navigasi, saya menambahkan *drawer menu* dalam aplikasi. *Drawer menu* adalah menu yang muncul dari sisi kiri atau kanan layar dan biasanya berisi tautan navigasi ke halaman-halaman lain dalam aplikasi.

## Tugas 9

1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

    Kita perlu membuat model untuk melakkan pengambilan ataupun pengiriman data JSON untuk:
      - Memastikan Struktur Data Konsisten
      - Mempermudah Validasi Data
      - Mempermudah Serialisasi dan Deserialisasi
      - Meningkatkan Keterbacaan dan Pemeliharaan Kode
      - Meningkatkan Keamanan
      - Memfasilitasi Dokumentasi API
      - Menghindari Kesalahan Penanganan Data

    Tidak membuat model terlebih dahulu saat mengelola data JSON tidak selalu menyebabkan error, tetapi dapat meningkatkan risiko terjadinya berbagai masalah, seperti:
      - Risiko Error pada Waktu Eksekusi
      - Kesalahan Data yang Tidak Terdeteksi
      - Kesulitan dalam Pemeliharaan
      - Potensi Masalah Keamanan
      - Kehilangan Keuntungan dari Otomasi

2. Jelaskan fungsi dari library *http* yang sudah kamu implementasikan pada tugas ini!

    Library `http` pada Flutter adalah salah satu paket yang digunakan untuk melakukan HTTP request ke server atau API. Fungsi utama library `http` pada Flutter:
      - Melakukan HTTP Request
      - Mengirim Data ke Server
      - Mengelola Header HTTP
      - Mengelola Response HTTP
      - Mendukung Operasi Sinkron dan Asinkron
      - Mendukung Encoding Data
      - Mendukung Penggunaan Custom Timeout
      - Mudah Digunakan Bersama Library Lain

3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa *instance* CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

    `CookieRequest` adalah sebuah abstraksi atau implementasi yang digunakan untuk menangani HTTP request yang membutuhkan manajemen cookie. Fungsi utama dari `CookieRequest`, yaitu:
      - Menangani Autentikasi dan Sesi
      - Menyimpan dan Mengelola Cookie
      - Mengirimkan Cookie secara Otomatis
      - Mendukung Stateful Communication
    
    *instance* CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter, untuk:
      - Memastikan Konsistensi Sesi
      - Meningkatkan Efisiensi
      - Memudahkan Manajemen Sesi
      - Mendukung Dependency Injection
      - Meningkatkan Pengalaman Pengguna
 
4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

      - Pengambilan Input dari Pengguna
        Input data dimulai dengan pengguna memasukkan informasi melalui komponen UI, seperti:
          - TextField untuk teks.
          - Dropdown untuk pilihan.
          - Checkbox atau Switch untuk boolean.
          - Button untuk memicu aksi.

      - Validasi Data Input
        Sebelum data dikirimkan, biasanya dilakukan validasi untuk memastikan input sesuai dengan persyaratan.

          Contoh Validasi:
          - Kosong atau tidak.
          - Format tertentu: Email, angka, dll.
          - Panjang string atau nilai rentang.

      - Serialisasi Data
        Data yang diambil dari input diubah menjadi format yang dapat dikirim ke server. Format yang umum digunakan:
          - JSON: Format yang paling populer untuk API.
          - Form-urlencoded: Digunakan untuk formulir sederhana.

      - Pengiriman Data ke Server
        Data dikirimkan ke server menggunakan HTTP request (misalnya `POST` atau `PUT`) melalui library seperti http atau Dio.

      - Pemrosesan Data di Server
        Setelah data diterima di server:
          - Server memproses data yang diterima.
          - Server menyimpan data (misalnya, ke dalam database).
          - Server merespons dengan data yang telah diproses atau status keberhasilan.

      - Parsing dan Menampilkan Respons di Flutter
        Setelah menerima respons, aplikasi Flutter:
        - Mendekode respons JSON.
        - Memperbarui state untuk menampilkan data pada UI.

      - Menangani Error atau Timeout
        Jika terjadi error (misalnya, koneksi gagal atau respons tidak valid), aplikasi harus menangani error ini agar tidak crash.

      - Menggunakan State Management untuk Update UI
        Dalam aplikasi yang kompleks, state management seperti Provider atau Riverpod digunakan untuk menyimpan data yang diterima dari server, lalu memperbarui UI secara otomatis.

5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

    - Register: Membuat Akun Baru
      - Di Flutter (Input Data Akun)
        - Input Data: Pengguna memasukkan informasi seperti nama, email, dan kata sandi melalui TextField atau formulir input.
        - Validasi Input di Flutter: Memastikan semua field terisi dengan format yang benar (contoh: email valid).
      - Di Django (API Register)
        - Endpoint Register: Django menyediakan endpoint `/api/register/` untuk menerima data pengguna.
        - Proses Django:
            - Mengecek apakah email sudah digunakan.
            - Jika valid, menyimpan data pengguna ke database.
        - Respons ke Flutter: Mengirim respons dengan status berhasil (201) atau error (400).

    - Login: Autentikasi Pengguna
      - Di Flutter (Input dan Pengiriman Data Login)
        - Input Data: Pengguna memasukkan email dan kata sandi ke formulir login.
        - Validasi Input: Pastikan email valid dan kata sandi tidak kosong.
      - Di Django (API Login)
        - Endpoint Login: Django menyediakan endpoint `/api/login/` untuk memvalidasi kredensial pengguna.
        - Proses Django:
            - Memeriksa apakah email dan kata sandi cocok dengan data pengguna di database.
            - Jika cocok, membuat atau mengambil token autentikasi untuk pengguna.
        - Respons ke Flutter: Mengirim token autentikasi ke Flutter jika login berhasil (status 200) atau pesan error (status 401).

    - Logout: Mengakhiri Sesi
      - Di Flutter (Logout)
        - Menghapus Token: Flutter menghapus token dari penyimpanan lokal.
        - Opsional: Menginformasikan Server (Logout API): Flutter dapat mengirimkan request logout untuk menghapus token dari server (opsional, tergantung implementasi).
      - Di Django (API Logout)
        - Endpoint Logout: Django dapat menyediakan endpoint /api/logout/ untuk menghapus token pengguna.
        - Proses Django:
            - Token yang dikirim oleh Flutter dihapus dari database.
            - Pengguna tidak dapat mengakses endpoint yang memerlukan autentikasi.

    - Setelah Login: Menampilkan Menu di Flutter
      - Simpan Token: Token yang diterima setelah login disimpan secara lokal menggunakan shared_preferences atau library lainnya.
      - Akses Endpoint yang Dilindungi: Token digunakan untuk mengakses data dari server.
      - Navigasi ke Menu Utama: Setelah login, aplikasi menampilkan halaman menu utama.

6. Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas secara *step-by-step*! (bukan hanya sekadar mengikuti tutorial).

    - Membuat `django-app` bernama `authentication` pada project Django yang telah dibuat sebelumnya.
    - Menambahkan `authentication` ke `INSTALLED_APPS` pada main project `settings.py` aplikasi Django.
    - Menyalakan virtual environment Python.
    - Menjalankan perintah `pip install django-cors-headers` untuk menginstal library yang dibutuhkan.
    - Menambahkan `django-cors-headers` ke `requirements.txt`.
    - Menambahkan `corsheaders` ke `INSTALLED_APPS` pada main project `settings.py` aplikasi Django.
    - Menambahkan `corsheaders.middleware.CorsMiddleware` ke `MIDDLEWARE` pada main project `settings.py` aplikasi Django kamu.
    - Menambahkan beberapa variabel pada main project `settings.py` aplikasi Django.

    ```python
    CORS_ALLOW_ALL_ORIGINS = True
    CORS_ALLOW_CREDENTIALS = True
    CSRF_COOKIE_SECURE = True
    SESSION_COOKIE_SECURE = True
    CSRF_COOKIE_SAMESITE = 'None'
    SESSION_COOKIE_SAMESITE = 'None'
    ```

    - Menambahkan `10.0.2.2` pada `ALLOWED_HOSTS` di berkas `settings.py`.
    - Membuat method `login` pada `authentication/views.py`.
    - Membuat file `urls.py` pada folder `authentication` dan tambahkan URL routing terhadap fungsi yang sudah dibuat dengan endpoint `login/`.
    - Menambahkan `path('auth/', include('authentication.urls')),` pada file `lazacil/urls.py`.
    - Menginstal package yang telah disediakan oleh tim asisten dosen untuk melakukan kontak dengan web service Django (termasuk operasi `GET` dan `POST`).
    - Memodifikasi root widget (`main.dart`) untuk menyediakan `CookieRequest` library ke semua child widgets dengan menggunakan `Provider`.
    - Membuat berkas baru pada folder `screens` dengan nama `login.dart`.
    - Mengisi berkas `login.dart`.
    - Mengubah `home: MyHomePage()` menjadi `home: const LoginPage()` pada file `main.dart`, pada Widget `MaterialApp(...)`.
    - Membuat method `register` pada `authentication/views.py`.
    - Menambahkan `path('register/', register, name='register'),` pada file `authentication/urls.py`.
    - Membuat berkas baru pada folder `screens` dengan nama `register.dart`.
    - Mengisi berkas `register.dart`.
    - Membuka endpoint `JSON` dan menyalin datanya ke situs Quicktype lalu `Copy Code`.
    - Membuat file baru `product.dart` pada folder `lib/models/` lalu tempel kode yang sudah disalin dari Quicktype.
    - Melakukan `flutter pub add http` pada terminal proyek Flutter untuk menambahkan package `http`.
    - Pada file `android/app/src/main/AndroidManifest.xml`, tambahkan kode berikut untuk memperbolehkan akses Internet pada aplikasi Flutter yang sedang dibuat.
    - Membuat berkas baru pada direktori `lib/screens` dengan nama `list_product.dart`.
    - Mengisi `list_product.dart` dan jangan lupa untuk mengimpor file atau modul yang diperlukan.
    - Menambahkan halaman `list_product.dart` ke `widgets/left_drawer.dart`.
    - Mengubah fungsi tombol `Lihat Daftar Produk` pada halaman utama agar mengarahkan ke halaman `ProductPage`.
    - Membuat fungsi `create_product_flutter` pada `main/views.py`.
    - Menambahkan path baru `path('create-flutter/', create_product_flutter, name='create_product_flutter'),` pada `main/urls.py`.
    - Menghubungkan halaman `product_form.dart` dengan `CookieRequest`.
    - Mengubah perintah pada `onPressed: ()` button.
    - Membuat method `logout` pada `authentication/views.py`.
    - Menambahkan `path('logout/', logout, name='logout'),` pada file `authentication/urls.py`
    - Menambahkan potongan kode berikut pada `lib/widgets/product_card.dart`

    ```dart
    ...
    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Material(
            ...
    ```
    - Mengubah perintah `onTap: () {...}` pada widget `Inkwell` menjadi `onTap: () async {...}`
    - Menambahkn kode berikut ke dalam `async {...}` di bagian akhir.

    ```dart
    else if (item.name == "Logout") {
            final response = await request.logout(
                "http://127.0.0.1:8000/auth/logout/");
            String message = response["message"];
            if (context.mounted) {
              if (response['status']) {
                String uname = response["username"];
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("$message Sampai jumpa, $uname."),
                ));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                  ),
                );
              }
            }
          }
    ```
    - Membuat file `product_detail.dart` pada `lib/screens/` untuk menampilkan detail produk.
    - Modifikasi fungsi `itemBuilder` pada `ProductPage` untuk menangani klik dan navigasi ke halaman detail produk.