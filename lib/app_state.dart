import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _isAuthenticated =
          await secureStorage.getBool('ff_isAuthenticated') ?? _isAuthenticated;
    });
    await _safeInitAsync(() async {
      _authenticatedUser =
          (await secureStorage.getString('ff_authenticatedUser'))?.ref ??
              _authenticatedUser;
    });
    await _safeInitAsync(() async {
      _appVersion =
          await secureStorage.getString('ff_appVersion') ?? _appVersion;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _isAuthenticated = false;
  bool get isAuthenticated => _isAuthenticated;
  set isAuthenticated(bool value) {
    _isAuthenticated = value;
    secureStorage.setBool('ff_isAuthenticated', value);
  }

  void deleteIsAuthenticated() {
    secureStorage.delete(key: 'ff_isAuthenticated');
  }

  DocumentReference? _authenticatedUser;
  DocumentReference? get authenticatedUser => _authenticatedUser;
  set authenticatedUser(DocumentReference? value) {
    _authenticatedUser = value;
    value != null
        ? secureStorage.setString('ff_authenticatedUser', value.path)
        : secureStorage.remove('ff_authenticatedUser');
  }

  void deleteAuthenticatedUser() {
    secureStorage.delete(key: 'ff_authenticatedUser');
  }

  String _appVersion = '';
  String get appVersion => _appVersion;
  set appVersion(String value) {
    _appVersion = value;
    secureStorage.setString('ff_appVersion', value);
  }

  void deleteAppVersion() {
    secureStorage.delete(key: 'ff_appVersion');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
