import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app_router.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;
    return Column(
      children: [
        SizedBox(
          height: paddingTop + 12,
        ),
        SizedBox(
          height: 44,
          child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (context, index) => const SizedBox(
                    width: 8,
                  ),
              itemBuilder: (context, index) {
                return Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/profile/header_${index + 1}.png'))),
                );
              }),
        ),
        IconButton(
            onPressed: () => context.go(ScreenPaths.redirection),
            icon: Icon(Icons.logout_rounded)),
      ],
    );
  }
}
