import 'BankAccounts.dart';
import 'CashBoxes.dart';
import 'Customers.dart';
import 'Suppliers.dart';
import 'Warehouses.dart';

/// $id : "2"
/// id : 0
/// parentId : -1
/// englishName : "شجرة الحسابات"
/// arabicName : "شجرة الحسابات"
/// description : null
/// createdDate : "2014-04-03T15:18:15.243"
/// haveSub : true
/// accountLevel : 0
/// accountTypeId : 0
/// accountCloseTypeId : 1
/// accountGroupId : 1
/// cashFlowTypeId : 0
/// costExpensesTypeId : 0
/// financialStatmentTypeId : 0
/// generalExpenseTypeId : 0
/// manufacturingCostTypeId : 0
/// directCashFlowTypeId : 0
/// costCategoryTypeId : 0
/// haveAccountActivity : false
/// accountActivityId : 0
/// haveCostCenter : false
/// costCenterId : 0
/// haveAccountAnalysis : false
/// accountAnalysisTypeId : 0
/// isDeleted : false
/// active : true
/// bankAccounts : {"$id":"3","$values":[]}
/// cashBoxes : {"$id":"4","$values":[]}
/// customers : {"$id":"5","$values":[]}
/// suppliers : {"$id":"6","$values":[]}
/// warehouses : {"$id":"7","$values":[]}

class AccountModelValues {
  AccountModelValues({
    this.id,
    this.idInteger,
    this.parentId,
    this.englishName,
    this.arabicName,
    this.description,
    this.createdDate,
    this.haveSub,
    this.accountLevel,
    this.accountTypeId,
    this.accountCloseTypeId,
    this.accountGroupId,
    this.cashFlowTypeId,
    this.costExpensesTypeId,
    this.financialStatmentTypeId,
    this.generalExpenseTypeId,
    this.manufacturingCostTypeId,
    this.directCashFlowTypeId,
    this.costCategoryTypeId,
    this.haveAccountActivity,
    this.accountActivityId,
    this.haveCostCenter,
    this.costCenterId,
    this.haveAccountAnalysis,
    this.accountAnalysisTypeId,
    this.isDeleted,
    this.active,
    this.bankAccounts,
    this.cashBoxes,
    this.customers,
    this.suppliers,
    this.warehouses,
  });

