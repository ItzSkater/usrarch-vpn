import 'package:fpdart/fpdart.dart';
import 'package:uflow/core/utils/exception_handler.dart';
import 'package:uflow/features/stats/model/stats_failure.dart';
import 'package:uflow/uflowcore/generated/v2/hcore/hcore.pb.dart';
import 'package:uflow/uflowcore/uflow_core_service.dart';
import 'package:uflow/utils/custom_loggers.dart';

abstract interface class StatsRepository {
  Stream<Either<StatsFailure, SystemInfo>> watchStats();
}

class StatsRepositoryImpl with ExceptionHandler, InfraLogger implements StatsRepository {
  StatsRepositoryImpl({required this.singbox});

  final U FlowCoreService singbox;

  @override
  Stream<Either<StatsFailure, SystemInfo>> watchStats() {
    return singbox.watchStats().handleExceptions(StatsUnexpectedFailure.new);
  }
}
