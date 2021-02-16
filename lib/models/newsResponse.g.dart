// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newsResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) {
  return NewsResponse()
    ..news = (json['news'] as List)
        ?.map(
            (e) => e == null ? null : Node.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..pager = json['pager'] == null
        ? null
        : Pager.fromJson(json['pager'] as Map<String, dynamic>);
}

Map<String, dynamic> _$NewsResponseToJson(NewsResponse instance) =>
    <String, dynamic>{
      'news': instance.news,
      'pager': instance.pager,
    };
