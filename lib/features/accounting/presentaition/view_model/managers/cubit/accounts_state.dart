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

///api
class DeleteAccountsTreeLoadingState extends AccountsState {}

class DeleteAccountsTreeSuccessState extends AccountsState {}

class DeleteAccountsTreeErrorState extends AccountsState {
  final String error;

  DeleteAccountsTreeErrorState(this.error);
}

///api
class PutAccountsTreeLoadingState extends AccountsState {}

class PutAccountsTreeSuccessState extends AccountsState {}

class PutAccountsTreeErrorState extends AccountsState {
  final String error;

  PutAccountsTreeErrorState(this.error);
}

///DropdownMenuItem
class ValueTypeAccountDropdownState extends AccountsState {}

class ValueMainAccountDropdownState extends AccountsState {}

class SelectedOptionState extends AccountsState {}
