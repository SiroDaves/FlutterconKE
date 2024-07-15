import 'package:flutter/material.dart';

import 'app.dart';
import 'common/utils/env/flavor_config.dart';
import 'common/utils/env/environments.dart';
import 'common/utils/logger.dart';
import 'core/di/injectable.dart';

// starting the prod options
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlavorConfig(
    flavor: Flavor.prod,
    name: 'PROD',
    color: Colors.transparent,
    values: const FlavorValues(
      logNetworkInfo: false,
      showFullErrorMessages: false,
    ),
  );
  logger('Starting app from main_prod.dart');
  await configureDependencies(Environments.prod);

  runApp(const MyApp());
}
