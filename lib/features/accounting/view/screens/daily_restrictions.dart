import 'package:flutter/material.dart';

import '../widgets/accounts_guide_widgets/header_account_restrictions.dart';

class DailyRestrictionsScreen extends StatelessWidget {
  const DailyRestrictionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: headerAccountRestrictions(),
      ),
    );
  }
}
