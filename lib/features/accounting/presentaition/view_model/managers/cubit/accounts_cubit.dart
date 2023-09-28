import 'package:accounting/core/errors/failure.dart';
import 'package:accounting/core/network/remote/api_endpoints.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/network/remote/dioHelper.dart';
import '../../../../data/accounts_model/Accouts_model.dart';
import 'accounts_state.dart';

class AccountsCubit extends Cubit<AccountsState> {
  AccountsCubit() : super(AccountsInitial());

  static AccountsCubit get(context) => BlocProvider.of(context);

  AccountModel? accountModel;

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

  Future<Either<Failure, AccountModel>> postAccountTree(
      {required postAccountData}) async {
    emit(PostAccountsTreeLoadingState());
    try {
      await DioHelper.postData(
          url: ApiEndPoints.accountsEndPoint, data: postAccountData);
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
