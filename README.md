# lazacil_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Nama : Ischika Afrilla
### NPM : 2306227955
### PBP F

# Daftar Isi
- [Tugas 7](#tugas-7)

## Tugas 7
1. Jelaskan apa yang dimaksud dengan *stateless widget* dan *stateful widget*, dan jelaskan perbedaan dari keduanya.

    - Stateless Widget adalah jenis widget yang tidak memiliki state (keadaan) yang dapat berubah setelah widget itu dibuat. Dengan kata lain, semua data atau informasi yang ditampilkan oleh widget ini bersifat tetap atau konstan selama widget tersebut aktif dalam aplikasi.
    - Stateful Widget adalah jenis widget yang memiliki state yang dapat berubah selama widget tersebut aktif dalam aplikasi. State ini memungkinkan widget untuk merespons perubahan data atau interaksi pengguna, sehingga tampilan atau perilaku widget dapat berubah sesuai dengan keadaan atau input yang diterima.

    | Perbedaan | Stateless Widget | Stateful Widget |
    | ---- | ----- | ----- |
    | Mutabilitas | Tidak dapat berubah setelah dibangun	| Dapat berubah seiring waktu | 
    | State | Tidak memiliki state | Memiliki state yang dapat diubah |
    | Penggunaan | Untuk tampilan statis atau konstan | Untuk tampilan dinamis atau interaktif |
    | *Method* `build()` | Dipanggil satu kali saat widget dibangun | Dipanggil setiap kali `setState()` dipanggil |
    | Contoh Kegunaan | Teks, gambar, ikon | Tombol, form, slider, animasi | 

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

    Fungsi `setState()` dalam Flutter digunakan untuk memberi tahu framework bahwa ada perubahan pada state dari sebuah Stateful Widget yang perlu diperbarui. Dengan memanggil setState(), kita memicu Flutter untuk membangun ulang (rebuild) widget tersebut, sehingga tampilan akan diperbarui sesuai dengan state yang baru.

    Fungsi `setState()` biasanya berdampak pada variabel-variabel atau properti yang ada di dalam kelas state dari `Stateful Widget`, yakni:
    
      - Variabel State: Variabel yang menentukan keadaan dari widget, misalnya jumlah `counter`, teks, warna, atau kondisi tertentu (seperti `isLoggedIn`, `isLoading`, dsb).
      - List dan Map: Jika widget menampilkan daftar atau objek peta, maka perubahan pada elemen-elemen dalam daftar atau peta tersebut juga memerlukan `setState()` untuk diperbarui di layar.
      - Data dari Input Pengguna: Variabel yang menyimpan input pengguna, seperti teks dari `TextField`, status `Checkbox`, atau posisi slider.

4. Jelaskan perbedaan antara `const` dengan `final`.

    `const` dan `final` digunakan untuk mendeklarasikan variabel yang nilainya tidak dapat diubah setelah dideklarasikan.

    | Perbedaan | `const` | `final` |
    | ---- | ----- | ----- |
    | Waktu Inisialisasi | Waktu kompilasi	| Waktu kompilasi atau runtime | 
    | Immutabilitas Objek | Sepenuhnya immutable dan disimpan di memori tunggal | Immutable, tetapi bisa mereferensikan objek mutable |
    | Penggunaan Objek Konstan | Dapat digunakan untuk membuat objek konstan | Tidak dapat digunakan untuk membuat objek konstan |
    | Perubahan Nilai | Tidak bisa berubah | Tidak bisa berubah setelah diinisialisasi |

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.