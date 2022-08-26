class KasusHarianModel {
  Update? update;

  KasusHarianModel({this.update});

  KasusHarianModel.fromJson(Map<String, dynamic> json) {
    update =
        json['update'] != null ? new Update.fromJson(json['update']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.update != null) {
      data['update'] = this.update!.toJson();
    }
    return data;
  }
}

class Update {
  Penambahan? penambahan;

  Update({this.penambahan});

  Update.fromJson(Map<String, dynamic> json) {
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
  int? jumlahPositif;
  int? jumlahMeninggal;
  int? jumlahSembuh;
  int? jumlahDirawat;
  String? tanggal;
  String? created;

  Penambahan(
      {this.jumlahPositif,
      this.jumlahMeninggal,
      this.jumlahSembuh,
      this.jumlahDirawat,
      this.tanggal,
      this.created});

  Penambahan.fromJson(Map<String, dynamic> json) {
    jumlahPositif = json['jumlah_positif'];
    jumlahMeninggal = json['jumlah_meninggal'];
    jumlahSembuh = json['jumlah_sembuh'];
    jumlahDirawat = json['jumlah_dirawat'];
    tanggal = json['tanggal'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jumlah_positif'] = this.jumlahPositif;
    data['jumlah_meninggal'] = this.jumlahMeninggal;
    data['jumlah_sembuh'] = this.jumlahSembuh;
    data['jumlah_dirawat'] = this.jumlahDirawat;
    data['tanggal'] = this.tanggal;
    data['created'] = this.created;
    return data;
  }
}