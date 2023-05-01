// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostRecord> _$postRecordSerializer = new _$PostRecordSerializer();

class _$PostRecordSerializer implements StructuredSerializer<PostRecord> {
  @override
  final Iterable<Type> types = const [PostRecord, _$PostRecord];
  @override
  final String wireName = 'PostRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.jobType;
    if (value != null) {
      result
        ..add('jobType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobTitle;
    if (value != null) {
      result
        ..add('jobTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shortDescription;
    if (value != null) {
      result
        ..add('shortDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.additionalPhotos;
    if (value != null) {
      result
        ..add('additionalPhotos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.jobLocation;
    if (value != null) {
      result
        ..add('jobLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.estimatedPrice;
    if (value != null) {
      result
        ..add('estimatedPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeCreated;
    if (value != null) {
      result
        ..add('timeCreated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('createdBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createdByC;
    if (value != null) {
      result
        ..add('createdByC')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PostRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'jobType':
          result.jobType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'jobTitle':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'shortDescription':
          result.shortDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'additionalPhotos':
          result.additionalPhotos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'jobLocation':
          result.jobLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'estimatedPrice':
          result.estimatedPrice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timeCreated':
          result.timeCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'createdBy':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'createdByC':
          result.createdByC = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PostRecord extends PostRecord {
  @override
  final String? jobType;
  @override
  final String? jobTitle;
  @override
  final String? shortDescription;
  @override
  final BuiltList<String>? additionalPhotos;
  @override
  final LatLng? jobLocation;
  @override
  final String? estimatedPrice;
  @override
  final DateTime? timeCreated;
  @override
  final DocumentReference<Object?>? createdBy;
  @override
  final DocumentReference<Object?>? createdByC;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PostRecord([void Function(PostRecordBuilder)? updates]) =>
      (new PostRecordBuilder()..update(updates))._build();

  _$PostRecord._(
      {this.jobType,
      this.jobTitle,
      this.shortDescription,
      this.additionalPhotos,
      this.jobLocation,
      this.estimatedPrice,
      this.timeCreated,
      this.createdBy,
      this.createdByC,
      this.ffRef})
      : super._();

  @override
  PostRecord rebuild(void Function(PostRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostRecordBuilder toBuilder() => new PostRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostRecord &&
        jobType == other.jobType &&
        jobTitle == other.jobTitle &&
        shortDescription == other.shortDescription &&
        additionalPhotos == other.additionalPhotos &&
        jobLocation == other.jobLocation &&
        estimatedPrice == other.estimatedPrice &&
        timeCreated == other.timeCreated &&
        createdBy == other.createdBy &&
        createdByC == other.createdByC &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobType.hashCode);
    _$hash = $jc(_$hash, jobTitle.hashCode);
    _$hash = $jc(_$hash, shortDescription.hashCode);
    _$hash = $jc(_$hash, additionalPhotos.hashCode);
    _$hash = $jc(_$hash, jobLocation.hashCode);
    _$hash = $jc(_$hash, estimatedPrice.hashCode);
    _$hash = $jc(_$hash, timeCreated.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdByC.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostRecord')
          ..add('jobType', jobType)
          ..add('jobTitle', jobTitle)
          ..add('shortDescription', shortDescription)
          ..add('additionalPhotos', additionalPhotos)
          ..add('jobLocation', jobLocation)
          ..add('estimatedPrice', estimatedPrice)
          ..add('timeCreated', timeCreated)
          ..add('createdBy', createdBy)
          ..add('createdByC', createdByC)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PostRecordBuilder implements Builder<PostRecord, PostRecordBuilder> {
  _$PostRecord? _$v;

  String? _jobType;
  String? get jobType => _$this._jobType;
  set jobType(String? jobType) => _$this._jobType = jobType;

  String? _jobTitle;
  String? get jobTitle => _$this._jobTitle;
  set jobTitle(String? jobTitle) => _$this._jobTitle = jobTitle;

  String? _shortDescription;
  String? get shortDescription => _$this._shortDescription;
  set shortDescription(String? shortDescription) =>
      _$this._shortDescription = shortDescription;

  ListBuilder<String>? _additionalPhotos;
  ListBuilder<String> get additionalPhotos =>
      _$this._additionalPhotos ??= new ListBuilder<String>();
  set additionalPhotos(ListBuilder<String>? additionalPhotos) =>
      _$this._additionalPhotos = additionalPhotos;

  LatLng? _jobLocation;
  LatLng? get jobLocation => _$this._jobLocation;
  set jobLocation(LatLng? jobLocation) => _$this._jobLocation = jobLocation;

  String? _estimatedPrice;
  String? get estimatedPrice => _$this._estimatedPrice;
  set estimatedPrice(String? estimatedPrice) =>
      _$this._estimatedPrice = estimatedPrice;

  DateTime? _timeCreated;
  DateTime? get timeCreated => _$this._timeCreated;
  set timeCreated(DateTime? timeCreated) => _$this._timeCreated = timeCreated;

  DocumentReference<Object?>? _createdBy;
  DocumentReference<Object?>? get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object?>? createdBy) =>
      _$this._createdBy = createdBy;

  DocumentReference<Object?>? _createdByC;
  DocumentReference<Object?>? get createdByC => _$this._createdByC;
  set createdByC(DocumentReference<Object?>? createdByC) =>
      _$this._createdByC = createdByC;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PostRecordBuilder() {
    PostRecord._initializeBuilder(this);
  }

  PostRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobType = $v.jobType;
      _jobTitle = $v.jobTitle;
      _shortDescription = $v.shortDescription;
      _additionalPhotos = $v.additionalPhotos?.toBuilder();
      _jobLocation = $v.jobLocation;
      _estimatedPrice = $v.estimatedPrice;
      _timeCreated = $v.timeCreated;
      _createdBy = $v.createdBy;
      _createdByC = $v.createdByC;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostRecord;
  }

  @override
  void update(void Function(PostRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostRecord build() => _build();

  _$PostRecord _build() {
    _$PostRecord _$result;
    try {
      _$result = _$v ??
          new _$PostRecord._(
              jobType: jobType,
              jobTitle: jobTitle,
              shortDescription: shortDescription,
              additionalPhotos: _additionalPhotos?.build(),
              jobLocation: jobLocation,
              estimatedPrice: estimatedPrice,
              timeCreated: timeCreated,
              createdBy: createdBy,
              createdByC: createdByC,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'additionalPhotos';
        _additionalPhotos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PostRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
