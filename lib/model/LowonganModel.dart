// To parse this JSON data, do
//
//     final lowonganModel = lowonganModelFromJson(jsonString);

import 'dart:convert';

LowonganModel lowonganModelFromJson(String str) => LowonganModel.fromJson(json.decode(str));

String lowonganModelToJson(LowonganModel data) => json.encode(data.toJson());

class LowonganModel {
    LowonganModel({
        this.statusCode,
        this.data,
    });

    int statusCode;
    List<Datum> data;

    factory LowonganModel.fromJson(Map<String, dynamic> json) => LowonganModel(
        statusCode: json["status_code"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.id,
        this.namaPekerjaan,
        this.idPenyediaKerja,
        this.gaji,
        this.tanggalDibuka,
        this.tanggalDitutup,
        this.deskripsiPekerjaan,
        this.kualifikasi,
        this.gambaranPerusahaan,
        this.keahlianDibutuhkan,
        this.createdAt,
        this.updatedAt,
        this.namaPerusahaan,
        this.logoPerusahaan,
    });

    String id;
    String namaPekerjaan;
    String idPenyediaKerja;
    String gaji;
    DateTime tanggalDibuka;
    DateTime tanggalDitutup;
    String deskripsiPekerjaan;
    String kualifikasi;
    String gambaranPerusahaan;
    String keahlianDibutuhkan;
    DateTime createdAt;
    DateTime updatedAt;
    String namaPerusahaan;
    String logoPerusahaan;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        namaPekerjaan: json["nama_pekerjaan"],
        idPenyediaKerja: json["id_penyedia_kerja"],
        gaji: json["gaji"],
        tanggalDibuka: DateTime.parse(json["tanggal_dibuka"]),
        tanggalDitutup: DateTime.parse(json["tanggal_ditutup"]),
        deskripsiPekerjaan: json["deskripsi_pekerjaan"],
        kualifikasi: json["kualifikasi"],
        gambaranPerusahaan: json["gambaran_perusahaan"],
        keahlianDibutuhkan: json["keahlian_dibutuhkan"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        namaPerusahaan: json["nama_perusahaan"],
        logoPerusahaan: json["logo_perusahaan"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nama_pekerjaan": namaPekerjaan,
        "id_penyedia_kerja": idPenyediaKerja,
        "gaji": gaji,
        "tanggal_dibuka": "${tanggalDibuka.year.toString().padLeft(4, '0')}-${tanggalDibuka.month.toString().padLeft(2, '0')}-${tanggalDibuka.day.toString().padLeft(2, '0')}",
        "tanggal_ditutup": "${tanggalDitutup.year.toString().padLeft(4, '0')}-${tanggalDitutup.month.toString().padLeft(2, '0')}-${tanggalDitutup.day.toString().padLeft(2, '0')}",
        "deskripsi_pekerjaan": deskripsiPekerjaan,
        "kualifikasi": kualifikasi,
        "gambaran_perusahaan": gambaranPerusahaan,
        "keahlian_dibutuhkan": keahlianDibutuhkan,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "nama_perusahaan": namaPerusahaan,
        "logo_perusahaan": logoPerusahaan,
    };
}
