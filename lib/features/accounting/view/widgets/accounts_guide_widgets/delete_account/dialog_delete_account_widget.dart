import 'package:flutter/material.dart';

import 'content_delete_account_dialog.dart';

Future<void> deleteAccountDialog(
  BuildContext context,
) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: ContentDeleteAccountDialog(),
      );
    },
  );
}
