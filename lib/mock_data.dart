import 'package:job_listing_app_ui/model/job.dart';

final responsibilities = [
   'Bekerja secara efektif sebagai anggota tim gesit yang mengatur diri sendiri yang membangun, memiliki, dan menjalankan layanan',
   'Berkontribusi pada semua aspek pengembangan layanan termasuk front-end, back-end, devops dan kualitas',
   'Membantu dalam pengoperasian layanan, mis. pemantauan, peringatan, metrik, pencatatan dan pemecahan masalah ',
   'Bekerja sama dengan arsitek dan manajemen produk untuk memahami persyaratan dan menerjemahkannya menjadi implementasi yang elegan',
   'Gunakan perilaku sistem saat ini untuk mengidentifikasi peluang untuk peningkatan berkelanjutan atas skalabilitas, keandalan, kegunaan, dan keamanan sistem',
   'Keterampilan pemecahan masalah yang sangat baik, mampu men-debug masalah teknis yang kompleks yang melibatkan banyak komponen sistem',
];

final qualifications = [
   'BS atau MS dalam Ilmu Komputer atau bidang teknis terkait',
   'Lebih dari 8 tahun pengalaman membangun aplikasi web',
   'Pengalaman dengan ASP.NET MVC / Web API / RESTful API design',
   'Pengalaman tingkat ahli dengan bahasa pemrograman seperti C # / Java',
   'Pengalaman tingkat ahli dalam membangun layanan dengan kinerja tinggi, ketersediaan tinggi dalam skala web',
];

final popularJobs = [
  Job(
    id: 1,
    companyName: 'Airbnb, Inc.',
    imgUrl: 'assets/icons/airbnb_logo.svg',
    position: 'Software Engineer',
    location: 'Jakarta, Permanen, Remote',
    responsibilities: responsibilities,
    qualifications: qualifications,
  ),
  Job(
    id: 2,
    companyName: 'Airbnb, Inc.',
    imgUrl: 'assets/icons/airbnb_logo.svg',
    position: 'Desainer Produk',
    location: 'Bali, Permanen, Remote',
    responsibilities: responsibilities,
    qualifications: qualifications,
  ),
  Job(
    id: 3,
    companyName: 'Google LLC',
    imgUrl: 'assets/icons/google_logo.svg',
    position: 'Software Engineer',
    location: 'Jakarta, Permanen',
    responsibilities: responsibilities,
    qualifications: qualifications,
  ),
];

final recentJobs = [
  Job(
    id: 4,
    companyName: 'Google LLC',
    imgUrl: 'assets/icons/google_logo.svg',
    position: 'Senior Software Engineer',
    location: 'Jakarta, Permanen',
    responsibilities: responsibilities,
    qualifications: qualifications,
  ),
  Job(
    id: 5,
    companyName: 'Apple Inc.',
    imgUrl: 'assets/icons/apple_logo.svg',
    position: 'Apple Market Store',
    location: 'Bali, Kontrak',
    responsibilities: responsibilities,
    qualifications: qualifications,
  ),
  Job(
    id: 6,
    companyName: 'Google LLC',
    imgUrl: 'assets/icons/google_logo.svg',
    position: 'Satpam/Security',
    location: 'Jakarta, Permanen',
    responsibilities: responsibilities,
    qualifications: qualifications,
  ),
];
