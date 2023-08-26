// To parse this JSON data, do
//
//     final stadiumModel = stadiumModelFromJson(jsonString);

import 'dart:convert';

StadiumModel stadiumModelFromJson(String str) =>
    StadiumModel.fromJson(json.decode(str));

String stadiumModelToJson(StadiumModel data) => json.encode(data.toJson());

class StadiumModel {
  List<StadiumData>? data;

  StadiumModel({
    required this.data,
  });

  factory StadiumModel.fromJson(Map<String, dynamic> json) => StadiumModel(
        data: List<StadiumData>.from(
          json['data'].map((x) => StadiumData.fromJson(x)),
        ),
      );

  Map<String, dynamic> toJson() => {
        'data': List<dynamic>.from(data?.map((x) => x.toJson()) ?? []),
      };
}

class StadiumData {
  final int id;
  final int userId;
  final int statusId;
  final Region region;
  final Waliya waliya;
  final int staduimType;
  final String name;
  final String description;
  final double price;
  final int hiden;
  final dynamic discountPrice;
  final String? size;
  final dynamic balls;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<TimeStadiumModel> times;
  final List<ImageData>? images;
  final LocationModel location;

  const StadiumData({
    required this.statusId,
    required this.id,
    required this.userId,
    required this.region,
    required this.waliya,
    required this.staduimType,
    required this.name,
    required this.description,
    required this.price,
    required this.hiden,
    required this.discountPrice,
    this.size,
    required this.balls,
    required this.createdAt,
    required this.updatedAt,
    required this.times,
    this.images,
    required this.location,
  });
  factory StadiumData.fromJson(Map<String, dynamic> json) => StadiumData(
        id: json['id'],
        userId: json['user_id'],
        region: Region.fromJson(json['region']),
        waliya: Waliya.fromJson(json['waliya']),
        staduimType: json['staduim_type'],
        name: json['name'],
        description: json['description'],
        price: double.parse(json['price'] ?? 0.0.toString()),
        hiden: json['hiden'],
        discountPrice: json['discount_price'],
        size: json['size'],
        balls: json['balls'],
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
        times: List<TimeStadiumModel>.from(
          json['times'].map((x) => TimeStadiumModel.fromJson(x)),
        ),
        images: List<ImageData>.from(
          json['images'].map((x) => ImageData.fromJson(x)),
        ),
        location: LocationModel.fromJson(json['location']),
        statusId: json['status_id'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'status_id': statusId,
        'region': region.toJson(),
        'waliya': waliya.toJson(),
        'staduim_type': staduimType,
        'name': name,
        'description': description,
        'price': price,
        'hiden': hiden,
        'discount_price': discountPrice,
        'size': size,
        'balls': balls,
        'created_at': createdAt.toIso8601String(),
        'updated_at': updatedAt.toIso8601String(),
        'times': List<dynamic>.from(times.map((x) => x.toJson())),
        'images': List<dynamic>.from(images?.map((x) => x.toJson()) ?? []),
        'location': location.toJson(),
      };
}

class ImageData {
  int id;
  int stadiumId;
  String path;

  ImageData({
    required this.id,
    required this.stadiumId,
    required this.path,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) => ImageData(
        id: json['id'],
        stadiumId: json['stadium_id'],
        path: json['path'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'stadium_id': stadiumId,
        'path': path,
      };
}

class LocationModel {
  String lat;
  String long;

  LocationModel({
    required this.lat,
    required this.long,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        lat: json['lat'],
        long: json['long'],
      );

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
      };
}

class Region {
  int id;
  int waliyaId;
  String nameAr;
  String nameEn;

  Region({
    required this.id,
    required this.waliyaId,
    required this.nameAr,
    required this.nameEn,
  });

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        id: json['id'],
        waliyaId: json['waliya_id'],
        nameAr: json['name_ar'],
        nameEn: json['name_en'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'waliya_id': waliyaId,
        'name_ar': nameAr,
        'name_en': nameEn,
      };
}

class TimeStadiumModel {
  String open;
  String close;

  TimeStadiumModel({
    required this.open,
    required this.close,
  });

  factory TimeStadiumModel.fromJson(Map<String, dynamic> json) =>
      TimeStadiumModel(
        open: json['open'],
        close: json['close'],
      );

  Map<String, dynamic> toJson() => {
        'open': open,
        'close': close,
      };
}

class Waliya {
  int id;
  String nameAr;
  String nameEn;

  Waliya({
    required this.id,
    required this.nameAr,
    required this.nameEn,
  });

  factory Waliya.fromJson(Map<String, dynamic> json) => Waliya(
        id: json['id'],
        nameAr: json['name_ar'],
        nameEn: json['name_en'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name_ar': nameAr,
        'name_en': nameEn,
      };
}

class PostTimeStadium {
  String openTime, closeTime;

  PostTimeStadium({required this.openTime, required this.closeTime});
}
