import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'locator.config.dart';

@InjectableInit(asExtension: false)
FutureOr<GetIt> _init(GetIt getIt) => init(getIt);
