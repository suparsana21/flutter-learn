// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodeNews.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NodeNews _$NodeNewsFromJson(Map<String, dynamic> json) {
  return NodeNews()
    ..nid = json['Nid'] as String
    ..fieldImageNews = json['field_image_news'] == null
        ? null
        : FieldImageNews.fromJson(
            json['field_image_news'] as Map<String, dynamic>)
    ..title = json['title'] as String
    ..created = json['created'] as String
    ..path = json['path'] as String;
}

Map<String, dynamic> _$NodeNewsToJson(NodeNews instance) => <String, dynamic>{
      'Nid': instance.nid,
      'field_image_news': instance.fieldImageNews,
      'title': instance.title,
      'created': instance.created,
      'path': instance.path,
    };
