// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Models _$ModelsFromJson(Map<String, dynamic> json) => Models()
  ..data = Model.fromJson(json['data'] as Map<String, dynamic>)
  ..status = json['status'] as num
  ..message = json['message'] as String;

Map<String, dynamic> _$ModelsToJson(Models instance) => <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };
