import 'package:flutter/material.dart';

import 'content_edit_account_dialog.dart';

Future<void> editAccountDialog(
  BuildContext context,
) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return const Dialog(
        child: ContentEditAccountDialog(),
      );
    },
  );
}
