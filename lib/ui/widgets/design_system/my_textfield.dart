import 'package:flutter/material.dart';
import 'package:flutter_application/utils/context_extension.dart';

class MyTextField extends FormField<String> {
  MyTextField(
      {Key? key,
      TextEditingController? controller,
      TextInputType? keyBroadType,
      String? initialValue,
      String? hintText,
      FormFieldSetter<String>? onSaved,
      FormFieldValidator<String>? validator,
      bool autoValidate = false,
      bool enabled = false,
      bool selected = false,
      FocusNode? focusNode,
      OutlineInputBorder? enableBorder,
      TextStyle? textStyle,
      String? labelText,
      Widget? suffix,
      Widget? icon,
      Widget? prefix,
      TextStyle? lableStyle,
      int maxLines = 3,
      int minLines = 1,
      FloatingLabelBehavior floatingLabelBehavior: FloatingLabelBehavior.always,
      AutovalidateMode? autovalidateMode,
      Color? lablelColor,
      TextInputAction? textInputAction,
      ValueChanged<String>? callbackInfo,
      ValueChanged<String>? onCompleteCallBack,
      TextStyle? hintStyle})
      : super(
          key: key,
          validator: validator,
          onSaved: onSaved,
          initialValue: initialValue,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          builder: (FormFieldState state) {
            return TextField(
              controller: controller,
              decoration: InputDecoration(
                hintStyle: state.context.textTheme.bodyText1?.copyWith(
                  color: const Color(0xff000000).withOpacity(0.2),
                ),
                fillColor: const Color(0xffECE8E8),
                filled: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
              ),
            );
          },
        );
}
