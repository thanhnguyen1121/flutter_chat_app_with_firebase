import 'package:flutter_application/data/enum/message_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_dto.g.dart';

@JsonSerializable(
  includeIfNull: false
)
class MessageDto {
  String? id;
  String userId;
  String message;
  String time;

  MessageDto({
    this.id,
    required this.userId,
    required this.message,
    required this.time,
  });

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MessageDtoToJson(this);
}
