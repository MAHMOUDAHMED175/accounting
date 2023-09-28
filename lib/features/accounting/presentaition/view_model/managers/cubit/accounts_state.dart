import 'package:flutter/material.dart';

@immutable
abstract class AccountsState {}

class AccountsInitial extends AccountsState {}

///api
class GetAccountsTreeLoadingState extends AccountsState {}

class GetAccountsTreeSuccessState extends AccountsState {}

class GetAccountsTreeErrorState extends AccountsState {
  final String error;

  GetAccountsTreeErrorState(this.error);
}

///api
class PostAccountsTreeLoadingState extends AccountsState {}

class PostAccountsTreeSuccessState extends AccountsState {}

class PostAccountsTreeErrorState extends AccountsState {
  final String error;

  PostAccountsTreeErrorState(this.error);
}
