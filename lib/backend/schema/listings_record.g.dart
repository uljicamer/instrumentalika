// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListingsRecord> _$listingsRecordSerializer =
    new _$ListingsRecordSerializer();

class _$ListingsRecordSerializer
    implements StructuredSerializer<ListingsRecord> {
  @override
  final Iterable<Type> types = const [ListingsRecord, _$ListingsRecord];
  @override
  final String wireName = 'ListingsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ListingsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.specifications;
    if (value != null) {
      result
        ..add('specifications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.onSale;
    if (value != null) {
      result
        ..add('on_sale')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.salePrice;
    if (value != null) {
      result
        ..add('sale_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('Images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdByID;
    if (value != null) {
      result
        ..add('createdByID')
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
  ListingsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListingsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'specifications':
          result.specifications = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'modified_at':
          result.modifiedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'on_sale':
          result.onSale = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'sale_price':
          result.salePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Images':
          result.images = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdByID':
          result.createdByID = serializers.deserialize(value,
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

class _$ListingsRecord extends ListingsRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? specifications;
  @override
  final double? price;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? modifiedAt;
  @override
  final bool? onSale;
  @override
  final double? salePrice;
  @override
  final int? quantity;
  @override
  final String? images;
  @override
  final String? createdByID;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ListingsRecord([void Function(ListingsRecordBuilder)? updates]) =>
      (new ListingsRecordBuilder()..update(updates))._build();

  _$ListingsRecord._(
      {this.name,
      this.description,
      this.specifications,
      this.price,
      this.createdAt,
      this.modifiedAt,
      this.onSale,
      this.salePrice,
      this.quantity,
      this.images,
      this.createdByID,
      this.ffRef})
      : super._();

  @override
  ListingsRecord rebuild(void Function(ListingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingsRecordBuilder toBuilder() =>
      new ListingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListingsRecord &&
        name == other.name &&
        description == other.description &&
        specifications == other.specifications &&
        price == other.price &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        onSale == other.onSale &&
        salePrice == other.salePrice &&
        quantity == other.quantity &&
        images == other.images &&
        createdByID == other.createdByID &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, specifications.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, onSale.hashCode);
    _$hash = $jc(_$hash, salePrice.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, createdByID.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListingsRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('specifications', specifications)
          ..add('price', price)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('onSale', onSale)
          ..add('salePrice', salePrice)
          ..add('quantity', quantity)
          ..add('images', images)
          ..add('createdByID', createdByID)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ListingsRecordBuilder
    implements Builder<ListingsRecord, ListingsRecordBuilder> {
  _$ListingsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _specifications;
  String? get specifications => _$this._specifications;
  set specifications(String? specifications) =>
      _$this._specifications = specifications;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  bool? _onSale;
  bool? get onSale => _$this._onSale;
  set onSale(bool? onSale) => _$this._onSale = onSale;

  double? _salePrice;
  double? get salePrice => _$this._salePrice;
  set salePrice(double? salePrice) => _$this._salePrice = salePrice;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _images;
  String? get images => _$this._images;
  set images(String? images) => _$this._images = images;

  String? _createdByID;
  String? get createdByID => _$this._createdByID;
  set createdByID(String? createdByID) => _$this._createdByID = createdByID;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ListingsRecordBuilder() {
    ListingsRecord._initializeBuilder(this);
  }

  ListingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _specifications = $v.specifications;
      _price = $v.price;
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _onSale = $v.onSale;
      _salePrice = $v.salePrice;
      _quantity = $v.quantity;
      _images = $v.images;
      _createdByID = $v.createdByID;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListingsRecord;
  }

  @override
  void update(void Function(ListingsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListingsRecord build() => _build();

  _$ListingsRecord _build() {
    final _$result = _$v ??
        new _$ListingsRecord._(
            name: name,
            description: description,
            specifications: specifications,
            price: price,
            createdAt: createdAt,
            modifiedAt: modifiedAt,
            onSale: onSale,
            salePrice: salePrice,
            quantity: quantity,
            images: images,
            createdByID: createdByID,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
