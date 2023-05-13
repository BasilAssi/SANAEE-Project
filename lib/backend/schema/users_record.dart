import 'dart:async';

import 'package:from_css_color/from_css_color.dart';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get email;

  String? get password;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get bio;

  String? get uid;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  bool? get likedPosts;

  String? get profileType;

  String? get salary;

  bool? get isCustomer;

  bool? get isCraftsman;

  String? get positionTitle;

  String? get experienceLevel;

  String? get currentCompany;

  @BuiltValueField(wireName: 'edited_time')
  DateTime? get editedTime;

  String? get firstNameCustomer;

  String? get lastNameCustomer;

  String? get firstnameCraftsman;

  String? get fatherNameCraftsman;

  String? get grandFatherNameCraftsman;

  String? get familyNameCraftsman;

  String? get city;

  String? get address;

  String? get idNumber;

  String? get craftType;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..displayName = ''
    ..email = ''
    ..password = ''
    ..photoUrl = ''
    ..bio = ''
    ..uid = ''
    ..phoneNumber = ''
    ..likedPosts = false
    ..profileType = ''
    ..salary = ''
    ..isCustomer = false
    ..isCraftsman = false
    ..positionTitle = ''
    ..experienceLevel = ''
    ..currentCompany = ''
    ..firstNameCustomer = ''
    ..lastNameCustomer = ''
    ..firstnameCraftsman = ''
    ..fatherNameCraftsman = ''
    ..grandFatherNameCraftsman = ''
    ..familyNameCraftsman = ''
    ..city = ''
    ..address = ''
    ..idNumber = ''
    ..craftType = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static UsersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) => UsersRecord(
        (c) => c
          ..displayName = snapshot.data['display_name']
          ..email = snapshot.data['email']
          ..password = snapshot.data['password']
          ..createdTime = safeGet(() => DateTime.fromMillisecondsSinceEpoch(
              snapshot.data['created_time']))
          ..photoUrl = snapshot.data['photo_url']
          ..bio = snapshot.data['bio']
          ..uid = snapshot.data['uid']
          ..phoneNumber = snapshot.data['phone_number']
          ..likedPosts = snapshot.data['likedPosts']
          ..profileType = snapshot.data['profileType']
          ..salary = snapshot.data['salary']
          ..isCustomer = snapshot.data['isCustomer']
          ..isCraftsman = snapshot.data['isCraftsman']
          ..positionTitle = snapshot.data['positionTitle']
          ..experienceLevel = snapshot.data['experienceLevel']
          ..currentCompany = snapshot.data['currentCompany']
          ..editedTime = safeGet(() =>
              DateTime.fromMillisecondsSinceEpoch(snapshot.data['edited_time']))
          ..firstNameCustomer = snapshot.data['firstNameCustomer']
          ..lastNameCustomer = snapshot.data['lastNameCustomer']
          ..firstnameCraftsman = snapshot.data['firstnameCraftsman']
          ..fatherNameCraftsman = snapshot.data['fatherNameCraftsman']
          ..grandFatherNameCraftsman = snapshot.data['grandFatherNameCraftsman']
          ..familyNameCraftsman = snapshot.data['familyNameCraftsman']
          ..city = snapshot.data['city']
          ..address = snapshot.data['address']
          ..idNumber = snapshot.data['idNumber']
          ..craftType = snapshot.data['craftType']
          ..ffRef = UsersRecord.collection.doc(snapshot.objectID),
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

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
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
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..displayName = displayName
        ..email = email
        ..password = password
        ..createdTime = createdTime
        ..photoUrl = photoUrl
        ..bio = bio
        ..uid = uid
        ..phoneNumber = phoneNumber
        ..likedPosts = likedPosts
        ..profileType = profileType
        ..salary = salary
        ..isCustomer = isCustomer
        ..isCraftsman = isCraftsman
        ..positionTitle = positionTitle
        ..experienceLevel = experienceLevel
        ..currentCompany = currentCompany
        ..editedTime = editedTime
        ..firstNameCustomer = firstNameCustomer
        ..lastNameCustomer = lastNameCustomer
        ..firstnameCraftsman = firstnameCraftsman
        ..fatherNameCraftsman = fatherNameCraftsman
        ..grandFatherNameCraftsman = grandFatherNameCraftsman
        ..familyNameCraftsman = familyNameCraftsman
        ..city = city
        ..address = address
        ..idNumber = idNumber
        ..craftType = craftType,
    ),
  );

  return firestoreData;
}
