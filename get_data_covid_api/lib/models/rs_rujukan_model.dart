class RsRujukanModel {
  String? nama;
  int? tempatTidur;
  String? telepon;
  String? alamat;
  String? wilayah;

  RsRujukanModel(
      {this.nama, this.tempatTidur, this.telepon, this.alamat, this.wilayah});

  RsRujukanModel.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    tempatTidur = json['tempat_tidur'];
    telepon = json['telepon'];
    alamat = json['alamat'];
    wilayah = json['wilayah'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama'] = this.nama;
    data['tempat_tidur'] = this.tempatTidur;
    data['telepon'] = this.telepon;
    data['alamat'] = this.alamat;
    data['wilayah'] = this.wilayah;
    return data;
  }
}