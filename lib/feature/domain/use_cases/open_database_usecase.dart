



import 'package:my_daily_task_app/feature/domain/repositories/local_repository.dart';
import 'package:sembast/sembast.dart';

class OpenDatabaseUseCase{
  final LocalRepository localRepository;

  OpenDatabaseUseCase({this.localRepository});

  Future<Database> call(){
    return localRepository.openDatabase();
  }
}