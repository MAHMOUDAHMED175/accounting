import 'package:accounting/features/accounting/data/accounts_model/values.dart';

/// $id : "3"
/// $values : []

class BankAccounts {
  BankAccounts({
    this.id,
    this.values,
  });

  BankAccounts.fromJson(dynamic json) {
    id = json['\$id'];
    if (json['\$values'] != null) {
      values = [];
      json['\$values'].forEach((v) {
        values?.add(AccountModelValues.fromJson(v));
      });
    }
  }
  String? id;
  List<dynamic>? values;
  BankAccounts copyWith({
    String? id,
    List<dynamic>? values,
  }) =>
      BankAccounts(
        id: id ?? this.id,
        values: values ?? this.values,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['\$id'] = id;
    if (values != null) {
      map['\$values'] = values?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
