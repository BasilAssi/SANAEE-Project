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
    value = object.image1;
    if (value != null) {
      result
        ..add('image_1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image2;
    if (value != null) {
      result
        ..add('image_2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image3;
    if (value != null) {
      result
        ..add('image_3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobLocation;
    if (value != null) {
      result
        ..add('jobLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
        case 'image_1':
          result.image1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_2':
          result.image2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_3':
          result.image3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'jobLocation':
          result.jobLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
  final String? estimatedPrice;
  @override
  final DateTime? timeCreated;
  @override
  final DocumentReference<Object?>? createdBy;
  @override
  final String? image1;
  @override
  final String? image2;
  @override
  final String? image3;
  @override
  final String? jobLocation;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PostRecord([void Function(PostRecordBuilder)? updates]) =>
      (new PostRecordBuilder()..update(updates))._build();

  _$PostRecord._(
      {this.jobType,
      this.jobTitle,
      this.shortDescription,
      this.estimatedPrice,
      this.timeCreated,
      this.createdBy,
      this.image1,
      this.image2,
      this.image3,
      this.jobLocation,
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
        estimatedPrice == other.estimatedPrice &&
        timeCreated == other.timeCreated &&
        createdBy == other.createdBy &&
        image1 == other.image1 &&
        image2 == other.image2 &&
        image3 == other.image3 &&
        jobLocation == other.jobLocation &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobType.hashCode);
    _$hash = $jc(_$hash, jobTitle.hashCode);
    _$hash = $jc(_$hash, shortDescription.hashCode);
    _$hash = $jc(_$hash, estimatedPrice.hashCode);
    _$hash = $jc(_$hash, timeCreated.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, image1.hashCode);
    _$hash = $jc(_$hash, image2.hashCode);
    _$hash = $jc(_$hash, image3.hashCode);
    _$hash = $jc(_$hash, jobLocation.hashCode);
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
          ..add('estimatedPrice', estimatedPrice)
          ..add('timeCreated', timeCreated)
          ..add('createdBy', createdBy)
          ..add('image1', image1)
          ..add('image2', image2)
          ..add('image3', image3)
          ..add('jobLocation', jobLocation)
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

  String? _image1;
  String? get image1 => _$this._image1;
  set image1(String? image1) => _$this._image1 = image1;

  String? _image2;
  String? get image2 => _$this._image2;
  set image2(String? image2) => _$this._image2 = image2;

  String? _image3;
  String? get image3 => _$this._image3;
  set image3(String? image3) => _$this._image3 = image3;

  String? _jobLocation;
  String? get jobLocation => _$this._jobLocation;
  set jobLocation(String? jobLocation) => _$this._jobLocation = jobLocation;

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
      _estimatedPrice = $v.estimatedPrice;
      _timeCreated = $v.timeCreated;
      _createdBy = $v.createdBy;
      _image1 = $v.image1;
      _image2 = $v.image2;
      _image3 = $v.image3;
      _jobLocation = $v.jobLocation;
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
    final _$result = _$v ??
        new _$PostRecord._(
            jobType: jobType,
            jobTitle: jobTitle,
            shortDescription: shortDescription,
            estimatedPrice: estimatedPrice,
            timeCreated: timeCreated,
            createdBy: createdBy,
            image1: image1,
            image2: image2,
            image3: image3,
            jobLocation: jobLocation,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
