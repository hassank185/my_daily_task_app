
import 'package:my_daily_task_app/feature/domain/entities/task_entity.dart';
import 'package:my_daily_task_app/feature/domain/repositories/local_repository.dart';

class AddTaskUseCase{
  final LocalRepository localRepository;

  AddTaskUseCase({this.localRepository});

  Future<void> call(TaskEntity task){
    return localRepository.addNewTask(task);
  }
}