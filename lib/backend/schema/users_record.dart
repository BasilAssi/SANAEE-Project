import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "likedPosts" field.
  bool? _likedPosts;
  bool get likedPosts => _likedPosts ?? false;
  bool hasLikedPosts() => _likedPosts != null;

  // "profileType" field.
  String? _profileType;
  String get profileType => _profileType ?? '';
  bool hasProfileType() => _profileType != null;

  // "salary" field.
  String? _salary;
  String get salary => _salary ?? '';
  bool hasSalary() => _salary != null;

  // "isCustomer" field.
  bool? _isCustomer;
  bool get isCustomer => _isCustomer ?? false;
  bool hasIsCustomer() => _isCustomer != null;

  // "isCraftsman" field.
  bool? _isCraftsman;
  bool get isCraftsman => _isCraftsman ?? false;
  bool hasIsCraftsman() => _isCraftsman != null;

  // "positionTitle" field.
  String? _positionTitle;
  String get positionTitle => _positionTitle ?? '';
  bool hasPositionTitle() => _positionTitle != null;

  // "experienceLevel" field.
  String? _experienceLevel;
  String get experienceLevel => _experienceLevel ?? '';
  bool hasExperienceLevel() => _experienceLevel != null;

  // "currentCompany" field.
  String? _currentCompany;
  String get currentCompany => _currentCompany ?? '';
  bool hasCurrentCompany() => _currentCompany != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "firstNameCustomer" field.
  String? _firstNameCustomer;
  String get firstNameCustomer => _firstNameCustomer ?? '';
  bool hasFirstNameCustomer() => _firstNameCustomer != null;

  // "lastNameCustomer" field.
  String? _lastNameCustomer;
  String get lastNameCustomer => _lastNameCustomer ?? '';
  bool hasLastNameCustomer() => _lastNameCustomer != null;

  // "firstnameCraftsman" field.
  String? _firstnameCraftsman;
  String get firstnameCraftsman => _firstnameCraftsman ?? '';
  bool hasFirstnameCraftsman() => _firstnameCraftsman != null;

  // "fatherNameCraftsman" field.
  String? _fatherNameCraftsman;
  String get fatherNameCraftsman => _fatherNameCraftsman ?? '';
  bool hasFatherNameCraftsman() => _fatherNameCraftsman != null;

  // "grandFatherNameCraftsman" field.
  String? _grandFatherNameCraftsman;
  String get grandFatherNameCraftsman => _grandFatherNameCraftsman ?? '';
  bool hasGrandFatherNameCraftsman() => _grandFatherNameCraftsman != null;

  // "familyNameCraftsman" field.
  String? _familyNameCraftsman;
  String get familyNameCraftsman => _familyNameCraftsman ?? '';
  bool hasFamilyNameCraftsman() => _familyNameCraftsman != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "idNumber" field.
  String? _idNumber;
  String get idNumber => _idNumber ?? '';
  bool hasIdNumber() => _idNumber != null;

  // "craftType" field.
  String? _craftType;
  String get craftType => _craftType ?? '';
  bool hasCraftType() => _craftType != null;

  // "fatherNameCustomer" field.
  String? _fatherNameCustomer;
  String get fatherNameCustomer => _fatherNameCustomer ?? '';
  bool hasFatherNameCustomer() => _fatherNameCustomer != null;

  // "grandFatherNameCustomer" field.
  String? _grandFatherNameCustomer;
  String get grandFatherNameCustomer => _grandFatherNameCustomer ?? '';
  bool hasGrandFatherNameCustomer() => _grandFatherNameCustomer != null;

  // "CraftsmanStarRating" field.
  double? _craftsmanStarRating;
  double get craftsmanStarRating => _craftsmanStarRating ?? 0.0;
  bool hasCraftsmanStarRating() => _craftsmanStarRating != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _bio = snapshotData['bio'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _likedPosts = snapshotData['likedPosts'] as bool?;
    _profileType = snapshotData['profileType'] as String?;
    _salary = snapshotData['salary'] as String?;
    _isCustomer = snapshotData['isCustomer'] as bool?;
    _isCraftsman = snapshotData['isCraftsman'] as bool?;
    _positionTitle = snapshotData['positionTitle'] as String?;
    _experienceLevel = snapshotData['experienceLevel'] as String?;
    _currentCompany = snapshotData['currentCompany'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _firstNameCustomer = snapshotData['firstNameCustomer'] as String?;
    _lastNameCustomer = snapshotData['lastNameCustomer'] as String?;
    _firstnameCraftsman = snapshotData['firstnameCraftsman'] as String?;
    _fatherNameCraftsman = snapshotData['fatherNameCraftsman'] as String?;
    _grandFatherNameCraftsman =
        snapshotData['grandFatherNameCraftsman'] as String?;
    _familyNameCraftsman = snapshotData['familyNameCraftsman'] as String?;
    _city = snapshotData['city'] as String?;
    _address = snapshotData['address'] as String?;
    _idNumber = snapshotData['idNumber'] as String?;
    _craftType = snapshotData['craftType'] as String?;
    _fatherNameCustomer = snapshotData['fatherNameCustomer'] as String?;
    _grandFatherNameCustomer =
        snapshotData['grandFatherNameCustomer'] as String?;
    _craftsmanStarRating =
        castToType<double>(snapshotData['CraftsmanStarRating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  static UsersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      UsersRecord.getDocumentFromData(
        {
          'display_name': snapshot.data['display_name'],
          'email': snapshot.data['email'],
          'password': snapshot.data['password'],
          'created_time': safeGet(
            () => DateTime.fromMillisecondsSinceEpoch(
                snapshot.data['created_time']),
          ),
          'photo_url': snapshot.data['photo_url'],
          'bio': snapshot.data['bio'],
          'uid': snapshot.data['uid'],
          'phone_number': snapshot.data['phone_number'],
          'likedPosts': snapshot.data['likedPosts'],
          'profileType': snapshot.data['profileType'],
          'salary': snapshot.data['salary'],
          'isCustomer': snapshot.data['isCustomer'],
          'isCraftsman': snapshot.data['isCraftsman'],
          'positionTitle': snapshot.data['positionTitle'],
          'experienceLevel': snapshot.data['experienceLevel'],
          'currentCompany': snapshot.data['currentCompany'],
          'edited_time': safeGet(
            () => DateTime.fromMillisecondsSinceEpoch(
                snapshot.data['edited_time']),
          ),
          'firstNameCustomer': snapshot.data['firstNameCustomer'],
          'lastNameCustomer': snapshot.data['lastNameCustomer'],
          'firstnameCraftsman': snapshot.data['firstnameCraftsman'],
          'fatherNameCraftsman': snapshot.data['fatherNameCraftsman'],
          'grandFatherNameCraftsman': snapshot.data['grandFatherNameCraftsman'],
          'familyNameCraftsman': snapshot.data['familyNameCraftsman'],
          'city': snapshot.data['city'],
          'address': snapshot.data['address'],
          'idNumber': snapshot.data['idNumber'],
          'craftType': snapshot.data['craftType'],
          'fatherNameCustomer': snapshot.data['fatherNameCustomer'],
          'grandFatherNameCustomer': snapshot.data['grandFatherNameCustomer'],
          'CraftsmanStarRating':
              snapshot.data['CraftsmanStarRating']?.toDouble(),
        },
        UsersRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<UsersRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'users',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? displayName,
  String? email,
  String? password,
  DateTime? createdTime,
  String? photoUrl,
  String? bio,
  String? uid,
  String? phoneNumber,
  bool? likedPosts,
  String? profileType,
  String? salary,
  bool? isCustomer,
  bool? isCraftsman,
  String? positionTitle,
  String? experienceLevel,
  String? currentCompany,
  DateTime? editedTime,
  String? firstNameCustomer,
  String? lastNameCustomer,
  String? firstnameCraftsman,
  String? fatherNameCraftsman,
  String? grandFatherNameCraftsman,
  String? familyNameCraftsman,
  String? city,
  String? address,
  String? idNumber,
  String? craftType,
  String? fatherNameCustomer,
  String? grandFatherNameCustomer,
  double? craftsmanStarRating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'email': email,
      'password': password,
      'created_time': createdTime,
      'photo_url': photoUrl,
      'bio': bio,
      'uid': uid,
      'phone_number': phoneNumber,
      'likedPosts': likedPosts,
      'profileType': profileType,
      'salary': salary,
      'isCustomer': isCustomer,
      'isCraftsman': isCraftsman,
      'positionTitle': positionTitle,
      'experienceLevel': experienceLevel,
      'currentCompany': currentCompany,
      'edited_time': editedTime,
      'firstNameCustomer': firstNameCustomer,
      'lastNameCustomer': lastNameCustomer,
      'firstnameCraftsman': firstnameCraftsman,
      'fatherNameCraftsman': fatherNameCraftsman,
      'grandFatherNameCraftsman': grandFatherNameCraftsman,
      'familyNameCraftsman': familyNameCraftsman,
      'city': city,
      'address': address,
      'idNumber': idNumber,
      'craftType': craftType,
      'fatherNameCustomer': fatherNameCustomer,
      'grandFatherNameCustomer': grandFatherNameCustomer,
      'CraftsmanStarRating': craftsmanStarRating,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.createdTime == e2?.createdTime &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.bio == e2?.bio &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.likedPosts == e2?.likedPosts &&
        e1?.profileType == e2?.profileType &&
        e1?.salary == e2?.salary &&
        e1?.isCustomer == e2?.isCustomer &&
        e1?.isCraftsman == e2?.isCraftsman &&
        e1?.positionTitle == e2?.positionTitle &&
        e1?.experienceLevel == e2?.experienceLevel &&
        e1?.currentCompany == e2?.currentCompany &&
        e1?.editedTime == e2?.editedTime &&
        e1?.firstNameCustomer == e2?.firstNameCustomer &&
        e1?.lastNameCustomer == e2?.lastNameCustomer &&
        e1?.firstnameCraftsman == e2?.firstnameCraftsman &&
        e1?.fatherNameCraftsman == e2?.fatherNameCraftsman &&
        e1?.grandFatherNameCraftsman == e2?.grandFatherNameCraftsman &&
        e1?.familyNameCraftsman == e2?.familyNameCraftsman &&
        e1?.city == e2?.city &&
        e1?.address == e2?.address &&
        e1?.idNumber == e2?.idNumber &&
        e1?.craftType == e2?.craftType &&
        e1?.fatherNameCustomer == e2?.fatherNameCustomer &&
        e1?.grandFatherNameCustomer == e2?.grandFatherNameCustomer &&
        e1?.craftsmanStarRating == e2?.craftsmanStarRating;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.email,
        e?.password,
        e?.createdTime,
        e?.photoUrl,
        e?.bio,
        e?.uid,
        e?.phoneNumber,
        e?.likedPosts,
        e?.profileType,
        e?.salary,
        e?.isCustomer,
        e?.isCraftsman,
        e?.positionTitle,
        e?.experienceLevel,
        e?.currentCompany,
        e?.editedTime,
        e?.firstNameCustomer,
        e?.lastNameCustomer,
        e?.firstnameCraftsman,
        e?.fatherNameCraftsman,
        e?.grandFatherNameCraftsman,
        e?.familyNameCraftsman,
        e?.city,
        e?.address,
        e?.idNumber,
        e?.craftType,
        e?.fatherNameCustomer,
        e?.grandFatherNameCustomer,
        e?.craftsmanStarRating
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
