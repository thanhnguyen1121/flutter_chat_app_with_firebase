// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) => MessageDto(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      message: json['message'] as String,
      time: json['time'] as String,
    );

Map<String, dynamic> _$MessageDtoToJson(MessageDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['userId'] = instance.userId;
  val['message'] = instance.message;
  val['time'] = instance.time;
  return val;
}
