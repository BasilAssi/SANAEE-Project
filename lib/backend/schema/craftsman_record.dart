import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'craftsman_record.g.dart';

abstract class CraftsmanRecord
    implements Built<CraftsmanRecord, CraftsmanRecordBuilder> {
  static Serializer<CraftsmanRecord> get serializer =>
      _$craftsmanRecordSerializer;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'edited_time')
  DateTime? get editedTime;

  String? get bio;

  DocumentReference? get docRef;

  String? get craftsmanID;

  String? get firstName;

  String? get fatherName;

  String? get grandfatherName;

  String? get familyName;

  String? get city;

  String? get address;

  String? get idNumber;

  String? get craftType;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CraftsmanRecordBuilder builder) => builder
    ..photoUrl = ''
    ..uid = ''
    ..bio = ''
    ..craftsmanID = ''
    ..firstName = ''
    ..fatherName = ''
    ..grandfatherName = ''
    ..familyName = ''
    ..city = ''
    ..address = ''
    ..idNumber = ''
    ..craftType = '';

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
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  DateTime? editedTime,
  String? bio,
  DocumentReference? docRef,
  String? craftsmanID,
  String? firstName,
  String? fatherName,
  String? grandfatherName,
  String? familyName,
  String? city,
  String? address,
  String? idNumber,
  String? craftType,
}) {
  final firestoreData = serializers.toFirestore(
    CraftsmanRecord.serializer,
    CraftsmanRecord(
      (c) => c
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..editedTime = editedTime
        ..bio = bio
        ..docRef = docRef
        ..craftsmanID = craftsmanID
        ..firstName = firstName
        ..fatherName = fatherName
        ..grandfatherName = grandfatherName
        ..familyName = familyName
        ..city = city
        ..address = address
        ..idNumber = idNumber
        ..craftType = craftType,
    ),
  );

  return firestoreData;
}
