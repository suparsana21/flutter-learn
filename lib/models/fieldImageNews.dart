import 'package:json_annotation/json_annotation.dart';


part 'fieldImageNews.g.dart';

@JsonSerializable()
class FieldImageNews {
      FieldImageNews();

  String src;
  String alt;
  String title;

  factory FieldImageNews.fromJson(Map<String,dynamic> json) => _$FieldImageNewsFromJson(json);
  Map<String, dynamic> toJson() => _$FieldImageNewsToJson(this);
}
