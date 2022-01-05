





import 'package:my_daily_task_app/feature/domain/entities/task_entity.dart';
import 'package:my_daily_task_app/feature/domain/repositories/local_repository.dart';

class UpdateUseCase{
  final LocalRepository localRepository;

  UpdateUseCase({this.localRepository});

  Future<void> call(TaskEntity task){
    return localRepository.updateTask(task);
  }
}