import 'package:flutter/material.dart';

const avatarURL = 'https://avatars.githubusercontent.com/u/35867294?v=4';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 256,
      width: 256,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(avatarURL),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
