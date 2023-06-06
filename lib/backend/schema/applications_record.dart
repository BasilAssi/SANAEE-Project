import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApplicationsRecord extends FirestoreRecord {
  ApplicationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "applicationId" field.
  String? _applicationId;
  String get applicationId => _applicationId ?? '';
  bool hasApplicationId() => _applicationId != null;

  // "jobId" field.
  String? _jobId;
  String get jobId => _jobId ?? '';
  bool hasJobId() => _jobId != null;

  // "craftsmanId" field.
  String? _craftsmanId;
  String get craftsmanId => _craftsmanId ?? '';
  bool hasCraftsmanId() => _craftsmanId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "craftsmanApplied" field.
  DocumentReference? _craftsmanApplied;
  DocumentReference? get craftsmanApplied => _craftsmanApplied;
  bool hasCraftsmanApplied() => _craftsmanApplied != null;

  // "jobApplied" field.
  DocumentReference? _jobApplied;
  DocumentReference? get jobApplied => _jobApplied;
  bool hasJobApplied() => _jobApplied != null;

  // "timeApplied" field.
  DateTime? _timeApplied;
  DateTime? get timeApplied => _timeApplied;
  bool hasTimeApplied() => _timeApplied != null;

  void _initializeFields() {
    _applicationId = snapshotData['applicationId'] as String?;
    _jobId = snapshotData['jobId'] as String?;
    _craftsmanId = snapshotData['craftsmanId'] as String?;
    _status = snapshotData['status'] as String?;
    _craftsmanApplied = snapshotData['craftsmanApplied'] as DocumentReference?;
    _jobApplied = snapshotData['jobApplied'] as DocumentReference?;
    _timeApplied = snapshotData['timeApplied'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Applications');

  static Stream<ApplicationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApplicationsRecord.fromSnapshot(s));

  static Future<ApplicationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApplicationsRecord.fromSnapshot(s));

  static ApplicationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApplicationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApplicationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApplicationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApplicationsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createApplicationsRecordData({
  String? applicationId,
  String? jobId,
  String? craftsmanId,
  String? status,
  DocumentReference? craftsmanApplied,
  DocumentReference? jobApplied,
  DateTime? timeApplied,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'applicationId': applicationId,
      'jobId': jobId,
      'craftsmanId': craftsmanId,
      'status': status,
      'craftsmanApplied': craftsmanApplied,
      'jobApplied': jobApplied,
      'timeApplied': timeApplied,
    }.withoutNulls,
  );

  return firestoreData;
}
