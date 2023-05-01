// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poste_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PosteRecord> _$posteRecordSerializer = new _$PosteRecordSerializer();

class _$PosteRecordSerializer implements StructuredSerializer<PosteRecord> {
  @override
  final Iterable<Type> types = const [PosteRecord, _$PosteRecord];
  @override
  final String wireName = 'PosteRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PosteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.jobtype;
    if (value != null) {
      result
        ..add('jobtype')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobtitle;
    if (value != null) {
      result
        ..add('jobtitle')
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
    value = object.createdBy;
    if (value != null) {
      result
        ..add('createdBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.additionalPhotos;
    if (value != null) {
      result
        ..add('AdditionalPhotos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  PosteRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PosteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'jobtype':
          result.jobtype = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'jobtitle':
          result.jobtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'shortDescription':
          result.shortDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdBy':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AdditionalPhotos':
          result.additionalPhotos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$PosteRecord extends PosteRecord {
  @override
  final DateTime? data;
  @override
  final String? jobtype;
  @override
  final String? jobtitle;
  @override
  final String? shortDescription;
  @override
  final DocumentReference<Object?>? createdBy;
  @override
  final String? content;
  @override
  final BuiltList<String>? additionalPhotos;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PosteRecord([void Function(PosteRecordBuilder)? updates]) =>
      (new PosteRecordBuilder()..update(updates))._build();

  _$PosteRecord._(
      {this.data,
      this.jobtype,
      this.jobtitle,
      this.shortDescription,
      this.createdBy,
      this.content,
      this.additionalPhotos,
      this.ffRef})
      : super._();

  @override
  PosteRecord rebuild(void Function(PosteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PosteRecordBuilder toBuilder() => new PosteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PosteRecord &&
        data == other.data &&
        jobtype == other.jobtype &&
        jobtitle == other.jobtitle &&
        shortDescription == other.shortDescription &&
        createdBy == other.createdBy &&
        content == other.content &&
        additionalPhotos == other.additionalPhotos &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, jobtype.hashCode);
    _$hash = $jc(_$hash, jobtitle.hashCode);
    _$hash = $jc(_$hash, shortDescription.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, additionalPhotos.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PosteRecord')
          ..add('data', data)
          ..add('jobtype', jobtype)
          ..add('jobtitle', jobtitle)
          ..add('shortDescription', shortDescription)
          ..add('createdBy', createdBy)
          ..add('content', content)
          ..add('additionalPhotos', additionalPhotos)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PosteRecordBuilder implements Builder<PosteRecord, PosteRecordBuilder> {
  _$PosteRecord? _$v;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  String? _jobtype;
  String? get jobtype => _$this._jobtype;
  set jobtype(String? jobtype) => _$this._jobtype = jobtype;

  String? _jobtitle;
  String? get jobtitle => _$this._jobtitle;
  set jobtitle(String? jobtitle) => _$this._jobtitle = jobtitle;

  String? _shortDescription;
  String? get shortDescription => _$this._shortDescription;
  set shortDescription(String? shortDescription) =>
      _$this._shortDescription = shortDescription;

  DocumentReference<Object?>? _createdBy;
  DocumentReference<Object?>? get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object?>? createdBy) =>
      _$this._createdBy = createdBy;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  ListBuilder<String>? _additionalPhotos;
  ListBuilder<String> get additionalPhotos =>
      _$this._additionalPhotos ??= new ListBuilder<String>();
  set additionalPhotos(ListBuilder<String>? additionalPhotos) =>
      _$this._additionalPhotos = additionalPhotos;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PosteRecordBuilder() {
    PosteRecord._initializeBuilder(this);
  }

  PosteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _jobtype = $v.jobtype;
      _jobtitle = $v.jobtitle;
      _shortDescription = $v.shortDescription;
      _createdBy = $v.createdBy;
      _content = $v.content;
      _additionalPhotos = $v.additionalPhotos?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PosteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PosteRecord;
  }

  @override
  void update(void Function(PosteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PosteRecord build() => _build();

  _$PosteRecord _build() {
    _$PosteRecord _$result;
    try {
      _$result = _$v ??
          new _$PosteRecord._(
              data: data,
              jobtype: jobtype,
              jobtitle: jobtitle,
              shortDescription: shortDescription,
              createdBy: createdBy,
              content: content,
              additionalPhotos: _additionalPhotos?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'additionalPhotos';
        _additionalPhotos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PosteRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
