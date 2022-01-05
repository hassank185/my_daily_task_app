
import 'package:my_daily_task_app/feature/domain/repositories/local_repository.dart';

class InitNotificationUseCase{
  final LocalRepository localRepository;

  InitNotificationUseCase({this.localRepository});

  Future<void> call(){
    return localRepository.initNotification();
  }
}