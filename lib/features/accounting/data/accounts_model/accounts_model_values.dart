import 'values.dart';

/// $id : "1"
/// $values : [{"$id":"2","id":0,"parentId":-1,"englishName":"شجرة الحسابات","arabicName":"شجرة الحسابات","description":null,"createdDate":"2014-04-03T15:18:15.243","haveSub":true,"accountLevel":0,"accountTypeId":0,"accountCloseTypeId":1,"accountGroupId":1,"cashFlowTypeId":0,"costExpensesTypeId":0,"financialStatmentTypeId":0,"generalExpenseTypeId":0,"manufacturingCostTypeId":0,"directCashFlowTypeId":0,"costCategoryTypeId":0,"haveAccountActivity":false,"accountActivityId":0,"haveCostCenter":false,"costCenterId":0,"haveAccountAnalysis":false,"accountAnalysisTypeId":0,"isDeleted":false,"active":true,"bankAccounts":{"$id":"3","$values":[]},"cashBoxes":{"$id":"4","$values":[]},"customers":{"$id":"5","$values":[]},"suppliers":{"$id":"6","$values":[]},"warehouses":{"$id":"7","$values":[]}},{"$id":"8","id":1,"parentId":0,"englishName":"Assets","arabicName":"الاصول","description":"","createdDate":"2022-02-10T14:46:19.58","haveSub":true,"accountLevel":1,"accountTypeId":1,"accountCloseTypeId":1,"accountGroupId":1,"cashFlowTypeId":0,"costExpensesTypeId":0,"financialStatmentTypeId":0,"generalExpenseTypeId":0,"manufacturingCostTypeId":0,"directCashFlowTypeId":0,"costCategoryTypeId":0,"haveAccountActivity":false,"accountActivityId":0,"haveCostCenter":false,"costCenterId":0,"haveAccountAnalysis":false,"accountAnalysisTypeId":0,"isDeleted":false,"active":true,"bankAccounts":{"$id":"9","$values":[]},"cashBoxes":{"$id":"10","$values":[]},"customers":{"$id":"11","$values":[]},"suppliers":{"$id":"12","$values":[]},"warehouses":{"$id":"13","$values":[]}}]

class AccountsModel {
  AccountsModel({
    this.id,
    this.values,
  });

  AccountsModel.fromJson(dynamic json) {
    id = json['\$id'];
    if (json['\$values'] != null) {
      values = [];
      json['\$values'].forEach((v) {
        values?.add(AccountModelValues.fromJson(v));
      });
    }
  }
  String? id;
  List<AccountModelValues>? values;
  AccountsModel copyWith({
    String? id,
    List<AccountModelValues>? values,
  }) =>
      AccountsModel(
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
