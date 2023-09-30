import 'package:accounting/core/errors/failure.dart';
import 'package:accounting/core/network/remote/api_endpoints.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/network/remote/dioHelper.dart';
import '../../../../data/accounts_model/Accouts_model.dart';
import 'accounts_state.dart';

class AccountsCubit extends Cubit<AccountsState> {
  AccountsCubit() : super(AccountsInitial());

  static AccountsCubit get(context) => BlocProvider.of(context);

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
    required double mainOrSub,
    required double mainAccountForThisAccount,
    required String englishName,
    required String arabicName,
    required String description,
    required bool haveSub,
    required double accountLevelCode,
  }) async {
    emit(PostAccountsTreeLoadingState());
    try {
      await DioHelper.postData(
        url: ApiEndPoints.accountsEndPoint,
        data: {
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
}
