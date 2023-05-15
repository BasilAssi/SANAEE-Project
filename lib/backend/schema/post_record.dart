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

  String? get estimatedPrice;

  DateTime? get timeCreated;

  DocumentReference? get createdBy;

  @BuiltValueField(wireName: 'image_1')
  String? get image1;

  @BuiltValueField(wireName: 'image_2')
  String? get image2;

  @BuiltValueField(wireName: 'image_3')
  String? get image3;

  String? get jobLocation;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PostRecordBuilder builder) => builder
    ..jobType = ''
    ..jobTitle = ''
    ..shortDescription = ''
    ..estimatedPrice = ''
    ..image1 = ''
    ..image2 = ''
    ..image3 = ''
    ..jobLocation = '';

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
  String? estimatedPrice,
  DateTime? timeCreated,
  DocumentReference? createdBy,
  String? image1,
  String? image2,
  String? image3,
  String? jobLocation,
}) {
  final firestoreData = serializers.toFirestore(
    PostRecord.serializer,
    PostRecord(
      (p) => p
        ..jobType = jobType
        ..jobTitle = jobTitle
        ..shortDescription = shortDescription
        ..estimatedPrice = estimatedPrice
        ..timeCreated = timeCreated
        ..createdBy = createdBy
        ..image1 = image1
        ..image2 = image2
        ..image3 = image3
        ..jobLocation = jobLocation,
    ),
  );

  return firestoreData;
}
