// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) => Model()
  ..name = json['name'] as String
  ..bannerapcid = json['bannerapcid'] as num
  ..banner = (json['banner'] as List<dynamic>)
      .map((e) => Banner_model.fromJson(e as Map<String, dynamic>))
      .toList()
  ..acid = json['acid'] as num;

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'name': instance.name,
      'bannerapcid': instance.bannerapcid,
      'banner': instance.banner,
      'acid': instance.acid,
    };
