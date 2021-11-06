import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_modular/shelf_modular.dart';

import 'module.dart';

void main(List<String> arguments) async {
  final s = Stopwatch()..start();

  final server = await io.serve(Modular(module: AppModule()), '0.0.0.0', 3000);
  s.stop();
  print('Server started in ${s.elapsed.inMilliseconds}ms');
  print('Address: ${server.address.address}:${server.port}');
}
