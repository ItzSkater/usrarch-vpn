import 'package:uflow/core/directories/directories_provider.dart';
import 'package:uflow/features/connection/data/connection_repository.dart';
import 'package:uflow/features/profile/data/profile_data_providers.dart';
import 'package:uflow/features/settings/data/config_option_data_providers.dart';
import 'package:uflow/uflowcore/uflow_core_service_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connection_data_providers.g.dart';

@Riverpod(keepAlive: true)
ConnectionRepository connectionRepository(Ref ref) {
  return ConnectionRepositoryImpl(
    ref: ref,
    directories: ref.watch(appDirectoriesProvider).requireValue,
    configOptionRepository: ref.watch(configOptionRepositoryProvider),
    singbox: ref.watch(uflowCoreServiceProvider),
    profilePathResolver: ref.watch(profilePathResolverProvider),
  );
}
