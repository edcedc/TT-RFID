// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DataBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataBean _$DataBeanFromJson(Map<String, dynamic> json) => DataBean()
  ..offset = json['offse'] as int?
  ..size = json['size'] as int?
  ..title = json['title'] as String?
  ..content = json['content'] as String?;

Map<String, dynamic> _$DataBeanToJson(DataBean instance) => <String, dynamic>{
      'offse': instance.offset,
      'size': instance.size,
      'title': instance.title,
      'content': instance.content,
    };
