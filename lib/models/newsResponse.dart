import 'package:json_annotation/json_annotation.dart';
import 'node.dart';
import 'pager.dart';

part 'newsResponse.g.dart';

@JsonSerializable()
class NewsResponse {
      NewsResponse();

  List<Node> news;
  Pager pager;

  factory NewsResponse.fromJson(Map<String,dynamic> json) => _$NewsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$NewsResponseToJson(this);
}
