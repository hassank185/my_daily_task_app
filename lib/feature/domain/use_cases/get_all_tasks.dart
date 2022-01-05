
import 'package:my_daily_task_app/feature/domain/entities/task_entity.dart';
import 'package:my_daily_task_app/feature/domain/repositories/local_repository.dart';

class GetAllTaskUseCase{
  final LocalRepository localRepository;

  GetAllTaskUseCase({this.localRepository});

  Future<List<TaskEntity>> call(){
    return localRepository.getAllTasks();
  }
}