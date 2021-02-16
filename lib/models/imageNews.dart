import 'package:json_annotation/json_annotation.dart';


part 'imageNews.g.dart';

@JsonSerializable()
class ImageNews {
      ImageNews();

  String src;
  String alt;
  String title;

  factory ImageNews.fromJson(Map<String,dynamic> json) => _$ImageNewsFromJson(json);
  Map<String, dynamic> toJson() => _$ImageNewsToJson(this);
}
