class PemeriksaanModel {
  Pemeriksaan? pemeriksaan;

  PemeriksaanModel({this.pemeriksaan});

  PemeriksaanModel.fromJson(Map<String, dynamic> json) {
    pemeriksaan = json['pemeriksaan'] != null
        ? new Pemeriksaan.fromJson(json['pemeriksaan'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pemeriksaan != null) {
      data['pemeriksaan'] = this.pemeriksaan!.toJson();
    }
    return data;
  }
}

class Pemeriksaan {
  Penambahan? penambahan;

  Pemeriksaan({this.penambahan});

  Pemeriksaan.fromJson(Map<String, dynamic> json) {
    penambahan = json['penambahan'] != null
        ? new Penambahan.fromJson(json['penambahan'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.penambahan != null) {
      data['penambahan'] = this.penambahan!.toJson();
    }
    return data;
  }
}

class Penambahan {
  int? jumlahOrangPcrTcm;
  int? jumlahOrangAntigen;

  Penambahan({this.jumlahOrangPcrTcm, this.jumlahOrangAntigen});

  Penambahan.fromJson(Map<String, dynamic> json) {
    jumlahOrangPcrTcm = json['jumlah_orang_pcr_tcm'];
    jumlahOrangAntigen = json['jumlah_orang_antigen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jumlah_orang_pcr_tcm'] = this.jumlahOrangPcrTcm;
    data['jumlah_orang_antigen'] = this.jumlahOrangAntigen;
    return data;
  }
}