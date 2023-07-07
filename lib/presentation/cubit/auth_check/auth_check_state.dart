part of 'auth_check_cubit.dart';

abstract class AuthCheckState extends Equatable {
  @override
  List<Object?> get props => [];
}
class InitialState extends AuthCheckState {}
class AuthenticatedState extends AuthCheckState {}
class UnAuthenticatedState extends AuthCheckState {}
