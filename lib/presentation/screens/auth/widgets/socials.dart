import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:outfitr/presentation/screens/auth/login_screen.dart';

import 'package:outfitr/presentation/widgets/spaces.dart';
import 'package:outfitr/values/values.dart';

import '../sign_up_screen.dart';

const socialIconColor = AppColors.white;
const double socialBtnElevation = 0;

class Socials extends StatelessWidget {
  final bool isLogin;

  const Socials({this.isLogin = true});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: Key(StringConst.FACEBOOK),
              backgroundColor: socialIconColor,
              elevation: socialBtnElevation,
              onPressed: () {},
              child: Icon(FontAwesomeIcons.facebookF),
            ),
            SpaceW20(),
            FloatingActionButton(
              heroTag: Key(StringConst.GOOGLE),
              backgroundColor: socialIconColor,
              elevation: socialBtnElevation,
              onPressed: () {},
              child: Icon(
                FontAwesomeIcons.google,
                color: Colors.red,
              ),
            ),
            SpaceW20(),
            FloatingActionButton(
              heroTag: Key(StringConst.APPLE),
              backgroundColor: socialIconColor,
              elevation: socialBtnElevation,
              onPressed: () {},
              child: Icon(FontAwesomeIcons.apple),
            ),
          ],
        ),
        if (isLogin)
          InkWell(
            onTap: () => SignUpScreen().launch(context),
            child: Padding(
              padding: const EdgeInsets.all(Sizes.PADDING_8),
              child: RichText(
                text: TextSpan(
                  text: StringConst.DONT_HAVE_AN_ACCOUNT,
                  style: theme.textTheme.bodyText1?.copyWith(
                    color: AppColors.white,
                  ),
                  children: [
                    TextSpan(
                      text: StringConst.SIGN_UP_HERE,
                      style: theme.textTheme.bodyText1?.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        else
          InkWell(
            onTap: () {
              LoginScreen().launch(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(Sizes.PADDING_8),
              child: RichText(
                text: TextSpan(
                  text: StringConst.ALREADY_HAVE_ACCOUNT,
                  style: theme.textTheme.bodyText1?.copyWith(
                    color: AppColors.white,
                  ),
                  children: [
                    TextSpan(
                      text: StringConst.LOGIN_HERE,
                      style: theme.textTheme.bodyText1?.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
      ],
    );
  }
}
