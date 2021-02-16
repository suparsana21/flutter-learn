// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imageNews.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageNews _$ImageNewsFromJson(Map<String, dynamic> json) {
  return ImageNews()
    ..src = json['src'] as String
    ..alt = json['alt'] as String
    ..title = json['title'] as String;
}

Map<String, dynamic> _$ImageNewsToJson(ImageNews instance) => <String, dynamic>{
      'src': instance.src,
      'alt': instance.alt,
      'title': instance.title,
    };
