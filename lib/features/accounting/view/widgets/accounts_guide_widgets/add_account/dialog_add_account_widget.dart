import 'package:accounting/features/accounting/view/widgets/accounts_guide_widgets/add_account/content_add_account_dialog.dart';
import 'package:flutter/material.dart';

Future<void> addAccountDialog(
  BuildContext context,
) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return const Dialog(
        child: ContentAddAccountDialog(),
      );
    },
  );
}
