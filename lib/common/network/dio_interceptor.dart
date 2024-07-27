import 'package:dio/dio.dart';

import '../../core/app_extension.dart';
import '../utils/logger.dart';

class DioInterceptor extends Interceptor {
<<<<<<< HEAD

=======
>>>>>>> upstream/main
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger('====================START====================');
    logger('HTTP method => ${options.method} ');
<<<<<<< HEAD
    logger('Request => ${options.baseUrl}${options.path}${options.queryParameters.format}');
=======
    logger(
        'Request => ${options.baseUrl}${options.path}${options.queryParameters.format}');
>>>>>>> upstream/main
    logger('Header  => ${options.headers}');
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final options = err.requestOptions;
    logger(options.method); // Debug log
    logger('Error: ${err.error}, Message: ${err.message}'); // Error log
    return super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger('Response => StatusCode: ${response.statusCode}'); // Debug log
    logger('Response => Body: ${response.data}'); // Debug log
    return super.onResponse(response, handler);
  }
}
<<<<<<< HEAD

mixin format {
}
=======
>>>>>>> upstream/main
