# lazacil_mobile

A new Flutter project.

- Nama : Ischika Afrilla
- NPM : 2306227955
- PBP F

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Daftar Isi
- [Tugas 7](#tugas-7)

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

    - Buat proyek Flutter baru bernama `lazacil_mobile` dengan menjalankan *prompt* `flutter create lazacil_mobile` lalu masuk ke dalam direktori *root folder* proyek `lazacil_mobile`.
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