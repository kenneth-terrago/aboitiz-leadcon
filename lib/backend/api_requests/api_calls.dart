import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendSMSOTPCall {
  static Future<ApiCallResponse> call({
    String? destination = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "destination": "$destination",
  "product": "UBX",
  "codeLength": 6
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send SMS OTP',
      apiUrl: 'https://sandbox-dev.shared.ubx.ph/v1/sms/otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'x-api-key': 'K%3zPLJb8yuG9wamkzq4*',
        'AuthorizationToken': '$accessToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message.uid''',
      ));
  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? timestamp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.timestamp''',
      ));
}

class GettingTheAccessTokenCall {
  static Future<ApiCallResponse> call({
    String? grantType = 'client_credentials',
    String? scope = 'api/sms',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Getting the access token',
      apiUrl:
          'https://svc-oauth-dev.shared.ubx.ph/oauth2/token?grant_type=$grantType&scope=$scope',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization':
            'Basic MmYzcXZ0cGdhcDE1czZjN2VnZnB0NDdrajU6YmltbmNkM2hqbWVzZ2N2b3ZqOGlwNHZuajhkOG9kYjBjbmk0aDd2aTNna2E5NnRyYTY0',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? accessToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class VerifyTheSMSOTPCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
    String? code = '',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Verify the SMS OTP',
      apiUrl: 'https://sandbox-dev.shared.ubx.ph/v1/sms/otp',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key': 'K%3zPLJb8yuG9wamkzq4*',
        'AuthorizationToken': '$accessToken',
      },
      params: {
        'uid': uid,
        'code': code,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? timestamp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.timestamp''',
      ));
  static int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message.uid''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message.status''',
      ));
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class SendEmailOTPCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
    String? destination = '',
  }) async {
    final ffApiRequestBody = '''
{
  "template": "LEADCON_DEV",
  "emailAddress": "$destination",
  "sameOtp": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Email OTP',
      apiUrl: 'https://sandbox-dev.shared.ubx.ph/v1/email/otp/LEADCON',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'anVp3MBPW&29NHgP#ddS9',
        'AuthorizationToken': '$accessToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class VerifyEmailOTPCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
    String? otp = '',
    String? destination = '',
  }) async {
    final ffApiRequestBody = '''
{
  "otp": "$otp",
  "emailAddress": "$destination"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify Email OTP',
      apiUrl: 'https://sandbox-dev.shared.ubx.ph/v1/email/otp/LEADCON',
      callType: ApiCallType.PATCH,
      headers: {
        'x-api-key': 'anVp3MBPW&29NHgP#ddS9',
        'AuthorizationToken': '$accessToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
