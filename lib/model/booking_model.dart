// To parse this JSON data, do
//
//     final bookingModel = bookingModelFromJson(jsonString);

import 'dart:convert';

BookingModel bookingModelFromJson(String str) =>
    BookingModel.fromJson(json.decode(str));

String bookingModelToJson(BookingModel data) => json.encode(data.toJson());

class BookingModel {
  List<BookinList> data;

  BookingModel({
    required this.data,
  });

  factory BookingModel.fromJson(Map<String, dynamic> json) => BookingModel(
        data: List<BookinList>.from(
            json['data'].map((x) => BookinList.fromJson(x)) ?? [],),
      );

  Map<String, dynamic> toJson() => {
        'data': List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class BookinList {
  int id;
  int bookingRequestId;
  int bookingStatusId;
  String? appFee;
  String? thawanyFee;
  String createdAt;

  String updatedAt;
  BookingRequest bookingRequest;

  BookinList({
    required this.id,
    required this.bookingRequestId,
    required this.bookingStatusId,
    required this.appFee,
    required this.thawanyFee,
    required this.createdAt,
    required this.updatedAt,
    required this.bookingRequest,
  });

  factory BookinList.fromJson(Map<String, dynamic> json) => BookinList(
        id: json['id'],
        bookingRequestId: json['booking_request_id'],
        bookingStatusId: json['booking_status_id'],
        appFee: json['app_fee'],
        thawanyFee: json['thawany_fee'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        bookingRequest: BookingRequest.fromJson(json['booking_request']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'booking_request_id': bookingRequestId,
        'booking_status_id': bookingStatusId,
        'app_fee': appFee,
        'thawany_fee': thawanyFee,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'booking_request': bookingRequest.toJson(),
      };
}

class BookingRequest {
  int id;
  DateTime start;
  DateTime end;
  String? note;
  String amount;

  DateTime createdAt;
  DateTime updatedAt;
  Stadium stadium;
  Customer customer;

  BookingRequest({
    required this.id,
    required this.start,
    required this.end,
    required this.note,
    required this.amount,
    required this.createdAt,
    required this.updatedAt,
    required this.stadium,
    required this.customer,
  });

  factory BookingRequest.fromJson(Map<String, dynamic> json) => BookingRequest(
        id: json['id'],
        start: DateTime.parse(json['start']),
        end: DateTime.parse(json['end']),
        note: json['note'],
        amount: json['amount'],
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
        stadium: Stadium.fromJson(json['stadium']),
        customer: Customer.fromJson(json['customer']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'start': start.toIso8601String(),
        'end': end.toIso8601String(),
        'note': note,
        'amount': amount,
        'created_at': createdAt.toIso8601String(),
        'updated_at': updatedAt.toIso8601String(),
        'stadium': stadium.toJson(),
        'customer': customer.toJson(),
      };
}

class Customer {
  int id;
  String? name;
  String phone;

  Customer({
    required this.id,
    this.name,
    required this.phone,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        id: json['id'],
        name: json['name'],
        phone: json['phone'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'phone': phone,
      };
}

class Stadium {
  int id;
  String name;

  Stadium({
    required this.id,
    required this.name,
  });

  factory Stadium.fromJson(Map<String, dynamic> json) => Stadium(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
