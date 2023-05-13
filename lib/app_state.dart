import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _firstName = await secureStorage.getString('ff_firstName') ?? _firstName;
    _NameOfTheFather =
        await secureStorage.getString('ff_NameOfTheFather') ?? _NameOfTheFather;
    _GrandFatherName =
        await secureStorage.getString('ff_GrandFatherName') ?? _GrandFatherName;
    _familyName = await secureStorage.getString('ff_familyName') ?? _familyName;
    _photoURL = await secureStorage.getString('ff_photoURL') ?? _photoURL;
    _idNumber = await secureStorage.getString('ff_idNumber') ?? _idNumber;
    _city = await secureStorage.getString('ff_city') ?? _city;
    _address = await secureStorage.getString('ff_address') ?? _address;
    _craftType = await secureStorage.getString('ff_craftType') ?? _craftType;
    _bioCraftsman =
        await secureStorage.getString('ff_bioCraftsman') ?? _bioCraftsman;
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

  String _photoURL = '';
  String get photoURL => _photoURL;
  set photoURL(String _value) {
    _photoURL = _value;
    secureStorage.setString('ff_photoURL', _value);
  }

  void deletePhotoURL() {
    secureStorage.delete(key: 'ff_photoURL');
  }

  String _idNumber = '';
  String get idNumber => _idNumber;
  set idNumber(String _value) {
    _idNumber = _value;
    secureStorage.setString('ff_idNumber', _value);
  }

  void deleteIdNumber() {
    secureStorage.delete(key: 'ff_idNumber');
  }

  String _city = '';
  String get city => _city;
  set city(String _value) {
    _city = _value;
    secureStorage.setString('ff_city', _value);
  }

  void deleteCity() {
    secureStorage.delete(key: 'ff_city');
  }

  String _address = '';
  String get address => _address;
  set address(String _value) {
    _address = _value;
    secureStorage.setString('ff_address', _value);
  }

  void deleteAddress() {
    secureStorage.delete(key: 'ff_address');
  }

  String _craftType = '';
  String get craftType => _craftType;
  set craftType(String _value) {
    _craftType = _value;
    secureStorage.setString('ff_craftType', _value);
  }

  void deleteCraftType() {
    secureStorage.delete(key: 'ff_craftType');
  }

  String _bioCraftsman = '';
  String get bioCraftsman => _bioCraftsman;
  set bioCraftsman(String _value) {
    _bioCraftsman = _value;
    secureStorage.setString('ff_bioCraftsman', _value);
  }

  void deleteBioCraftsman() {
    secureStorage.delete(key: 'ff_bioCraftsman');
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
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
