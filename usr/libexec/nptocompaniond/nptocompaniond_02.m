Swift::Void __swiftcall SyncCollectionTargetItem.clearSubtitle()()
{
  v1 = (v0 + *(type metadata accessor for SyncCollectionTargetItem(0) + 40));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t SyncCollectionTargetItem.collectionMetadata.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncCollectionTargetItem(0) + 44));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  sub_10001D450(*v1, v2);
  return v3;
}

uint64_t SyncCollectionTargetItem.collectionMetadata.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SyncCollectionTargetItem(0) + 44);
  result = sub_1000340F8(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*SyncCollectionTargetItem.collectionMetadata.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SyncCollectionTargetItem(0) + 44);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_10001D450(v5, v6);
  return sub_10003F3B4;
}

Swift::Void __swiftcall SyncCollectionTargetItem.clearCollectionMetadata()()
{
  v1 = v0 + *(type metadata accessor for SyncCollectionTargetItem(0) + 44);
  sub_1000340F8(*v1, *(v1 + 8));
  *v1 = xmmword_100070BC0;
}

uint64_t SyncCollectionTargetItem.type.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncCollectionTargetItem(0) + 48));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t SyncCollectionTargetItem.type.setter(char a1)
{
  result = type metadata accessor for SyncCollectionTargetItem(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*SyncCollectionTargetItem.type.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for SyncCollectionTargetItem(0) + 48);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_10003431C;
}

uint64_t SyncCollectionTargetItem.subtype.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncCollectionTargetItem(0) + 52));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t SyncCollectionTargetItem.subtype.setter(char a1)
{
  result = type metadata accessor for SyncCollectionTargetItem(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t (*SyncCollectionTargetItem.subtype.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for SyncCollectionTargetItem(0) + 52);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_10003F3A0;
}

uint64_t sub_100038CBC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100038D58(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100038E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003DF38();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_100038E80@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14NanoPhotosSync0C20CollectionTargetItemV05AssetD4TypeO8rawValueAESgSi_tcfC_0(a1);
  *a2 = result;
  return result;
}

unint64_t sub_100038EB0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14NanoPhotosSync0C20CollectionTargetItemV05AssetD4TypeO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_100038F24()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100038F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003DEE4();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100038FD4()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100039034@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14NanoPhotosSync0C20CollectionTargetItemV05AssetD7SubtypeO8rawValueAESgSi_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100039070@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14NanoPhotosSync0C20CollectionTargetItemV05AssetD7SubtypeO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

double SyncCollectionTargetItem.init()@<D0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for SyncCollectionTargetItem(0);
  UnknownStorage.init()();
  result = 0.0;
  *(a1 + v2[7]) = xmmword_100070BC0;
  v4 = a1 + v2[8];
  *v4 = 0;
  v4[4] = 1;
  v5 = (a1 + v2[9]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[10]);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + v2[11]) = xmmword_100070BC0;
  *(a1 + v2[12]) = 4;
  *(a1 + v2[13]) = 5;
  return result;
}

