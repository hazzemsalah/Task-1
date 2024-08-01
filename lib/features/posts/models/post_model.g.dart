// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      body: json['body'] as String,
      hidden: json['hidden'] as bool? ?? false,
      isUpdating: json['isUpdating'] as bool? ?? false,
      isSwitched: json['isSwitched'] as bool? ?? false,
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'hidden': instance.hidden,
      'isUpdating': instance.isUpdating,
      'isSwitched': instance.isSwitched,
    };
