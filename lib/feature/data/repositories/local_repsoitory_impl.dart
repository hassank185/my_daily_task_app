

import 'package:my_daily_task_app/feature/data/local/data_sources/local_data_source.dart';
import 'package:my_daily_task_app/feature/domain/entities/task_entity.dart';
import 'package:my_daily_task_app/feature/domain/repositories/local_repository.dart';
import 'package:sembast/sembast.dart';

class LocalRepositoryImpl implements LocalRepository{

  final LocalDataSource localDataSource;

  LocalRepositoryImpl({this.localDataSource});

  @override
  Future<void> addNewTask(TaskEntity task) async =>
      localDataSource.addNewTask(task);

  @override
  Future<void> deleteTask(TaskEntity task) async =>
      localDataSource.deleteTask(task);

  @override
  Future<List<TaskEntity>> getAllTasks() async =>
      localDataSource.getAllTasks();

  @override
  Future<void> getNotification(TaskEntity task) async =>
      localDataSource.getNotification(task);

  @override
  Future<Database> openDatabase() async =>
      localDataSource.openDatabase();

  @override
  Future<void> turnOnNotification(TaskEntity task) =>
      localDataSource.turnOnNotification(task);

  @override
  Future<void> updateTask(TaskEntity task) async =>
      localDataSource.updateTask(task);

  @override
  Future<void> initNotification() async =>
      localDataSource.initNotification();

}