uint64_t sub_1000391A4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100039240(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100039330()
{
  v0 = type metadata accessor for _NameMap();
  sub_100004D40(v0, static SyncAsset._protobuf_nameMap);
  sub_100004D08(v0, static SyncAsset._protobuf_nameMap);
  sub_100004180(&qword_1000990B0);
  v1 = (sub_100004180(&qword_1000990B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100070900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuidData";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "date";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t SyncAsset.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for SyncAsset(0);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for SyncAsset(0);
      dispatch thunk of Decoder.decodeSingularSFixed64Field(value:)();
    }
  }

  return result;
}

uint64_t SyncAsset.traverse<A>(visitor:)()
{
  result = sub_10003966C(v0);
  if (!v1)
  {
    sub_10003970C(v0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10003966C(uint64_t a1)
{
  result = type metadata accessor for SyncAsset(0);
  v3 = a1 + *(result + 20);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_10001D464(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return sub_1000340F8(v5, v4);
  }

  return result;
}

uint64_t sub_10003970C(uint64_t a1)
{
  result = type metadata accessor for SyncAsset(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularSFixed64Field(value:fieldNumber:)();
  }

  return result;
}

double sub_1000397D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = xmmword_100070BC0;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_100039848(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003DE9C(&qword_100099888, type metadata accessor for SyncAsset);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000398E8(uint64_t a1)
{
  v2 = sub_10003DE9C(&qword_100099440, type metadata accessor for SyncAsset);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100039954()
{
  sub_10003DE9C(&qword_100099440, type metadata accessor for SyncAsset);

  return Message.hash(into:)();
}

uint64_t sub_1000399F8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100004D40(v0, static SyncAssetCollection._protobuf_nameMap);
  sub_100004D08(v0, static SyncAssetCollection._protobuf_nameMap);
  sub_100004180(&qword_1000990B0);
  v1 = (sub_100004180(&qword_1000990B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100071330;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuidData";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assetIndex";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "title";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deprecated_subtitle";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "deprecated_keyAssetUUIDData";
  *(v15 + 8) = 27;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t SyncAssetCollection.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        goto LABEL_14;
      }

      if (result == 2)
      {
        dispatch thunk of Decoder.decodeRepeatedInt32Field(value:)();
      }
    }

    else if (result == 3 || result == 4)
    {
      type metadata accessor for SyncAssetCollection(0);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 5)
    {
LABEL_14:
      type metadata accessor for SyncAssetCollection(0);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }
}

uint64_t SyncAssetCollection.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for SyncAssetCollection(0);
  v3 = v0 + v2[6];
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15 || (v5 = *v3, sub_10001D464(*v3, *(v3 + 8)), dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)(), result = sub_1000340F8(v5, v4), !v1))
  {
    if (!*(*v0 + 16) || (result = dispatch thunk of Visitor.visitRepeatedInt32Field(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + v2[7] + 8) || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        if (!*(v0 + v2[8] + 8) || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
        {
          v7 = v0 + v2[9];
          v8 = *(v7 + 8);
          if (v8 >> 60 == 15)
          {
            return UnknownStorage.traverse<A>(visitor:)();
          }

          v9 = *v7;
          sub_10001D464(*v7, *(v7 + 8));
          dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
          result = sub_1000340F8(v9, v8);
          if (!v1)
          {
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

double sub_10003A004@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  result = 0.0;
  v5 = a1[7];
  *(a2 + a1[6]) = xmmword_100070BC0;
  v6 = (a2 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[9];
  v8 = (a2 + a1[8]);
  *v8 = 0;
  v8[1] = 0;
  *(a2 + v7) = xmmword_100070BC0;
  return result;
}

uint64_t sub_10003A0BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003DE9C(&qword_100099880, type metadata accessor for SyncAssetCollection);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10003A15C(uint64_t a1)
{
  v2 = sub_10003DE9C(&qword_100099448, type metadata accessor for SyncAssetCollection);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10003A1C8()
{
  sub_10003DE9C(&qword_100099448, type metadata accessor for SyncAssetCollection);

  return Message.hash(into:)();
}

uint64_t sub_10003A270()
{
  v0 = type metadata accessor for _NameMap();
  sub_100004D40(v0, static SyncLibrary._protobuf_nameMap);
  sub_100004D08(v0, static SyncLibrary._protobuf_nameMap);
  sub_100004180(&qword_1000990B0);
  v1 = (sub_100004180(&qword_1000990B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100070900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "asset";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assetCollection";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t SyncLibrary.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        type metadata accessor for SyncAssetCollection(0);
        sub_10003DE9C(&qword_100099448, type metadata accessor for SyncAssetCollection);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    type metadata accessor for SyncAsset(0);
    sub_10003DE9C(&qword_100099440, type metadata accessor for SyncAsset);
LABEL_5:
    v0 = v3;
    dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t SyncLibrary.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for SyncAsset(0), sub_10003DE9C(&qword_100099440, type metadata accessor for SyncAsset), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for SyncAssetCollection(0), sub_10003DE9C(&qword_100099448, type metadata accessor for SyncAssetCollection), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      type metadata accessor for SyncLibrary(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static SyncLibrary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_10003CB10(*a1, *a2) & 1) == 0 || (sub_10003D260(a1[1], a2[1], type metadata accessor for SyncAssetCollection, type metadata accessor for SyncAssetCollection, _s14NanoPhotosSync0C15AssetCollectionV2eeoiySbAC_ACtFZ_0) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SyncLibrary(0);
  type metadata accessor for UnknownStorage();
  sub_10003DE9C(&qword_1000990A8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10003A854@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  return UnknownStorage.init()();
}

uint64_t sub_10003A8D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003DE9C(&qword_100099878, type metadata accessor for SyncLibrary);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10003A974(uint64_t a1)
{
  v2 = sub_10003DE9C(&qword_100098B98, type metadata accessor for SyncLibrary);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10003A9E0()
{
  sub_10003DE9C(&qword_100098B98, type metadata accessor for SyncLibrary);

  return Message.hash(into:)();
}

uint64_t sub_10003AA5C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_10003CB10(*a1, *a2) & 1) == 0 || (sub_10003D260(a1[1], a2[1], type metadata accessor for SyncAssetCollection, type metadata accessor for SyncAssetCollection, _s14NanoPhotosSync0C15AssetCollectionV2eeoiySbAC_ACtFZ_0) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_10003DE9C(&qword_1000990A8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10003AB78()
{
  v0 = type metadata accessor for _NameMap();
  sub_100004D40(v0, static SyncCollectionTargetItem._protobuf_nameMap);
  sub_100004D08(v0, static SyncCollectionTargetItem._protobuf_nameMap);
  sub_100004180(&qword_1000990B0);
  v1 = (sub_100004180(&qword_1000990B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100071340;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "uuidData";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "collectionTarget";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "assetIndex";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "keyAssetIndex";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "title";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "subtitle";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "collectionMetadata";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "type";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "subtype";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t SyncCollectionTargetItem.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        dispatch thunk of Decoder.decodeRepeatedInt32Field(value:)();
      }

      else if (result == 1)
      {
LABEL_17:
        type metadata accessor for SyncCollectionTargetItem(0);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for SyncCollectionTargetItem(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result <= 6)
    {
      type metadata accessor for SyncCollectionTargetItem(0);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else
    {
      switch(result)
      {
        case 7:
          goto LABEL_17;
        case 8:
          sub_10003B0FC();
          break;
        case 9:
          sub_10003B170();
          break;
      }
    }
  }
}

uint64_t sub_10003B0FC()
{
  type metadata accessor for SyncCollectionTargetItem(0);
  sub_10003DF38();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t sub_10003B170()
{
  type metadata accessor for SyncCollectionTargetItem(0);
  sub_10003DEE4();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t SyncCollectionTargetItem.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for SyncCollectionTargetItem(0);
  v3 = v0 + v2[7];
  v4 = *(v3 + 1);
  if (v4 >> 60 == 15 || (v5 = *v3, sub_10001D464(*v3, *(v3 + 1)), dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)(), result = sub_1000340F8(v5, v4), !v1))
  {
    if ((*(v0 + v2[8] + 4) & 1) != 0 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
    {
      if (!*(*v0 + 16) || (result = dispatch thunk of Visitor.visitRepeatedInt32Field(value:fieldNumber:)(), !v1))
      {
        if (!*(v0[1] + 16) || (result = dispatch thunk of Visitor.visitRepeatedInt32Field(value:fieldNumber:)(), !v1))
        {
          if (!*(v0 + v2[9] + 8) || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
          {
            if (!*(v0 + v2[10] + 8) || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
            {
              v7 = v1;
              v8 = v0 + v2[11];
              v9 = *(v8 + 1);
              if (v9 >> 60 != 15)
              {
                v10 = *v8;
                sub_10001D464(*v8, *(v8 + 1));
                dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
                result = sub_1000340F8(v10, v9);
                if (v1)
                {
                  return result;
                }

                v7 = 0;
              }

              if (*(v0 + v2[12]) == 4)
              {
                v11 = v7;
              }

              else
              {
                sub_10003DF38();
                v11 = v7;
                result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
                if (v7)
                {
                  return result;
                }
              }

              if (*(v0 + v2[13]) == 5)
              {
                return UnknownStorage.traverse<A>(visitor:)();
              }

              sub_10003DEE4();
              result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
              if (!v11)
              {
                return UnknownStorage.traverse<A>(visitor:)();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double sub_10003B4D4@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  result = 0.0;
  v5 = a1[8];
  *(a2 + a1[7]) = xmmword_100070BC0;
  v6 = a2 + v5;
  *v6 = 0;
  v6[4] = 1;
  v7 = a1[10];
  v8 = (a2 + a1[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[12];
  *(a2 + a1[11]) = xmmword_100070BC0;
  *(a2 + v10) = 4;
  *(a2 + a1[13]) = 5;
  return result;
}

uint64_t sub_10003B560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10003B5D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10003B678(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003DE9C(&qword_100099870, type metadata accessor for SyncCollectionTargetItem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10003B718(uint64_t a1)
{
  v2 = sub_10003DE9C(&qword_100099470, type metadata accessor for SyncCollectionTargetItem);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10003B784()
{
  sub_10003DE9C(&qword_100099470, type metadata accessor for SyncCollectionTargetItem);

  return Message.hash(into:)();
}

uint64_t sub_10003B800()
{
  v0 = type metadata accessor for _NameMap();
  sub_100004D40(v0, static SyncCollectionTargetItem.AssetCollectionType._protobuf_nameMap);
  sub_100004D08(v0, static SyncCollectionTargetItem.AssetCollectionType._protobuf_nameMap);
  sub_100004180(&qword_1000990B0);
  v1 = (sub_100004180(&qword_1000990B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100071350;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Album";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SmartAlbum";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Moment";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10003BAB0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100004D40(v0, static SyncCollectionTargetItem.AssetCollectionSubtype._protobuf_nameMap);
  sub_100004D08(v0, static SyncCollectionTargetItem.AssetCollectionSubtype._protobuf_nameMap);
  sub_100004180(&qword_1000990B0);
  v1 = (sub_100004180(&qword_1000990B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100071330;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AlbumAny";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "AlbumRegular";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "AlbumMyPhotoStream";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 101;
  *v14 = "AlbumCloudShared";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 203;
  *v15 = "SmartAlbumFavorites";
  *(v15 + 8) = 19;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10003BDD4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100004D40(v0, static SyncCollectionTargetList._protobuf_nameMap);
  sub_100004D08(v0, static SyncCollectionTargetList._protobuf_nameMap);
  sub_100004180(&qword_1000990B0);
  v1 = (sub_100004180(&qword_1000990B8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10006FCE0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "collectionTargetItem";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t SyncCollectionTargetList.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for SyncCollectionTargetItem(0);
        sub_10003DE9C(&qword_100099470, type metadata accessor for SyncCollectionTargetItem);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t SyncCollectionTargetList.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for SyncCollectionTargetItem(0), sub_10003DE9C(&qword_100099470, type metadata accessor for SyncCollectionTargetItem), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    type metadata accessor for SyncCollectionTargetList(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static SyncCollectionTargetList.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_10003D260(*a1, *a2, type metadata accessor for SyncCollectionTargetItem, type metadata accessor for SyncCollectionTargetItem, _s14NanoPhotosSync0C20CollectionTargetItemV2eeoiySbAC_ACtFZ_0) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SyncCollectionTargetList(0);
  type metadata accessor for UnknownStorage();
  sub_10003DE9C(&qword_1000990A8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int sub_10003C27C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_10003DE9C(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003C330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10003C3A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10003C448(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003DE9C(&qword_100099868, type metadata accessor for SyncCollectionTargetList);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10003C4E8(uint64_t a1)
{
  v2 = sub_10003DE9C(&qword_100098BA0, type metadata accessor for SyncCollectionTargetList);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C554()
{
  sub_10003DE9C(&qword_100098BA0, type metadata accessor for SyncCollectionTargetList);

  return Message.hash(into:)();
}

uint64_t sub_10003C5D0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_10003D260(*a1, *a2, type metadata accessor for SyncCollectionTargetItem, type metadata accessor for SyncCollectionTargetItem, _s14NanoPhotosSync0C20CollectionTargetItemV2eeoiySbAC_ACtFZ_0) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_10003DE9C(&qword_1000990A8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10003C6B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10003C8E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10003D3FC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10001D4B8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10003C6B4(v13, a3, a4, &v12);
  v10 = v4;
  sub_10001D4B8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10003CAB4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003CB10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncAsset(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v58 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_84;
  }

  if (!v11 || a1 == a2)
  {
    v41 = 1;
    return v41 & 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  v62 = 0;
  v63 = v15;
  v64 = v4;
  while (1)
  {
    sub_10003F2C0(v13, v10, type metadata accessor for SyncAsset);
    sub_10003F2C0(v14, v7, type metadata accessor for SyncAsset);
    v16 = *(v4 + 20);
    v17 = *&v10[v16];
    v18 = *&v10[v16 + 8];
    v19 = &v7[v16];
    v20 = *v19;
    v21 = v19[1];
    if (v18 >> 60 == 15)
    {
      if (v21 >> 60 != 15)
      {
        goto LABEL_80;
      }

      sub_10001D450(v17, v18);
      sub_10001D450(v20, v21);
      goto LABEL_47;
    }

    if (v21 >> 60 == 15)
    {
LABEL_80:
      sub_10001D450(v17, v18);
      sub_10001D450(v20, v21);
      sub_1000340F8(v17, v18);
      v55 = v20;
      v56 = v21;
      goto LABEL_82;
    }

    v22 = v18 >> 62;
    v23 = v21 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v17)
      {
        v24 = 0;
      }

      else
      {
        v24 = v18 == 0xC000000000000000;
      }

      if (v24 && v21 >> 62 == 3 && !v20 && v21 == 0xC000000000000000)
      {
        sub_10001D450(0, 0xC000000000000000);
        sub_10001D450(0, 0xC000000000000000);
        sub_1000340F8(0, 0xC000000000000000);
        v27 = 0;
        v28 = 0xC000000000000000;
LABEL_48:
        sub_1000340F8(v27, v28);
        v4 = v64;
        goto LABEL_49;
      }

LABEL_33:
      v29 = 0;
      if (v23 > 1)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

    if (v22 <= 1)
    {
      break;
    }

    if (v22 != 2)
    {
      goto LABEL_33;
    }

    v31 = *(v17 + 16);
    v30 = *(v17 + 24);
    v32 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (v32)
    {
      goto LABEL_89;
    }

    if (v23 > 1)
    {
      goto LABEL_34;
    }

LABEL_31:
    if (v23)
    {
      LODWORD(v33) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
      }

      v33 = v33;
    }

    else
    {
      v33 = BYTE6(v21);
    }

LABEL_40:
    if (v29 != v33)
    {
      goto LABEL_81;
    }

    if (v29 < 1)
    {
      goto LABEL_46;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        memset(v66, 0, 14);
        sub_10001D450(v17, v18);
        sub_10001D450(v20, v21);
        goto LABEL_70;
      }

      v42 = *(v17 + 16);
      v59 = *(v17 + 24);
      v60 = v42;
      sub_10001D450(v17, v18);
      v61 = v20;
      sub_10001D450(v20, v21);
      v43 = __DataStorage._bytes.getter();
      if (v43)
      {
        v44 = v43;
        v45 = __DataStorage._offset.getter();
        v46 = v60;
        if (__OFSUB__(v60, v45))
        {
          goto LABEL_92;
        }

        v58 = v60 - v45 + v44;
      }

      else
      {
        v58 = 0;
        v46 = v60;
      }

      if (__OFSUB__(v59, v46))
      {
        goto LABEL_91;
      }

      __DataStorage._length.getter();
      v52 = v58;
    }

    else
    {
      if (!v22)
      {
        v66[0] = v17;
        LOWORD(v66[1]) = v18;
        BYTE2(v66[1]) = BYTE2(v18);
        BYTE3(v66[1]) = BYTE3(v18);
        BYTE4(v66[1]) = BYTE4(v18);
        BYTE5(v66[1]) = BYTE5(v18);
        sub_10001D450(v17, v18);
        sub_10001D450(v20, v21);
LABEL_70:
        v50 = v62;
        sub_10003C6B4(v66, v20, v21, &v65);
        v62 = v50;
        sub_1000340F8(v20, v21);
        v51 = v65;
        goto LABEL_77;
      }

      v60 = (v17 >> 32) - v17;
      if (v17 >> 32 < v17)
      {
        goto LABEL_90;
      }

      sub_10001D450(v17, v18);
      v61 = v20;
      sub_10001D450(v20, v21);
      v47 = __DataStorage._bytes.getter();
      if (v47)
      {
        v59 = v47;
        v48 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v48))
        {
          goto LABEL_93;
        }

        v49 = v17 - v48 + v59;
      }

      else
      {
        v49 = 0;
      }

      __DataStorage._length.getter();
      v52 = v49;
    }

    v53 = v61;
    v54 = v62;
    sub_10003C6B4(v52, v61, v21, v66);
    v62 = v54;
    sub_1000340F8(v53, v21);
    v51 = v66[0];
LABEL_77:
    sub_1000340F8(v17, v18);
    v4 = v64;
    if ((v51 & 1) == 0)
    {
      goto LABEL_83;
    }

LABEL_49:
    v36 = *(v4 + 24);
    v37 = &v10[v36];
    v38 = v10[v36 + 8];
    v39 = &v7[v36];
    v40 = v7[v36 + 8];
    if (v38)
    {
      if (!v40)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (*v37 != *v39)
      {
        LOBYTE(v40) = 1;
      }

      if (v40)
      {
        goto LABEL_83;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_10003DE9C(&qword_1000990A8, &type metadata accessor for UnknownStorage);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10003F328(v7, type metadata accessor for SyncAsset);
    sub_10003F328(v10, type metadata accessor for SyncAsset);
    if (v41)
    {
      v14 += v63;
      v13 += v63;
      if (--v11)
      {
        continue;
      }
    }

    return v41 & 1;
  }

  if (!v22)
  {
    v29 = BYTE6(v18);
    if (v23 > 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  LODWORD(v29) = HIDWORD(v17) - v17;
  if (__OFSUB__(HIDWORD(v17), v17))
  {
    goto LABEL_88;
  }

  v29 = v29;
  if (v23 <= 1)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (v23 == 2)
  {
    v35 = *(v20 + 16);
    v34 = *(v20 + 24);
    v32 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (v32)
    {
      goto LABEL_87;
    }

    goto LABEL_40;
  }

  if (!v29)
  {
LABEL_46:
    sub_10001D450(v17, v18);
    sub_10001D450(v20, v21);
    sub_1000340F8(v20, v21);
LABEL_47:
    v27 = v17;
    v28 = v18;
    goto LABEL_48;
  }

LABEL_81:
  sub_10001D450(v17, v18);
  sub_10001D450(v20, v21);
  sub_1000340F8(v20, v21);
  v55 = v17;
  v56 = v18;
LABEL_82:
  sub_1000340F8(v55, v56);
LABEL_83:
  sub_10003F328(v7, type metadata accessor for SyncAsset);
  sub_10003F328(v10, type metadata accessor for SyncAsset);
LABEL_84:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_10003D260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_10003F2C0(v18, v15, a4);
        sub_10003F2C0(v19, v12, a4);
        v21 = a5(v15, v12);
        sub_10003F328(v12, a4);
        sub_10003F328(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_10003D3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10003C6B4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10003D4B4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10001D464(a3, a4);
          return sub_10003C8E4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s14NanoPhotosSync0C5AssetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncAsset(0);
  v5 = *(v4 + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10001D450(v7, v6);
      sub_10001D450(v10, v9);
      sub_1000340F8(v7, v6);
      goto LABEL_7;
    }

LABEL_5:
    sub_10001D450(v7, v6);
    sub_10001D450(v10, v9);
    sub_1000340F8(v7, v6);
    sub_1000340F8(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_10001D450(v7, v6);
  sub_10001D450(v10, v9);
  v12 = sub_10003D4B4(v7, v6, v10, v9);
  sub_1000340F8(v10, v9);
  sub_1000340F8(v7, v6);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_10003DE9C(&qword_1000990A8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _s14NanoPhotosSync0C20CollectionTargetItemV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for SyncCollectionTargetItem(0);
  v5 = v4[7];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_5;
    }

    sub_10001D450(v7, v6);
    sub_10001D450(v10, v9);
    sub_1000340F8(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_5;
    }

    sub_10001D450(v7, v6);
    sub_10001D450(v10, v9);
    v12 = sub_10003D4B4(v7, v6, v10, v9);
    sub_1000340F8(v10, v9);
    sub_1000340F8(v7, v6);
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = v4[8];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if ((sub_10003CAB4(*a1, *a2) & 1) == 0 || (sub_10003CAB4(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v18 = v4[9];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22 || (*v19 != *v21 || v20 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = v4[10];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27 || (*v24 != *v26 || v25 != v27) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v28 = v4[11];
  v7 = *(a1 + v28);
  v6 = *(a1 + v28 + 8);
  v29 = (a2 + v28);
  v10 = *v29;
  v9 = v29[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10001D450(v7, v6);
      sub_10001D450(v10, v9);
      sub_1000340F8(v7, v6);
      goto LABEL_35;
    }

LABEL_5:
    sub_10001D450(v7, v6);
    sub_10001D450(v10, v9);
    sub_1000340F8(v7, v6);
    sub_1000340F8(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_10001D450(v7, v6);
  sub_10001D450(v10, v9);
  v30 = sub_10003D4B4(v7, v6, v10, v9);
  sub_1000340F8(v10, v9);
  sub_1000340F8(v7, v6);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v31 = v4[12];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 == 4)
  {
    if (v33 != 4)
    {
      return 0;
    }
  }

  else if (v32 != v33)
  {
    return 0;
  }

  v34 = v4[13];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 != 5)
  {
    if (v36 != 5 && qword_100071DF8[v35] == qword_100071DF8[v36])
    {
      goto LABEL_44;
    }

    return 0;
  }

  if (v36 != 5)
  {
    return 0;
  }

LABEL_44:
  type metadata accessor for UnknownStorage();
  sub_10003DE9C(&qword_1000990A8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _s14NanoPhotosSync0C15AssetCollectionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for SyncAssetCollection(0);
  v5 = v4[6];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_5;
    }

    sub_10001D450(v7, v6);
    sub_10001D450(v10, v9);
    sub_1000340F8(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_5;
    }

    sub_10001D450(v7, v6);
    sub_10001D450(v10, v9);
    v11 = sub_10003D4B4(v7, v6, v10, v9);
    sub_1000340F8(v10, v9);
    sub_1000340F8(v7, v6);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_10003CAB4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v12 = v4[7];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16 || (*v13 != *v15 || v14 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = v4[8];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (!v21 || (*v18 != *v20 || v19 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v23 = v4[9];
  v7 = *(a1 + v23);
  v6 = *(a1 + v23 + 8);
  v24 = (a2 + v23);
  v10 = *v24;
  v9 = v24[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 != 15)
    {
      sub_10001D450(v7, v6);
      sub_10001D450(v10, v9);
      v25 = sub_10003D4B4(v7, v6, v10, v9);
      sub_1000340F8(v10, v9);
      sub_1000340F8(v7, v6);
      if (v25)
      {
        goto LABEL_28;
      }

      return 0;
    }

LABEL_5:
    sub_10001D450(v7, v6);
    sub_10001D450(v10, v9);
    sub_1000340F8(v7, v6);
    sub_1000340F8(v10, v9);
    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_5;
  }

  sub_10001D450(v7, v6);
  sub_10001D450(v10, v9);
  sub_1000340F8(v7, v6);
LABEL_28:
  type metadata accessor for UnknownStorage();
  sub_10003DE9C(&qword_1000990A8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t _s14NanoPhotosSync0C20CollectionTargetItemV05AssetD4TypeO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t _s14NanoPhotosSync0C20CollectionTargetItemV05AssetD7SubtypeO8rawValueAESgSi_tcfC_0(uint64_t result)
{
  if (result <= 99)
  {
    if (!result)
    {
      return result;
    }

    if (result == 2)
    {
      return 1;
    }
  }

  else
  {
    switch(result)
    {
      case 100:
        return 2;
      case 101:
        return 3;
      case 203:
        return 4;
    }
  }

  return 5;
}

uint64_t sub_10003DE9C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003DEE4()
{
  result = qword_100099458;
  if (!qword_100099458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099458);
  }

  return result;
}

unint64_t sub_10003DF38()
{
  result = qword_100099460;
  if (!qword_100099460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099460);
  }

  return result;
}

unint64_t sub_10003DF90()
{
  result = qword_100099480;
  if (!qword_100099480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099480);
  }

  return result;
}

unint64_t sub_10003DFE8()
{
  result = qword_100099488;
  if (!qword_100099488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099488);
  }

  return result;
}

unint64_t sub_10003E040()
{
  result = qword_100099490;
  if (!qword_100099490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099490);
  }

  return result;
}

unint64_t sub_10003E098()
{
  result = qword_100099498;
  if (!qword_100099498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099498);
  }

  return result;
}

unint64_t sub_10003E0F0()
{
  result = qword_1000994A0;
  if (!qword_1000994A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000994A0);
  }

  return result;
}

unint64_t sub_10003E148()
{
  result = qword_1000994A8;
  if (!qword_1000994A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000994A8);
  }

  return result;
}

uint64_t sub_10003E1FC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000055FC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10003E818()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_10003EEF8(319, &qword_100099330, &type metadata for Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10003EEF8(319, &unk_100099588, &type metadata for Int64, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003E924()
{
  sub_10003EEF8(319, &unk_100099628, &type metadata for Int32, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_10003EEF8(319, &qword_100099330, &type metadata for Data, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10003EEF8(319, &qword_100099060, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10003EA78()
{
  sub_10003EB4C(319, &qword_1000996D0, type metadata accessor for SyncAsset);
  if (v0 <= 0x3F)
  {
    sub_10003EB4C(319, &unk_1000996D8, type metadata accessor for SyncAssetCollection);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003EB4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003EBB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10003EC74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10003ED18()
{
  sub_10003EEF8(319, &unk_100099628, &type metadata for Int32, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_10003EEF8(319, &qword_100099330, &type metadata for Data, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10003EEF8(319, &unk_100099068, &type metadata for Int32, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10003EEF8(319, &qword_100099060, &type metadata for String, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_10003EEF8(319, &qword_100099778, &type metadata for SyncCollectionTargetItem.AssetCollectionType, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_10003EEF8(319, &unk_100099780, &type metadata for SyncCollectionTargetItem.AssetCollectionSubtype, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10003EEF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SyncCollectionTargetItem.AssetCollectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncCollectionTargetItem.AssetCollectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10003F0BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10003F17C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10003F220()
{
  sub_10003EB4C(319, &unk_100099838, type metadata accessor for SyncCollectionTargetItem);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10003F2C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003F328(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003F3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001D38C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009BA4(v11, &qword_100098AE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100009BA4(a3, &qword_100098AE0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009BA4(a3, &qword_100098AE0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10003F6B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v61 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v57 = &v49 - v14;
  swift_defaultActor_initialize();
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = &_swiftEmptyDictionarySingleton;
  v5[16] = v17;
  v5[17] = &_swiftEmptyDictionarySingleton;
  v5[14] = a1;
  v5[15] = v15;
  v5[18] = a3;
  v5[19] = a4;
  v18 = type metadata accessor for DeviceCapabilityObserver();
  v63.receiver = v5;
  v63.super_class = v18;
  v19 = a1;
  v51 = a4;

  v20 = objc_msgSendSuper2(&v63, "init");
  sub_100004180(&unk_1000982F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10006FCE0;
  v22 = v20[15];
  v23 = v20[16];
  *(v21 + 56) = &type metadata for String;
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v24 = v20;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v58 = v19;
  [v19 addPropertyObserver:v24 forPropertyChanges:isa];
  v50 = v24;

  v56 = *(a2 + 16);
  if (v56)
  {
    v26 = 0;
    v55 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v60 = v11 + 16;
    v52 = v11;
    v53 = a2;
    v54 = v11 + 8;
    while (v26 < *(a2 + 16))
    {
      v59 = *(v11 + 72);
      v27 = *(v11 + 16);
      v28 = v57;
      v27(v57, v55 + v59 * v26, v10);
      v29 = v61;
      v27(v61, v28, v10);
      v30 = UUID._bridgeToObjectiveC()().super.isa;
      v31 = *(v11 + 8);
      v32 = v10;
      v31(v28, v10);
      v33 = [v58 supportsCapability:v30];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v16;
      v36 = sub_10004760C(v29);
      v37 = v16[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_17;
      }

      v40 = v35;
      if (v16[3] >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100041AF0();
        }
      }

      else
      {
        sub_10004128C(v39, isUniquelyReferenced_nonNull_native);
        v41 = sub_10004760C(v61);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_19;
        }

        v36 = v41;
      }

      v10 = v32;
      v16 = v62;
      if (v40)
      {
        *(v62[7] + v36) = v33;
        v31(v61, v32);
      }

      else
      {
        v62[(v36 >> 6) + 8] |= 1 << v36;
        v43 = v61;
        v27((v16[6] + v36 * v59), v61, v32);
        *(v16[7] + v36) = v33;
        v31(v43, v32);
        v44 = v16[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_18;
        }

        v16[2] = v46;
      }

      ++v26;
      v11 = v52;
      a2 = v53;
      if (v56 == v26)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_15:

    v47 = v50;
    swift_beginAccess();
    v47[17] = v16;

    return v47;
  }

  return result;
}

uint64_t sub_10003FB14()
{
  v1 = *(v0 + 112);
  sub_100004180(&unk_1000982F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10006FCE0;
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = v1;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 removePropertyObserver:v0 forPropertyChanges:isa];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10003FBFC()
{
  sub_10003FB14();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10003FC28(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_100004180(&qword_1000998E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  type metadata accessor for DeviceCapabilityObserver();
  swift_allocObject();

  sub_10003F6B4(a2, a3, sub_100041DB8, v11);
  return AsyncStream.Continuation.onTermination.setter();
}

uint64_t sub_10003FDB8()
{
  v0 = sub_100004180(&qword_1000998E8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  AsyncStream.Continuation.yield<A>()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10003FE84(void *a1)
{
  v2 = v1;
  v43 = a1;
  v42 = sub_100004180(&qword_1000998C0);
  __chkstk_darwin(v42);
  v48 = &v40 - v3;
  swift_beginAccess();
  v4 = *(v1 + 136);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v1 + 136) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v47 = *(v1 + 136);
  swift_bridgeObjectRetain_n();
  v12 = 0;
  LODWORD(v41) = 0;
  v40 = v1;
  while (v10)
  {
LABEL_12:
    v15 = __clz(__rbit64(v10)) | (v12 << 6);
    v16 = v47;
    v17 = *(v47 + 48);
    v18 = type metadata accessor for UUID();
    v19 = *(v18 - 8);
    v20 = *(v19 + 16);
    v21 = v19 + 16;
    v44 = *(v19 + 72);
    v45 = v20;
    v13 = v48;
    v46 = v18;
    (v20)(v48, v17 + v44 * v15);
    LODWORD(v17) = *(*(v16 + 56) + v15);
    *(v13 + *(v42 + 48)) = v17;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v23 = [v43 supportsCapability:isa];

    if (v17 != v23)
    {
      v41 = v21;
      v24 = v23;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = *(v2 + 136);
      v26 = v49;
      *(v2 + 136) = 0x8000000000000000;
      v28 = sub_10004760C(v13);
      v29 = v26[2];
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v32 = v27;
      if (v26[3] >= v31)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v35 = v49;
          if ((v27 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_100041AF0();
          v35 = v49;
          if ((v32 & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_10004128C(v31, isUniquelyReferenced_nonNull_native);
        v33 = sub_10004760C(v48);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_30;
        }

        v28 = v33;
        v35 = v49;
        if ((v32 & 1) == 0)
        {
LABEL_20:
          v35[(v28 >> 6) + 8] |= 1 << v28;
          v45(v35[6] + v28 * v44, v48, v46);
          *(v35[7] + v28) = v24;
          v36 = v35[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_29;
          }

          v35[2] = v38;
          goto LABEL_5;
        }
      }

      *(v35[7] + v28) = v24;
LABEL_5:
      v2 = v40;
      *(v40 + 136) = v35;

      swift_endAccess();
      LODWORD(v41) = 1;
      v13 = v48;
    }

    v10 &= v10 - 1;
    sub_100009BA4(v13, &qword_1000998C0);
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v6 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_12;
    }
  }

  if (v41)
  {
    return (*(v2 + 144))(result);
  }

  return result;
}

uint64_t sub_100040250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100040274, 0, 0);
}

uint64_t sub_100040274()
{
  v1 = v0[2];
  if (v1)
  {
    sub_100040A28();
    v2 = v1;
    if (static NSObject.== infix(_:_:)())
    {
      v3 = v0[5];
      if (v3)
      {
        v4 = v0[3];
        if (*(v4 + 120) == v0[4] && v3 == *(v4 + 128))
        {
          goto LABEL_10;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v4 = v0[3];
LABEL_10:

          return _swift_task_switch(sub_100040370, v4, 0);
        }
      }
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100040370()
{
  sub_10003FE84(*(v0 + 16));

  return _swift_task_switch(sub_1000403D8, 0, 0);
}

uint64_t sub_1000403D8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000405F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000154C0;

  return sub_100040250(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000406C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000407C0;

  return v6(a1);
}

uint64_t sub_1000407C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000408B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001EDC4;

  return sub_1000406C8(a1, v4);
}

uint64_t sub_100040970(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000154C0;

  return sub_1000406C8(a1, v4);
}

unint64_t sub_100040A28()
{
  result = qword_1000998B8;
  if (!qword_1000998B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000998B8);
  }

  return result;
}

uint64_t sub_100040A74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004180(&unk_100099900);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (a2)
      {
        sub_100002B00(v21, v30);
      }

      else
      {
        sub_10001E2AC(v21, v30);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20 + 100);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_100002B00(v30, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100040D10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004180(&qword_1000998F8);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_100002B00(v24, v34);
      }

      else
      {
        sub_10001E2AC(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100002B00(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100040FD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004180(&qword_1000998F0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100004BEC((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_10001F810(v23, &v36);
        sub_10000A128(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100004BEC(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10004128C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100004180(&qword_1000998C8);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
      }

      else
      {
        (*v36)(v43, v25, v5);
      }

      v41 = *(*(v9 + 56) + v23);
      sub_100041D60();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void *sub_100041624()
{
  v1 = v0;
  sub_100004180(&unk_100099900);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        sub_10001E2AC(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100002B00(v19, *(v4 + 56) + 40 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000417A4()
{
  v1 = v0;
  sub_100004180(&qword_1000998F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_10001E2AC(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100002B00(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10004194C()
{
  v1 = v0;
  sub_100004180(&qword_1000998F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_10001F810(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000A128(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100004BEC(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_100041AF0()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004180(&qword_1000998C8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_100041D60()
{
  result = qword_1000998D0;
  if (!qword_1000998D0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000998D0);
  }

  return result;
}

uint64_t sub_100041DB8()
{
  sub_100004180(&qword_1000998E0);

  return sub_10003FDB8();
}

void sub_100041E24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ErrorResponse();
  sub_100041F54();
  v5 = Message.serializedData(partial:)();
  if (v2)
  {
    sub_100031270(a1);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    v9 = objc_allocWithZone(IDSProtobuf);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = [v9 initWithProtobufData:isa type:100 isResponse:1];

    if (v11)
    {
      sub_100031270(a1);
      sub_10001D4B8(v7, v8);
      *a2 = v11;
      *(a2 + 8) = 2;
      *(a2 + 16) = 0;
      *(a2 + 24) = 513;
      *(a2 + 32) = 0x404E000000000000;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(a2 + 64) = 2;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 2;
      *(a2 + 96) = 200;
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_100041F54()
{
  result = qword_100098F78;
  if (!qword_100098F78)
  {
    type metadata accessor for ErrorResponse();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098F78);
  }

  return result;
}

void sub_100041FBC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SyncLibraryInfoResponse(0);
  sub_1000420F0();
  v5 = Message.serializedData(partial:)();
  if (v2)
  {
    sub_100042148(a1);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    v9 = objc_allocWithZone(IDSProtobuf);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = [v9 initWithProtobufData:isa type:102 isResponse:1];

    if (v11)
    {
      sub_100042148(a1);
      sub_10001D4B8(v7, v8);
      *a2 = v11;
      *(a2 + 8) = 2;
      *(a2 + 16) = 0;
      *(a2 + 24) = 513;
      *(a2 + 32) = 0x404E000000000000;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(a2 + 64) = 2;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 514;
      *(a2 + 96) = 200;
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1000420F0()
{
  result = qword_100098BB8;
  if (!qword_100098BB8)
  {
    type metadata accessor for SyncLibraryInfoResponse(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098BB8);
  }

  return result;
}

uint64_t sub_100042148(uint64_t a1)
{
  v2 = type metadata accessor for SyncLibraryInfoResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000421B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_1000421D8, 0, 0);
}

uint64_t sub_1000421D8()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1000422BC;
  v4 = *(v0 + 16);

  return withCancellationHandlingContinuation<A>(timeout:_:)(v4, 0, 1, sub_10004269C, v2, &type metadata for () + 8);
}

uint64_t sub_1000422BC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000423F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000423F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v22 = sub_1000427D0;
  v23 = v11;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v21 = sub_10000A194;
  *(&v21 + 1) = &unk_10008AE58;
  v12 = _Block_copy(&aBlock);

  v13 = [ObjCClassFromMetadata performBlockAfterFirstUnlock:v12];
  _Block_release(v12);
  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  aBlock = v18;
  v21 = v19;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_10004308C(&aBlock, &v18);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a1;
  v16 = v19;
  *(v15 + 40) = v18;
  *(v15 + 56) = v16;

  sub_10003F3C4(0, 0, v9, &unk_100071FE0, v15);

  return sub_100004B84(&aBlock);
}

uint64_t sub_1000426A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;

  sub_10003F3C4(0, 0, v8, &unk_100072000, v10);
}

uint64_t sub_1000427DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 40) = v7;
  *v7 = v6;
  v7[1] = sub_1000428C8;

  return v9();
}

uint64_t sub_1000428C8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100042B2C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 56) = v3;
    *v3 = v2;
    v3[1] = sub_100042A38;

    return CancellationHandlingContinuation<>.resume()();
  }
}

uint64_t sub_100042A38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100042B2C()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = 1;
  v2 = *(*v1 + 192);
  swift_errorRetain();
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_100042C68;

  return v5(v0 + 16);
}

uint64_t sub_100042C68()
{

  return _swift_task_switch(sub_100042D80, 0, 0);
}

uint64_t sub_100042D80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100042DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100042DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return _swift_task_switch(sub_100042E18, 0, 0);
}

uint64_t sub_100042E18()
{
  v1 = *(v0 + 48);
  sub_10004308C(*(v0 + 56), v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v3;
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_100042F7C;

  return v6(&unk_100071FF0, v2);
}

uint64_t sub_100042F7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004308C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004180(&qword_1000985D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000430FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000154C0;

  return sub_100042DF8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1000431D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001EDC4;

  return sub_1000431BC();
}

uint64_t sub_100043270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001EDC4;

  return sub_1000427DC(a1, v4, v5, v6, v7, v8);
}

void sub_100043338()
{
  v2 = sub_100004180(&qword_100098BB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for SyncCollectionTargetList(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SyncLibraryInfoResponse(0);
  sub_100031208(v0 + *(v9 + 24), v4, &qword_100098BB0);
  v10 = *(v6 + 48);
  if (v10(v4, 1, v5) == 1)
  {
    *v8 = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    if (v10(v4, 1, v5) != 1)
    {
      sub_100009BA4(v4, &qword_100098BB0);
    }
  }

  else
  {
    sub_10002055C(v4, v8, type metadata accessor for SyncCollectionTargetList);
  }

  sub_100043898(&qword_100098BA0, type metadata accessor for SyncCollectionTargetList);
  v11 = Message.serializedData(partial:)();
  if (v1)
  {
    sub_100033DB8(v8, type metadata accessor for SyncCollectionTargetList);
  }

  else
  {
    v13 = v11;
    v14 = v12;
    sub_100033DB8(v8, type metadata accessor for SyncCollectionTargetList);
    v15 = objc_allocWithZone(NPTOCollectionTargetList);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001D4B8(v13, v14);
    v17 = [v15 initWithData:isa];

    if (!v17)
    {
      __break(1u);
    }
  }
}

void sub_1000435E8()
{
  v2 = sub_100004180(&qword_100098BA8);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for SyncLibrary(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SyncLibraryInfoResponse(0);
  sub_100031208(v0 + *(v9 + 20), v4, &qword_100098BA8);
  v10 = *(v6 + 48);
  if (v10(v4, 1, v5) == 1)
  {
    *v8 = &_swiftEmptyArrayStorage;
    v8[1] = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    if (v10(v4, 1, v5) != 1)
    {
      sub_100009BA4(v4, &qword_100098BA8);
    }
  }

  else
  {
    sub_10002055C(v4, v8, type metadata accessor for SyncLibrary);
  }

  sub_100043898(&qword_100098B98, type metadata accessor for SyncLibrary);
  v11 = Message.serializedData(partial:)();
  if (v1)
  {
    sub_100033DB8(v8, type metadata accessor for SyncLibrary);
  }

  else
  {
    v13 = v11;
    v14 = v12;
    sub_100033DB8(v8, type metadata accessor for SyncLibrary);
    v15 = objc_allocWithZone(NPTOLibrary);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001D4B8(v13, v14);
    v17 = [v15 initWithData:isa];

    if (!v17)
    {
      __break(1u);
    }
  }
}

uint64_t sub_100043898(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000438E0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = swift_getObjectType();

  return _swift_task_switch(sub_100043950, 0, 0);
}

uint64_t sub_100043950()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_100004180(&unk_100098C40);
  *v3 = v0;
  v3[1] = sub_100043A64;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000011, 0x8000000100078820, sub_100044CF0, v2, v4);
}

uint64_t sub_100043A64()
{

  return _swift_task_switch(sub_100043B7C, 0, 0);
}

uint64_t sub_100043B94()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100044C5C();
  static DispatchQoS.unspecified.getter();
  v8 = &_swiftEmptyArrayStorage;
  sub_100044CA8(&qword_100098DB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004180(&unk_1000983C0);
  sub_100009D20(&qword_100098DC0, &unk_1000983C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000999A0 = result;
  return result;
}

uint64_t sub_100043DE4(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004180(&qword_1000999B8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  if (qword_100098920 != -1)
  {
    swift_once();
  }

  v17[1] = qword_1000999A0;
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  (*(v10 + 32))(v14 + v13, v12, v9);
  aBlock[4] = sub_100044D6C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A194;
  aBlock[3] = &unk_10008AFC0;
  v15 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_100044CA8(&qword_1000983E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004180(&qword_1000983E8);
  sub_100009D20(&qword_1000983F0, &qword_1000983E8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v6 + 8))(v8, v19);
}

uint64_t sub_1000441A8()
{
  [swift_getObjCClassFromMetadata() sharedInstance];
  sub_100004180(&qword_1000999B8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10004420C(uint64_t a1, void *a2, void *a3)
{
  v23 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004180(&qword_1000999B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  if (qword_100098920 != -1)
  {
    swift_once();
  }

  v21 = qword_1000999A0;
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  v16 = v23;
  *(v15 + 16) = a2;
  *(v15 + 24) = v16;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_100044CFC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A194;
  aBlock[3] = &unk_10008AF70;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  v19 = v16;
  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_100044CA8(&qword_1000983E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004180(&qword_1000983E8);
  sub_100009D20(&qword_1000983F0, &qword_1000983E8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v25 + 8))(v7, v5);
  (*(v22 + 8))(v9, v24);
}

uint64_t sub_1000445E0(void *a1, uint64_t a2)
{
  [a1 deviceForIDSDevice:a2];
  sub_100004180(&qword_1000999B0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100044644(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v28 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004180(&qword_1000999A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100098920 != -1)
  {
    swift_once();
  }

  v27[1] = qword_1000999A0;
  (*(v14 + 16))(v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v13);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v20 = v29;
  *(v19 + 16) = v29;
  (*(v14 + 32))(v19 + v17, v16, v13);
  (*(v10 + 32))(v19 + v18, v12, v9);
  aBlock[4] = sub_100044B68;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A194;
  aBlock[3] = &unk_10008AF20;
  v21 = _Block_copy(aBlock);
  v22 = v20;
  v23 = v28;
  static DispatchQoS.unspecified.getter();
  v35 = &_swiftEmptyArrayStorage;
  sub_100044CA8(&qword_1000983E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004180(&qword_1000983E8);
  sub_100009D20(&qword_1000983F0, &qword_1000983E8);
  v24 = v32;
  v25 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v33 + 8))(v24, v25);
  (*(v30 + 8))(v23, v31);
}

uint64_t sub_100044AE4(void *a1)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [a1 supportsCapability:isa];

  sub_100004180(&qword_1000999A8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100044B68()
{
  type metadata accessor for UUID();
  sub_100004180(&qword_1000999A8);
  v1 = *(v0 + 16);

  return sub_100044AE4(v1);
}

uint64_t sub_100044C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100044C5C()
{
  result = qword_1000983B0;
  if (!qword_1000983B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000983B0);
  }

  return result;
}

uint64_t sub_100044CA8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100044CFC()
{
  sub_100004180(&qword_1000999B0);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1000445E0(v1, v2);
}

uint64_t sub_100044D6C()
{
  sub_100004180(&qword_1000999B8);

  return sub_1000441A8();
}

void sub_100044DEC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004180(&qword_100098D90);
  __chkstk_darwin(v10 - 8);
  v12 = v49 - v11;
  if (qword_1000988B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100004D08(v13, qword_10009C690);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v49[1] = v14;
    v19 = v9;
    v20 = v6;
    v21 = v4;
    v22 = v2;
    v23 = v18;
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v15;
    *v24 = v15;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Got incoming file: %@", v23, 0xCu);
    sub_100009BA4(v24, &qword_1000985D8);

    v2 = v22;
    v4 = v21;
    v6 = v20;
    v9 = v19;
  }

  v26 = [v15 URL];
  if (v26)
  {
    v27 = v26;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = type metadata accessor for URL();
    (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
    sub_100009BA4(v12, &qword_100098D90);
    v29 = sub_1000454C8();
    if ((v30 & 1) == 0 && (v29 - 3) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v31 = objc_allocWithZone(NPTOTransaction);
      v32 = String._bridgeToObjectiveC()();
      v33 = [v31 initWithDescription:v32];

      v34 = swift_allocObject();
      v34[2] = v2;
      v34[3] = v15;
      v34[4] = v33;
      aBlock[4] = sub_1000474D4;
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000A194;
      aBlock[3] = &unk_10008B190;
      v35 = _Block_copy(aBlock);
      v36 = v15;
      v37 = v2;
      v38 = v33;
      static DispatchQoS.unspecified.getter();
      v53 = &_swiftEmptyArrayStorage;
      sub_100047A54(&qword_1000983E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100004180(&qword_1000983E8);
      sub_100009D20(&qword_1000983F0, &qword_1000983E8);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v35);

      (*(v52 + 8))(v6, v4);
      (*(v50 + 8))(v9, v51);

      return;
    }

    v47 = v15;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v47;
      *v44 = v47;
      v48 = v47;
      v46 = "Incoming file: %@ media type not supported.";
      goto LABEL_13;
    }
  }

  else
  {
    v39 = type metadata accessor for URL();
    (*(*(v39 - 8) + 56))(v12, 1, 1, v39);
    sub_100009BA4(v12, &qword_100098D90);
    v40 = v15;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      v46 = "Incoming file: %@ doesn't have valid URL.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v41, v42, v46, v43, 0xCu);
      sub_100009BA4(v44, &qword_1000985D8);
    }
  }
}

id sub_1000454C8()
{
  result = [v0 metadata];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v4 = sub_1000475C8(v7), (v5 & 1) != 0))
    {
      sub_10000A128(*(v3 + 56) + 32 * v4, v8);
      sub_10001F664(v7);

      sub_100009C90(0, &qword_100098B30);
      if (swift_dynamicCast())
      {
        v6 = [0x746D integerValue];

        return v6;
      }
    }

    else
    {

      sub_10001F664(v7);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100045610(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR___NPTOWatchAssetsImportController_pendingImportTasks;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = a3;
  v9 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_10004735C(0, v7[2] + 1, 1, v7);
    *(a1 + v6) = v7;
  }

  v12 = v7[2];
  v11 = v7[3];
  if (v12 >= v11 >> 1)
  {
    v7 = sub_10004735C((v11 > 1), v12 + 1, 1, v7);
  }

  v7[2] = v12 + 1;
  v13 = &v7[3 * v12];
  v13[4] = v9;
  *(v13 + 40) = 0;
  v13[6] = v8;
  *(a1 + v6) = v7;
  swift_endAccess();
  sub_100045DB4();
}

uint64_t sub_10004577C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for DispatchQoS();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100045898, 0, 0);
}

uint64_t sub_100045898()
{
  v27 = v0;
  if (qword_1000988B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004D08(v1, qword_10009C690);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    type metadata accessor for URL();
    sub_100047A54(&qword_100099A00, &type metadata accessor for URL);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000095B0(v6, v7, &v26);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got incoming file: %s", v4, 0xCu);
    sub_100009B58(v5);
  }

  v9 = v0[16];
  v10 = v0[13];
  v24 = v0[15];
  v25 = v0[14];
  v22 = v0[11];
  v23 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  v13 = objc_allocWithZone(NPTOTransaction);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithDescription:v14];

  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = v12;
  v16[4] = v15;
  v0[6] = sub_1000474C8;
  v0[7] = v16;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10000A194;
  v0[5] = &unk_10008B140;
  v17 = _Block_copy(v0 + 2);

  v18 = v11;
  v19 = v15;
  static DispatchQoS.unspecified.getter();
  v0[8] = &_swiftEmptyArrayStorage;
  sub_100047A54(&qword_1000983E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004180(&qword_1000983E8);
  sub_100009D20(&qword_1000983F0, &qword_1000983E8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v10, v22);
  (*(v24 + 8))(v9, v25);

  v20 = v0[1];

  return v20();
}

void sub_100045CAC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___NPTOWatchAssetsImportController_pendingImportTasks;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_10004735C(0, v7[2] + 1, 1, v7);
    *(a1 + v6) = v7;
  }

  v11 = v7[2];
  v10 = v7[3];
  if (v11 >= v10 >> 1)
  {
    v7 = sub_10004735C((v10 > 1), v11 + 1, 1, v7);
  }

  v7[2] = v11 + 1;
  v12 = &v7[3 * v11];
  v12[4] = a2;
  *(v12 + 40) = 1;
  v12[6] = v8;
  *(a1 + v6) = v7;
  swift_endAccess();
  sub_100045DB4();
}

void sub_100045DB4()
{
  v1 = sub_100004180(&qword_100098D90);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v61 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v66 = v7;
  v67 = v8;
  __chkstk_darwin(v7);
  v70 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v0[OBJC_IVAR___NPTOWatchAssetsImportController_internalQueue];
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v16 & 1) == 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_10;
  }

  v65 = v4;
  v17 = OBJC_IVAR___NPTOWatchAssetsImportController_pendingImportTasks;
  swift_beginAccess();
  v18 = *&v0[v17];
  v69 = *(v18 + 16);
  if (v69)
  {
    v19 = objc_opt_self();

    v20 = [v19 sharedInstance];
    if (([v20 importInProgress]& 1) != 0)
    {

      if (qword_1000988B8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100004D08(v21, qword_10009C690);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Waiting for existing import session to finish.", v24, 2u);
      }

      goto LABEL_33;
    }

    v62 = v20;
    v28 = &_swiftEmptyArrayStorage;
    v61 = v0;
    *&v0[v17] = &_swiftEmptyArrayStorage;

    v29 = 0;
    v30 = v66;
    v31 = (v67 + 56);
    v63 = (v67 + 16);
    v64 = (v67 + 48);
    v32 = (v67 + 32);
    v68 = v18;
    v33 = (v18 + 48);
    while (1)
    {
      if (v29 >= *(v68 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v34 = *(v33 - 2);
      if (*(v33 - 1))
      {
        break;
      }

      v35 = *v33;
      sub_10004728C(v34, 0);
      v36 = [v34 URL];
      if (v36)
      {
        v37 = v36;
        v38 = v65;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100047298(v34, 0);

        v39 = 0;
      }

      else
      {
        sub_100047298(v34, 0);
        v39 = 1;
        v38 = v65;
      }

      v40 = v39;
      v41 = v66;
      (*v31)(v38, v40, 1, v66);
      v42 = v38;
      v30 = v41;
      sub_1000472A4(v42, v6);
      if ((*v64)(v6, 1, v41) != 1)
      {
        goto LABEL_22;
      }

      sub_100009BA4(v6, &qword_100098D90);
LABEL_14:
      ++v29;
      v33 += 3;
      if (v69 == v29)
      {
        v46 = v61;
        if (qword_1000988B8 != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_100004D08(v47, qword_10009C690);

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        v50 = os_log_type_enabled(v48, v49);
        v51 = v68;
        if (v50)
        {
          v52 = swift_slowAlloc();
          *v52 = 134217984;
          *(v52 + 4) = *(v28 + 2);

          _os_log_impl(&_mh_execute_header, v48, v49, "Import started for %ld assets.", v52, 0xCu);
        }

        else
        {
        }

        v53 = v46;
        v54 = [objc_allocWithZone(PHImportOptions) init];
        [v54 setAllowDuplicates:0];
        isa = Array._bridgeToObjectiveC()().super.isa;

        v56 = swift_allocObject();
        *(v56 + 16) = v51;
        *(v56 + 24) = v53;
        aBlock[4] = sub_100047314;
        aBlock[5] = v56;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100046DC4;
        aBlock[3] = &unk_10008B0A0;
        v57 = _Block_copy(aBlock);
        v20 = v54;
        v58 = v53;

        v59 = v62;
        v60 = [v62 importUrls:isa withOptions:v20 delegate:0 atEnd:v57];
        _Block_release(v57);

        goto LABEL_33;
      }
    }

    (*v63)(v6, &v34[direct field offset for TemporaryResourceFile.url], v30);
    (*v31)(v6, 0, 1, v30);
LABEL_22:
    v43 = *v32;
    (*v32)(v70, v6, v30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1000470B4(0, *(v28 + 2) + 1, 1, v28);
    }

    v45 = *(v28 + 2);
    v44 = *(v28 + 3);
    if (v45 >= v44 >> 1)
    {
      v28 = sub_1000470B4(v44 > 1, v45 + 1, 1, v28);
    }

    *(v28 + 2) = v45 + 1;
    v43(&v28[((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v45], v70, v30);
    goto LABEL_14;
  }

  if (qword_1000988B8 != -1)
  {
    goto LABEL_36;
  }

LABEL_10:
  v25 = type metadata accessor for Logger();
  sub_100004D08(v25, qword_10009C690);
  v20 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v20, v26, "No pending incoming files to import.", v27, 2u);
  }

LABEL_33:
}

uint64_t sub_10004661C(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000988B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100004D08(v10, qword_10009C690);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = [v11 importedCount];
    *(v14 + 12) = 2048;
    *(v14 + 14) = [v11 failedToImportCount];

    _os_log_impl(&_mh_execute_header, v12, v13, "Import finished! %ld assets succeeded, %ld assets failed.", v14, 0x16u);
  }

  else
  {

    v12 = v11;
  }

  v15 = [v11 error];
  if (v15)
  {
    v16 = v15;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v19 = 136315138;
      v37 = v16;
      v32 = v16;
      sub_100004180(&unk_100098B20);
      v20 = String.init<A>(describing:)();
      v22 = v9;
      v23 = v6;
      v24 = v4;
      v25 = a2;
      v26 = sub_1000095B0(v20, v21, aBlock);

      *(v19 + 4) = v26;
      a2 = v25;
      v4 = v24;
      v6 = v23;
      v9 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Import encountered error: %s", v19, 0xCu);
      sub_100009B58(v31);
    }

    else
    {
    }
  }

  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  aBlock[4] = sub_1000474A4;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A194;
  aBlock[3] = &unk_10008B0F0;
  v28 = _Block_copy(aBlock);
  v29 = a2;
  static DispatchQoS.unspecified.getter();
  v37 = &_swiftEmptyArrayStorage;
  sub_100047A54(&qword_1000983E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004180(&qword_1000983E8);
  sub_100009D20(&qword_1000983F0, &qword_1000983E8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  (*(v35 + 8))(v6, v4);
  (*(v33 + 8))(v9, v34);
}

id sub_100046B30()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR___NPTOWatchAssetsImportController_pendingImportTasks] = &_swiftEmptyArrayStorage;
  v10 = OBJC_IVAR___NPTOWatchAssetsImportController_internalQueue;
  v9[1] = sub_100009C90(0, &qword_1000983B0);
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v12 = &_swiftEmptyArrayStorage;
  sub_100047A54(&qword_100098DB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004180(&unk_1000983C0);
  sub_100009D20(&qword_100098DC0, &unk_1000983C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = type metadata accessor for WatchAssetsImportController();
  v11.receiver = v0;
  v11.super_class = v7;
  return objc_msgSendSuper2(&v11, "init");
}

void sub_100046DC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100046E50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchAssetsImportController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100046F00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100046F48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

char *sub_100046FA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004180(&unk_100098860);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000470B4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004180(&qword_1000999F8);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URL() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id sub_10004728C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

void sub_100047298(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000472A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004180(&qword_100098D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100047344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10004735C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004180(&qword_100099A08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004180(&qword_100099A10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000474E0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 + 100);
  v2 = Hasher._finalize()();

  return sub_1000476A4(a1, v2);
}

unint64_t sub_100047550(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100047714(a1, a2, v4);
}

unint64_t sub_1000475C8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000477CC(a1, v4);
}

unint64_t sub_10004760C(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100047A54(&qword_1000998D0, &type metadata accessor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100047894(a1, v2);
}

unint64_t sub_1000476A4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100047714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000477CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001F810(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001F664(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100047894(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100047A54(&qword_100099A18, &type metadata accessor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_100047A54(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100047D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100047DC0(uint64_t a1)
{
  v2 = sub_10000268C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Photos syncing enabled changed.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateContent];
}

void sub_100047E40(uint64_t a1)
{
  v2 = sub_10000268C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Synced album identifier changed.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateContent];
}

void sub_100047EC0(uint64_t a1)
{
  v2 = sub_10000268C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Synced photos limit changed.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateContent];
}

void sub_100048318(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) changeDetailsForFetchResult:?];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 fetchResultAfterChanges];
      v5 = [v4 count];

      if (!v5)
      {
        v6 = sub_10000268C();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [*(*(a1 + 32) + 32) npto_syncedAlbumIdentifier];
          v8 = 138412290;
          v9 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Synced album is missing: %@", &v8, 0xCu);
        }

        [*(*(a1 + 32) + 32) removeObjectForKey:NPTOPreferencesSyncedAlbumIdentifierKey];
      }
    }
  }
}

void sub_10004880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004882C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) fetchResultBeforeChanges];
  v8 = [v6 objectAtIndex:a2];

  v7 = [*(a1 + 40) changeDetailsForObject:v8];
  if ([v7 assetContentChanged])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_100048D9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateContentIfNeeded];
}

void sub_10004A370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004A39C(uint64_t a1)
{
  v2 = sub_10000268C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fetch counts changed.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateContent];
}

void sub_10004A41C(uint64_t a1)
{
  v2 = sub_10000268C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Always updating albums changed.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateContent];
}

void sub_10004AC10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateContentIfNeeded];
}

void sub_10004B468(CGImageMetadata *a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v11 length];
  v10 = v7;
  if (v9)
  {
    v10 = [NSString stringWithFormat:@"%@.%@", v11, v7];
  }

  CGImageMetadataSetValueWithPath(a1, 0, v10, v8);
}

id sub_10004B87C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [*(a1 + 32) uuid];
  [v6 setObject:v7 forKeyedSubscript:@"uuid"];

  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) mediaType]);
  [v6 setObject:v8 forKeyedSubscript:@"mt"];

  v9 = [*(a1 + 32) creationDate];
  [v6 setObject:v9 forKeyedSubscript:@"cd"];

  v10 = [*(a1 + 32) modificationDate];
  [v6 setObject:v10 forKeyedSubscript:@"md"];

  [v6 setObject:v5 forKeyedSubscript:@"ext"];
  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isFavorite]);
  [v6 setObject:v11 forKeyedSubscript:@"fav"];

  v12 = [*(a1 + 32) mediaSubtypes];
  if (a3)
  {
    v13 = [NSNumber numberWithUnsignedInteger:v12 & 0xFFFFFFFFFFFFFFF7];
    [v6 setObject:v13 forKeyedSubscript:@"ms"];
  }

  else
  {
    v14 = [NSNumber numberWithUnsignedInteger:v12];
    [v6 setObject:v14 forKeyedSubscript:@"ms"];

    v15 = [*(a1 + 32) photoIrisProperties];
    v16 = v15;
    if (v15)
    {
      [v15 photoIrisStillDisplayTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v17 = [NSNumber numberWithDouble:CMTimeGetSeconds(&time)];
    [v6 setObject:v17 forKeyedSubscript:@"sdt"];

    v18 = [*(a1 + 32) photoIrisProperties];
    v19 = v18;
    if (v18)
    {
      [v18 photoIrisVideoDuration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v20 = [NSNumber numberWithDouble:CMTimeGetSeconds(&time)];
    [v6 setObject:v20 forKeyedSubscript:@"vd"];

    v21 = [*(a1 + 32) photoIrisProperties];
    [v21 photoIrisVisibilityState];
    [*(a1 + 32) hasAdjustments];
    v22 = [NSNumber numberWithBool:PHVideoComplementVisibilityStateIsPlayable()];
    [v6 setObject:v22 forKeyedSubscript:@"ivp"];
  }

  [*(a1 + 32) preferredCropRect];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v28);
  [v6 setObject:DictionaryRepresentation forKeyedSubscript:@"pcr"];

  [*(a1 + 32) acceptableCropRect];
  v24 = CGRectCreateDictionaryRepresentation(v29);
  [v6 setObject:v24 forKeyedSubscript:@"acr"];

  return v6;
}

void sub_10004BBD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    goto LABEL_14;
  }

  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = [v5 allValues];
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    do
    {
      v12 = 0;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v37 + 1) + 8 * v12) URL];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v10);
  }

  v14 = objc_alloc_init(PHValidator);
  v15 = [v7 copy];
  v36 = 0;
  v16 = [v14 validateURLs:v15 withOptions:64 error:&v36];
  v6 = v36;

  if ((v16 & 1) == 0)
  {
    v17 = sub_10000268C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 32);
      *buf = 138412546;
      v42 = v28;
      v43 = 2112;
      v44 = v6;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to validate exported asset resources for live photo asset %@: %@", buf, 0x16u);
    }
  }

  if (v6)
  {
LABEL_14:
    v18 = sub_10000268C();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      *buf = 138412546;
      v42 = v26;
      v43 = 2112;
      v44 = v6;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to export asset resources for live photo asset %@: %@", buf, 0x16u);
    }

    v19 = sub_10000268C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      *buf = 138412290;
      v42 = v27;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Will re-export live photo as regular photo for asset %@", buf, 0xCu);
    }

    v20 = *(a1 + 32);
    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    v23 = *(a1 + 65);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10004BFF4;
    v33[3] = &unk_10008B260;
    v33[4] = v20;
    v34 = *(a1 + 40);
    v35 = *(a1 + 48);
    [v20 _npto_requestPhotoAssetResourceFilesWithMaxPixelSize:v22 isLegacyDevice:v23 isUserInitiated:v33 completionHandler:v21];
  }

  else
  {
    v24 = objc_opt_class();
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10004C16C;
    v29[3] = &unk_10008B288;
    v25 = *(a1 + 40);
    v29[4] = *(a1 + 32);
    v31 = v25;
    v30 = v5;
    v32 = *(a1 + 48);
    [v24 _npto_archiveLivePhotoAssetResourceFiles:v30 completionHandler:v29];
  }
}

void sub_10004BFF4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_10000268C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      v14 = 138412546;
      v15 = v13;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to re-export photo for asset %@: %@", &v14, 0x16u);
    }
  }

  if (a1[5])
  {
    v8 = [v5 objectForKeyedSubscript:&off_10008D108];
    v9 = a1[6];
    v10 = [v8 URL];
    v11 = [v10 pathExtension];
    v12 = (*(v9 + 16))(v9, v11, 1);

    (*(a1[5] + 16))();
  }
}

void sub_10004C16C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_10000268C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 138412546;
      v15 = v13;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to archive live photo asset %@: %@", &v14, 0x16u);
    }
  }

  if (*(a1 + 48))
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:&off_10008D108];
    v9 = *(a1 + 56);
    v10 = [v8 URL];
    v11 = [v10 pathExtension];
    v12 = (*(v9 + 16))(v9, v11, 0);

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10004C2E4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_10000268C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      v14 = 138412546;
      v15 = v13;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to export asset resources for photo asset %@: %@", &v14, 0x16u);
    }
  }

  if (a1[5])
  {
    v8 = [v5 objectForKeyedSubscript:&off_10008D108];
    v9 = a1[6];
    v10 = [v8 URL];
    v11 = [v10 pathExtension];
    v12 = (*(v9 + 16))(v9, v11, 1);

    (*(a1[5] + 16))();
  }
}

void sub_10004C6B0(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = sub_10000268C();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138412802;
      v11 = v8;
      v12 = 2048;
      v13 = a3 * 100.0;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to download image for asset %@, progress: %.0f%%, error: %@", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138412546;
    v11 = v9;
    v12 = 2048;
    v13 = a3 * 100.0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Downloading image for asset %@, progress: %.0f%%", &v10, 0x16u);
  }
}

void sub_10004C800(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:PHImageErrorKey];
  if (v5)
  {
    v6 = sub_10000268C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      *buf = 138412546;
      v36 = v27;
      v37 = 2112;
      v38 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to request image for asset %@, error %@", buf, 0x16u);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v5);
    }
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:PHImageFileURLKey];
    if (v8)
    {
      v9 = [NPTOTemporaryFile alloc];
      v10 = [v8 pathExtension];
      v11 = [(NPTOTemporaryFile *)v9 initWithPathExtension:v10];

      v12 = +[NSFileManager defaultManager];
      v13 = [(NPTOTemporaryFile *)v11 URL];
      v30 = 0;
      v14 = [v12 copyItemAtURL:v8 toURL:v13 error:&v30];
      v15 = v30;

      v16 = sub_10000268C();
      v17 = v16;
      if (v14)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 32);
          v19 = [(NPTOTemporaryFile *)v11 URL];
          *buf = 138412546;
          v36 = v18;
          v37 = 2112;
          v38 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Done requesting image for asset %@, url: %@", buf, 0x16u);
        }

        v20 = *(a1 + 40);
        v31 = &off_10008D108;
        v32 = v11;
        v21 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        [v20 _npto_processAssetResourceFiles:v21 isLegacyDevice:*(a1 + 64) maxPixelSize:*(a1 + 48) completionHandler:*(a1 + 56)];
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v29 = *(a1 + 32);
          *buf = 138412546;
          v36 = v29;
          v37 = 2112;
          v38 = v15;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to copy file for asset %@, error %@", buf, 0x16u);
        }

        v26 = *(a1 + 48);
        if (v26)
        {
          (*(v26 + 16))(v26, 0, v15);
        }
      }
    }

    else
    {
      v33 = NSLocalizedDescriptionKey;
      v22 = [NSString stringWithFormat:@"No image URL returned for asset %@", *(a1 + 32)];
      v34 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v11 = [NSError errorWithDomain:@"NanoPhotosErrorDomain" code:3 userInfo:v23];

      v24 = sub_10000268C();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 32);
        *buf = 138412546;
        v36 = v28;
        v37 = 2112;
        v38 = v11;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to request image for asset %@, error %@", buf, 0x16u);
      }

      v25 = *(a1 + 48);
      if (v25)
      {
        (*(v25 + 16))(v25, 0, v11);
      }
    }
  }
}

void sub_10004D44C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    [*(a1 + 32) addObject:v7];
    if ([*(a1 + 32) count] == 1)
    {
      v9 = *(a1 + 64);
      if (v9)
      {
        (*(v9 + 16))(v9, 0, v7);
      }
    }
  }

  else
  {
    v8 = *(a1 + 40);
    objc_sync_enter(v8);
    v10 = *(a1 + 40);
    v11 = [NSNumber numberWithInteger:a2];
    [v10 setObject:v15 forKeyedSubscript:v11];

    v12 = [*(a1 + 40) count];
    if (v12 == [*(a1 + 48) count])
    {
      v13 = *(a1 + 56);
      v14 = [*(a1 + 40) copy];
      [v13 _npto_processAssetResourceFiles:v14 isLegacyDevice:*(a1 + 80) maxPixelSize:*(a1 + 64) completionHandler:*(a1 + 72)];
    }
  }

  objc_sync_exit(v8);
}

void sub_10004D5B0(uint64_t a1, double a2)
{
  v4 = sub_10000268C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138412802;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    v11 = 2048;
    v12 = a2 * 100.0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Downloading live photo for asset %@ resource type %ld, progress: %.0f%%", &v7, 0x20u);
  }
}

void sub_10004D684(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000268C();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 56);
      v11 = 138412802;
      v12 = v9;
      v13 = 2048;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to request live photo for asset %@ resource type %ld, error %@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) URL];
    v11 = 138412802;
    v12 = v7;
    v13 = 2048;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Done requesting live photo for asset %@ resource type %ld, url: %@", &v11, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10004D9C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    [*(a1 + 32) addObject:v7];
    if ([*(a1 + 32) count] == 1)
    {
      v9 = *(a1 + 56);
      if (v9)
      {
        (*(v9 + 16))(v9, 0, v7);
      }
    }
  }

  else
  {
    v8 = *(a1 + 40);
    objc_sync_enter(v8);
    v10 = *(a1 + 40);
    v11 = [NSNumber numberWithInteger:a2];
    [v10 setObject:v15 forKeyedSubscript:v11];

    v12 = [*(a1 + 40) count];
    if (v12 == [*(a1 + 48) count])
    {
      v13 = *(a1 + 56);
      if (v13)
      {
        v14 = [*(a1 + 40) copy];
        (*(v13 + 16))(v13, v14, 0);
      }
    }
  }

  objc_sync_exit(v8);
}

void sub_10004DB28(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 48);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10004DDC0;
    v19[3] = &unk_10008B3C8;
    v9 = *(a1 + 32);
    v20 = *(a1 + 40);
    [v9 _npto_processPhotoAssetResource:v5 isLegacyDevice:v7 maxPixelSize:v19 completionHandler:v8];
    v10 = v20;
  }

  else if (v6 - 9 > 1)
  {
    v23 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithFormat:@"Unsupported asset resource type %ld %@", v6, *(a1 + 32)];
    v24 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v10 = [NSError errorWithDomain:@"NanoPhotosErrorDomain" code:5 userInfo:v14];

    v15 = sub_10000268C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v10 localizedDescription];
      *buf = 138412290;
      v22 = v16;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = *(a1 + 48);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004DDDC;
    v17[3] = &unk_10008B3C8;
    v12 = *(a1 + 32);
    v18 = *(a1 + 40);
    [v12 _npto_processPairedVideoAssetResource:v5 maxPixelSize:v17 completionHandler:v11];
    v10 = v18;
  }
}

void sub_10004F458(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    v3 = sub_10000268C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) error];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to export video asset %@: %@", &v10, 0x16u);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = [*(a1 + 32) error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

void sub_10004F8AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = [a3 URL];
  v6 = [NSData dataWithContentsOfURL:v7];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

id sub_10004FBB0(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSMutableDictionary dictionary];
  }

  v6 = v5;

  [v6 setObject:&off_10008D138 forKeyedSubscript:kCGImageDestinationLossyCompressionQuality];
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:kCGImageDestinationMergeMetadata];
  v7 = *(a1 + 40);
  if (v7 < *(a1 + 32) || v7 < *(a1 + 48))
  {
    v8 = [NSNumber numberWithDouble:?];
    [v6 setObject:v8 forKeyedSubscript:kCGImageDestinationImageMaxPixelSize];
  }

  v9 = [v6 copy];

  return v9;
}

uint64_t sub_1000501AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000501C4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _composeSyncRequest];

  return _objc_release_x1();
}

void sub_1000502A8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) _composeSyncRequest];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_100050424(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _assetForLocalIdentifier:*(a1 + 40)];

  return _objc_release_x1();
}

void sub_100051100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100051118(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 assets];
  v7 = [v6 npto_objectForLocalIdentifier:*(a1 + 32)];
  v8 = v7;
  if (!v7)
  {
    v3 = [v9 keyAssets];
    v8 = [v3 npto_objectForLocalIdentifier:*(a1 + 32)];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
  if (!v7)
  {
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a3 = 1;
  }
}

void sub_100051378(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 keyAssets];
  [v2 npto_addAssets:v3];
}

void sub_1000513D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = v4;
  if (v2 == 1)
  {
    v8 = [v4 assetCollection];
    v6 = [v5 assets];
    v7 = [v5 keyAssets];

    [v3 npto_addAssetCollection:v8 assets:v6 keyAssets:v7];
  }

  else
  {
    v8 = [v4 assets];

    [v3 npto_addAssets:v8];
  }
}

void sub_10005156C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NPTOCollectionTargetItem);
  v5 = [v3 assetCollection];
  v6 = [v5 npto_uuid];
  v7 = [v6 npto_data];
  [(NPTOCollectionTargetItem *)v4 setUuidData:v7];

  v8 = [v3 contentProvider];
  v9 = [v3 assetCollection];
  -[NPTOCollectionTargetItem setCollectionTarget:](v4, "setCollectionTarget:", [v8 targetForAssetCollection:v9]);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = [v3 assets];
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    do
    {
      v14 = 0;
      do
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        -[NPTOCollectionTargetItem addAssetIndex:](v4, "addAssetIndex:", [*(a1 + 32) npto_indexOfAsset:v15]);
        objc_autoreleasePoolPop(v16);
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v12);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = [v3 keyAssets];
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    do
    {
      v21 = 0;
      do
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v37 + 1) + 8 * v21);
        v23 = objc_autoreleasePoolPush();
        v24 = [*(a1 + 32) npto_indexOfAsset:v22];
        [(NPTOCollectionTargetItem *)v4 addAssetIndex:v24];
        [(NPTOCollectionTargetItem *)v4 addKeyAssetIndex:v24];
        objc_autoreleasePoolPop(v23);
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v19);
  }

  v25 = [v3 assetCollection];
  v26 = [v25 localizedTitle];
  [(NPTOCollectionTargetItem *)v4 setTitle:v26];

  v27 = [v3 assetCollection];
  v28 = [v27 localizedSubtitle];
  [(NPTOCollectionTargetItem *)v4 setSubtitle:v28];

  v29 = *(a1 + 40);
  v30 = [v3 assetCollection];
  -[NPTOCollectionTargetItem setType:](v4, "setType:", [v29 _assetCollectionType:{objc_msgSend(v30, "assetCollectionType")}]);

  v31 = *(a1 + 40);
  v32 = [v3 assetCollection];
  -[NPTOCollectionTargetItem setSubtype:](v4, "setSubtype:", [v31 _assetCollectionSubtype:{objc_msgSend(v32, "assetCollectionSubtype")}]);

  [(NPTOCollectionTargetItem *)v4 setCollectionMetadata:0];
  v33 = [v3 contentProvider];
  LOBYTE(v32) = objc_opt_respondsToSelector();

  if (v32)
  {
    v34 = [v3 contentProvider];
    v35 = [v3 assetCollection];
    v36 = [v34 metadataForAssetCollection:v35];
    [(NPTOCollectionTargetItem *)v4 setCollectionMetadata:v36];
  }

  [*(a1 + 48) addCollectionTargetItem:v4];
}

void sub_100051B08(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 assetsRequireExternalPowerSourceConnected])
  {
    v4 = [v3 assets];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100051BD8;
    v5[3] = &unk_10008B5C8;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v4 enumerateObjectsUsingBlock:v5];
  }
}

id sub_100051BD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) npto_indexOfAsset:a2];

  return [v2 addIndex:v3];
}

void sub_100051C18(uint64_t a1, void *a2)
{
  v3 = [a2 keyAssets];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100051CCC;
  v4[3] = &unk_10008B5C8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v4];
}

id sub_100051CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) npto_indexOfAsset:a2];

  return [v2 removeIndex:v3];
}

void sub_10005246C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleContentProviderDidInvalidateContent:*(a1 + 32)];
}

