import 'package:flutter/material.dart';

@immutable
abstract class AccountsState {}

class AccountsInitial extends AccountsState {}

///api
class GetProductTreeLoadingState extends AccountsState {}

class GetProductTreeSuccessState extends AccountsState {}

class GetProductTreeErrorState extends AccountsState {
  final String error;

  GetProductTreeErrorState(this.error);
}
