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
    value = object.isGuest;
    if (value != null) {
      result
        ..add('isGuest')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
    value = object.customers;
    if (value != null) {
      result
        ..add('customers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.crafsmans;
    if (value != null) {
      result
        ..add('crafsmans')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
        case 'isGuest':
          result.isGuest = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isCustomer':
          result.isCustomer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isCraftsman':
          result.isCraftsman = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'customers':
          result.customers = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'crafsmans':
          result.crafsmans = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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
  final String? positionTitle;
  @override
  final String? experienceLevel;
  @override
  final String? currentCompany;
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
  final bool? isGuest;
  @override
  final bool? isCustomer;
  @override
  final bool? isCraftsman;
  @override
  final DocumentReference<Object?>? customers;
  @override
  final DocumentReference<Object?>? crafsmans;
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
      this.positionTitle,
      this.experienceLevel,
      this.currentCompany,
      this.uid,
      this.phoneNumber,
      this.likedPosts,
      this.profileType,
      this.salary,
      this.isGuest,
      this.isCustomer,
      this.isCraftsman,
      this.customers,
      this.crafsmans,
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
        positionTitle == other.positionTitle &&
        experienceLevel == other.experienceLevel &&
        currentCompany == other.currentCompany &&
        uid == other.uid &&
        phoneNumber == other.phoneNumber &&
        likedPosts == other.likedPosts &&
        profileType == other.profileType &&
        salary == other.salary &&
        isGuest == other.isGuest &&
        isCustomer == other.isCustomer &&
        isCraftsman == other.isCraftsman &&
        customers == other.customers &&
        crafsmans == other.crafsmans &&
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
    _$hash = $jc(_$hash, positionTitle.hashCode);
    _$hash = $jc(_$hash, experienceLevel.hashCode);
    _$hash = $jc(_$hash, currentCompany.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, likedPosts.hashCode);
    _$hash = $jc(_$hash, profileType.hashCode);
    _$hash = $jc(_$hash, salary.hashCode);
    _$hash = $jc(_$hash, isGuest.hashCode);
    _$hash = $jc(_$hash, isCustomer.hashCode);
    _$hash = $jc(_$hash, isCraftsman.hashCode);
    _$hash = $jc(_$hash, customers.hashCode);
    _$hash = $jc(_$hash, crafsmans.hashCode);
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
          ..add('positionTitle', positionTitle)
          ..add('experienceLevel', experienceLevel)
          ..add('currentCompany', currentCompany)
          ..add('uid', uid)
          ..add('phoneNumber', phoneNumber)
          ..add('likedPosts', likedPosts)
          ..add('profileType', profileType)
          ..add('salary', salary)
          ..add('isGuest', isGuest)
          ..add('isCustomer', isCustomer)
          ..add('isCraftsman', isCraftsman)
          ..add('customers', customers)
          ..add('crafsmans', crafsmans)
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

  bool? _isGuest;
  bool? get isGuest => _$this._isGuest;
  set isGuest(bool? isGuest) => _$this._isGuest = isGuest;

  bool? _isCustomer;
  bool? get isCustomer => _$this._isCustomer;
  set isCustomer(bool? isCustomer) => _$this._isCustomer = isCustomer;

  bool? _isCraftsman;
  bool? get isCraftsman => _$this._isCraftsman;
  set isCraftsman(bool? isCraftsman) => _$this._isCraftsman = isCraftsman;

  DocumentReference<Object?>? _customers;
  DocumentReference<Object?>? get customers => _$this._customers;
  set customers(DocumentReference<Object?>? customers) =>
      _$this._customers = customers;

  DocumentReference<Object?>? _crafsmans;
  DocumentReference<Object?>? get crafsmans => _$this._crafsmans;
  set crafsmans(DocumentReference<Object?>? crafsmans) =>
      _$this._crafsmans = crafsmans;

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
      _positionTitle = $v.positionTitle;
      _experienceLevel = $v.experienceLevel;
      _currentCompany = $v.currentCompany;
      _uid = $v.uid;
      _phoneNumber = $v.phoneNumber;
      _likedPosts = $v.likedPosts;
      _profileType = $v.profileType;
      _salary = $v.salary;
      _isGuest = $v.isGuest;
      _isCustomer = $v.isCustomer;
      _isCraftsman = $v.isCraftsman;
      _customers = $v.customers;
      _crafsmans = $v.crafsmans;
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
            positionTitle: positionTitle,
            experienceLevel: experienceLevel,
            currentCompany: currentCompany,
            uid: uid,
            phoneNumber: phoneNumber,
            likedPosts: likedPosts,
            profileType: profileType,
            salary: salary,
            isGuest: isGuest,
            isCustomer: isCustomer,
            isCraftsman: isCraftsman,
            customers: customers,
            crafsmans: crafsmans,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