void sub_100052630(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handlePhotoLibraryDidChange:*(a1 + 32)];
}

void sub_100052724(id a1)
{
  qword_10009C7C8 = os_log_create("com.apple.NanoPhotos", "sync");

  _objc_release_x1();
}

id sub_100052768()
{
  if (qword_10009C7E0 != -1)
  {
    dispatch_once(&qword_10009C7E0, &stru_10008B678);
  }

  v1 = qword_10009C7D8;

  return v1;
}

void sub_1000527BC(id a1)
{
  qword_10009C7D8 = os_log_create("com.apple.NanoPhotos", "sync_oversize");

  _objc_release_x1();
}

uint64_t start()
{
  _set_user_dir_suffix();
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = [[NPTOSyncDaemonController alloc] initWithDeviceControllerClass:objc_opt_class()];
  objc_autoreleasePoolPop(v1);
  [(NPTOSyncDaemonController *)v2 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

uint64_t NPTOCollectionTargetItemReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v66) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v66 & 0x7F) << v5;
        if ((v66 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            if (v13 != 2)
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
              while (1)
              {
                LOBYTE(v66) = 0;
                v62 = [a2 position] + 1;
                if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
                {
                  v64 = [a2 data];
                  [v64 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v61 |= (v66 & 0x7F) << v59;
                if ((v66 & 0x80) == 0)
                {
                  goto LABEL_125;
                }

                v59 += 7;
                v11 = v60++ >= 9;
                if (v11)
                {
                  goto LABEL_126;
                }
              }
            }

            v66 = 0;
            v67 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v38 = [a2 position];
              if (v38 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_93;
              }

              v39 = 0;
              v40 = 0;
              v41 = 0;
              while (1)
              {
                v68 = 0;
                v42 = [a2 position] + 1;
                if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                {
                  v44 = [a2 data];
                  [v44 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v41 |= (v68 & 0x7F) << v39;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                v11 = v40++ >= 9;
                if (v11)
                {
                  goto LABEL_78;
                }
              }

              [a2 hasError];
LABEL_78:
              PBRepeatedInt32Add();
            }
          }

          if (v14 == 4)
          {
            if (v13 != 2)
            {
              v53 = 0;
              v54 = 0;
              v55 = 0;
              while (1)
              {
                LOBYTE(v66) = 0;
                v56 = [a2 position] + 1;
                if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
                {
                  v58 = [a2 data];
                  [v58 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v55 |= (v66 & 0x7F) << v53;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v11 = v54++ >= 9;
                if (v11)
                {
                  goto LABEL_126;
                }
              }

LABEL_125:
              [a2 hasError];
LABEL_126:
              PBRepeatedInt32Add();
              goto LABEL_127;
            }

            v66 = 0;
            v67 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v29 = [a2 position];
              if (v29 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v30 = 0;
              v31 = 0;
              v32 = 0;
              while (1)
              {
                v68 = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v68 & 0x7F) << v30;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  goto LABEL_59;
                }
              }

              [a2 hasError];
LABEL_59:
              PBRepeatedInt32Add();
            }

LABEL_93:
            PBReaderRecallMark();
            goto LABEL_127;
          }
        }

        else
        {
          if (v14 == 1)
          {
            v36 = PBReaderReadData();
            v37 = 104;
            goto LABEL_81;
          }

          if (v14 == 2)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 112) |= 1u;
            while (1)
            {
              LOBYTE(v66) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v66 & 0x7F) << v22;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_97;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v24;
            }

LABEL_97:
            v52 = 64;
            goto LABEL_106;
          }
        }
      }

      else if (v14 <= 6)
      {
        if (v14 == 5)
        {
          v36 = PBReaderReadString();
          v37 = 88;
          goto LABEL_81;
        }

        if (v14 == 6)
        {
          v36 = PBReaderReadString();
          v37 = 72;
LABEL_81:
          v45 = *(a1 + v37);
          *(a1 + v37) = v36;

          goto LABEL_127;
        }
      }

      else
      {
        switch(v14)
        {
          case 7:
            v36 = PBReaderReadData();
            v37 = 56;
            goto LABEL_81;
          case 8:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 112) |= 4u;
            while (1)
            {
              LOBYTE(v66) = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (v66 & 0x7F) << v46;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_105;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v48;
            }

LABEL_105:
            v52 = 96;
            goto LABEL_106;
          case 9:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 112) |= 2u;
            while (1)
            {
              LOBYTE(v66) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v66 & 0x7F) << v15;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_101;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_101:
            v52 = 80;
