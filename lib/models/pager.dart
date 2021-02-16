import 'package:json_annotation/json_annotation.dart';


part 'pager.g.dart';

@JsonSerializable()
class Pager {
      Pager();

  int pages;
  int page;
  int count;
  int limit;

  factory Pager.fromJson(Map<String,dynamic> json) => _$PagerFromJson(json);
  Map<String, dynamic> toJson() => _$PagerToJson(this);
}
