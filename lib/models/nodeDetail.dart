import 'package:json_annotation/json_annotation.dart';
import 'imageNews.dart';

part 'nodeDetail.g.dart';

@JsonSerializable()
class NodeDetail {
      NodeDetail();

  String title;
  @JsonKey(name: 'Body') String body;
  @JsonKey(name: 'Image_news') ImageNews imageNews;
  @JsonKey(name: 'Image') String image;
  @JsonKey(name: 'Type') String type;

  factory NodeDetail.fromJson(Map<String,dynamic> json) => _$NodeDetailFromJson(json);
  Map<String, dynamic> toJson() => _$NodeDetailToJson(this);
}