LABEL_106:
            *(a1 + v52) = v21;
            goto LABEL_127;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_127:
      v65 = [a2 position];
    }

    while (v65 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPTOAssetReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v20 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000562A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000562CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[9] setDelegate:*(a1 + 32) queue:WeakRetained[1]];
    [v4[10] resume];
    v3 = v4[13];
    v4[13] = 0;

    WeakRetained = v4;
  }
}

void sub_1000564B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000564D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _scheduleSync];
    v2 = v3[14];
    v3[14] = 0;

    WeakRetained = v3;
  }
}

void *sub_100056848(uint64_t a1)
{
  [*(a1 + 32) _cancelPendingExportAndSendAssets];
  result = *(a1 + 32);
  if (*(a1 + 40) == result[2])
  {

    return [result _beginSync];
  }

  return result;
}

void sub_100056D78(uint64_t a1)
{
  v3 = [*(a1 + 40) pbResponse];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(*(a1 + 32) + 32) library];
  v7 = [*(*(a1 + 32) + 40) library];
  if ([*(*(a1 + 32) + 40) hasExternalPowerSourceConnected])
  {
    v8 = [v6 npto_changesFromLibrary:v7 excludingAssets:0];
  }

  else
  {
    v9 = [*(*(a1 + 32) + 32) npto_assetsRequiringExternalPowerSourceConnected];
    v8 = [v6 npto_changesFromLibrary:v7 excludingAssets:v9];
  }

  v10 = [v8 updatedAssets];
  v11 = [v8 insertedAssets];
  v12 = [v10 arrayByAddingObjectsFromArray:v11];

  if ([v12 count] && !objc_msgSend(*(*(a1 + 32) + 40), "status"))
  {
    v18 = *(a1 + 32);
    v19 = [*(a1 + 40) context];
    [v18 _scheduleExportAndSendAssets:v12 context:v19];
  }

  else
  {
    v13 = sub_10000268C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 updatedAssets];
      v15 = [v14 count];
      if (v15 || ([v8 insertedAssets], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "count")))
      {
        v16 = [*(*(a1 + 32) + 40) status];
        if (v16 >= 3)
        {
          v17 = [NSString stringWithFormat:@"(unknown: %i)", v16];
        }

        else
        {
          v17 = off_10008B810[v16];
        }

        v20 = 1;
      }

      else
      {
        v20 = 0;
        v17 = @"no assets to send";
      }

      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Reporting sync complete (%@)", buf, 0xCu);
      if (v20)
      {
      }

      if (!v15)
      {
      }
    }

    v21 = [*(*(a1 + 32) + 72) activeSyncSession];
    [v21 syncDidComplete];

    v22 = *(a1 + 32);
    v23 = *(v22 + 48);
    *(v22 + 48) = 0;
  }
}

