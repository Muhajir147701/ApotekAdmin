part of 'models.dart';

Obat obatFromJson(String str) => Obat.fromJson(json.decode(str));

String obatToJson(Obat data) => json.encode(data.toJson());

class Obat {
  Obat({
    this.id,
    this.obatName,
    this.obatPicture,
    this.harga,
    this.deskripsi,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? obatName;
  String? obatPicture;
  int? harga;
  String? deskripsi;
  dynamic deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Obat.fromJson(Map<String, dynamic> json) => Obat(
        id: json["id"],
        obatName: json["obat_name"],
        obatPicture: json["obat_picture"],
        harga: int.parse(json["harga"]),
        deskripsi: json["deskripsi"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "obat_name": obatName,
        "obat_picture": obatPicture,
        "harga": harga?.toString(),
        "deskripsi": deskripsi,
        "deleted_at": deletedAt,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
