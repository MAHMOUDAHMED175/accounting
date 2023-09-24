import 'package:accounting/features/accounting/data/accounts_model/values.dart';

/// $id : "7"
/// $values : []

class Warehouses {
  Warehouses({
    this.id,
    this.values,
  });

  Warehouses.fromJson(dynamic json) {
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
  Warehouses copyWith({
    String? id,
    List<dynamic>? values,
  }) =>
      Warehouses(
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
