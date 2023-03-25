import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'listings_record.g.dart';

abstract class ListingsRecord
    implements Built<ListingsRecord, ListingsRecordBuilder> {
  static Serializer<ListingsRecord> get serializer =>
      _$listingsRecordSerializer;

  String? get name;

  String? get description;

  String? get specifications;

  double? get price;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'modified_at')
  DateTime? get modifiedAt;

  @BuiltValueField(wireName: 'on_sale')
  bool? get onSale;

  @BuiltValueField(wireName: 'sale_price')
  double? get salePrice;

  int? get quantity;

  @BuiltValueField(wireName: 'Images')
  String? get images;

  String? get createdByID;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ListingsRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..specifications = ''
    ..price = 0.0
    ..onSale = false
    ..salePrice = 0.0
    ..quantity = 0
    ..images = ''
    ..createdByID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listings');

  static Stream<ListingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ListingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ListingsRecord._();
  factory ListingsRecord([void Function(ListingsRecordBuilder) updates]) =
      _$ListingsRecord;

  static ListingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createListingsRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  String? images,
  String? createdByID,
}) {
  final firestoreData = serializers.toFirestore(
    ListingsRecord.serializer,
    ListingsRecord(
      (l) => l
        ..name = name
        ..description = description
        ..specifications = specifications
        ..price = price
        ..createdAt = createdAt
        ..modifiedAt = modifiedAt
        ..onSale = onSale
        ..salePrice = salePrice
        ..quantity = quantity
        ..images = images
        ..createdByID = createdByID,
    ),
  );

  return firestoreData;
}