  AccountModelValues.fromJson(dynamic json) {
    id = json['\$id'];
    idInteger = json['id'];
    parentId = json['parentId'];
    englishName = json['englishName'];
    arabicName = json['arabicName'];
    description = json['description'];
    createdDate = json['createdDate'];
    haveSub = json['haveSub'];
    accountLevel = json['accountLevel'];
    accountTypeId = json['accountTypeId'];
    accountCloseTypeId = json['accountCloseTypeId'];
    accountGroupId = json['accountGroupId'];
    cashFlowTypeId = json['cashFlowTypeId'];
    costExpensesTypeId = json['costExpensesTypeId'];
    financialStatmentTypeId = json['financialStatmentTypeId'];
    generalExpenseTypeId = json['generalExpenseTypeId'];
    manufacturingCostTypeId = json['manufacturingCostTypeId'];
    directCashFlowTypeId = json['directCashFlowTypeId'];
    costCategoryTypeId = json['costCategoryTypeId'];
    haveAccountActivity = json['haveAccountActivity'];
    accountActivityId = json['accountActivityId'];
    haveCostCenter = json['haveCostCenter'];
    costCenterId = json['costCenterId'];
    haveAccountAnalysis = json['haveAccountAnalysis'];
    accountAnalysisTypeId = json['accountAnalysisTypeId'];
    isDeleted = json['isDeleted'];
    active = json['active'];
    bankAccounts = json['bankAccounts'] != null
        ? BankAccounts.fromJson(json['bankAccounts'])
        : null;
    cashBoxes = json['cashBoxes'] != null
        ? CashBoxes.fromJson(json['cashBoxes'])
        : null;
    customers = json['customers'] != null
        ? Customers.fromJson(json['customers'])
        : null;
    suppliers = json['suppliers'] != null
        ? Suppliers.fromJson(json['suppliers'])
        : null;
    warehouses = json['warehouses'] != null
        ? Warehouses.fromJson(json['warehouses'])
        : null;
  }
  String? id;
  int? idInteger;
  int? parentId;
  String? englishName;
  String? arabicName;
  dynamic description;
  String? createdDate;
  bool? haveSub;
  int? accountLevel;
  int? accountTypeId;
  int? accountCloseTypeId;
  int? accountGroupId;
  int? cashFlowTypeId;
  int? costExpensesTypeId;
  int? financialStatmentTypeId;
  int? generalExpenseTypeId;
  int? manufacturingCostTypeId;
  int? directCashFlowTypeId;
  int? costCategoryTypeId;
  bool? haveAccountActivity;
  int? accountActivityId;
  bool? haveCostCenter;
  int? costCenterId;
  bool? haveAccountAnalysis;
  int? accountAnalysisTypeId;
  bool? isDeleted;
  bool? active;
  BankAccounts? bankAccounts;
  CashBoxes? cashBoxes;
  Customers? customers;
  Suppliers? suppliers;
  Warehouses? warehouses;
  AccountModelValues copyWith({
    String? id,
    int? idInteger,
    int? parentId,
    String? englishName,
    String? arabicName,
    dynamic description,
    String? createdDate,
    bool? haveSub,
    int? accountLevel,
    int? accountTypeId,
    int? accountCloseTypeId,
    int? accountGroupId,
    int? cashFlowTypeId,
    int? costExpensesTypeId,
    int? financialStatmentTypeId,
    int? generalExpenseTypeId,
    int? manufacturingCostTypeId,
    int? directCashFlowTypeId,
    int? costCategoryTypeId,
    bool? haveAccountActivity,
    int? accountActivityId,
    bool? haveCostCenter,
    int? costCenterId,
    bool? haveAccountAnalysis,
    int? accountAnalysisTypeId,
    bool? isDeleted,
    bool? active,
    BankAccounts? bankAccounts,
    CashBoxes? cashBoxes,
    Customers? customers,
    Suppliers? suppliers,
    Warehouses? warehouses,
  }) =>
      AccountModelValues(
        id: id ?? this.id,
        idInteger: idInteger ?? this.idInteger,
        parentId: parentId ?? this.parentId,
        englishName: englishName ?? this.englishName,
        arabicName: arabicName ?? this.arabicName,
        description: description ?? this.description,
        createdDate: createdDate ?? this.createdDate,
        haveSub: haveSub ?? this.haveSub,
        accountLevel: accountLevel ?? this.accountLevel,
        accountTypeId: accountTypeId ?? this.accountTypeId,
        accountCloseTypeId: accountCloseTypeId ?? this.accountCloseTypeId,
        accountGroupId: accountGroupId ?? this.accountGroupId,
        cashFlowTypeId: cashFlowTypeId ?? this.cashFlowTypeId,
        costExpensesTypeId: costExpensesTypeId ?? this.costExpensesTypeId,
        financialStatmentTypeId:
            financialStatmentTypeId ?? this.financialStatmentTypeId,
        generalExpenseTypeId: generalExpenseTypeId ?? this.generalExpenseTypeId,
        manufacturingCostTypeId:
            manufacturingCostTypeId ?? this.manufacturingCostTypeId,
        directCashFlowTypeId: directCashFlowTypeId ?? this.directCashFlowTypeId,
        costCategoryTypeId: costCategoryTypeId ?? this.costCategoryTypeId,
        haveAccountActivity: haveAccountActivity ?? this.haveAccountActivity,
        accountActivityId: accountActivityId ?? this.accountActivityId,
        haveCostCenter: haveCostCenter ?? this.haveCostCenter,
        costCenterId: costCenterId ?? this.costCenterId,
        haveAccountAnalysis: haveAccountAnalysis ?? this.haveAccountAnalysis,
        accountAnalysisTypeId:
            accountAnalysisTypeId ?? this.accountAnalysisTypeId,
        isDeleted: isDeleted ?? this.isDeleted,
        active: active ?? this.active,
        bankAccounts: bankAccounts ?? this.bankAccounts,
        cashBoxes: cashBoxes ?? this.cashBoxes,
        customers: customers ?? this.customers,
        suppliers: suppliers ?? this.suppliers,
        warehouses: warehouses ?? this.warehouses,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['\$id'] = id;
    map['id'] = id;
    map['parentId'] = parentId;
    map['englishName'] = englishName;
    map['arabicName'] = arabicName;
    map['description'] = description;
    map['createdDate'] = createdDate;
    map['haveSub'] = haveSub;
    map['accountLevel'] = accountLevel;
    map['accountTypeId'] = accountTypeId;
    map['accountCloseTypeId'] = accountCloseTypeId;
    map['accountGroupId'] = accountGroupId;
    map['cashFlowTypeId'] = cashFlowTypeId;
    map['costExpensesTypeId'] = costExpensesTypeId;
    map['financialStatmentTypeId'] = financialStatmentTypeId;
    map['generalExpenseTypeId'] = generalExpenseTypeId;
    map['manufacturingCostTypeId'] = manufacturingCostTypeId;
    map['directCashFlowTypeId'] = directCashFlowTypeId;
    map['costCategoryTypeId'] = costCategoryTypeId;
    map['haveAccountActivity'] = haveAccountActivity;
    map['accountActivityId'] = accountActivityId;
    map['haveCostCenter'] = haveCostCenter;
    map['costCenterId'] = costCenterId;
    map['haveAccountAnalysis'] = haveAccountAnalysis;
    map['accountAnalysisTypeId'] = accountAnalysisTypeId;
    map['isDeleted'] = isDeleted;
    map['active'] = active;
    if (bankAccounts != null) {
      map['bankAccounts'] = bankAccounts?.toJson();
    }
    if (cashBoxes != null) {
      map['cashBoxes'] = cashBoxes?.toJson();
    }
    if (customers != null) {
      map['customers'] = customers?.toJson();
    }
    if (suppliers != null) {
      map['suppliers'] = suppliers?.toJson();
    }
    if (warehouses != null) {
      map['warehouses'] = warehouses?.toJson();
    }
    return map;
  }
}