uint64_t sub_100057748(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100057760(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100057884;
  v14[3] = &unk_10008B728;
  v15 = *(a1 + 40);
  v16 = v5;
  v17 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 72);
  v18 = v8;
  v22 = v9;
  v19 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v20 = v10;
  v21 = v11;
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, v14);
}

void sub_100057884(uint64_t a1)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (*(a1 + 48))
  {
    [*(a1 + 56) addObject:v2];
    v3 = *(*(a1 + 88) + 8);
    v5 = *(v3 + 40);
    v4 = (v3 + 40);
    if (!v5)
    {
      objc_storeStrong(v4, *(a1 + 48));
    }
  }

  else
  {
    [*(a1 + 64) addObject:v2];
  }

  v6 = [*(a1 + 64) count];
  v7 = v6 / [*(a1 + 72) count];
  v8 = sub_10000268C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134217984;
    v21 = v7 * 100.0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reporting sync progress %.0f%%", &v20, 0xCu);
  }

  v9 = [*(*(a1 + 80) + 72) activeSyncSession];
  [v9 reportProgress:v7];

  v10 = [*(a1 + 64) count];
  if (v10 == [*(a1 + 72) count])
  {
    v11 = sub_10000268C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Reporting sync complete sending", &v20, 2u);
    }

    v12 = [*(*(a1 + 80) + 72) activeSyncSession];
    [v12 syncDidCompleteSending];
  }

  if (![*(a1 + 32) count])
  {
    v13 = [*(a1 + 56) count];
    v14 = sub_10000268C();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        v16 = *(*(*(a1 + 88) + 8) + 40);
        v20 = 138412290;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Reporting sync failed with error: %@", &v20, 0xCu);
      }

      v17 = [*(*(a1 + 80) + 72) activeSyncSession];
      [v17 syncDidFailWithError:*(*(*(a1 + 88) + 8) + 40)];
    }

    else
    {
      if (v15)
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Reporting sync complete", &v20, 2u);
      }

      v18 = [*(*(a1 + 80) + 72) activeSyncSession];
      [v18 syncDidComplete];

      v19 = *(a1 + 80);
      v17 = *(v19 + 48);
      *(v19 + 48) = 0;
    }
  }
}

