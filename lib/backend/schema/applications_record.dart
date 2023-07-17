import 'dart:async';

import 'package:collection/collection.dart';

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

  // "jobId" field.
  String? _jobId;
  String get jobId => _jobId ?? '';
  bool hasJobId() => _jobId != null;

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
    _jobId = snapshotData['jobId'] as String?;
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

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApplicationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApplicationsRecordData({
  String? jobId,
  String? status,
  DocumentReference? craftsmanApplied,
  DocumentReference? jobApplied,
  DateTime? timeApplied,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'jobId': jobId,
      'status': status,
      'craftsmanApplied': craftsmanApplied,
      'jobApplied': jobApplied,
      'timeApplied': timeApplied,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApplicationsRecordDocumentEquality
    implements Equality<ApplicationsRecord> {
  const ApplicationsRecordDocumentEquality();

  @override
  bool equals(ApplicationsRecord? e1, ApplicationsRecord? e2) {
    return e1?.jobId == e2?.jobId &&
        e1?.status == e2?.status &&
        e1?.craftsmanApplied == e2?.craftsmanApplied &&
        e1?.jobApplied == e2?.jobApplied &&
        e1?.timeApplied == e2?.timeApplied;
  }

  @override
  int hash(ApplicationsRecord? e) => const ListEquality().hash([
        e?.jobId,
        e?.status,
        e?.craftsmanApplied,
        e?.jobApplied,
        e?.timeApplied
      ]);

  @override
  bool isValidKey(Object? o) => o is ApplicationsRecord;
}
