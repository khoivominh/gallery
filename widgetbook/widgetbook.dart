import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gallery/studies/reply/mail_card_preview.dart';
import 'package:gallery/studies/reply/model/email_model.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetbookHotReload extends StatelessWidget {
  const WidgetbookHotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      categories: [
        WidgetbookCategory(
          name: 'material',
          widgets: [
            WidgetbookComponent(
              name: 'FAB',
              useCases: [
                WidgetbookUseCase(
                  name: 'Icon',
                  builder: (context) {
                    return MailPreviewCard(
                      id: context.knobs.number(
                          label: 'Mail Preview Card Id',
                          initialValue: 1) as int,
                      email: Email(
                        id: context.knobs.number(
                          label: 'Email Id',
                          initialValue: 1,
                        ) as int,
                        sender: context.knobs.text(
                          label: 'Sender',
                          initialValue: 'Google',
                        ),
                        time: '3:21 PM',
                        subject: 'Flutter Weekly #123',
                        message:
                            'Flutter Weekly is a newsletter that brings you the latest Flutter news and links every week.',
                        avatar: 'assets/studies/reply/avatar_google.png',
                        recipients: 'Flutter Weekly',
                        containsPictures: false,
                      ),
                      onDelete: () {},
                      onStar: () {},
                      isStarred: context.knobs.boolean(
                        label: 'Mail Preview Card IsStarred',
                        initialValue: true,
                      ),
                      onStarredMailbox: context.knobs.boolean(
                        label: 'Mail Preview Card OnStarred MailBox',
                        initialValue: false,
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
      appInfo: AppInfo(name: 'Galerry'),
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: ThemeData.light(),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: ThemeData.dark(),
        ),
      ],
    );
  }
}
