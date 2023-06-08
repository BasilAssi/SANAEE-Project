import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostRecord extends FirestoreRecord {
  PostRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "jobType" field.
  String? _jobType;
  String get jobType => _jobType ?? '';
  bool hasJobType() => _jobType != null;

  // "jobTitle" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  bool hasJobTitle() => _jobTitle != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "estimatedPrice" field.
  String? _estimatedPrice;
  String get estimatedPrice => _estimatedPrice ?? '';
  bool hasEstimatedPrice() => _estimatedPrice != null;

  // "timeCreated" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "image_1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "image_2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "image_3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  // "jobLocation" field.
  String? _jobLocation;
  String get jobLocation => _jobLocation ?? '';
  bool hasJobLocation() => _jobLocation != null;

  // "jobId" field.
  String? _jobId;
  String get jobId => _jobId ?? '';
  bool hasJobId() => _jobId != null;

  void _initializeFields() {
    _jobType = snapshotData['jobType'] as String?;
    _jobTitle = snapshotData['jobTitle'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _estimatedPrice = snapshotData['estimatedPrice'] as String?;
    _timeCreated = snapshotData['timeCreated'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
    _image1 = snapshotData['image_1'] as String?;
    _image2 = snapshotData['image_2'] as String?;
    _image3 = snapshotData['image_3'] as String?;
    _jobLocation = snapshotData['jobLocation'] as String?;
    _jobId = snapshotData['jobId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post');

  static Stream<PostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostRecord.fromSnapshot(s));

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostRecord.fromSnapshot(s));

  static PostRecord fromSnapshot(DocumentSnapshot snapshot) => PostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
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
  String? jobId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'jobType': jobType,
      'jobTitle': jobTitle,
      'shortDescription': shortDescription,
      'estimatedPrice': estimatedPrice,
      'timeCreated': timeCreated,
      'createdBy': createdBy,
      'image_1': image1,
      'image_2': image2,
      'image_3': image3,
      'jobLocation': jobLocation,
      'jobId': jobId,
    }.withoutNulls,
  );

  return firestoreData;
}
