import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'craftsman_record.g.dart';

abstract class CraftsmanRecord
    implements Built<CraftsmanRecord, CraftsmanRecordBuilder> {
  static Serializer<CraftsmanRecord> get serializer =>
      _$craftsmanRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'edited_time')
  DateTime? get editedTime;

  String? get bio;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  DocumentReference? get docRef;

  String? get craftsmanID;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CraftsmanRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..bio = ''
    ..userName = ''
    ..craftsmanID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('craftsman');

  static Stream<CraftsmanRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CraftsmanRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CraftsmanRecord._();
  factory CraftsmanRecord([void Function(CraftsmanRecordBuilder) updates]) =
      _$CraftsmanRecord;

  static CraftsmanRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCraftsmanRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  DocumentReference? docRef,
  String? craftsmanID,
}) {
  final firestoreData = serializers.toFirestore(
    CraftsmanRecord.serializer,
    CraftsmanRecord(
      (c) => c
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..editedTime = editedTime
        ..bio = bio
        ..userName = userName
        ..docRef = docRef
        ..craftsmanID = craftsmanID,
    ),
  );

  return firestoreData;
}
