// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingModel _$BookingModelFromJson(
  Map<String, dynamic> json,
) => _BookingModel(
  id: json['id'] as String,
  startTime: DateTime.parse(json['startTime'] as String),
  endTime: DateTime.parse(json['endTime'] as String),
  user: const UserConverter().fromJson(json['user'] as Map<String, dynamic>),
  rack: const RackConverter().fromJson(json['rack'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BookingModelToJson(_BookingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'user': const UserConverter().toJson(instance.user),
      'rack': const RackConverter().toJson(instance.rack),
    };
