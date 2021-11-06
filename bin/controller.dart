import 'dart:async';

import 'package:shelf/shelf.dart';

class UserController {

  FutureOr<Response> get() {
    return Response.ok('Martin\n');
  }

  FutureOr<Response> create() {
    return Response.ok('User was created\n');
  }
}