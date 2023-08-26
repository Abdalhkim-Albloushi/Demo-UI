// To parse this JSON data, do
//
//     final typeStadiumModel = typeStadiumModelFromJson(jsonString);

import 'dart:convert';

TypeStadiumModel typeStadiumModelFromJson(String str) => TypeStadiumModel.fromJson(json.decode(str));

String typeStadiumModelToJson(TypeStadiumModel data) => json.encode(data.toJson());

class TypeStadiumModel {
    List<StadiumType> data;

    TypeStadiumModel({
        required this.data,
    });

    factory TypeStadiumModel.fromJson(Map<String, dynamic> json) => TypeStadiumModel(
        data: List<StadiumType>.from(json['data'].map((x) => StadiumType.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        'data': List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class StadiumType {
    int? id;
    String? nameAr;
    String? nameEn;
    String? note;

    StadiumType({
         this.id,
         this.nameAr,
         this.nameEn,
         this.note,
    });

    factory StadiumType.fromJson(Map<String, dynamic> json) => StadiumType(
        id: json['id'],
        nameAr: json['name_ar'],
        nameEn: json['name_en'],
        note: json['note'],
    );

    Map<String, dynamic> toJson() => {
        'id': id,
        'name_ar': nameAr,
        'name_en': nameEn,
        'note': note,
    };
}
