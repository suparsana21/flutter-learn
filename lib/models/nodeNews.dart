import 'package:json_annotation/json_annotation.dart';
import 'fieldImageNews.dart';

part 'nodeNews.g.dart';

@JsonSerializable()
class NodeNews {
      NodeNews();

  @JsonKey(name: 'Nid') String nid;
  @JsonKey(name: 'field_image_news') FieldImageNews fieldImageNews;
  String title;
  String created;
  String path;

  factory NodeNews.fromJson(Map<String,dynamic> json) => _$NodeNewsFromJson(json);
  Map<String, dynamic> toJson() => _$NodeNewsToJson(this);
}
