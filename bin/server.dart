import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:shelf_hotreload/shelf_hotreload.dart';

import 'module.dart';

void main(List<String> arguments) async {
  final s = Stopwatch()..start();
  withHotreload(() async {
    final handler = Pipeline()
        .addMiddleware(logRequests())
        .addHandler(Modular(module: AppModule()));

    final server = await serve(handler, '0.0.0.0', 3000);
    print('Server started in ${s.elapsed.inMilliseconds}ms');
    print('Address: ${server.address.address}:${server.port}');
    s.stop();

    return server;
  });
}


