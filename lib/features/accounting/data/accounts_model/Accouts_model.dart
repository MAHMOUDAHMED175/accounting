import 'package:accounting/features/accounting/data/accounts_model/values.dart';

class AccountModel {
  String? id;
  List<AccountModelValues>? values;

  AccountModel({
    required this.id,
    required this.values,
  });

  AccountModel.fromJson(Map<String, dynamic> json) {
    id = json['\$id'];
    if (json['\$values'] != null) {
      values = [];
      json['\$values'].forEach((v) {
        values?.add(AccountModelValues.fromJson(v));
      });
    }
  }
}
