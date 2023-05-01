import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'post_record.g.dart';

abstract class PostRecord implements Built<PostRecord, PostRecordBuilder> {
  static Serializer<PostRecord> get serializer => _$postRecordSerializer;

  String? get jobType;

  String? get jobTitle;

  String? get shortDescription;

  BuiltList<String>? get additionalPhotos;

  LatLng? get jobLocation;

  String? get estimatedPrice;

  DateTime? get timeCreated;

  DocumentReference? get createdBy;

  DocumentReference? get createdByC;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PostRecordBuilder builder) => builder
    ..jobType = ''
    ..jobTitle = ''
    ..shortDescription = ''
    ..additionalPhotos = ListBuilder()
    ..estimatedPrice = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post');

  static Stream<PostRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PostRecord._();
  factory PostRecord([void Function(PostRecordBuilder) updates]) = _$PostRecord;

  static PostRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPostRecordData({
  String? jobType,
  String? jobTitle,
  String? shortDescription,
  LatLng? jobLocation,
  String? estimatedPrice,
  DateTime? timeCreated,
  DocumentReference? createdBy,
  DocumentReference? createdByC,
}) {
  final firestoreData = serializers.toFirestore(
    PostRecord.serializer,
    PostRecord(
      (p) => p
        ..jobType = jobType
        ..jobTitle = jobTitle
        ..shortDescription = shortDescription
        ..additionalPhotos = null
        ..jobLocation = jobLocation
        ..estimatedPrice = estimatedPrice
        ..timeCreated = timeCreated
        ..createdBy = createdBy
        ..createdByC = createdByC,
    ),
  );

  return firestoreData;
}
