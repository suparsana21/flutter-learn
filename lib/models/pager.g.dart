// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pager _$PagerFromJson(Map<String, dynamic> json) {
  return Pager()
    ..pages = json['pages'] as int
    ..page = json['page'] as int
    ..count = json['count'] as int
    ..limit = json['limit'] as int;
}

Map<String, dynamic> _$PagerToJson(Pager instance) => <String, dynamic>{
      'pages': instance.pages,
      'page': instance.page,
      'count': instance.count,
      'limit': instance.limit,
    };
