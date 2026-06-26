import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app_router.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
          onPressed: () => context.go(ScreenPaths.redirection),
          icon: Icon(Icons.logout_rounded)),
    );
  }
}
