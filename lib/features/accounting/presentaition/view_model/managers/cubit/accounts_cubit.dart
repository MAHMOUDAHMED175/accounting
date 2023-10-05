import 'package:accounting/core/errors/failure.dart';
import 'package:accounting/core/network/remote/api_endpoints.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../../../../../core/network/remote/dioHelper.dart';
import '../../../../data/accounts_model/Accouts_model.dart';
import 'accounts_state.dart';

class AccountsCubit extends Cubit<AccountsState> {
  AccountsCubit() : super(AccountsInitial());

  static AccountsCubit get(context) => BlocProvider.of(context);
  // {
  // "$id": "1",
  // "id": 3020151,
  // "parentId": 30301,
  // "englishName": "string",
  // "arabicName": "string",
  // "description": "string",
  // "createdDate": "2023-10-02T18:08:28.801Z",
  // "haveSub": true,
  // "accountLevel": 4,
  // "accountTypeId": 1,
  // "accountCloseTypeId": 2,
  // "accountGroupId": 9,
  // "cashFlowTypeId": 0,
  // "costExpensesTypeId": 0,
  // "financialStatmentTypeId": 0,
  // "generalExpenseTypeId": 0,
  // "manufacturingCostTypeId": 0,
  // "directCashFlowTypeId": 0,
  // "costCategoryTypeId": 0,
  // "haveAccountActivity": true,
  // "accountActivityId": 0,
  // "haveCostCenter": true,
  // "costCenterId": 0,
  // "haveAccountAnalysis": true,
  // "accountAnalysisTypeId": 0,
  // "isDeleted": true,
  // "active": true,
  // "bankAccounts": {
  // "$id": "2",
  // "$values": []
  // },
  // "cashBoxes": {
  // "$id": "3",
  // "$values": []
  // },
  // "customers": {
  // "$id": "4",
  // "$values": []
  // },
  // "suppliers": {
  // "$id": "5",
  // "$values": []
  // },
  // "warehouses": {
  // "$id": "6",
  // "$values": []
  // }
  // }
  AccountModel? accountModel;

  List<String> listTypeAccountDropDown = ["حساب فرعى", "حساب رئيسى"];

  String? valueTypeAccountDropDown = "حساب فرعى";

  List<String> listMainAccountDropDown = ["من فضلك اختر", "ارباح", "ديون"];

  String? valueMainAccountDropDown = "من فضلك اختر";

  String selectedOption = '';

  void changeDropdownMenuItemValueTypeAccount(value) {
    valueTypeAccountDropDown = value;
    emit(ValueTypeAccountDropdownState());
  }

  void changeDropdownMenuItemValueMainAccount(value) {
    valueMainAccountDropDown = value;
    emit(ValueMainAccountDropdownState());
  }

  void selectedOptionRadio(value) {
    selectedOption = value;
    emit(SelectedOptionState());
  }

  ///
  Future<Either<Failure, AccountModel>> getAccountsTree() async {
    emit(GetAccountsTreeLoadingState());
    try {
      final response =
          await DioHelper.getData(url: ApiEndPoints.accountsEndPoint);
      accountModel = AccountModel.fromJson(response.data);
      print(accountModel!.id);
      emit((GetAccountsTreeSuccessState()));
      return right(accountModel!);
    } catch (error) {
      print(error.toString());
      emit((GetAccountsTreeErrorState(error.toString())));
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }

  Future<Either<Failure, AccountModel>> deleteAccountsTree(
      {required int idAccount, context}) async {
    emit(DeleteAccountsTreeLoadingState());
    try {
      await DioHelper.deleteData(
        url: ApiEndPoints.accountsEndPoint,
        query: {
          "id": idAccount,
        },
      );
      getAccountsTree();
      emit((DeleteAccountsTreeSuccessState()));
      Navigator.pop(context);
      return right(accountModel!);
    } catch (error) {
      print(error.toString());
      emit((DeleteAccountsTreeErrorState(error.toString())));
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }

  Future<Either<Failure, AccountModel>> postAccountTree({
    required int parentId,
    required int accountLevel,
    required String englishName,
    required String arabicName,
    required String description,
    required bool haveSub,
    required int accountTypeId,
    required int accountCloseTypeId,
    required int accountGroupId,
    required int cashFlowTypeId,
  }) async {
    emit(PostAccountsTreeLoadingState());
    try {
      await DioHelper.postData(
        url: ApiEndPoints.accountsEndPoint,
        data: {
          "id": "${const Uuid().v4()}",
          "parentId": parentId,
          "englishName": englishName,
          "arabicName": arabicName,
          "description": description,
          "createdDate": "2022-01-25T00:32:39.443",
          "haveSub": haveSub,
          "accountLevel": accountLevel,
          "accountTypeId": accountTypeId,
          "accountCloseTypeId": accountCloseTypeId,
          "accountGroupId": accountGroupId,
          "cashFlowTypeId": cashFlowTypeId,
          "costExpensesTypeId": 0,
          "financialStatmentTypeId": 0,
          "generalExpenseTypeId": 0,
          "manufacturingCostTypeId": 0,
          "directCashFlowTypeId": 0,
          "costCategoryTypeId": 0,
          "haveAccountActivity": true,
          "accountActivityId": 0,
          "haveCostCenter": true,
          "costCenterId": 0,
          "haveAccountAnalysis": true,
          "accountAnalysisTypeId": 0,
          "isDeleted": false,
          "active": true
        },
      );
      // accountModel = AccountModel.fromJson(response.data);
      print(accountModel!.id);
      emit((PostAccountsTreeSuccessState()));
      return right(accountModel!);
    } catch (error) {
      print(error.toString());
      emit((PostAccountsTreeErrorState(error.toString())));
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }

  Future<Either<Failure, AccountModel>> putAccountTree({
    required int idPutData,
    required int mainOrSub,
    required int mainAccountForThisAccount,
    required String englishName,
    required String arabicName,
    required String description,
    required bool haveSub,
    required int accountLevelCode,
  }) async {
    emit(PutAccountsTreeLoadingState());
    try {
      await DioHelper.putData(
        url: ApiEndPoints.accountsEndPoint,
        query: {"id": idPutData},
        data: {
          "id": "2",
          "parentId": mainAccountForThisAccount,
          "englishName": englishName,
          "arabicName": arabicName,
          "description": description,
          "createdDate": DateTime.now(),
          "haveSub": haveSub,
          "accountLevel": accountLevelCode,
          "accountTypeId": mainOrSub,
          "accountCloseTypeId": 0,
          "accountGroupId": 0,
          "cashFlowTypeId": 0,
          "costExpensesTypeId": 0,
          "financialStatmentTypeId": 0,
          "generalExpenseTypeId": 0,
          "manufacturingCostTypeId": 0,
          "directCashFlowTypeId": 0,
          "costCategoryTypeId": 0,
          "haveAccountActivity": true,
          "accountActivityId": 0,
          "haveCostCenter": true,
          "costCenterId": 0,
          "haveAccountAnalysis": true,
          "accountAnalysisTypeId": 0,
          "isDeleted": true,
          "active": true
        },
      );
      getAccountsTree();
      emit((PutAccountsTreeSuccessState()));
      return right(accountModel!);
    } catch (error) {
      print(error.toString());
      emit((PutAccountsTreeErrorState(error.toString())));
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }
}
