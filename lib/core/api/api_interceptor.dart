import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

abstract class IHttpClient {
  Future<Response> get(String? endPoint, {Map<String, String> headers});
}

class HttpClient extends IHttpClient implements InterceptorContract {
  late HttpClientWithInterceptor _client;

  HttpClient() {
    _client = HttpClientWithInterceptor.build(interceptors: [this]);
  }

  @override
  Future<Response> get(String? endPoint, {Map<String, String>? headers}) async {
    final response = await _client.get(
      endPoint!.toUri(),
      headers: {'Content-Type': 'application/json'},
    );
    return response;
  }

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    data.headers['Content-Type'] = "application/json";
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    print('Response ${data.url}');
    print('status code:  ${data.statusCode}');
    print('headers ${data.headers}');
    print('body: ${data.body}');

    return data;
  }
}
