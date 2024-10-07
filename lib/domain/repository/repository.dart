import 'package:dartz/dartz.dart';
import 'package:sales_mvvm/data/network/failure.dart';
import 'package:sales_mvvm/data/network/requests.dart';
import 'package:sales_mvvm/domain/model/model.dart';

abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);
}
