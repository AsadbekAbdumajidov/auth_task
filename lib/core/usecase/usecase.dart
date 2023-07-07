import 'package:auth_test/core/error/error.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

/*
A UseCase represents a business-level process. 
It should only be written in Dart and not contain any Flutter code. 
A UseCase is part of the Domain module of an application in a pure architecture. 
The dependencies used by the UseCase are introduced by the Presenter.
-------------------------------
*/
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
