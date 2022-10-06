// To parse this JSON data, do
//
//     final sourceResponse = sourceResponseFromJson(jsonString);

import 'dart:convert';

import 'package:news_app/users/source.dart';

SourceResponse sourceResponseFromJson(String str) =>
    SourceResponse.fromJson(json.decode(str));

String sourceResponseToJson(SourceResponse data) => json.encode(data.toJson());

class SourceResponse {
  SourceResponse({
    this.status,
    this.sources,
  });

  String? status;
  List<Source>? sources;

  factory SourceResponse.fromJson(Map<String, dynamic> json) => SourceResponse(
        status: json["status"] == null ? null : json["status"],
        sources: json["sources"] == null
            ? null
            : List<Source>.from(json["sources"].map((x) => Source.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "sources": sources == null
            ? null
            : List<dynamic>.from(sources!.map((x) => x.toJson())),
      };
}
