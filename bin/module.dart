import 'package:shelf_modular/shelf_modular.dart';

import 'controller.dart';

class AppModule extends Module {

  @override
  List<Bind> get binds => [
    Bind.factory((i) => UserController())
  ];

  @override
  List<ModularRoute> get routes => [
    Route.get('/', Modular.get<UserController>().get),
    Route.post('/', Modular.get<UserController>().create),
  ];
}