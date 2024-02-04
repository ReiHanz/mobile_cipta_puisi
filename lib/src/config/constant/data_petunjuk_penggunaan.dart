import 'constant_app.dart';

class DataPetunjukPenggunaan {
  final String title;
  final String description;
  final Pengguna penggunaUmum;
  final Pengguna penggunaGuruPenilaiKurator;
  final String closing;

  DataPetunjukPenggunaan({
    required this.title,
    required this.description,
    required this.penggunaUmum,
    required this.penggunaGuruPenilaiKurator,
    required this.closing,
  });

  factory DataPetunjukPenggunaan.fromJson(Map json) {
    return DataPetunjukPenggunaan(
      title: json['title'],
      description: json['description'],
      penggunaUmum: Pengguna.fromJson(json['pengguna_umum']),
      penggunaGuruPenilaiKurator: Pengguna.fromJson(json['pengguna_guru_penilai_kurator']),
      closing: json['closing'],
    );
  }

  static DataPetunjukPenggunaan data =
      DataPetunjukPenggunaan.fromJson(dataPetunjukPenggunaan);
}

class Pengguna {
  final String title;
  final List<String> content;

  Pengguna({
    required this.title,
    required this.content,
  });

  factory Pengguna.fromJson(Map json) {
    return Pengguna(
      title: json['title'],
      content: List<String>.from(json['content']),
    );
  }
}


final Map dataPetunjukPenggunaan = {
  "title": "Petunjuk Penggunaan ${ConstantApp.name}",
  "description": "Manual Book Aplikasi ${ConstantApp.name} menyediakan petunjuk penggunaan yang terperinci, terbagi menjadi dua bagian utama: Untuk Pengguna Umum dan Pengguna sebagai Guru/Penilai/Kurator.",
  "pengguna_umum": {
    "title": "Pengguna Umum",
    "content": [
      "Tampilan Awal: Menampilkan logo aplikasi dan pengantar",
      "Halaman Login: Pengguna harus login menggunakan aku yang telah terdaftar",
      "Halaman Daftar akun: Untuk pengguna baru, perlu mendaftar dengan mengisi identitas dan password",
      "Halaman Utama: Termasuk identitas pengguna, ucapan selamat datang, daftar puisi populer, dan fitur aplikasi Profil kita: Melihat dan mengedit informasi akun.",
      "Relaksasi: Fitur untuk membuat puisi sambil mendengarkan musik.",
      "Cipta Puisi: Langsung membuat puisi.",
      "Buah Pena: Menyimpan puisi yang dibuat.",
      "Seranta: Membagikan atau melihat puisi.",
      "Jelajah: Menjelajahi puisi ternama dan karya pengguna lain.",
      "Halaman profil: Mengedit informasi akun, melihat dan mereview puisi, serta informasi seputar aplikasi.",
      "Halaman Musik Pengantar: Memilih musik pengatar saat menulis puisi.",
      "Halaman Cipta Puisi:  Mengisi judul, isi puisi, melihat daftar persamaan kata, dan menyimpan draft atau berbagi puisi.",
      "Halaman Buah Pena: Mengisi judul, isi puisi yang dibuat, termasuk yang telah dibagikan.",
      "Halaman Jelajah: Mencari puisi karya orang lain, membaca puisi terkenal, atau puisi karya pengguna lain.",
    ],
  },
  "pengguna_guru_penilai_kurator": {
    "title": "Pengguna sebagai Guru/Penilai/Kurator",
    "content": [
      "Pendaftaran Khusus: Pendaftaran dilakukan melalui Admin Mobile Cipta Puisi.",
      "Halaman Utama: Fitur yang tersedia untuk penilai meliputi Profil Kita, Relaksasi, dan Jelajah.",
      "Halaman Musik Pengantar: Memilih musik pengatar saat menulis puisi.",
      "Halaman Jelajah: Mencari puisi karya lain sebagai referensi, membaca puisi, atau menilai puisi karya pengguna.",
      "Halaman Profil kita: Mengedit Informasi akun, meninjau puisi, dan mengakses informasi tentang aplikasi, termasuk daftar penilai score dan ekspor data ke file excel.",
    ]
  },
  "closing": """
  Manual Book ini memberikan panduan komprehensif tentang
  cara menggunakan setiap fitur aplikasi <Nama Aplikasi>, baik untuk pengguna
  umum maupun pengguna khusu seperti guru atau penilai.
  """
};
