// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
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
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.likedPosts;
    if (value != null) {
      result
        ..add('likedPosts')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.profileType;
    if (value != null) {
      result
        ..add('profileType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.salary;
    if (value != null) {
      result
        ..add('salary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isCustomer;
    if (value != null) {
      result
        ..add('isCustomer')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isCraftsman;
    if (value != null) {
      result
        ..add('isCraftsman')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.positionTitle;
    if (value != null) {
      result
        ..add('positionTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.experienceLevel;
    if (value != null) {
      result
        ..add('experienceLevel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentCompany;
    if (value != null) {
      result
        ..add('currentCompany')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.editedTime;
    if (value != null) {
      result
        ..add('edited_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.firstNameCustomer;
    if (value != null) {
      result
        ..add('firstNameCustomer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastNameCustomer;
    if (value != null) {
      result
        ..add('lastNameCustomer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstnameCraftsman;
    if (value != null) {
      result
        ..add('firstnameCraftsman')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fatherNameCraftsman;
    if (value != null) {
      result
        ..add('fatherNameCraftsman')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.grandFatherNameCraftsman;
    if (value != null) {
      result
        ..add('grandFatherNameCraftsman')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.familyNameCraftsman;
    if (value != null) {
      result
        ..add('familyNameCraftsman')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'likedPosts':
          result.likedPosts = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'profileType':
          result.profileType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'salary':
          result.salary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isCustomer':
          result.isCustomer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isCraftsman':
          result.isCraftsman = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'positionTitle':
          result.positionTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'experienceLevel':
          result.experienceLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currentCompany':
          result.currentCompany = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'edited_time':
          result.editedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'firstNameCustomer':
          result.firstNameCustomer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastNameCustomer':
          result.lastNameCustomer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firstnameCraftsman':
          result.firstnameCraftsman = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fatherNameCraftsman':
          result.fatherNameCraftsman = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'grandFatherNameCraftsman':
          result.grandFatherNameCraftsman = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'familyNameCraftsman':
          result.familyNameCraftsman = serializers.deserialize(value,
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? displayName;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final DateTime? createdTime;
  @override
  final String? photoUrl;
  @override
  final String? bio;
  @override
  final String? uid;
  @override
  final String? phoneNumber;
  @override
  final bool? likedPosts;
  @override
  final String? profileType;
  @override
  final String? salary;
  @override
  final bool? isCustomer;
  @override
  final bool? isCraftsman;
  @override
  final String? positionTitle;
  @override
  final String? experienceLevel;
  @override
  final String? currentCompany;
  @override
  final DateTime? editedTime;
  @override
  final String? firstNameCustomer;
  @override
  final String? lastNameCustomer;
  @override
  final String? firstnameCraftsman;
  @override
  final String? fatherNameCraftsman;
  @override
  final String? grandFatherNameCraftsman;
  @override
  final String? familyNameCraftsman;
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

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.displayName,
      this.email,
      this.password,
      this.createdTime,
      this.photoUrl,
      this.bio,
      this.uid,
      this.phoneNumber,
      this.likedPosts,
      this.profileType,
      this.salary,
      this.isCustomer,
      this.isCraftsman,
      this.positionTitle,
      this.experienceLevel,
      this.currentCompany,
      this.editedTime,
      this.firstNameCustomer,
      this.lastNameCustomer,
      this.firstnameCraftsman,
      this.fatherNameCraftsman,
      this.grandFatherNameCraftsman,
      this.familyNameCraftsman,
      this.city,
      this.address,
      this.idNumber,
      this.craftType,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        displayName == other.displayName &&
        email == other.email &&
        password == other.password &&
        createdTime == other.createdTime &&
        photoUrl == other.photoUrl &&
        bio == other.bio &&
        uid == other.uid &&
        phoneNumber == other.phoneNumber &&
        likedPosts == other.likedPosts &&
        profileType == other.profileType &&
        salary == other.salary &&
        isCustomer == other.isCustomer &&
        isCraftsman == other.isCraftsman &&
        positionTitle == other.positionTitle &&
        experienceLevel == other.experienceLevel &&
        currentCompany == other.currentCompany &&
        editedTime == other.editedTime &&
        firstNameCustomer == other.firstNameCustomer &&
        lastNameCustomer == other.lastNameCustomer &&
        firstnameCraftsman == other.firstnameCraftsman &&
        fatherNameCraftsman == other.fatherNameCraftsman &&
        grandFatherNameCraftsman == other.grandFatherNameCraftsman &&
        familyNameCraftsman == other.familyNameCraftsman &&
        city == other.city &&
        address == other.address &&
        idNumber == other.idNumber &&
        craftType == other.craftType &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, likedPosts.hashCode);
    _$hash = $jc(_$hash, profileType.hashCode);
    _$hash = $jc(_$hash, salary.hashCode);
    _$hash = $jc(_$hash, isCustomer.hashCode);
    _$hash = $jc(_$hash, isCraftsman.hashCode);
    _$hash = $jc(_$hash, positionTitle.hashCode);
    _$hash = $jc(_$hash, experienceLevel.hashCode);
    _$hash = $jc(_$hash, currentCompany.hashCode);
    _$hash = $jc(_$hash, editedTime.hashCode);
    _$hash = $jc(_$hash, firstNameCustomer.hashCode);
    _$hash = $jc(_$hash, lastNameCustomer.hashCode);
    _$hash = $jc(_$hash, firstnameCraftsman.hashCode);
    _$hash = $jc(_$hash, fatherNameCraftsman.hashCode);
    _$hash = $jc(_$hash, grandFatherNameCraftsman.hashCode);
    _$hash = $jc(_$hash, familyNameCraftsman.hashCode);
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
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('password', password)
          ..add('createdTime', createdTime)
          ..add('photoUrl', photoUrl)
          ..add('bio', bio)
          ..add('uid', uid)
          ..add('phoneNumber', phoneNumber)
          ..add('likedPosts', likedPosts)
          ..add('profileType', profileType)
          ..add('salary', salary)
          ..add('isCustomer', isCustomer)
          ..add('isCraftsman', isCraftsman)
          ..add('positionTitle', positionTitle)
          ..add('experienceLevel', experienceLevel)
          ..add('currentCompany', currentCompany)
          ..add('editedTime', editedTime)
          ..add('firstNameCustomer', firstNameCustomer)
          ..add('lastNameCustomer', lastNameCustomer)
          ..add('firstnameCraftsman', firstnameCraftsman)
          ..add('fatherNameCraftsman', fatherNameCraftsman)
          ..add('grandFatherNameCraftsman', grandFatherNameCraftsman)
          ..add('familyNameCraftsman', familyNameCraftsman)
          ..add('city', city)
          ..add('address', address)
          ..add('idNumber', idNumber)
          ..add('craftType', craftType)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool? _likedPosts;
  bool? get likedPosts => _$this._likedPosts;
  set likedPosts(bool? likedPosts) => _$this._likedPosts = likedPosts;

  String? _profileType;
  String? get profileType => _$this._profileType;
  set profileType(String? profileType) => _$this._profileType = profileType;

  String? _salary;
  String? get salary => _$this._salary;
  set salary(String? salary) => _$this._salary = salary;

  bool? _isCustomer;
  bool? get isCustomer => _$this._isCustomer;
  set isCustomer(bool? isCustomer) => _$this._isCustomer = isCustomer;

  bool? _isCraftsman;
  bool? get isCraftsman => _$this._isCraftsman;
  set isCraftsman(bool? isCraftsman) => _$this._isCraftsman = isCraftsman;

  String? _positionTitle;
  String? get positionTitle => _$this._positionTitle;
  set positionTitle(String? positionTitle) =>
      _$this._positionTitle = positionTitle;

  String? _experienceLevel;
  String? get experienceLevel => _$this._experienceLevel;
  set experienceLevel(String? experienceLevel) =>
      _$this._experienceLevel = experienceLevel;

  String? _currentCompany;
  String? get currentCompany => _$this._currentCompany;
  set currentCompany(String? currentCompany) =>
      _$this._currentCompany = currentCompany;

  DateTime? _editedTime;
  DateTime? get editedTime => _$this._editedTime;
  set editedTime(DateTime? editedTime) => _$this._editedTime = editedTime;

  String? _firstNameCustomer;
  String? get firstNameCustomer => _$this._firstNameCustomer;
  set firstNameCustomer(String? firstNameCustomer) =>
      _$this._firstNameCustomer = firstNameCustomer;

  String? _lastNameCustomer;
  String? get lastNameCustomer => _$this._lastNameCustomer;
  set lastNameCustomer(String? lastNameCustomer) =>
      _$this._lastNameCustomer = lastNameCustomer;

  String? _firstnameCraftsman;
  String? get firstnameCraftsman => _$this._firstnameCraftsman;
  set firstnameCraftsman(String? firstnameCraftsman) =>
      _$this._firstnameCraftsman = firstnameCraftsman;

  String? _fatherNameCraftsman;
  String? get fatherNameCraftsman => _$this._fatherNameCraftsman;
  set fatherNameCraftsman(String? fatherNameCraftsman) =>
      _$this._fatherNameCraftsman = fatherNameCraftsman;

  String? _grandFatherNameCraftsman;
  String? get grandFatherNameCraftsman => _$this._grandFatherNameCraftsman;
  set grandFatherNameCraftsman(String? grandFatherNameCraftsman) =>
      _$this._grandFatherNameCraftsman = grandFatherNameCraftsman;

  String? _familyNameCraftsman;
  String? get familyNameCraftsman => _$this._familyNameCraftsman;
  set familyNameCraftsman(String? familyNameCraftsman) =>
      _$this._familyNameCraftsman = familyNameCraftsman;

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

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _email = $v.email;
      _password = $v.password;
      _createdTime = $v.createdTime;
      _photoUrl = $v.photoUrl;
      _bio = $v.bio;
      _uid = $v.uid;
      _phoneNumber = $v.phoneNumber;
      _likedPosts = $v.likedPosts;
      _profileType = $v.profileType;
      _salary = $v.salary;
      _isCustomer = $v.isCustomer;
      _isCraftsman = $v.isCraftsman;
      _positionTitle = $v.positionTitle;
      _experienceLevel = $v.experienceLevel;
      _currentCompany = $v.currentCompany;
      _editedTime = $v.editedTime;
      _firstNameCustomer = $v.firstNameCustomer;
      _lastNameCustomer = $v.lastNameCustomer;
      _firstnameCraftsman = $v.firstnameCraftsman;
      _fatherNameCraftsman = $v.fatherNameCraftsman;
      _grandFatherNameCraftsman = $v.grandFatherNameCraftsman;
      _familyNameCraftsman = $v.familyNameCraftsman;
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
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            displayName: displayName,
            email: email,
            password: password,
            createdTime: createdTime,
            photoUrl: photoUrl,
            bio: bio,
            uid: uid,
            phoneNumber: phoneNumber,
            likedPosts: likedPosts,
            profileType: profileType,
            salary: salary,
            isCustomer: isCustomer,
            isCraftsman: isCraftsman,
            positionTitle: positionTitle,
            experienceLevel: experienceLevel,
            currentCompany: currentCompany,
            editedTime: editedTime,
            firstNameCustomer: firstNameCustomer,
            lastNameCustomer: lastNameCustomer,
            firstnameCraftsman: firstnameCraftsman,
            fatherNameCraftsman: fatherNameCraftsman,
            grandFatherNameCraftsman: grandFatherNameCraftsman,
            familyNameCraftsman: familyNameCraftsman,
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