void sub_100057B38(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NPTOTransaction alloc];
  v22 = @"localIdentifier";
  v7 = [v5 localIdentifier];
  v23 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v9 = [(NPTOTransaction *)v6 initWithDescription:@"com.apple.nptocompaniond.export-asset" userInfo:v8 context:a1[4]];

  v10 = [a1[5] exportAssetsQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100057D0C;
  v13[3] = &unk_10008B7C8;
  v21 = a3;
  v14 = a1[6];
  v15 = v5;
  v16 = a1[5];
  v17 = a1[7];
  v20 = a1[8];
  v18 = a1[4];
  v19 = v9;
  v11 = v9;
  v12 = v5;
  [v10 addOperationWithBlock:v13];
}

void sub_100057D0C(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 88) + 1;
    v5 = [*(a1 + 32) count];
    v6 = [*(a1 + 40) localIdentifier];
    *buf = 134218498;
    v22 = v4;
    v23 = 2048;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Exporting asset %lu/%lu %@", buf, 0x20u);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100057EE8;
  v13[3] = &unk_10008B7A0;
  v14 = v7;
  v19 = *(a1 + 80);
  v10 = *(a1 + 64);
  v11 = *(a1 + 48);
  v15 = v10;
  v16 = v11;
  v20 = *(a1 + 88);
  v17 = *(a1 + 32);
  v18 = v2;
  v12 = v2;
  [v8 _exportAsset:v14 forDevice:v9 completionHandler:v13];
  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_100057EE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = sub_10000268C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = [*(a1 + 32) localIdentifier];
      *buf = 138412546;
      v33 = v20;
      v34 = 2112;
      v35 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to export asset %@: %@", buf, 0x16u);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v11 = [NPTOTransaction alloc];
    v30 = @"localIdentifier";
    v12 = [*(a1 + 32) localIdentifier];
    v31 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v14 = [(NPTOTransaction *)v11 initWithDescription:@"com.apple.nptocompaniond.send-asset" userInfo:v13 context:*(a1 + 40)];

    v15 = [*(a1 + 48) sendAssetsQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100058170;
    v21[3] = &unk_10008B7C8;
    v29 = *(a1 + 80);
    v22 = *(a1 + 56);
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    v23 = v16;
    v24 = v17;
    v25 = v7;
    v26 = v8;
    v18 = *(a1 + 72);
    v27 = v14;
    v28 = v18;
    v19 = v14;
    [v15 addOperationWithBlock:v21];
  }

  dispatch_semaphore_signal(*(a1 + 64));
}

