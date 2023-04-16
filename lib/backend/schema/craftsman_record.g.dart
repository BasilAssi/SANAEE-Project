// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'craftsman_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CraftsmanRecord> _$craftsmanRecordSerializer =
    new _$CraftsmanRecordSerializer();

class _$CraftsmanRecordSerializer
    implements StructuredSerializer<CraftsmanRecord> {
  @override
  final Iterable<Type> types = const [CraftsmanRecord, _$CraftsmanRecord];
  @override
  final String wireName = 'CraftsmanRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CraftsmanRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.editedTime;
    if (value != null) {
      result
        ..add('edited_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.docRef;
    if (value != null) {
      result
        ..add('docRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.craftsmanID;
    if (value != null) {
      result
        ..add('craftsmanID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fatherName;
    if (value != null) {
      result
        ..add('fatherName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.grandfatherName;
    if (value != null) {
      result
        ..add('grandfatherName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.familyName;
    if (value != null) {
      result
        ..add('familyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idNumber;
    if (value != null) {
      result
        ..add('idNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.craftType;
    if (value != null) {
      result
        ..add('craftType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CraftsmanRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CraftsmanRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'edited_time':
          result.editedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'docRef':
          result.docRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'craftsmanID':
          result.craftsmanID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fatherName':
          result.fatherName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'grandfatherName':
          result.grandfatherName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'familyName':
          result.familyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idNumber':
          result.idNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'craftType':
          result.craftType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CraftsmanRecord extends CraftsmanRecord {
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final DateTime? editedTime;
  @override
  final String? bio;
  @override
  final DocumentReference<Object?>? docRef;
  @override
  final String? craftsmanID;
  @override
  final String? firstName;
  @override
  final String? fatherName;
  @override
  final String? grandfatherName;
  @override
  final String? familyName;
  @override
  final String? city;
  @override
  final String? address;
  @override
  final String? idNumber;
  @override
  final String? craftType;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CraftsmanRecord([void Function(CraftsmanRecordBuilder)? updates]) =>
      (new CraftsmanRecordBuilder()..update(updates))._build();

  _$CraftsmanRecord._(
      {this.photoUrl,
      this.uid,
      this.createdTime,
      this.editedTime,
      this.bio,
      this.docRef,
      this.craftsmanID,
      this.firstName,
      this.fatherName,
      this.grandfatherName,
      this.familyName,
      this.city,
      this.address,
      this.idNumber,
      this.craftType,
      this.ffRef})
      : super._();

  @override
  CraftsmanRecord rebuild(void Function(CraftsmanRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CraftsmanRecordBuilder toBuilder() =>
      new CraftsmanRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CraftsmanRecord &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        editedTime == other.editedTime &&
        bio == other.bio &&
        docRef == other.docRef &&
        craftsmanID == other.craftsmanID &&
        firstName == other.firstName &&
        fatherName == other.fatherName &&
        grandfatherName == other.grandfatherName &&
        familyName == other.familyName &&
        city == other.city &&
        address == other.address &&
        idNumber == other.idNumber &&
        craftType == other.craftType &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, editedTime.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jc(_$hash, docRef.hashCode);
    _$hash = $jc(_$hash, craftsmanID.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, fatherName.hashCode);
    _$hash = $jc(_$hash, grandfatherName.hashCode);
    _$hash = $jc(_$hash, familyName.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, idNumber.hashCode);
    _$hash = $jc(_$hash, craftType.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CraftsmanRecord')
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('editedTime', editedTime)
          ..add('bio', bio)
          ..add('docRef', docRef)
          ..add('craftsmanID', craftsmanID)
          ..add('firstName', firstName)
          ..add('fatherName', fatherName)
          ..add('grandfatherName', grandfatherName)
          ..add('familyName', familyName)
          ..add('city', city)
          ..add('address', address)
          ..add('idNumber', idNumber)
          ..add('craftType', craftType)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CraftsmanRecordBuilder
    implements Builder<CraftsmanRecord, CraftsmanRecordBuilder> {
  _$CraftsmanRecord? _$v;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DateTime? _editedTime;
  DateTime? get editedTime => _$this._editedTime;
  set editedTime(DateTime? editedTime) => _$this._editedTime = editedTime;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  DocumentReference<Object?>? _docRef;
  DocumentReference<Object?>? get docRef => _$this._docRef;
  set docRef(DocumentReference<Object?>? docRef) => _$this._docRef = docRef;

  String? _craftsmanID;
  String? get craftsmanID => _$this._craftsmanID;
  set craftsmanID(String? craftsmanID) => _$this._craftsmanID = craftsmanID;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _fatherName;
  String? get fatherName => _$this._fatherName;
  set fatherName(String? fatherName) => _$this._fatherName = fatherName;

  String? _grandfatherName;
  String? get grandfatherName => _$this._grandfatherName;
  set grandfatherName(String? grandfatherName) =>
      _$this._grandfatherName = grandfatherName;

  String? _familyName;
  String? get familyName => _$this._familyName;
  set familyName(String? familyName) => _$this._familyName = familyName;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _idNumber;
  String? get idNumber => _$this._idNumber;
  set idNumber(String? idNumber) => _$this._idNumber = idNumber;

  String? _craftType;
  String? get craftType => _$this._craftType;
  set craftType(String? craftType) => _$this._craftType = craftType;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CraftsmanRecordBuilder() {
    CraftsmanRecord._initializeBuilder(this);
  }

  CraftsmanRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _editedTime = $v.editedTime;
      _bio = $v.bio;
      _docRef = $v.docRef;
      _craftsmanID = $v.craftsmanID;
      _firstName = $v.firstName;
      _fatherName = $v.fatherName;
      _grandfatherName = $v.grandfatherName;
      _familyName = $v.familyName;
      _city = $v.city;
      _address = $v.address;
      _idNumber = $v.idNumber;
      _craftType = $v.craftType;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CraftsmanRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CraftsmanRecord;
  }

  @override
  void update(void Function(CraftsmanRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CraftsmanRecord build() => _build();

  _$CraftsmanRecord _build() {
    final _$result = _$v ??
        new _$CraftsmanRecord._(
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            editedTime: editedTime,
            bio: bio,
            docRef: docRef,
            craftsmanID: craftsmanID,
            firstName: firstName,
            fatherName: fatherName,
            grandfatherName: grandfatherName,
            familyName: familyName,
            city: city,
            address: address,
            idNumber: idNumber,
            craftType: craftType,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
