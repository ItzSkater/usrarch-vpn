import 'package:uflow/core/directories/directories_provider.dart';
import 'package:uflow/core/notification/in_app_notification_controller.dart';
import 'package:uflow/core/preferences/general_preferences.dart';
import 'package:uflow/uflowcore/uflow_core_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'uflow_core_service_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [AppDirectories, DebugModeNotifier, inAppNotificationController])
U FlowCoreService uflowCoreService(Ref ref) {
  return U FlowCoreService(ref);
}
