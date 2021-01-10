# framework-mobile
![job lising app](assets/images/thumbnail.png?raw=true)

# karir_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Sekilas Tentang Flutter


1) Perkenalan
Apa itu Flutter?
Flutter adalah mobile SDK Google yang digunakan untuk membuat aplikasi iOS dan Android berkualitas tinggi dalam waktu singkat. Flutter bersifat open source dan digunakan oleh developer dan organisasi di seluruh dunia.

Dalam codelab ini, Anda akan diajarkan untuk membuat aplikasi Flutter sederhana. Jika Anda terbiasa dengan pemrograman berorientasi objek dan konsep dasar pemrograman seperti variabel, loop, dan conditional, Anda bisa menyelesaikan codelab ini. Anda tidak perlu pengalaman sebelumnya dengan Dart atau pemrograman mobile.

2) Menyiapkan Flutter Environment
Anda memerlukan dua bagian software untuk menyelesaikan codelab ini: Flutter SDK, dan editor. Codelab ini menyarankan penggunaan Android Studio, tetapi Anda dapat menggunakan editor pilihan Anda sendiri.

Anda dapat menjalankan codelab ini menggunakan salah satu perangkat berikut:

Perangkat fisik (Android atau iOS) yang terhubung ke komputer Anda dan diatur ke developer mode.
Simulator iOS. (Memerlukan pemasangan XCode tools.)
Emulator Android. (Memerlukan pengaturan di Android Studio.)

3) Membuat Aplikasi Flutter
Buatlah Flutter app yang sederhana, menggunakan instruksi dalam Getting Started with your first Flutter app. Berikan nama project startup_namer (jangan myapp). Anda akan memodifikasi aplikasi starter ini untuk membuat aplikasi yang sempurna.

4) Menggunakan Package External
Pada langkah ini, Anda akan mulai menggunakan package open-source bernama english_words, yang berisi beribu kata-kata bahasa Inggris yang paling sering digunakan ditambah beberapa fungsi utilitas.

Anda dapat menemukan paket english_words, serta banyak package open source lainnya

5) Tambahkan Stateful Widget
Stateless widgets tidak dapat diubah, artinya properti mereka tidak dapat berubah, semua nilai bersifat final.

Stateful widget memeriksa state yang mungkin berubah selama masa aktif widget. Menerapkan stateful widget membutuhkan setidaknya dua class: 1) class StatefulWidget yang menciptakan sebuah instance dari 2) class State. Class StatefulWidget tidak bisa diubah, tetapi class state tetap ada selama masa aktif widget.

6) Membuat Infinite Scrolling ListView
Pada langkah ini, Anda akan meng-expand RandomWordsState untuk membuat dan menampilkan daftar word pairings. Saat user men-scroll, listnya (ditampilkan dalam widget ListView) akan muncul terus menerus. ListView builder factory constructor memungkinkan Anda membuat tampilan list view lazily, sesuai permintaan.
