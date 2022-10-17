import 'package:flutter_application/data/dto/message_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_state.freezed.dart';

@freezed
abstract class ConversationState with _$ConversationState {
  const factory ConversationState(List<MessageDto> messages) =
      ConversationStateData;

  const factory ConversationState.loading() = ConversationStateLoading;

  const factory ConversationState.error(dynamic error) = ConversationStateError;
}
