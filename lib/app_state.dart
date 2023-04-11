import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _firstName = await secureStorage.getString('ff_firstName') ?? _firstName;
    _NameOfTheFather =
        await secureStorage.getString('ff_NameOfTheFather') ?? _NameOfTheFather;
    _GrandFatherName =
        await secureStorage.getString('ff_GrandFatherName') ?? _GrandFatherName;
    _familyName = await secureStorage.getString('ff_familyName') ?? _familyName;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String _value) {
    _firstName = _value;
    secureStorage.setString('ff_firstName', _value);
  }

  void deleteFirstName() {
    secureStorage.delete(key: 'ff_firstName');
  }

  String _NameOfTheFather = '';
  String get NameOfTheFather => _NameOfTheFather;
  set NameOfTheFather(String _value) {
    _NameOfTheFather = _value;
    secureStorage.setString('ff_NameOfTheFather', _value);
  }

  void deleteNameOfTheFather() {
    secureStorage.delete(key: 'ff_NameOfTheFather');
  }

  String _GrandFatherName = '';
  String get GrandFatherName => _GrandFatherName;
  set GrandFatherName(String _value) {
    _GrandFatherName = _value;
    secureStorage.setString('ff_GrandFatherName', _value);
  }

  void deleteGrandFatherName() {
    secureStorage.delete(key: 'ff_GrandFatherName');
  }

  String _familyName = '';
  String get familyName => _familyName;
  set familyName(String _value) {
    _familyName = _value;
    secureStorage.setString('ff_familyName', _value);
  }

  void deleteFamilyName() {
    secureStorage.delete(key: 'ff_familyName');
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
