import 'package:accounting/core/errors/failure.dart';
import 'package:accounting/features/accounting/view_model/managers/cubit/accounts_state.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/network/remote/dioHelper.dart';
import '../../../data/accounts_model/Accouts_model.dart';

class AccountsCubit extends Cubit<AccountsState> {
  AccountsCubit() : super(AccountsInitial());

  static AccountsCubit get(context) => BlocProvider.of(context);

  AccountModel? accountModel;

  ///
  Future<Either<Failure, AccountModel>> productTree() async {
    emit(GetProductTreeLoadingState());
    try {
      final response = await DioHelper.getData(url: '/Accounts');
      accountModel = AccountModel.fromJson(response.data);
      print(accountModel!.id);
      emit((GetProductTreeSuccessState()));
      return right(accountModel!);
    } catch (error) {
      print(error.toString());
      emit((GetProductTreeErrorState(error.toString())));
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      }
      return left(ServerFailure(error.toString()));
    }
  }
}
