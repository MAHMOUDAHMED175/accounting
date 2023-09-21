import 'package:flutter/material.dart';

import 'content_add_account_dialog.dart';

class AddAccountDialog extends StatelessWidget {
  const AddAccountDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Dialog(
      child: ContentAddAccountDialog(),
    );
  }
}
