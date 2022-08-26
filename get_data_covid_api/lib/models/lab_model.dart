class LabModel {
  String? namaLab;
  String? alamat;
  String? kontakPhone;
  String? provinsi;

  LabModel({this.namaLab, this.alamat, this.kontakPhone, this.provinsi});

  LabModel.fromJson(Map<String, dynamic> json) {
    namaLab = json['nama_lab'];
    alamat = json['alamat'];
    kontakPhone = json['kontak_phone'];
    provinsi = json['provinsi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama_lab'] = this.namaLab;
    data['alamat'] = this.alamat;
    data['kontak_phone'] = this.kontakPhone;
    data['provinsi'] = this.provinsi;
    return data;
  }
}