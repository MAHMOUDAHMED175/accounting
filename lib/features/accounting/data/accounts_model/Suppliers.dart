import 'package:accounting/features/accounting/data/accounts_model/values.dart';

/// $id : "6"
/// $values : []

class Suppliers {
  Suppliers({
    this.id,
    this.values,
  });

  Suppliers.fromJson(dynamic json) {
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
  Suppliers copyWith({
    String? id,
    List<dynamic>? values,
  }) =>
      Suppliers(
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
