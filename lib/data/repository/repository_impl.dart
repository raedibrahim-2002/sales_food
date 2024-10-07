import 'package:analyzer/dart/ast/ast.dart';
import 'package:dartz/dartz.dart';
import 'package:sales_mvvm/data/data_source/remote_date_source.dart';
import 'package:sales_mvvm/data/mapper/mapper.dart';
import 'package:sales_mvvm/data/network/failure.dart';
import 'package:sales_mvvm/data/network/network_info.dart';
import 'package:sales_mvvm/data/network/requests.dart';
import 'package:sales_mvvm/domain/model/model.dart';
import 'package:sales_mvvm/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;
  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected)
    // its connected to internet, its safe to call api
    {
      final response = await _remoteDataSource.login(loginRequest);

      if (response.status == 0) {
        // success
        // return either right
        // return data
        return Right(response.toDomain());
      } else {
        // business error
        // return either left
        // return business error
        return Left(Failure(409,response.message ?? "Business error message"));
      }
    } else {
      // return internet connection error
      // return either left
      return Left(Failure(501, "Pleasse check internet connection"));

    }
  }
}
