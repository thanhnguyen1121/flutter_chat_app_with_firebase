import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/user_dto.dart';
import 'package:flutter_application/utils/context_extension.dart';

class UserWidget extends StatelessWidget {
  final UserDto user;
  final VoidCallback? onTap;

  const UserWidget({
    Key? key,
    required this.user,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(
                user.avatarUrl,
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: Text(
                user.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: context.textTheme.bodyText1?.copyWith(fontSize: 18),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