void sub_100058170(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 88) + 1;
    v5 = [*(a1 + 32) count];
    v6 = [*(a1 + 40) localIdentifier];
    *buf = 134218498;
    v18 = v4;
    v19 = 2048;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending asset %lu/%lu %@", buf, 0x20u);
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 56) URL];
  v9 = *(a1 + 64);
  v10 = [*(a1 + 40) localIdentifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100058340;
  v13[3] = &unk_10008B778;
  v14 = *(a1 + 40);
  v11 = *(a1 + 80);
  v15 = v2;
  v16 = v11;
  v12 = v2;
  [v7 _sendAssetResourceAtURL:v8 metadata:v9 identifier:v10 completionHandler:v13];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_100058340(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_10000268C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) localIdentifier];
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to send asset %@: %@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100058D90(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v5 localIdentifier];

  [v4 setObject:v7 forKey:v6];
}

uint64_t NPTOLibraryReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(NPTOAsset);
        [a1 addAsset:v13];
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NPTOAssetReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(NPTOAssetCollection);
    [a1 addAssetCollection:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !NPTOAssetCollectionReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPTOAssetCollectionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &selRef_setHasDate_;
    v6 = &selRef_setHasDate_;
    v7 = &selRef_setHasDate_;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v11 = [a2 position] + 1;
        if (v11 >= [a2 position] && (v12 = objc_msgSend(a2, "position") + 1, v12 <= objc_msgSend(a2, "length")))
        {
          v13 = [a2 data];
          [v13 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v10 |= (v37[0] & 0x7F) << v8;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [a2 hasError] ? 0 : v10;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        if (v16 == 1)
        {
          v17 = PBReaderReadData();
          v18 = *(v5 + 543);
          goto LABEL_43;
        }

        if (v16 == 2)
        {
          if ((v15 & 7) == 2)
          {
            v37[0] = 0;
            v37[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v20 = [a2 position];
              if (v20 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v21 = 0;
              v22 = 0;
              v23 = 0;
              while (1)
              {
                v38 = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v38 & 0x7F) << v21;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v14 = v22++ >= 9;
                if (v14)
                {
                  goto LABEL_39;
                }
              }

              [a2 hasError];
LABEL_39:
              PBRepeatedInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v29 = v6;
            v30 = v5;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            while (1)
            {
              LOBYTE(v37[0]) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v37[0] & 0x7F) << v31;
              if ((v37[0] & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v14 = v32++ >= 9;
              if (v14)
              {
                goto LABEL_59;
              }
            }

            [a2 hasError];
LABEL_59:
            PBRepeatedInt32Add();
            v5 = v30;
            v6 = v29;
            v7 = &selRef_setHasDate_;
          }

          goto LABEL_44;
        }
      }

      else
      {
        switch(v16)
        {
          case 3:
            v17 = PBReaderReadString();
            v18 = *(v6 + 544);
            goto LABEL_43;
          case 4:
            v17 = PBReaderReadString();
            v18 = *(v7 + 545);
            goto LABEL_43;
          case 5:
            v17 = PBReaderReadData();
            v18 = 32;
LABEL_43:
            v27 = *(a1 + v18);
            *(a1 + v18) = v17;

            goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10005B4D4(sqlite3 *a1, char *a2, ...)
{
  va_start(va, a2);
  if (a1)
  {
    errmsg = 0;
    v3 = sqlite3_vmprintf(a2, va);
    if (sqlite3_exec(a1, v3, 0, 0, &errmsg))
    {
      if (errmsg)
      {
        fprintf(__stderrp, "execute() Error: %s\n", errmsg);
        sqlite3_free(errmsg);
      }
    }

    sqlite3_free(v3);
  }
}

uint64_t sub_10005B708(sqlite3_stmt *a1, id a2)
{
  v4 = a2;
  v5 = [a2 UTF8String];
  v6 = strlen(v5);

  return sqlite3_bind_text(a1, 1, v5, v6, 0xFFFFFFFFFFFFFFFFLL);
}

id sub_10005BAA8(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_bytes(a1, a2);
  v5 = sqlite3_column_blob(a1, a2);
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [NSData dataWithBytes:v5 length:v4];
  }

  return v6;
}

void sub_10005D9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005D9E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePowerSourceNotification];
}

void sub_10005FB74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uuidData];
  v5 = [v4 npto_uuid];

  [*(a1 + 32) setObject:v3 forKeyedSubscript:v5];
}

void sub_10005FBF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uuidData];
  v5 = [v4 npto_uuid];

  [*(a1 + 32) setObject:v3 forKeyedSubscript:v5];
}

void sub_10005FC6C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 uuidData];
  v4 = [v3 npto_uuid];

  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];

  if (!v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void sub_10005FD00(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 uuidData];
  v4 = [v3 npto_uuid];

  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 dateAsDate];
    v8 = [v10 dateAsDate];
    v9 = [v7 compare:v8];

    if (v9 == -1 && ([*(*(a1 + 40) + 24) containsObject:v10] & 1) == 0)
    {
      [*(a1 + 48) addObject:v10];
    }
  }
}

void sub_10005FDF0(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 uuidData];
  v4 = [v3 npto_uuid];

  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v5 && ([*(*(a1 + 40) + 24) containsObject:v6] & 1) == 0)
  {
    [*(a1 + 48) addObject:v6];
  }
}

void sub_10005FE98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uuidData];
  v5 = [v4 npto_uuid];

  [*(a1 + 32) setObject:v3 forKeyedSubscript:v5];
}

void sub_10005FF14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uuidData];
  v5 = [v4 npto_uuid];

  [*(a1 + 32) setObject:v3 forKeyedSubscript:v5];
}

