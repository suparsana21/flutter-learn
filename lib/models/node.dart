import 'package:json_annotation/json_annotation.dart';
import 'nodeNews.dart';

part 'node.g.dart';

@JsonSerializable()
class Node {
      Node();

  NodeNews node;

  factory Node.fromJson(Map<String,dynamic> json) => _$NodeFromJson(json);
  Map<String, dynamic> toJson() => _$NodeToJson(this);
}
