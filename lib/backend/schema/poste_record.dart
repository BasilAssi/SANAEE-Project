import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'poste_record.g.dart';

abstract class PosteRecord implements Built<PosteRecord, PosteRecordBuilder> {
  static Serializer<PosteRecord> get serializer => _$posteRecordSerializer;

  DateTime? get data;

  String? get jobtype;

  String? get jobtitle;

  String? get shortDescription;

  DocumentReference? get createdBy;

  String? get content;

  @BuiltValueField(wireName: 'AdditionalPhotos')
  BuiltList<String>? get additionalPhotos;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PosteRecordBuilder builder) => builder
    ..jobtype = ''
    ..jobtitle = ''
    ..shortDescription = ''
    ..content = ''
    ..additionalPhotos = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('poste');

  static Stream<PosteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PosteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PosteRecord._();
  factory PosteRecord([void Function(PosteRecordBuilder) updates]) =
      _$PosteRecord;

  static PosteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPosteRecordData({
  DateTime? data,
  String? jobtype,
  String? jobtitle,
  String? shortDescription,
  DocumentReference? createdBy,
  String? content,
}) {
  final firestoreData = serializers.toFirestore(
    PosteRecord.serializer,
    PosteRecord(
      (p) => p
        ..data = data
        ..jobtype = jobtype
        ..jobtitle = jobtitle
        ..shortDescription = shortDescription
        ..createdBy = createdBy
        ..content = content
        ..additionalPhotos = null,
    ),
  );

  return firestoreData;
}