void sub_10005FF90(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 uuidData];
  v4 = [v3 npto_uuid];

  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];

  if (!v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void sub_100060024(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uuidData];
  v5 = [v4 npto_uuid];

  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v6)
  {
    v39 = v5;
    v40 = v3;
    v7 = [*(*(a1 + 40) + 8) _npto_assetUUIDsInAssetCollection:v3];
    v41 = v6;
    v8 = [*(*(a1 + 40) + 16) _npto_assetUUIDsInAssetCollection:v6];
    v9 = [v8 mutableCopy];
    [v9 removeObjectsInArray:v7];
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v47;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v47 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(a1 + 48) objectForKeyedSubscript:*(*(&v46 + 1) + 8 * i)];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v13);
    }

    v38 = v7;
    v17 = [v7 mutableCopy];
    v37 = v8;
    [v17 removeObjectsInArray:v8];
    v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v43;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v43 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v42 + 1) + 8 * j);
          v25 = [*(a1 + 48) objectForKeyedSubscript:v24];

          if (v25)
          {
            v26 = [*(a1 + 56) objectForKeyedSubscript:v24];
            [v18 addObject:v26];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v21);
    }

    v27 = [v41 title];
    v3 = v40;
    v28 = [v40 title];
    if (v27 == v28)
    {
      if (![v10 count])
      {
        v35 = [v18 count];

        if (!v35)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v29 = [v41 title];
      v30 = [v40 title];
      if (([v29 isEqualToString:v30] & 1) != 0 && !objc_msgSend(v10, "count"))
      {
        v36 = [v18 count];

        if (!v36)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

LABEL_24:
    [*(a1 + 64) addObject:{v40, v36}];
    v31 = *(a1 + 72);
    v32 = [v10 copy];
    [v31 setObject:v32 forKey:v40];

    v33 = *(a1 + 80);
    v34 = [v18 copy];
    [v33 setObject:v34 forKey:v40];

LABEL_25:
    v5 = v39;
    v6 = v41;
  }
}

void sub_10006043C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uuidData];
  v5 = [v4 npto_uuid];

  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v19 = v5;
    [*(a1 + 40) addObject:v3];
    v7 = [*(*(a1 + 48) + 8) _npto_assetUUIDsInAssetCollection:v3];
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [*(a1 + 56) objectForKeyedSubscript:v14];

          if (v15)
          {
            v16 = [*(a1 + 64) objectForKeyedSubscript:v14];
            [v8 addObject:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v17 = *(a1 + 72);
    v18 = [v8 copy];
    [v17 setObject:v18 forKey:v3];

    v5 = v19;
  }
}

void sub_100061710(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  [v1 _updateDeviceControllers];
}

void sub_100061C20(id a1, OS_xpc_object *a2)
{
  state = xpc_activity_get_state(a2);
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = state;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activity state: %ld", &v4, 0xCu);
  }
}

void sub_100061CCC(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received unexpected object on com.apple.notifyd.matching: %@", &v4, 0xCu);
  }
}

void sub_100062710(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  v9 = a3;
  v8 = a4;
  if ([v8 compare:*(a1 + 32)] == -1)
  {
    [*(a1 + 40) addObject:v9];
  }

  else
  {
    [*(a1 + 48) _updateExpireTimerWithDate:v8];
    *a5 = 1;
  }
}

void sub_10006291C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 72))
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v1 + 104));
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;

    v6 = *(*(a1 + 32) + 72);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100062A88;
    handler[3] = &unk_10008B1C0;
    objc_copyWeak(&v15, (a1 + 40));
    dispatch_source_set_event_handler(v6, handler);
    v7 = *(*(a1 + 32) + 64);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = +[NSDate date];
    }

    v9 = v8;
    v10 = *(*(a1 + 32) + 72);
    [v8 timeIntervalSinceNow];
    if (v11 >= 0.0)
    {
      v12 = (v11 * 1000.0 * 1000000.0);
    }

    else
    {
      v12 = 0;
    }

    v13 = dispatch_time(0, v12);
    dispatch_source_set_timer(v10, v13, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    dispatch_activate(*(*(a1 + 32) + 72));

    objc_destroyWeak(&v15);
  }
}

void sub_100062A88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _expireMessages];
    WeakRetained = v2;
  }
}

void sub_100062C20(uint64_t a1)
{
  v35 = [*(a1 + 32) messageID];
  v36 = [*(a1 + 32) priority];
  v2 = [*(a1 + 32) data];
  v3 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v2 length] + 3);

  [v3 appendBytes:&v35 length:3];
  v4 = [*(a1 + 32) data];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [*(a1 + 32) data];
    [v3 appendData:v6];
  }

  v7 = [*(a1 + 40) _messagePriorityWithPriority:{objc_msgSend(*(a1 + 32), "priority")}];
  v8 = +[NSMutableDictionary dictionary];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonWakingKey];
  [v8 setObject:&off_10008D120 forKeyedSubscript:IDSSendMessageOptionPushPriorityKey];
  [*(a1 + 32) sendTimeout];
  if (v9 > 0.0)
  {
    [*(a1 + 32) sendTimeout];
    v10 = [NSNumber numberWithDouble:?];
    [v8 setObject:v10 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
  }

  if ([*(a1 + 32) doNotCompress])
  {
    [v8 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionCompressPayloadKey];
  }

  v11 = [*(a1 + 32) queueOneIdentifier];

  if (v11)
  {
    v12 = [*(a1 + 32) queueOneIdentifier];
    [v8 setObject:v12 forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
  }

  v13 = *(*(a1 + 40) + 24);
  v14 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 32) messageID]);
  v15 = [v13 objectForKey:v14];

  v16 = *(*(a1 + 40) + 16);
  v17 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 32) messageID]);
  v18 = [v16 objectForKey:v17];

  if (v15)
  {
    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
  }

  v19 = *(*(a1 + 40) + 88);
  v20 = IDSCopyIDForDevice();
  v21 = [NSSet setWithObject:v20];
  v33 = 0;
  v34 = 0;
  [v19 sendData:v3 fromAccount:0 toDestinations:v21 priority:v7 options:v8 identifier:&v34 error:&v33];
  v22 = v34;
  v23 = v33;

  v24 = sub_10000268C();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [*(a1 + 32) messageID];
    v26 = [v3 length];
    *buf = 67109890;
    v38 = v25;
    v39 = 2048;
    v40 = v26;
    v41 = 2112;
    v42 = v22;
    v43 = 2112;
    v44 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "For message: %hu sending data of length: %tu. Got identifier %@, error %@", buf, 0x26u);
  }

  v27 = objc_alloc_init(NMSMessagePersistentContext);
  -[NMSMessagePersistentContext setMessageID:](v27, "setMessageID:", [*(a1 + 32) messageID]);
  [(NMSMessagePersistentContext *)v27 setIdsIdentifier:v22];
  v28 = [*(a1 + 32) persistentUserInfo];
  [(NMSMessagePersistentContext *)v27 setUserInfo:v28];

  v29 = +[NSDate date];
  [(NMSMessagePersistentContext *)v27 setDate:v29];

  [(NMSMessagePersistentContext *)v27 setFromRequest:1];
  [*(a1 + 32) setMessageCenter:*(a1 + 40)];
  [*(a1 + 32) setIdsIdentifier:v22];
  if (v23)
  {
    [*(a1 + 40) _handleError:v23 context:v27];
  }

  else if (v22 && v15 | v18)
  {
    [*(a1 + 32) responseTimeout];
    if (v30 > 0.0)
    {
      [*(a1 + 32) responseTimeout];
    }

    else
    {
      v31 = 3600.0;
    }

    v32 = [NSDate dateWithTimeIntervalSinceNow:v31];
    [*(*(a1 + 40) + 48) setObject:v27 forKey:v22 expires:v32];
    [*(a1 + 40) _updateExpireTimerWithDate:v32];
  }
}

void sub_100063218(id *a1)
{
  v31 = [a1[4] messageID];
  v2 = [a1[5] data];
  v3 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v2 length] + 2);

  [v3 appendBytes:&v31 length:2];
  v4 = [a1[5] data];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [a1[5] data];
    [v3 appendData:v6];
  }

  v7 = [a1[6] _messagePriorityWithPriority:{objc_msgSend(a1[5], "priority")}];
  v8 = +[NSMutableDictionary dictionary];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonWakingKey];
  [v8 setObject:&off_10008D120 forKeyedSubscript:IDSSendMessageOptionPushPriorityKey];
  [a1[5] sendTimeout];
  if (v9 > 0.0)
  {
    [a1[5] sendTimeout];
    v10 = [NSNumber numberWithDouble:?];
    [v8 setObject:v10 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
  }

  v11 = [a1[4] idsIdentifier];
  [v8 setObject:v11 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];

  if ([a1[5] doNotCompress])
  {
    [v8 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionCompressPayloadKey];
  }

  v12 = *(a1[6] + 2);
  v13 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [a1[4] messageID]);
  v14 = [v12 objectForKey:v13];

  v15 = *(a1[6] + 11);
  v16 = IDSCopyIDForDevice();
  v17 = [NSSet setWithObject:v16];
  v29 = 0;
  v30 = 0;
  [v15 sendData:v3 fromAccount:0 toDestinations:v17 priority:v7 options:v8 identifier:&v30 error:&v29];
  v18 = v30;
  v19 = v29;

  v20 = sub_10000268C();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [a1[4] messageID];
    v22 = [v3 length];
    *buf = 67109890;
    v33 = v21;
    v34 = 2048;
    v35 = v22;
    v36 = 2112;
    v37 = v18;
    v38 = 2112;
    v39 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "For response to: %hu sending data of length: %tu. Got identifier %@, error %@", buf, 0x26u);
  }

  [a1[5] setIdsIdentifier:v18];
  v23 = objc_alloc_init(NMSMessagePersistentContext);
  -[NMSMessagePersistentContext setMessageID:](v23, "setMessageID:", [a1[4] messageID]);
  [(NMSMessagePersistentContext *)v23 setIdsIdentifier:v18];
  v24 = [a1[5] persistentUserInfo];
  [(NMSMessagePersistentContext *)v23 setUserInfo:v24];

  v25 = +[NSDate date];
  [(NMSMessagePersistentContext *)v23 setDate:v25];

  [(NMSMessagePersistentContext *)v23 setFromRequest:0];
  if (v19)
  {
    [a1[6] _handleError:v19 context:v23];
  }

  else if (v18 && v14)
  {
    [a1[5] sendTimeout];
    if (v26 > 0.0)
    {
      [a1[5] sendTimeout];
    }

    else
    {
      v27 = 3600.0;
    }

    v28 = [NSDate dateWithTimeIntervalSinceNow:v27];
    [*(a1[6] + 6) setObject:v23 forKey:v18 expires:v28];
    [a1[6] _updateExpireTimerWithDate:v28];
  }
}

void sub_100064370(uint64_t a1)
{
  v2 = [*(a1 + 32) metadata];
  v3 = [v2 mutableCopy];

  if (!v3)
  {
    v3 = +[NSMutableDictionary dictionary];
  }

  v4 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 32) messageID]);
  [v3 setObject:v4 forKeyedSubscript:@"_id"];

  v5 = [*(a1 + 40) _messagePriorityWithPriority:{objc_msgSend(*(a1 + 32), "priority")}];
  v6 = +[NSMutableDictionary dictionary];
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonWakingKey];
  [v6 setObject:&off_10008D120 forKeyedSubscript:IDSSendMessageOptionPushPriorityKey];
  [*(a1 + 32) timeout];
  v7 = [NSNumber numberWithDouble:?];
  [v6 setObject:v7 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionWantsClientAcknowledgementKey];
  v8 = [*(a1 + 32) queueOneIdentifier];

  if (v8)
  {
    v9 = [*(a1 + 32) queueOneIdentifier];
    [v6 setObject:v9 forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
  }

  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) bypassDuet]);
  [v6 setObject:v10 forKeyedSubscript:IDSSendMessageOptionBypassDuetKey];

  v11 = *(*(a1 + 40) + 88);
  v12 = [*(a1 + 32) URL];
  v13 = IDSCopyIDForDevice();
  v14 = [NSSet setWithObject:v13];
  v29 = 0;
  v30 = 0;
  [v11 sendResourceAtURL:v12 metadata:v3 toDestinations:v14 priority:v5 options:v6 identifier:&v30 error:&v29];
  v15 = v30;
  v16 = v29;

  v17 = sub_10000268C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 32) messageID];
    *buf = 67109634;
    v32 = v18;
    v33 = 2112;
    v34 = v15;
    v35 = 2112;
    v36 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "For resource: %hu. Got identifier %@, error %@", buf, 0x1Cu);
  }

  v19 = objc_alloc_init(NMSMessagePersistentContext);
  -[NMSMessagePersistentContext setMessageID:](v19, "setMessageID:", [*(a1 + 32) messageID]);
  [(NMSMessagePersistentContext *)v19 setIdsIdentifier:v15];
  v20 = [*(a1 + 32) persistentUserInfo];
  [(NMSMessagePersistentContext *)v19 setUserInfo:v20];

  v21 = +[NSDate date];
  [(NMSMessagePersistentContext *)v19 setDate:v21];

  [(NMSMessagePersistentContext *)v19 setFromFile:1];
  v22 = [*(a1 + 32) URL];
  v23 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v22 fileSystemRepresentation]);
  [(NMSMessagePersistentContext *)v19 setFilePath:v23];

  -[NMSMessagePersistentContext setShouldUnlinkFile:](v19, "setShouldUnlinkFile:", [*(a1 + 32) unlinkWhenSent]);
  if (v16)
  {
    [*(a1 + 40) _handleError:v16 context:v19];
    v24 = *(a1 + 56);
    if (v24)
    {
      (*(v24 + 16))(v24, v15, v16);
    }
  }

  else
  {
    [*(a1 + 32) timeout];
    v25 = [NSDate dateWithTimeIntervalSinceNow:?];
    [*(*(a1 + 40) + 48) setObject:v19 forKey:v15 expires:v25];
    v26 = *(a1 + 56);
    if (v26)
    {
      v27 = *(*(a1 + 40) + 56);
      v28 = objc_retainBlock(v26);
      [v27 setObject:v28 forKey:v15];
    }

    [*(a1 + 40) _updateExpireTimerWithDate:v25];
  }
}

void sub_10006673C(id a1)
{
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  qword_10009C640 = [NSSet setWithObjects:v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0];

  _objc_release_x1();
}

uint64_t NPTOCollectionTargetListReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(NPTOCollectionTargetItem);
        [a1 addCollectionTargetItem:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NPTOCollectionTargetItemReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000672F4(id a1)
{
  v1 = +[NSMutableOrderedSet orderedSet];
  v2 = qword_10009C648;
  qword_10009C648 = v1;

  qword_10009C650 = [[NPTODarwinNotificationObserver alloc] initWithNotificationName:@"com.apple.mobile.keybagd.first_unlock" queue:&_dispatch_main_q block:&stru_10008BAA8];

  _objc_release_x1();
}

void sub_100067374(id a1)
{
  v1 = sub_10000268C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Received first unlock notification.", buf, 2u);
  }

  v2 = qword_10009C648;
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = qword_10009C648;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = qword_10009C648;
  qword_10009C648 = 0;

  v8 = qword_10009C650;
  qword_10009C650 = 0;

  objc_sync_exit(v2);
}