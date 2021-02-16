// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodeDetailResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NodeDetailResponse _$NodeDetailResponseFromJson(Map<String, dynamic> json) {
  return NodeDetailResponse()
    ..node = json['node'] == null
        ? null
        : NodeDetail.fromJson(json['node'] as Map<String, dynamic>);
}

Map<String, dynamic> _$NodeDetailResponseToJson(NodeDetailResponse instance) =>
    <String, dynamic>{
      'node': instance.node,
    };
