import 'package:json_annotation/json_annotation.dart';
import 'nodeDetail.dart';

part 'nodeDetailResponse.g.dart';

@JsonSerializable()
class NodeDetailResponse {
      NodeDetailResponse();

  NodeDetail node;

  factory NodeDetailResponse.fromJson(Map<String,dynamic> json) => _$NodeDetailResponseFromJson(json);
  Map<String, dynamic> toJson() => _$NodeDetailResponseToJson(this);
}
