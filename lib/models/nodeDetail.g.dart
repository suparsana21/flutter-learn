// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodeDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NodeDetail _$NodeDetailFromJson(Map<String, dynamic> json) {
  return NodeDetail()
    ..title = json['title'] as String
    ..body = json['Body'] as String
    ..imageNews = json['Image_news'] == null
        ? null
        : ImageNews.fromJson(json['Image_news'] as Map<String, dynamic>)
    ..image = json['Image'] as String
    ..type = json['Type'] as String;
}

Map<String, dynamic> _$NodeDetailToJson(NodeDetail instance) =>
    <String, dynamic>{
      'title': instance.title,
      'Body': instance.body,
      'Image_news': instance.imageNews,
      'Image': instance.image,
      'Type': instance.type,
    };
