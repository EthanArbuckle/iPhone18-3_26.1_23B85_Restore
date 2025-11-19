uint64_t sub_1000ECD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1000ECE2C(Swift::Int a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10009FDA0(0, &qword_1003851C0, off_100315898);
    sub_1000F072C();
    Set.Iterator.init(_cocoa:)();
    v1 = v21[2];
    v2 = v21[3];
    v3 = v21[4];
    v4 = v21[5];
    v5 = v21[6];
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = v3;
  while (v1 < 0)
  {
    v14 = __CocoaSet.Iterator.next()();
    if (!v14 || (v21[8] = v14, sub_10009FDA0(0, &qword_1003851C0, off_100315898), swift_dynamicCast(), v13 = v21[0], v11 = v4, v12 = v5, !v21[0]))
    {
LABEL_21:
      sub_1000D61BC();
      return;
    }

LABEL_19:
    v15 = [v13 uri];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      sub_1000A971C(v21, v17, v19);
    }

    else
    {
    }

    v4 = v11;
    v5 = v12;
  }

  v9 = v4;
  v10 = v5;
  v11 = v4;
  if (v5)
  {
LABEL_15:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1000ED064(void *a1)
{
  v12 = &_swiftEmptySetSingleton;
  v3 = (*(*v1 + 136))();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = &v12;
  v4[4] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000F0474;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1000A040C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_1003210D0;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (v12[2])
    {
      v9 = v1[6];
      if (v9)
      {

        isa = Set._bridgeToObjectiveC()().super.isa;

        [v9 uriNeedsUpdate:isa];
      }
    }
  }

  return result;
}

Class sub_1000ED28C(void *a1)
{
  v3 = [a1 ckrecord];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = type metadata accessor for KTCloudRecords();
  isa = (*(v8 + 456))(v5, v7);
  sub_10009A9D4(v5, v7);
  if (!isa)
  {
    isa = (*(*v1 + 176))(a1);
    if (!isa)
    {
      return isa;
    }

    sub_10009FDA0(0, &qword_1003851B0, CKRecord_ptr);
    v10._countAndFlagsBits = (*(*v1 + 112))();
    isa = CKRecord.init(recordType:recordID:)(v10, isa).super.isa;
  }

  v11 = [a1 publicId];
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = [a1 uris];
    if (v13)
    {
      v14 = v13;
      sub_10009FDA0(0, &qword_1003851C0, off_100315898);
      sub_1000F072C();
      v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000EC768(v15);
    }

    v16 = [a1 contactExternalURI];
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v18 = [a1 contactIdentifier];
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v20 = type metadata accessor for JSONEncoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_1000F06D8();
    v23 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v25 = v24;

    v26 = [(objc_class *)isa encryptedValues];
    swift_getObjectType();
    sub_100002D78(v23, v25);
    CKRecordKeyValueSetting.subscript.setter();
    sub_1000956CC(v23, v25);

    swift_unknownObjectRelease();
  }

  else
  {

    return 0;
  }

  return isa;
}

uint64_t sub_1000ED638()
{
  v9 = 0;
  v1 = (*(*v0 + 136))();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000F0794;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_100321148;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1000ED7C8()
{
  v9 = _swiftEmptyArrayStorage;
  v1 = (*(*v0 + 136))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B58DC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_1003211C0;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1000ED960()
{
  v9 = _swiftEmptyArrayStorage;
  v1 = (*(*v0 + 136))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B58F4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_100321238;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1000EDAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*v3 + 136))();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000F0980;
  *(v9 + 24) = v8;
  v13[4] = sub_1000A0E98;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10009EB40;
  v13[3] = &unk_1003212B0;
  v10 = _Block_copy(v13);

  [v7 performBlockAndWait:v10];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EDCA0(void *a1)
{
  v12 = 0;
  v3 = (*(*v1 + 136))();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = &v12;
  v4[4] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000F0F5C;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_100321328;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_1000EDE44()
{
  v1 = (*(*v0 + 136))();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000F14F0;
  *(v2 + 24) = v0;
  v5[4] = sub_1000A0E98;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009EB40;
  v5[3] = &unk_100321378;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait:v3];

  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EDFA8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000EDFE0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_1000EE370(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10009FDA0(0, &qword_1003851C0, off_100315898);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1000EE740(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_1000EE930(v21 + 1);
    }

    v19 = v8;
    sub_1000EEB58(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_10009FDA0(0, &qword_1003851C0, off_100315898);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1000EEBDC(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_1000EE5A8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_1000EF0B0();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_10009FDA0(0, &qword_1003851C0, off_100315898);
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000EED4C();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_1000EF218(v13);
  result = v20;
  *v10 = v21;
  return result;
}

Swift::Int sub_1000EE740(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100095820(&unk_1003853B8, &unk_1002D7B90);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10009FDA0(0, &qword_1003851C0, off_100315898);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000EE930(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1000EE930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100095820(&unk_1003853B8, &unk_1002D7B90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1000EEB58(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1000EEBDC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000EE930(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000EED4C();
      goto LABEL_12;
    }

    sub_1000EEE9C(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10009FDA0(0, &qword_1003851C0, off_100315898);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_1000EED4C()
{
  v1 = v0;
  sub_100095820(&unk_1003853B8, &unk_1002D7B90);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1000EEE9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100095820(&unk_1003853B8, &unk_1002D7B90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000EF0B0()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1000EE740(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_10009FDA0(0, &qword_1003851C0, off_100315898);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1000EF218(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000EF218(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000EF3B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644963696C627570 && a2 == 0xEE00797469746E65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656449736469 && a2 == 0xED00007265696669 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010029BD00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010029BD20 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000EF538@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100095820(&qword_1003853C8, &unk_1002D7BA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_1000A0E50(a1, a1[3]);
  sub_1000EC020();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10009A9E8(a1);
  }

  v32 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v27 = v11;
  sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
  v31 = 1;
  sub_1000ABFAC(&unk_1003853D0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v28;
  v30 = 2;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v14;
  v29 = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);

  v19 = v26;

  v20 = v25;

  sub_10009A9E8(a1);

  *a2 = v27;
  a2[1] = v13;
  v22 = v24;
  a2[2] = v19;
  a2[3] = v22;
  a2[4] = v20;
  a2[5] = v18;
  a2[6] = v17;
  return result;
}

uint64_t sub_1000EF87C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000EF8C4(char *a1@<X8>)
{
  v3 = v1[2];
  v103 = v1[3];
  v99 = v1[4];
  v4 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002D47B0;
  v101 = v3;
  v6 = [v3 recordID];
  v7 = [v6 recordName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10009FD4C();
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  v11 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v11];

  v104[0] = 0;
  v100 = v4;
  v12 = [v4 execute:v104];
  v13 = v104[0];
  if (!v12)
  {
    v20 = v104[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v102 = 0;
    v17 = a1;
LABEL_10:
    v22 = (*(*v103 + 136))(v21);
    v19 = [objc_allocWithZone(CloudStaticKey) initWithContext:v22];

    if (!v19)
    {

      v46 = 0;
LABEL_31:
      *v17 = v46;
      return;
    }

    v18 = v101;
    v23 = [v101 recordID];
    v24 = [v23 recordName];

    if (!v24)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = String._bridgeToObjectiveC()();
    }

    [v19 setRecordID:v24];

LABEL_14:
    v25 = type metadata accessor for JSONDecoder();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v28 = [v18 encryptedValues];
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 objectForKeyedSubscript:v29];

    swift_unknownObjectRelease();
    if (v30)
    {
      v105 = v30;
      sub_100095820(&qword_1003844B0, &qword_1002D6E00);
      if (swift_dynamicCast())
      {
        v31 = v104[0];
        v32 = v104[1];
        sub_1000F1D3C();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        if (!v102)
        {
          v91 = v32;
          v53 = v104[2];
          v54 = v104[4];
          v55 = v104[6];
          v56 = String._bridgeToObjectiveC()();
          v57 = v19;
          v58 = v56;
          v96 = v57;
          [v57 setPublicId:v56];

          if (v55)
          {

            v59 = String._bridgeToObjectiveC()();
          }

          else
          {
            v59 = 0;
          }

          v19 = v96;
          [v96 setContactIdentifier:{v59, v91, v31}];

          if (v54)
          {

            v60 = String._bridgeToObjectiveC()();
          }

          else
          {
            v60 = 0;
          }

          [v96 setContactExternalURI:v60];

          v61 = [v96 uris];
          if (v61)
          {
            v62 = v61;
            sub_10009FDA0(0, &qword_1003851C0, off_100315898);
            sub_1000F072C();
            v63 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1000EC768(v63);
            v65 = v64;
          }

          else
          {
            v65 = _swiftEmptyArrayStorage;
          }

          v66 = sub_1000AAA30(v65);

          v105 = v66;
          if (v53[2])
          {
            v67 = [v96 uris];
            if (!v67)
            {
              sub_10009FDA0(0, &qword_1003851C0, off_100315898);
              sub_1000F072C();
              isa = Set._bridgeToObjectiveC()().super.isa;
              [v96 setUris:isa];
              v67 = isa;
            }
          }

          v94 = v17;

          v69 = v96;

          v71 = v69;
          sub_1000F192C(v70, &v105, v103, v69);

          swift_bridgeObjectRelease_n();

          v72 = v105;
          v17 = v105 + 56;
          v73 = 1 << v105[32];
          v74 = -1;
          if (v73 < 64)
          {
            v74 = ~(-1 << v73);
          }

          v75 = v74 & *(v105 + 7);
          v76 = (v73 + 63) >> 6;

          v18 = 0;
          v97 = v71;
          v95 = v72;
          while (v75)
          {
LABEL_55:
            v78 = (*(v72 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v75)))));
            v79 = *v78;
            v80 = v78[1];
            v81 = *(*v103 + 136);

            v83 = v81(v82);
            v84 = [objc_allocWithZone(CloudStaticKeyURI) initWithContext:v83];

            v98 = v79;
            v85 = String._bridgeToObjectiveC()();
            [v84 setUri:v85];

            v71 = v97;
            v86 = [v97 uris];
            if (v86)
            {
              v87 = v86;
              sub_10009FDA0(0, &qword_1003851C0, off_100315898);
              sub_1000F072C();
              v88 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

              v104[0] = v88;
              if (v104[0])
              {
                v89.super.isa = Set._bridgeToObjectiveC()().super.isa;
              }

              else
              {
                v89.super.isa = 0;
              }

              v71 = v97;
              [v97 setUris:v89.super.isa];
            }

            else
            {
              [v97 setUris:0];
            }

            v72 = v95;
            v75 &= v75 - 1;
            sub_1000A971C(v104, v98, v80);

            v19 = v96;
          }

          while (1)
          {
            v77 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v77 >= v76)
            {

              v90 = String._bridgeToObjectiveC()();
              [v71 setCkstate:v90];
              sub_1000956CC(v93, v92);

              v17 = v94;
              v18 = v101;
              goto LABEL_19;
            }

            v75 = *&v17[8 * v77];
            ++v18;
            if (v75)
            {
              v18 = v77;
              goto LABEL_55;
            }
          }

          __break(1u);
LABEL_62:
          swift_once();
LABEL_20:
          v34 = type metadata accessor for Logger();
          sub_10009597C(v34, qword_100390CC8);
          v35 = v19;
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v104[0] = v39;
            *v38 = 136315138;
            v40 = [v35 publicId];
            if (v40)
            {
              v41 = v17;
              v42 = v40;
              v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v45 = v44;

              v17 = v41;
              v18 = v101;
            }

            else
            {
              v45 = 0xE100000000000000;
              v43 = 45;
            }

            v47 = sub_1000999E4(v43, v45, v104);

            *(v38 + 4) = v47;
            _os_log_impl(&_mh_execute_header, v36, v37, "merged cloud device: %s", v38, 0xCu);
            sub_10009A9E8(v39);
          }

          else
          {
          }

          v48 = (*(*v103 + 256))(v35, v18);
          v49 = (*(*v103 + 136))(v48);
          v104[0] = 0;
          v50 = [v49 save:v104];

          if (v50)
          {
            v51 = v104[0];
          }

          else
          {
            v52 = v104[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          v46 = 1;
          goto LABEL_31;
        }

        sub_1000956CC(v31, v32);
      }
    }

    v33 = String._bridgeToObjectiveC()();
    [v19 setCkstate:v33];

LABEL_19:
    if (qword_100390CC0 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_62;
  }

  v14 = v12;
  sub_10009FDA0(0, &qword_100385398, off_100315890);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v13;

  if (!(v15 >> 62))
  {
    v17 = a1;
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v17 = a1;
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_9:

    goto LABEL_10;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v18 = v101;
    goto LABEL_14;
  }

  v18 = v101;
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v15 + 32);

    goto LABEL_14;
  }

  __break(1u);
}

void sub_1000F0474()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002D47B0;
  v6 = [v2 recordName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10009FD4C();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v10];

  v21 = 0;
  v11 = [v4 execute:&v21];
  v12 = v21;
  if (!v11)
  {
    goto LABEL_4;
  }

  v13 = v11;
  sub_10009FDA0(0, &qword_100385398, off_100315890);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v12;

  sub_1000F1B94(v14, v1, v3);

  v17 = (*(*v3 + 136))(v16);
  v21 = 0;
  v18 = [v17 save:&v21];

  v12 = v21;
  if (v18)
  {
    v19 = v21;
  }

  else
  {
LABEL_4:
    v20 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000F06C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000F06D8()
{
  result = qword_1003851B8;
  if (!qword_1003851B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003851B8);
  }

  return result;
}

unint64_t sub_1000F072C()
{
  result = qword_1003851C8;
  if (!qword_1003851C8)
  {
    sub_10009FDA0(255, &qword_1003851C0, off_100315898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003851C8);
  }

  return result;
}

void sub_1000F0794()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_10009FD4C();
  *(v4 + 32) = 0x676E696F6774756FLL;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v5;
  *(v4 + 64) = v5;
  *(v4 + 72) = 0x646574656C6564;
  *(v4 + 80) = 0xE700000000000000;
  v6 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v6];

  v8 = (*(*v1 + 136))();
  sub_10009FDA0(0, &unk_1003853A0, off_100315880);
  v7 = NSManagedObjectContext.count<A>(for:)();

  if (v7 >= 1)
  {
    *v2 = 1;
  }
}

id sub_1000F0980()
{
  v1 = v0[3];
  v2 = v0[4];
  v42 = v0[5];
  v43 = v0[2];
  if (v43 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v44 = i;
    while (1)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v5 = *(v43 + 32 + 8 * v4);
      }

      v6 = v5;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = [objc_opt_self() fetchRequest];
      sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
      sub_100095820(&unk_100383140, &qword_1002D6BD0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1002D47B0;
      v47 = v6;
      v10 = [v6 recordName];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_10009FD4C();
      *(v9 + 32) = v11;
      *(v9 + 40) = v13;
      v14 = NSPredicate.init(format:_:)();
      [v8 setPredicate:v14];

      v48 = 0;
      v46 = v8;
      v15 = [v8 execute:&v48];
      v16 = v48;
      if (v15)
      {
        v17 = v15;
        sub_10009FDA0(0, &qword_100385398, off_100315890);
        v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v16;

        if (v18 >> 62)
        {
          v20 = _CocoaArrayWrapper.endIndex.getter();
          v45 = v4;
          if (v20)
          {
LABEL_13:
            v21 = 4;
            while (1)
            {
              v22 = v21 - 4;
              if ((v18 & 0xC000000000000001) != 0)
              {
                v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v22 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_30;
                }

                v23 = *(v18 + 8 * v21);
              }

              v24 = v23;
              v7 = __OFADD__(v22, 1);
              v25 = v21 - 3;
              if (v7)
              {
                break;
              }

              v26 = String._bridgeToObjectiveC()();
              [v24 setCkstate:v26];

              ++v21;
              if (v25 == v20)
              {
                goto LABEL_4;
              }
            }

            __break(1u);
LABEL_30:
            __break(1u);
            break;
          }
        }

        else
        {
          v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v45 = v4;
          if (v20)
          {
            goto LABEL_13;
          }
        }

LABEL_4:

        i = v44;
        v4 = v45;
      }

      else
      {
        v27 = v48;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100390CC0 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_10009597C(v28, qword_100390CC8);
        v29 = v47;
        swift_errorRetain();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = v4;
          v34 = swift_slowAlloc();
          *v32 = 138412546;
          *(v32 + 4) = v29;
          *v34 = v29;
          *(v32 + 12) = 2112;
          v35 = v29;
          swift_errorRetain();
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v32 + 14) = v36;
          v34[1] = v36;
          _os_log_impl(&_mh_execute_header, v30, v31, "record to update not found %@: %@", v32, 0x16u);
          sub_100095820(&unk_100383290, &unk_1002D5BA0);
          swift_arrayDestroy();
          v4 = v33;
          i = v44;
        }

        else
        {
        }
      }

      if (v4 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_34:
  v37 = (*(*v42 + 136))();
  v48 = 0;
  v38 = [v37 save:&v48];

  v39 = v48;
  if (v38)
  {

    return v39;
  }

  else
  {
    v41 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000F0F1C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000F0F5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002D47B0;
  v6 = [v1 recordName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10009FD4C();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v10];

  v40 = 0;
  v11 = [v4 execute:&v40];
  v12 = v40;
  if (!v11)
  {
    v23 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_100390CC0 == -1)
    {
LABEL_12:
      v24 = type metadata accessor for Logger();
      sub_10009597C(v24, qword_100390CC8);
      v25 = static os_log_type_t.error.getter();
      v26 = v1;
      v27 = Logger.logObject.getter();

      if (!os_log_type_enabled(v27, v25))
      {
LABEL_21:

        return;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v26;
      *v29 = v26;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, v27, v25, "record not found %@", v28, 0xCu);
      sub_1000A4AD8(v29);

LABEL_20:

      goto LABEL_21;
    }

LABEL_25:
    swift_once();
    goto LABEL_12;
  }

  v13 = v11;
  sub_10009FDA0(0, &qword_100385398, off_100315890);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v12;

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_16:
    if (qword_100390CC0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10009597C(v32, qword_100390CC8);
    v33 = static os_log_type_t.error.getter();

    v27 = Logger.logObject.getter();

    if (!os_log_type_enabled(v27, v33))
    {

      return;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v34 = 136315138;
    v36 = Array.description.getter();
    v38 = v37;

    v39 = sub_1000999E4(v36, v38, &v40);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v27, v33, "no response %s", v34, 0xCu);
    sub_10009A9E8(v35);

    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(v1 + 32);
LABEL_7:
  v16 = v15;

  v17 = (*(*v3 + 208))(v16);
  v18 = *v2;
  *v2 = v17;
  v19 = v17;

  LOBYTE(v17) = (*(*v3 + 256))(v16, v17);
  if ((v17 & 1) == 0)
  {
LABEL_10:

    return;
  }

  v20 = (*(*v3 + 136))();
  v40 = 0;
  v21 = [v20 save:&v40];

  if (v21)
  {
    v22 = v40;
    goto LABEL_10;
  }

  v31 = v40;
  _convertNSErrorToError(_:)();

  swift_willThrow();
}

void sub_1000F14F0()
{
  v1 = objc_allocWithZone(NSFetchRequest);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithEntityName:v2];

  v4 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v3];
  v5 = *(*v0 + 136);
  v6 = v5();
  v15 = 0;
  v7 = [v6 executeRequest:v4 error:&v15];

  if (v7)
  {
    v8 = v15;
  }

  else
  {
    v10 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11 = (v5)(v9);
  v15 = 0;
  v12 = [v11 save:&v15];

  if (v12)
  {
    v13 = v15;
  }

  else
  {
    v14 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v3 = v4;
  }
}

uint64_t getEnumTagSinglePayload for StaticKeyData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StaticKeyData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000F1828()
{
  result = qword_100390EF0;
  if (!qword_100390EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100390EF0);
  }

  return result;
}

unint64_t sub_1000F1880()
{
  result = qword_100391000;
  if (!qword_100391000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100391000);
  }

  return result;
}

unint64_t sub_1000F18D8()
{
  result = qword_100391008[0];
  if (!qword_100391008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100391008);
  }

  return result;
}

uint64_t sub_1000F192C(uint64_t result, uint64_t *a2, uint64_t a3, void *a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = a4;
    v6 = a2;
    v7 = (result + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *v6;

      v11 = sub_1000ECD34(v8, v9, v10);

      if (v11)
      {
        sub_1000D5450(v8, v9);
      }

      else
      {
        v13 = (*(*a3 + 136))(v12);
        v14 = [objc_allocWithZone(CloudStaticKeyURI) initWithContext:v13];

        v15 = String._bridgeToObjectiveC()();
        [v14 setUri:v15];

        v16 = [v5 uris];
        if (v16)
        {
          v17 = v16;
          sub_10009FDA0(0, &qword_1003851C0, off_100315898);
          sub_1000F072C();
          v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v24 = v18;
          sub_1000EE370(&v23, v14);

          if (v24)
          {
            v19.super.isa = Set._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v19.super.isa = 0;
          }

          v6 = a2;
          v5 = a4;
          [a4 setUris:v19.super.isa];
        }

        else
        {
          [v5 setUris:0];
        }

        sub_1000D5450(v8, v9);

        sub_1000A971C(&v23, v8, v9);
      }

      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1000F1B94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 uris];
      if (v11)
      {
        v12 = v11;
        sub_10009FDA0(0, &qword_1003851C0, off_100315898);
        sub_1000F072C();
        v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000ECE2C(v13);
      }

      v7 = (*(*a3 + 136))();
      [v7 deleteObject:v9];

      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

unint64_t sub_1000F1D3C()
{
  result = qword_1003853B0;
  if (!qword_1003853B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003853B0);
  }

  return result;
}

double *KTBucket.__allocating_init(fillrate:maxTokens:)(double a1, double a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v7[3] = a1;
  v7[4] = a2;
  v7[2] = a2;
  Date.init()();
  return v7;
}

double *KTBucket.init(fillrate:maxTokens:)(double a1, double a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[3] = a1;
  v2[4] = a2;
  v2[2] = a2;
  Date.init()();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC13transparencyd8KTBucket_lastFilltime, v9, v5);
  return v2;
}

uint64_t KTBucket.description.getter()
{
  (*(*v0 + 240))();
  v1._countAndFlagsBits = 91;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  (*(*v0 + 112))();
  Double.write<A>(to:)();
  v2._countAndFlagsBits = 47;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  (*(*v0 + 160))();
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 60;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  (*(*v0 + 136))();
  Double.write<A>(to:)();
  v4._countAndFlagsBits = 23870;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  return 0;
}

uint64_t sub_1000F216C(double a1)
{
  v3 = (*(*v1 + 224))();
  if (v3)
  {
    v4 = (*(*v1 + 128))(v7);
    *v5 = *v5 - a1;
    v4(v7, 0);
  }

  return v3 & 1;
}

uint64_t sub_1000F2224()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = Date.init()();
  (*(*v0 + 184))(v9);
  Date.timeIntervalSince(_:)();
  v11 = v10;
  v12 = *(v2 + 8);
  v13 = v12(v6, v1);
  v14 = v11 * (*(*v0 + 136))(v13);
  v15 = v14 + (*(*v0 + 112))();
  v16.n128_f64[0] = (*(*v0 + 160))();
  if (v16.n128_f64[0] >= v15)
  {
    v16.n128_f64[0] = v15;
  }

  (*(*v0 + 120))(v16);
  (*(v2 + 16))(v6, v8, v1);
  (*(*v0 + 192))(v6);
  return v12(v8, v1);
}

uint64_t sub_1000F2458()
{
  (*(*v0 + 160))();
  v1 = *(*v0 + 120);

  return v1();
}

void sub_1000F24C0(double a1)
{
  v2 = a1 - (*(*v1 + 112))();
  if (v2 > 0.0)
  {
    v3 = v2 / (*(*v1 + 136))(0.0);
  }
}

uint64_t KTBucket.deinit()
{
  v1 = OBJC_IVAR____TtC13transparencyd8KTBucket_lastFilltime;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t KTBucket.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13transparencyd8KTBucket_lastFilltime;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

unint64_t KTNetworkBucketFeedback.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1000F268C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_1000F26A8()
{
  result = [objc_allocWithZone(NSOperationQueue) init];
  qword_100391098 = result;
  return result;
}

id KTNetworkTimeoutBucket.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  __chkstk_darwin(v1);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_networkTimeoutDependency;
  *&v0[OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_networkTimeoutDependency] = 0;
  v15 = type metadata accessor for KTBucket(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v18 + 32) = 0x40AC200000000000;
  v26 = xmmword_1002D7BB0;
  *(v18 + 16) = xmmword_1002D7BB0;
  Date.init()();
  v19 = *(v10 + 32);
  v19(v18 + OBJC_IVAR____TtC13transparencyd8KTBucket_lastFilltime, v13, v9);
  *&v0[OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_quickStart] = v18;
  v20 = *(v15 + 48);
  v21 = *(v15 + 52);
  v22 = swift_allocObject();
  *(v22 + 32) = 0x40AC200000000000;
  *(v22 + 16) = v26;
  Date.init()();
  v19(v22 + OBJC_IVAR____TtC13transparencyd8KTBucket_lastFilltime, v13, v9);
  *&v0[OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_networkTimeout] = v22;
  v23 = *&v0[v14];
  *&v0[v14] = 0;

  sub_10009FDA0(0, &qword_100385400, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100004988(&unk_1003878F0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095820(&unk_100385410, &qword_1002D66F8);
  sub_1000F6A20(&qword_100387900, &unk_100385410, &qword_1002D66F8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v31 + 104))(v30, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  *&v0[OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = type metadata accessor for KTNetworkTimeoutBucket();
  v33.receiver = v0;
  v33.super_class = v24;
  return objc_msgSendSuper2(&v33, "init");
}

uint64_t KTNetworkTimeoutBucket.sysdiagnose.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_queue);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

NSOperation_optional __swiftcall KTNetworkTimeoutBucket.networkTimeoutOperation()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_queue);
  sub_100095820(&qword_100385420, &qword_1002D7C10);
  OS_dispatch_queue.sync<A>(execute:)();
  v3 = v4;
  result.value.super.isa = v3;
  result.is_nil = v2;
  return result;
}

NSOperation_optional __swiftcall KTNetworkTimeoutBucket.onQueueNetworkTimeoutOperation()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  __chkstk_darwin(v2);
  v5 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchTime();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = &v44 - v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v52 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_queue);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  v24 = (*(v17 + 8))(v20, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v46 = v13;
  v26 = *(v1 + OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_networkTimeoutDependency);
  v27 = v26;
  if (!v26)
  {
    v44 = OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_networkTimeoutDependency;
    v45 = v12;
    v28 = *((swift_isaMask & *v1) + 0x88);
    v29 = (v28)(v24);
    v30 = (*(*v29 + 224))(v29, 900.0);

    if (v30)
    {
      v27 = 0;
      goto LABEL_9;
    }

    v27 = [objc_allocWithZone(NSOperation) init];
    v31 = String._bridgeToObjectiveC()();
    [v27 setName:v31];

    v32 = *v28();
    v33 = (*(v32 + 256))(900.0);

    v34 = v33 * 1000.0;
    v53 = v22;
    v35 = v22;
    v24 = static DispatchTime.now()();
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v36 = v45;
      if (v34 > -9.22337204e18)
      {
        if (v34 < 9.22337204e18)
        {
          *v5 = v34;
          v38 = v50;
          v37 = v51;
          (*(v50 + 104))(v5, enum case for DispatchTimeInterval.milliseconds(_:), v51);
          + infix(_:_:)();
          (*(v38 + 8))(v5, v37);
          (*(v48 + 8))(v10, v49);
          v39 = v52;
          OS_dispatch_queue.SchedulerTimeType.init(_:)();
          *(swift_allocObject() + 16) = v1;
          sub_10009FDA0(0, &qword_100385400, OS_dispatch_queue_ptr);
          sub_1000F3714();
          v40 = v1;
          Scheduler.schedule(after:_:)();

          (*(v46 + 8))(v39, v36);

          v41 = *(v1 + v44);
          *(v1 + v44) = v27;
          v42 = v27;

          goto LABEL_9;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_9:
  v43 = v26;
  v24 = v27;
LABEL_14:
  result.value.super.isa = v24;
  result.is_nil = v25;
  return result;
}

unint64_t sub_1000F3714()
{
  result = qword_100385428;
  if (!qword_100385428)
  {
    sub_10009FDA0(255, &qword_100385400, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100385428);
  }

  return result;
}

void sub_1000F37C0()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_networkTimeoutDependency);
  if (!v1)
  {
    return;
  }

  *(v0 + OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_networkTimeoutDependency) = 0;
  if (qword_100391090 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  [qword_100391098 addOperation:v1];
}

uint64_t KTNetworkTimeoutBucket.network(feedback:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *&v1[OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_queue];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = v2;
  v6[4] = ObjectType;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000F3A9C;
  *(v7 + 24) = v6;
  v11[4] = sub_1000A040C;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10009EB40;
  v11[3] = &unk_100321530;
  v8 = _Block_copy(v11);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F3A9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 == 2)
  {
    if (*(v2 + OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_networkTimeoutDependency) || (v6 = *(v0 + 24), v7 = (*((swift_isaMask & *v2) + 0x88))(), v8 = (*(*v7 + 224))(v7, 900.0), result = , (v8 & 1) == 0))
    {
      v9 = (*((swift_isaMask & *v2) + 0x70))();
      v10 = (*(*v9 + 232))(v9, 1200.0);

      if (v10)
      {
        return (*((swift_isaMask & *v2) + 0xD0))(result);
      }
    }
  }

  else if (v1 == 1)
  {
    v3 = *(v0 + 24);
    v4 = (*((swift_isaMask & *v2) + 0x88))();
    (*(*v4 + 232))(v4, 900.0);
  }

  else if (v1)
  {
    v16 = *(v0 + 16);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 24);
    v12 = (*((swift_isaMask & *v2) + 0x88))();
    (*(*v12 + 248))(v12);

    v14 = (*((swift_isaMask & *v2) + 0x70))(v13);
    (*(*v14 + 248))(v14);

    return (*((swift_isaMask & *v2) + 0xD0))(v15);
  }

  return result;
}

uint64_t sub_1000F3DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F3EB8(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1000F3F08(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1000F3FCC()
{
  v1 = (v0 + OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_handler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1000F4024(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_handler);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1000F40E4()
{
  v1 = OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_timer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_1000F412C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_timer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000F41E4()
{
  v1 = OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_isCannceled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000F4228(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_isCannceled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t variable initialization expression of KTBucketNearFutureScheduler.qos@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchQoS.QoSClass.default(_:);
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000F436C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_1000F4418(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t static KTBucketNearFutureScheduler.resultString(_:)(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = 1852732786;
      return v1 | 0x676E6900000000;
    }

    if (a1 == 3)
    {
      return 0x64657265666564;
    }
  }

  else
  {
    if (!a1)
    {
      v1 = 1684956528;
      return v1 | 0x676E6900000000;
    }

    if (a1 == 1)
    {
      return 0x656C6C65636E6163;
    }
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000F45DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000F4624()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_1000F4668@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000F6738(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000F469C()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      v2 = 1684956528;
      return v2 | 0x676E6900000000;
    }

    if (v1 == 1)
    {
      return 0x656C6C65636E6163;
    }

    goto LABEL_12;
  }

  if (v1 == 2)
  {
    v2 = 1852732786;
    return v2 | 0x676E6900000000;
  }

  if (v1 != 3)
  {
LABEL_12:
    v4 = *v0;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  return 0x64657265666564;
}

id KTBucketNearFutureScheduler.init(fillrate:maxTokens:)(double a1, double a2)
{
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_timer] = 0;
  v2[OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_isCannceled] = 0;
  v17 = OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_qos;
  v18 = enum case for DispatchQoS.QoSClass.default(_:);
  v19 = type metadata accessor for DispatchQoS.QoSClass();
  (*(*(v19 - 8) + 104))(&v2[v17], v18, v19);
  v20 = type metadata accessor for KTBucket(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v23[3] = a1;
  v23[4] = a2;
  v23[2] = a2;
  Date.init()();
  (*(v13 + 32))(v23 + OBJC_IVAR____TtC13transparencyd8KTBucket_lastFilltime, v16, v12);
  *&v2[OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_bucket] = v23;
  sub_10009FDA0(0, &qword_100385400, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_100004988(&unk_1003878F0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095820(&unk_100385410, &qword_1002D66F8);
  sub_1000F6A20(&qword_100387900, &unk_100385410, &qword_1002D66F8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v28 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  *&v2[OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = &v2[OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_handler];
  *v24 = KTBucketNearFutureScheduler.KTBucketNFSResult.rawValue.getter;
  v24[1] = 0;
  v25 = type metadata accessor for KTBucketNearFutureScheduler(0);
  v30.receiver = v2;
  v30.super_class = v25;
  return objc_msgSendSuper2(&v30, "init");
}

uint64_t KTBucketNearFutureScheduler.setEventHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_queue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000F6768;
  *(v7 + 24) = v6;
  v12[4] = sub_1000A0E98;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10009EB40;
  v12[3] = &unk_1003215A8;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t KTBucketNearFutureScheduler.set(qos:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = *&v1[OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_queue];
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000F67E4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_100321620;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F50B4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2);
  return (*((swift_isaMask & *a1) + 0xE8))(v7);
}

Swift::Void __swiftcall KTBucketNearFutureScheduler.setQoS(_:)(qos_class_t a1)
{
  v2 = sub_100095820(&qword_100385458, &qword_1002D7C18);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  DispatchQoS.QoSClass.init(rawValue:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000F6848(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    (*((swift_isaMask & *v1) + 0x108))(v10);
    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1000F553C(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  v6 = __chkstk_darwin(v4);
  v73 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = v65 - v8;
  v9 = type metadata accessor for DispatchTime();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  v11 = __chkstk_darwin(v9);
  v68 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = v65 - v13;
  v14 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v67 = *(v14 - 8);
  v15 = *(v67 + 64);
  __chkstk_darwin(v14);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v18 - 8);
  v81 = v18;
  v19 = *(v80 + 64);
  __chkstk_darwin(v18);
  v77 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v78 = *(v21 - 8);
  v79 = v21;
  v22 = *(v78 + 64);
  __chkstk_darwin(v21);
  v76 = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS.QoSClass();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = (v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v2 + OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_queue);
  *v33 = v34;
  (*(v30 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v29);
  v66 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  result = (*(v30 + 8))(v33, v29);
  if (v34)
  {
    if ((*((swift_isaMask & *v2) + 0xB0))(result))
    {
      swift_unknownObjectRelease();
      return 0;
    }

    else if ((*((swift_isaMask & *v2) + 0xC8))())
    {
      return 1;
    }

    else
    {
      v36 = *((swift_isaMask & *v2) + 0x80);
      v65[1] = (swift_isaMask & *v2) + 128;
      v37 = v36();
      v38 = (*(*v37 + 232))(v37, a1);

      if (v38)
      {
        sub_10009FDA0(0, &qword_100385400, OS_dispatch_queue_ptr);
        (*((swift_isaMask & *v2) + 0xE0))();
        v39 = static OS_dispatch_queue.global(qos:)();
        (*(v25 + 8))(v28, v24);
        v40 = swift_allocObject();
        *(v40 + 16) = v2;
        v87 = sub_1000F69AC;
        v88 = v40;
        aBlock = _NSConcreteStackBlock;
        v84 = 1107296256;
        v85 = sub_1000A31E0;
        v86 = &unk_1003216C0;
        v41 = _Block_copy(&aBlock);
        v42 = v2;
        v43 = v76;
        static DispatchQoS.unspecified.getter();
        v82 = _swiftEmptyArrayStorage;
        sub_100004988(&qword_100384BD0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100095820(&qword_100384BD8, &qword_1002D74B8);
        sub_1000F6A20(&unk_100384BE0, &qword_100384BD8, &qword_1002D74B8);
        v44 = v77;
        v45 = v81;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v41);

        (*(v80 + 8))(v44, v45);
        (*(v78 + 8))(v43, v79);

        return 2;
      }

      else
      {
        sub_10009FDA0(0, &qword_100385460, OS_dispatch_source_ptr);
        aBlock = _swiftEmptyArrayStorage;
        sub_100004988(&qword_100385468, &type metadata accessor for OS_dispatch_source.TimerFlags);
        sub_100095820(&qword_100385470, &unk_1002D7C20);
        sub_1000F6A20(&unk_100385478, &qword_100385470, &unk_1002D7C20);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v46 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
        (*(v67 + 8))(v17, v14);
        v66 = v46;
        ObjectType = swift_getObjectType();
        v48 = swift_allocObject();
        *(v48 + 16) = v2;
        *(v48 + 24) = a1;
        v87 = sub_1000F68B0;
        v88 = v48;
        aBlock = _NSConcreteStackBlock;
        v84 = 1107296256;
        v85 = sub_1000A31E0;
        v86 = &unk_100321670;
        v49 = _Block_copy(&aBlock);
        v65[0] = v2;
        v50 = v76;
        static DispatchQoS.unspecified.getter();
        v51 = v77;
        v67 = ObjectType;
        sub_1000F6078();
        OS_dispatch_source.setEventHandler(qos:flags:handler:)();
        _Block_release(v49);
        (*(v80 + 8))(v51, v81);
        (*(v78 + 8))(v50, v79);

        v53 = *(v36)(v52);
        (*(v53 + 256))(a1);

        v54 = v68;
        static DispatchTime.now()();
        v55 = v69;
        + infix(_:_:)();
        v56 = v71;
        v81 = *(v70 + 8);
        v81(v54, v71);
        v58 = v74;
        v57 = v75;
        v59 = *(v74 + 104);
        v60 = v72;
        v59(v72, enum case for DispatchTimeInterval.never(_:), v75);
        v61 = v73;
        *v73 = 0;
        v59(v61, enum case for DispatchTimeInterval.nanoseconds(_:), v57);
        OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
        v62 = *(v58 + 8);
        v62(v61, v57);
        v62(v60, v57);
        v81(v55, v56);
        v63 = *((swift_isaMask & *v65[0]) + 0xB8);
        v64 = swift_unknownObjectRetain();
        v63(v64);
        OS_dispatch_source.resume()();
        swift_unknownObjectRelease();
        return 3;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F6078()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100004988(&qword_100384BD0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095820(&qword_100384BD8, &qword_1002D74B8);
  sub_1000F6A20(&unk_100384BE0, &qword_100384BD8, &qword_1002D74B8);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t KTBucketNearFutureScheduler.trigger(useTokens:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_queue);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

Swift::Void __swiftcall KTBucketNearFutureScheduler.cancel()()
{
  v1 = *&v0[OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000F6A8C;
  *(v3 + 24) = v2;
  v7[4] = sub_1000A0E98;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10009EB40;
  v7[3] = &unk_100321738;
  v4 = _Block_copy(v7);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1000F6394(void *a1)
{
  if ((*((swift_isaMask & *a1) + 0xB0))())
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  (*((swift_isaMask & *a1) + 0xB8))(0);
  return (*((swift_isaMask & *a1) + 0xD0))(1);
}

id sub_1000F6650(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1000F6738(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000F6768()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *((swift_isaMask & *v1) + 0xA0);

  return v4(v2, v3);
}

uint64_t sub_1000F67E4()
{
  v1 = *(type metadata accessor for DispatchQoS.QoSClass() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000F50B4(v2, v3);
}

uint64_t sub_1000F6848(uint64_t a1)
{
  v2 = sub_100095820(&qword_100385458, &qword_1002D7C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F68B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((*((swift_isaMask & *v1) + 0xB0))())
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  v3 = (*((swift_isaMask & *v1) + 0xB8))(0);
  return (*((swift_isaMask & *v1) + 0x118))(v3, v2);
}

uint64_t sub_1000F69AC()
{
  v1 = (*((swift_isaMask & **(v0 + 16)) + 0x98))();
  v1();
}

uint64_t sub_1000F6A20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000967DC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F6A98()
{
  result = qword_100385488;
  if (!qword_100385488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100385488);
  }

  return result;
}

unint64_t sub_1000F6AF0()
{
  result = qword_100385490;
  if (!qword_100385490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100385490);
  }

  return result;
}

uint64_t sub_1000F6B4C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000F6C08()
{
  result = type metadata accessor for DispatchQoS.QoSClass();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000F6CE8@<X0>(uint64_t *a1@<X8>)
{
  result = (*((swift_isaMask & **(v1 + 16)) + 0x118))(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_1000F6D74@<X0>(uint64_t *a1@<X8>)
{
  result = (*((swift_isaMask & **(v1 + 16)) + 0xC8))();
  *a1 = result;
  return result;
}

uint64_t sub_1000F6E70()
{
  v0 = type metadata accessor for Logger();
  sub_100098130(v0, qword_1003914C8);
  sub_10009597C(v0, qword_1003914C8);
  return Logger.init(transparencyCategory:)();
}

uint64_t sub_1000F6F1C()
{
  v1 = OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_forceResync;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000F6FB4(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_forceResync;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id KTUpdateCloudStorageOperation.__allocating_init(deps:source:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_shouldRetry] = 0;
  v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_networkFailure] = 0;
  v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_forceResync] = 0;
  *&v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_deps] = a1;
  *&v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_source] = a2;
  *&v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_context] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, "init");
}

id KTUpdateCloudStorageOperation.init(deps:source:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_shouldRetry] = 0;
  v3[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_networkFailure] = 0;
  v3[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_forceResync] = 0;
  *&v3[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_deps] = a1;
  *&v3[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_source] = a2;
  *&v3[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_context] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for KTUpdateCloudStorageOperation();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1000F7250()
{
  v0 = [objc_allocWithZone(CKOperationGroup) init];
  [v0 setExpectedSendSize:1];
  v1 = String._bridgeToObjectiveC()();
  [v0 setName:v1];

  return v0;
}

Swift::Void __swiftcall KTUpdateCloudStorageOperation.groupStart()()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_deps) ckdatabase];
  if (!v2)
  {
    return;
  }

  v22 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_source);
  v4 = [v3 pendingRecords];
  sub_10009FDA0(0, &qword_1003851B0, CKRecord_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v3 deletedRecords];
  sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

LABEL_4:
    if (v7 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    if (qword_1003914C0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10009597C(v19, qword_1003914C8);
    v20 = static os_log_type_t.info.getter();
    v11 = Logger.logObject.getter();
    if (os_log_type_enabled(v11, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v11, v20, "KTUpdateCloudStorageOperation:perRecordSaveBlock: no records to upload/delete", v21, 2u);
    }

    goto LABEL_7;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

LABEL_6:
  v25.value._rawValue = sub_10009FDA0(0, &qword_100385720, CKModifyRecordsOperation_ptr);
  v24.value._rawValue = v5;
  v24.is_nil = v7;
  v8 = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v24, v25).super.super.super.super.isa;
  [(objc_class *)v8 setQualityOfService:25];
  v9 = String._bridgeToObjectiveC()();
  [(objc_class *)v8 setName:v9];

  v10 = *((swift_isaMask & *v1) + 0xD0);
  v11 = v8;
  v12 = v10();
  [v11 setGroup:v12];

  v13 = [objc_allocWithZone(NSBlockOperation) init];
  [v1 dependOnBeforeGroupFinished:v13];
  *(swift_allocObject() + 16) = v1;
  v14 = v1;
  CKModifyRecordsOperation.perRecordSaveBlock.setter();
  *(swift_allocObject() + 16) = v14;
  v15 = v14;
  CKModifyRecordsOperation.perRecordDeleteBlock.setter();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  v17 = v15;
  v18 = v13;
  CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
  [v22 addOperation:v11];

  v22 = v18;
LABEL_7:
}

void sub_1000F7724(void *a1, void *a2, char a3)
{
  v7 = *(v3 + 16);
  v8 = *&v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_deps];
  v9 = [v8 logger];
  v10 = String._bridgeToObjectiveC()();
  if (a3)
  {
    v11 = _convertErrorToNSError(_:)();
    [v9 logResultForEvent:v10 hardFailure:1 result:v11];

    if (qword_1003914C0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10009597C(v12, qword_1003914C8);
    sub_10000F1B0(a2, 1);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    sub_10000F1C8(a2, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v13;
      *v17 = v13;
      *(v16 + 12) = 2112;
      sub_10000F1B0(a2, 1);
      v18 = v13;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v19;
      v17[1] = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "KTUpdateCloudStorageOperation:perRecordSaveBlock: fail: %@ %@", v16, 0x16u);
      sub_100095820(&unk_100383290, &unk_1002D5BA0);
      swift_arrayDestroy();
    }

    v138 = a2;
    swift_errorRetain();
    sub_100095820(&qword_100382DD0, &unk_1002D7500);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v20 = v137;
      v138 = v137;
      sub_1000E992C(&unk_100385750, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v137 > 13)
      {
        if (v137 > 25)
        {
          switch(v137)
          {
            case 26:
              type metadata accessor for KTCKZone();
              v96 = sub_1000E3B0C(*&v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_context]);
              v97 = [v13 zoneID];
              v98 = [v97 zoneName];

              v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v101 = v100;

              (*((swift_isaMask & *v96) + 0x78))(v99, v101, sub_1000A317C, 0);

              v102 = [objc_allocWithZone(KTPendingFlag) initWithFlag:@"CloudKitZoneRecreate" delayInSeconds:0.1];
              v103 = v13;
              v104 = Logger.logObject.getter();
              v105 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v104, v105))
              {
                v106 = swift_slowAlloc();
                v135 = swift_slowAlloc();
                v136 = v135;
                *v106 = 136315138;
                v107 = [v103 zoneID];
                v108 = [v107 zoneName];

                v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v110 = v96;
                v111 = v102;
                v113 = v112;

                v114 = sub_1000999E4(v109, v113, &v136);
                v102 = v111;
                v96 = v110;

                *(v106 + 4) = v114;
                _os_log_impl(&_mh_execute_header, v104, v105, "will recreate the zone %s", v106, 0xCu);
                sub_10009A9E8(v135);
              }

              v115 = [v8 flagHandler];
              if (v115)
              {
                [v115 handlePendingFlag:v102];
                swift_unknownObjectRelease();
              }

              goto LABEL_65;
            case 111:
              v55 = static os_log_type_t.error.getter();
              sub_10000F1B0(a2, 1);
              v116 = v13;
              v51 = Logger.logObject.getter();

              sub_10000F1C8(a2, 1);
              if (!os_log_type_enabled(v51, v55))
              {
                goto LABEL_63;
              }

              v57 = swift_slowAlloc();
              v117 = swift_slowAlloc();
              *v57 = 138412546;
              *(v57 + 4) = v116;
              *v117 = v116;
              *(v57 + 12) = 2112;
              sub_10000F1B0(a2, 1);
              v118 = v116;
              v119 = _swift_stdlib_bridgeErrorToNSError();
              *(v57 + 14) = v119;
              v117[1] = v119;
              v61 = "KTUpdateCloudStorageOperation:perRecordSaveBlock: manatee issue: %@ %@";
LABEL_57:
              _os_log_impl(&_mh_execute_header, v51, v55, v61, v57, 0x16u);
              sub_100095820(&unk_100383290, &unk_1002D5BA0);
              swift_arrayDestroy();
              goto LABEL_58;
            case 115:
              v49 = static os_log_type_t.default.getter();
              v50 = v13;
              v51 = Logger.logObject.getter();

              if (!os_log_type_enabled(v51, v49))
              {
                goto LABEL_63;
              }

              v52 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              *v52 = 138412290;
              *(v52 + 4) = v50;
              *v53 = v50;
              v54 = v50;
              _os_log_impl(&_mh_execute_header, v51, v49, "KTUpdateCloudStorageOperation:perRecordSaveBlock: accountNeedsToVerifyTerms: %@", v52, 0xCu);
              sub_1000A4AD8(v53);
LABEL_58:

              goto LABEL_63;
          }

LABEL_59:
          v120 = static os_log_type_t.error.getter();
          sub_10000F1B0(a2, 1);
          v121 = v13;
          v122 = Logger.logObject.getter();

          sub_10000F1C8(a2, 1);
          if (os_log_type_enabled(v122, v120))
          {
            v123 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            *v123 = 138412546;
            *(v123 + 4) = v121;
            *v124 = v121;
            *(v123 + 12) = 2112;
            sub_10000F1B0(a2, 1);
            v125 = v121;
            v126 = _swift_stdlib_bridgeErrorToNSError();
            *(v123 + 14) = v126;
            v124[1] = v126;
            _os_log_impl(&_mh_execute_header, v122, v120, "KTUpdateCloudStorageOperation:perRecordSaveBlock: ck fail: %@ %@", v123, 0x16u);
            sub_100095820(&unk_100383290, &unk_1002D5BA0);
            swift_arrayDestroy();
          }

          v127 = related decl 'e' for CKErrorCode.ancestorRecord.getter();
          if (!v127)
          {
            goto LABEL_64;
          }

          v51 = v127;
          v128 = *&v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_source];
          CKRecord.recordType.getter();
          v129 = String._bridgeToObjectiveC()();

          sub_100095820(&qword_100384A50, &qword_1002D7650);
          v130 = swift_allocObject();
          *(v130 + 16) = xmmword_1002D6360;
          *(v130 + 32) = [v51 recordID];
          sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v132 = String._bridgeToObjectiveC()();
          [v128 recordUpdateCloudStateWithType:v129 records:isa newState:v132];

LABEL_63:
LABEL_64:
          v133 = v20;
          v20 = _convertErrorToNSError(_:)();

          [v7 setError:v20];
LABEL_65:

          return;
        }

        if (v137 != 14)
        {
          if (v137 == 22)
          {
            v62 = static os_log_type_t.info.getter();
            sub_10000F1B0(a2, 1);
            v63 = v13;
            v64 = Logger.logObject.getter();

            sub_10000F1C8(a2, 1);
            if (os_log_type_enabled(v64, v62))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              *v65 = 138412546;
              *(v65 + 4) = v63;
              *v66 = v63;
              *(v65 + 12) = 2112;
              sub_10000F1B0(a2, 1);
              v67 = v63;
              v68 = _swift_stdlib_bridgeErrorToNSError();
              *(v65 + 14) = v68;
              v66[1] = v68;
              v69 = "KTUpdateCloudStorageOperation:perRecordSaveBlock: misc fail: %@ %@";
LABEL_40:
              _os_log_impl(&_mh_execute_header, v64, v62, v69, v65, 0x16u);
              sub_100095820(&unk_100383290, &unk_1002D5BA0);
              swift_arrayDestroy();
            }

LABEL_41:

            return;
          }

          goto LABEL_59;
        }

        v82 = related decl 'e' for CKErrorCode.serverRecord.getter();
        if (v82)
        {
          v83 = v82;
          sub_10000F1B0(a2, 1);
          v84 = v13;
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.error.getter();

          sub_10000F1C8(a2, 1);
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            *v87 = 138412546;
            *(v87 + 4) = v84;
            *v88 = v84;
            *(v87 + 12) = 2112;
            sub_10000F1B0(a2, 1);
            v89 = v84;
            v90 = _swift_stdlib_bridgeErrorToNSError();
            *(v87 + 14) = v90;
            v88[1] = v90;
            _os_log_impl(&_mh_execute_header, v85, v86, "KTUpdateCloudStorageOperation:perRecordSaveBlock: serverRecord: %@ %@", v87, 0x16u);
            sub_100095820(&unk_100383290, &unk_1002D5BA0);
            swift_arrayDestroy();
          }

          v91 = *&v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_source];
          [v91 updatedRecordWithCkrecord:v83];
          CKRecord.recordType.getter();
          v92 = String._bridgeToObjectiveC()();

          sub_100095820(&qword_100384A50, &qword_1002D7650);
          v93 = swift_allocObject();
          *(v93 + 16) = xmmword_1002D6360;
          *(v93 + 32) = [v83 recordID];
          sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
          v94 = Array._bridgeToObjectiveC()().super.isa;

          v95 = String._bridgeToObjectiveC()();
          [v91 recordUpdateCloudStateWithType:v92 records:v94 newState:v95];
        }

        v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_shouldRetry] = 1;
      }

      else
      {
        if (v137 <= 10)
        {
          if ((v137 - 3) < 2)
          {
            v21 = static os_log_type_t.info.getter();
            sub_10000F1B0(a2, 1);
            v22 = v13;
            v23 = Logger.logObject.getter();

            sub_10000F1C8(a2, 1);
            if (os_log_type_enabled(v23, v21))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              *v24 = 138412546;
              *(v24 + 4) = v22;
              *v25 = v22;
              *(v24 + 12) = 2112;
              sub_10000F1B0(a2, 1);
              v26 = v22;
              v27 = _swift_stdlib_bridgeErrorToNSError();
              *(v24 + 14) = v27;
              v25[1] = v27;
              _os_log_impl(&_mh_execute_header, v23, v21, "KTUpdateCloudStorageOperation:perRecordSaveBlock: network fail: %@ %@", v24, 0x16u);
              sub_100095820(&unk_100383290, &unk_1002D5BA0);
              swift_arrayDestroy();
            }

            v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_shouldRetry] = 1;
            v28 = v20;
            v29 = _convertErrorToNSError(_:)();

            [v7 setError:v29];
            v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_networkFailure] = 1;
            return;
          }

          if (v137 == 9)
          {
            v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_shouldRetry] = 1;
            v20 = v20;
            v70 = _convertErrorToNSError(_:)();

            [v7 setError:v70];
            v62 = static os_log_type_t.default.getter();
            sub_10000F1B0(a2, 1);
            v71 = v13;
            v64 = Logger.logObject.getter();

            sub_10000F1C8(a2, 1);
            if (os_log_type_enabled(v64, v62))
            {
              v65 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              *v65 = 138412546;
              *(v65 + 4) = v71;
              *v72 = v71;
              *(v65 + 12) = 2112;
              sub_10000F1B0(a2, 1);
              v73 = v71;
              v74 = _swift_stdlib_bridgeErrorToNSError();
              *(v65 + 14) = v74;
              v72[1] = v74;
              v69 = "KTUpdateCloudStorageOperation:perRecordSaveBlock: auth fail: %@ %@";
              goto LABEL_40;
            }

            goto LABEL_41;
          }

          goto LABEL_59;
        }

        if (v137 != 11)
        {
          if (v137 == 12)
          {
            v55 = static os_log_type_t.error.getter();
            sub_10000F1B0(a2, 1);
            v56 = v13;
            v51 = Logger.logObject.getter();

            sub_10000F1C8(a2, 1);
            if (!os_log_type_enabled(v51, v55))
            {
              goto LABEL_63;
            }

            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            *v57 = 138412546;
            *(v57 + 4) = v56;
            *v58 = v56;
            *(v57 + 12) = 2112;
            sub_10000F1B0(a2, 1);
            v59 = v56;
            v60 = _swift_stdlib_bridgeErrorToNSError();
            *(v57 + 14) = v60;
            v58[1] = v60;
            v61 = "KTUpdateCloudStorageOperation:perRecordSaveBlock: server issue: %@ %@";
            goto LABEL_57;
          }

          goto LABEL_59;
        }

        sub_10000F1B0(a2, 1);
        v75 = v13;
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();

        sub_10000F1C8(a2, 1);
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *v78 = 138412546;
          *(v78 + 4) = v75;
          *v79 = v75;
          *(v78 + 12) = 2112;
          sub_10000F1B0(a2, 1);
          v80 = v75;
          v81 = _swift_stdlib_bridgeErrorToNSError();
          *(v78 + 14) = v81;
          v79[1] = v81;
          _os_log_impl(&_mh_execute_header, v76, v77, "KTUpdateCloudStorageOperation:perRecordSaveBlock: deleted: %@ %@", v78, 0x16u);
          sub_100095820(&unk_100383290, &unk_1002D5BA0);
          swift_arrayDestroy();
        }

        [*&v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_source] unknownRecordWithRecordID:v75];
        v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_shouldRetry] = 1;
      }
    }

    else
    {
      sub_10000F1B0(a2, 1);
      v41 = v13;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      sub_10000F1C8(a2, 1);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412546;
        *(v44 + 4) = v41;
        *v45 = v41;
        *(v44 + 12) = 2112;
        sub_10000F1B0(a2, 1);
        v46 = v41;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 14) = v47;
        v45[1] = v47;
        _os_log_impl(&_mh_execute_header, v42, v43, "KTUpdateCloudStorageOperation:perRecordSaveBlock: non CKError: %@ %@", v44, 0x16u);
        sub_100095820(&unk_100383290, &unk_1002D5BA0);
        swift_arrayDestroy();
      }

      v48 = _convertErrorToNSError(_:)();
      [v7 setError:v48];
    }
  }

  else
  {
    [v9 logResultForEvent:v10 hardFailure:0 result:0];

    if (qword_1003914C0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10009597C(v30, qword_1003914C8);
    v31 = static os_log_type_t.info.getter();
    v32 = a2;
    v33 = Logger.logObject.getter();
    sub_10000F1C8(a2, 0);
    if (os_log_type_enabled(v33, v31))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v32;
      *v35 = a2;
      v36 = v32;
      _os_log_impl(&_mh_execute_header, v33, v31, "KTUpdateCloudStorageOperation:perRecordSaveBlock: success: %@", v34, 0xCu);
      sub_1000A4AD8(v35);
    }

    v37 = *&v7[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_source];
    [v37 updatedRecordWithCkrecord:v32];
    CKRecord.recordType.getter();
    v134 = String._bridgeToObjectiveC()();

    sub_100095820(&qword_100384A50, &qword_1002D7650);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002D6360;
    *(v38 + 32) = [v32 recordID];
    sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
    v39 = Array._bridgeToObjectiveC()().super.isa;

    v40 = String._bridgeToObjectiveC()();
    [v37 recordUpdateCloudStateWithType:v134 records:v39 newState:v40];
  }
}

void sub_1000F8BB8(void *a1, uint64_t a2, char a3)
{
  v5 = *(v3 + 16);
  if (a3)
  {
    v7 = [*(v5 + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_deps) logger];
    v8 = String._bridgeToObjectiveC()();
    v9 = _convertErrorToNSError(_:)();
    [v7 logResultForEvent:v8 hardFailure:1 result:v9];

    if (qword_1003914C0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10009597C(v10, qword_1003914C8);
    v11 = static os_log_type_t.error.getter();
    v12 = a1;
    sub_1000F9AB8(a2, 1);
    oslog = Logger.logObject.getter();

    sub_1000A4FB0(a2, 1);
    if (os_log_type_enabled(oslog, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      *(v13 + 4) = v12;
      *v14 = v12;
      *(v13 + 12) = 2112;
      v15 = v12;
      sub_1000F9AB8(a2, 1);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      v14[1] = v16;
      _os_log_impl(&_mh_execute_header, oslog, v11, "KTUpdateCloudStorageOperation:perRecordDeleteBlock: fail: %@ %@", v13, 0x16u);
      sub_100095820(&unk_100383290, &unk_1002D5BA0);
      swift_arrayDestroy();
    }
  }

  else
  {
    v17 = [*(v5 + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_deps) logger];
    v18 = String._bridgeToObjectiveC()();
    [v17 logResultForEvent:v18 hardFailure:0 result:0];

    if (qword_1003914C0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10009597C(v19, qword_1003914C8);
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "KTUpdateCloudStorageOperation:perRecordDeleteBlock: success: %@", v23, 0xCu);
      sub_1000A4AD8(v24);
    }

    v26 = *(v5 + OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_source);

    [v26 deleteRecordIDWithCkrecordID:v20];
  }
}

void sub_1000F8F7C(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if ((a2 & 1) == 0)
  {
    if (v4[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_shouldRetry] == 1)
    {
      v33 = *&v4[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_deps];
      v34 = [v33 cloudKitOutgoingNFS];
      if (v34)
      {
        v35 = v34;
        v36 = objc_allocWithZone(KTPendingFlag);
        v37 = v35;
        v38 = String._bridgeToObjectiveC()();
        v39 = [v36 initWithFlag:v38 conditions:2 scheduler:v37];

        v40 = [v33 flagHandler];
        if (v40)
        {
          [v40 handlePendingFlag:v39];
          swift_unknownObjectRelease();
        }

        [v37 trigger];
        if (qword_1003914C0 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_10009597C(v41, qword_1003914C8);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "KTUpdateCloudStorageOperation triggering retry", v44, 2u);
        }
      }
    }

    if (v4[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_networkFailure] == 1)
    {
      [objc_msgSend(*&v4[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_deps] "networkTimeout")];
      swift_unknownObjectRelease();
    }

    v45 = [v4 error];
    if (v45)
    {
      v46 = v45;
      if (qword_1003914C0 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_10009597C(v47, qword_1003914C8);
      v48 = static os_log_type_t.error.getter();
      v49 = v46;
      v50 = Logger.logObject.getter();

      if (os_log_type_enabled(v50, v48))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        v53 = v49;
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 4) = v54;
        *v52 = v54;
        _os_log_impl(&_mh_execute_header, v50, v48, "KTUpdateCloudStorageOperation:modifyRecordsResultBlock: error: %@", v51, 0xCu);
        sub_1000A4AD8(v52);
      }

      v55 = [*&v4[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_deps] logger];
      v56 = String._bridgeToObjectiveC()();
      v57 = _convertErrorToNSError(_:)();
      [v55 logResultForEvent:v56 hardFailure:1 result:v57];
    }

    else
    {
      if (qword_1003914C0 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_10009597C(v58, qword_1003914C8);
      v59 = static os_log_type_t.error.getter();
      v60 = Logger.logObject.getter();
      if (os_log_type_enabled(v60, v59))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v60, v59, "KTUpdateCloudStorageOperation:modifyRecordsResultBlock: success", v61, 2u);
      }

      v62 = *&v4[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_deps];
      v63 = [v62 logger];
      v64 = String._bridgeToObjectiveC()();
      [v63 logResultForEvent:v64 hardFailure:0 result:0];

      [objc_msgSend(v62 "networkTimeout")];
      swift_unknownObjectRelease();
    }

    goto LABEL_47;
  }

  v6 = _convertErrorToNSError(_:)();
  [v4 setError:v6];

  if (qword_1003914C0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10009597C(v7, qword_1003914C8);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  sub_1000A4FB0(a1, 1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "KTUpdateCloudStorageOperation:modifyRecordsResultBlock: fail: %@", v10, 0xCu);
    sub_1000A4AD8(v11);
  }

  v13 = *&v4[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_deps];
  v14 = [v13 logger];
  v15 = String._bridgeToObjectiveC()();
  v16 = _convertErrorToNSError(_:)();
  [v14 logResultForEvent:v15 hardFailure:1 result:v16];

  if (v4[OBJC_IVAR____TtC13transparencyd29KTUpdateCloudStorageOperation_shouldRetry] == 1)
  {
    v17 = _convertErrorToNSError(_:)();
    v18 = _convertErrorToNSError(_:)();

    CKRetryAfterSecondsForError();
    v20 = v19;

    v21 = [v13 cloudKitOutgoingNFS];
    if (!v21)
    {
      return;
    }

    v22 = v21;
    if (v20 <= 0.0)
    {
      goto LABEL_16;
    }

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v23, v24, "KTUpdateCloudStorageOperation:modifyRecordsResultBlock: server requested delay: %f", v25, 0xCu);
    }

    if (*&v20 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v20 > -1.0)
    {
      if (v20 < 1.84467441e19)
      {
        if (is_mul_ok(v20, 0x3B9ACA00uLL))
        {
          [v22 waitUntil:1000000000 * v20];
LABEL_16:
          v26 = [v13 reachabilityTracker];
          v27 = _convertErrorToNSError(_:)();
          v28 = [v26 isNetworkError:v27];

          v29 = objc_allocWithZone(KTPendingFlag);
          v30 = v22;
          v31 = String._bridgeToObjectiveC()();
          if (v28)
          {
            v32 = [v29 initWithFlag:v31 conditions:2 scheduler:v30];
          }

          else
          {
            v32 = [v29 initWithFlag:v31 scheduler:v30];
          }

          v65 = v32;

          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&_mh_execute_header, v66, v67, "KTUpdateCloudStorageOperation triggering retry", v68, 2u);
          }

          v69 = [v13 flagHandler];
          if (v69)
          {
            [v69 handlePendingFlag:v65];
            swift_unknownObjectRelease();
          }

          [v30 trigger];

          goto LABEL_47;
        }

LABEL_53:
        __break(1u);
        return;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_47:
  v70 = [v4 operationQueue];
  [v70 addOperation:v3];
}

id KTUpdateCloudStorageOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KTUpdateCloudStorageOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000F9AB8(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1000F9AD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000F9B70;

  return sub_1000FA33C();
}

uint64_t sub_1000F9B70(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1000F9C78(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000A0E50((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100095820(&qword_100382DD0, &unk_1002D7500);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000F9D48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000A0E50((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100095820(&qword_100382DD0, &unk_1002D7500);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_100095820(&unk_100385810, &unk_1002D8010);
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000F9FC4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000FA06C;

  return sub_1000FA33C();
}

uint64_t sub_1000FA06C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *v2;

  v9 = *(v5 + 16);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1000FA23C()
{
  v2[3] = &type metadata for TransparencyFeatureFlags;
  v2[4] = sub_1000E3338();
  LOBYTE(v2[0]) = 3;
  v0 = isFeatureEnabled(_:)();
  sub_10009A9E8(v2);
  return v0 & 1;
}

id sub_1000FA294()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EligibilitySupport();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000FA308()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EligibilitySupport();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000FA33C()
{
  v1 = type metadata accessor for Logger();
  v0[48] = v1;
  v2 = *(v1 - 8);
  v0[49] = v2;
  v3 = *(v2 + 64) + 15;
  v0[50] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000FA3F8, 0, 0);
}

uint64_t sub_1000FA3F8()
{
  v1 = [objc_allocWithZone(ACAccountStore) init];
  v0[51] = v1;
  v0[2] = v0;
  v0[7] = v0 + 46;
  v0[3] = sub_1000FA530;
  v2 = swift_continuation_init();
  v0[25] = sub_100095820(&qword_1003857A0, &unk_1002D7FF8);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1000F9C78;
  v0[21] = &unk_1003219E8;
  v0[22] = v2;
  [v1 aa_primaryAppleAccountWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000FA530()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 416) = v2;
  if (v2)
  {
    v3 = sub_1000FAD90;
  }

  else
  {
    v3 = sub_1000FA640;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_1000FA640()
{
  v1 = v0[46];
  v0[53] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 aa_altDSID];
    v0[54] = v3;
    v4 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
    v0[55] = v4;
    if (v4)
    {
      v5 = v4;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v0[56] = isa;
      v0[10] = v0;
      v0[15] = v0 + 47;
      v0[11] = sub_1000FAA30;
      v7 = swift_continuation_init();
      v0[33] = sub_100095820(&qword_100385808, &qword_1002D8008);
      v0[26] = _NSConcreteStackBlock;
      v0[27] = 1107296256;
      v0[28] = sub_1000F9D48;
      v0[29] = &unk_100321A10;
      v0[30] = v7;
      [v5 configurationInfoWithIdentifiers:isa forAltDSID:v3 completion:v0 + 26];

      return _swift_continuation_await(v0 + 10);
    }

    v13 = v0[51];

    v22 = objc_opt_self();
    v23 = sub_1000B7BC0();
    swift_beginAccess();
    v25 = *v23;
    v24 = v23[1];

    v26 = String._bridgeToObjectiveC()();

    v27 = String._bridgeToObjectiveC()();
    [v22 errorWithDomain:v26 code:-396 underlyingError:0 userinfo:0 description:v27];

    swift_willThrow();
  }

  else
  {
    v8 = v0[50];
    Logger.init()();
    v9 = static os_log_type_t.error.getter();
    v10 = Logger.logObject.getter();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, v9, "Can't report eligibility, no primary account found", v11, 2u);
    }

    v12 = v0[50];
    v13 = v0[51];
    v14 = v0[48];
    v15 = v0[49];

    (*(v15 + 8))(v12, v14);
    v16 = objc_opt_self();
    v17 = sub_1000B7BC0();
    swift_beginAccess();
    v19 = *v17;
    v18 = v17[1];

    v20 = String._bridgeToObjectiveC()();

    v21 = String._bridgeToObjectiveC()();
    [v16 errorWithDomain:v20 code:-396 underlyingError:0 userinfo:0 description:v21];

    swift_willThrow();
  }

  v28 = v0[50];

  v29 = v0[1];

  return v29(0);
}

uint64_t sub_1000FAA30()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 456) = v3;
  if (v3)
  {

    v4 = sub_1000FAE0C;
  }

  else
  {
    v4 = sub_1000FAB48;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t sub_1000FAB48()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 376);

  if (v2)
  {
    if (*(v2 + 16) && (v3 = sub_10000574C(0xD000000000000029, 0x800000010029C130), (v4 & 1) != 0))
    {
      v5 = *(*(v2 + 56) + 8 * v3);
      swift_unknownObjectRetain();

      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = *(v0 + 440);
        v9 = *(v0 + 424);
        v10 = *(v0 + 400);
        v11 = *(v0 + 408);

        LODWORD(v7) = [v7 intValue];
        swift_unknownObjectRelease();

        v12 = *(v0 + 8);
        v13 = v7 != 0;
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v14 = *(v0 + 440);
  v15 = *(v0 + 424);
  v16 = *(v0 + 408);
  v17 = objc_opt_self();
  v18 = sub_1000B7BC0();
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];

  v21 = String._bridgeToObjectiveC()();

  v22 = String._bridgeToObjectiveC()();
  [v17 errorWithDomain:v21 code:-396 underlyingError:0 userinfo:0 description:v22];

  swift_willThrow();
  v23 = *(v0 + 400);

  v12 = *(v0 + 8);
  v13 = 0;
LABEL_8:

  return v12(v13);
}

uint64_t sub_1000FAD90()
{
  v1 = v0[51];
  v2 = v0[52];
  swift_willThrow();

  v3 = v0[52];
  v4 = v0[50];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_1000FAE0C()
{
  v1 = v0[56];
  v2 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v5 = v0[53];
  v6 = v0[51];
  swift_willThrow();

  v7 = v0[57];
  v8 = v0[50];

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1000FAED8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0510;

  return sub_1000F9FC4(v2);
}

uint64_t sub_1000FAF84(uint64_t a1)
{
  v2 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000FB060@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000FB218(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

const char *sub_1000FB0A8(unsigned __int8 a1)
{
  v1 = "KTDisableKVSSyncedData";
  v2 = "KTEligibilityServerReporting";
  v3 = "KTEnableByDefault";
  if (a1 != 3)
  {
    v3 = "KTRepair";
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = "KTUseKVSOptInRecords";
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1000FB158(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

const char *sub_1000FB1A0()
{
  v1 = *v0;
  v2 = "KTDisableKVSSyncedData";
  v3 = "KTEligibilityServerReporting";
  v4 = "KTEnableByDefault";
  if (v1 != 3)
  {
    v4 = "KTRepair";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "KTUseKVSOptInRecords";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000FB218(unint64_t result)
{
  if (result > 0x11 || ((1 << result) & 0x3FDFE) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1000FB250()
{
  result = qword_100385880;
  if (!qword_100385880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100385880);
  }

  return result;
}

unint64_t sub_1000FB2A8()
{
  result = qword_100385888;
  if (!qword_100385888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100385888);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransparencyFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransparencyFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000FB474(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1000FB4C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KTPBBatchUpdateRequest(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1000FB55C(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBBatchUpdateRequest(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1000FB620(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1000FB658()
{
  v1 = *(v0 + 56);
  sub_100002D78(v1, *(v0 + 64));
  return v1;
}

uint64_t sub_1000FB68C(uint64_t a1, uint64_t a2)
{
  result = sub_1000956CC(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_1000FB724()
{
  v1 = *(v0 + 88);
  sub_100002D78(v1, *(v0 + 96));
  return v1;
}

uint64_t sub_1000FB758(uint64_t a1, uint64_t a2)
{
  result = sub_1000956CC(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t sub_1000FB7B0()
{
  v1 = *(v0 + 104);
  sub_100002D78(v1, *(v0 + 112));
  return v1;
}

uint64_t sub_1000FB7E4(uint64_t a1, uint64_t a2)
{
  result = sub_1000956CC(*(v2 + 104), *(v2 + 112));
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t sub_1000FB8A4(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t sub_1000FB8F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KTPBBatchUpdateRequest.UpdateData(0) + 64);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1000FB98C(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBBatchUpdateRequest.UpdateData(0) + 64);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_1000FBA7C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1000FBAA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1000FBAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A38C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000FBB0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = xmmword_1002D4770;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = xmmword_1002D81A0;
  *(a1 + 112) = 0xC000000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = _swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for KTPBBatchUpdateRequest.UpdateData(0) + 64);
  return UnknownStorage.init()();
}

uint64_t sub_1000FBB98@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for KTPBBatchUpdateRequest(0) + 32);
  return UnknownStorage.init()();
}

uint64_t sub_1000FBC00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KTPBDeviceState(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1000FBC9C(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBDeviceState(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1000FBD60@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_1002D81A0;
  *(a1 + 32) = 0xC000000000000000;
  v2 = type metadata accessor for KTPBDeviceState(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v3 = a1 + *(v2 + 36);
  return UnknownStorage.init()();
}

uint64_t sub_1000FBDB8(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1000FBEEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FBF5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  sub_1000AB050(v2, &v16 - v6, &qword_100385890, &unk_1002D81E0);
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  if ((*(*(updated - 8) + 48))(v7, 1, updated) == 1)
  {
    sub_1000057C4(v7, &qword_100385890, &unk_1002D81E0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1000FC848(v7, a1, type metadata accessor for KTPBInsertResponse);
    }

    sub_1000FC4B4(v7, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v9 = type metadata accessor for KTPBInsertResponse(0);
  v10 = a1 + v9[6];
  UnknownStorage.init()();
  v11 = v9[7];
  v12 = type metadata accessor for KTPBSignedObject(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v9[8];
  v14 = type metadata accessor for KTPBVRFWitness(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

void (*sub_1000FC1B8(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_100095820(&qword_100385890, &unk_1002D81E0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for KTPBInsertResponse(0);
  v10 = *(*(v9 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1000AB050(v2, v8, &qword_100385890, &unk_1002D81E0);
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  v5[4] = updated;
  v14 = *(updated - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, updated) == 1)
  {
    sub_1000057C4(v8, &qword_100385890, &unk_1002D81E0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000FC848(v8, v12, type metadata accessor for KTPBInsertResponse);
      return sub_1000FC470;
    }

    sub_1000FC4B4(v8, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
  }

  *v12 = 0;
  *(v12 + 8) = 1;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0xE000000000000000;
  v15 = v12 + v9[6];
  UnknownStorage.init()();
  v16 = v9[7];
  v17 = type metadata accessor for KTPBSignedObject(0);
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  v18 = v9[8];
  v19 = type metadata accessor for KTPBVRFWitness(0);
  (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
  return sub_1000FC470;
}

uint64_t sub_1000FC4B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000FC514@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  sub_1000AB050(v2, &v16 - v6, &qword_100385890, &unk_1002D81E0);
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  if ((*(*(updated - 8) + 48))(v7, 1, updated) == 1)
  {
    sub_1000057C4(v7, &qword_100385890, &unk_1002D81E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1000FC848(v7, a1, type metadata accessor for KTPBMarkForDeletionResponse);
    }

    sub_1000FC4B4(v7, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v10 = type metadata accessor for KTPBMarkForDeletionResponse(0);
  v11 = a1 + v10[6];
  UnknownStorage.init()();
  v12 = v10[7];
  v13 = type metadata accessor for KTPBSignedObject(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v10[8];
  v15 = type metadata accessor for KTPBVRFWitness(0);
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

uint64_t sub_1000FC738@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  v3 = a1(0);
  v4 = a2 + v3[6];
  UnknownStorage.init()();
  v5 = v3[7];
  v6 = type metadata accessor for KTPBSignedObject(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = v3[8];
  v8 = type metadata accessor for KTPBVRFWitness(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1000FC848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*sub_1000FC8CC(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_100095820(&qword_100385890, &unk_1002D81E0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for KTPBMarkForDeletionResponse(0);
  v10 = *(*(v9 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1000AB050(v2, v8, &qword_100385890, &unk_1002D81E0);
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  v5[4] = updated;
  v14 = *(updated - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, updated) == 1)
  {
    sub_1000057C4(v8, &qword_100385890, &unk_1002D81E0);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = 1;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0xE000000000000000;
    v15 = v12 + v9[6];
    UnknownStorage.init()();
    v16 = v9[7];
    v17 = type metadata accessor for KTPBSignedObject(0);
    (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
    v18 = v9[8];
    v19 = type metadata accessor for KTPBVRFWitness(0);
    (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
    return sub_1000FCB88;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000FC4B4(v8, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
    goto LABEL_15;
  }

  sub_1000FC848(v8, v12, type metadata accessor for KTPBMarkForDeletionResponse);
  return sub_1000FCB88;
}

uint64_t sub_1000FCBCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000FCC34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  sub_1000AB050(v2, &v16 - v6, &qword_100385890, &unk_1002D81E0);
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  if ((*(*(updated - 8) + 48))(v7, 1, updated) == 1)
  {
    sub_1000057C4(v7, &qword_100385890, &unk_1002D81E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1000FC848(v7, a1, type metadata accessor for KTPBOptInOutResponse);
    }

    sub_1000FC4B4(v7, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v10 = type metadata accessor for KTPBOptInOutResponse(0);
  v11 = a1 + v10[6];
  UnknownStorage.init()();
  v12 = v10[7];
  v13 = type metadata accessor for KTPBSignedObject(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v10[8];
  v15 = type metadata accessor for KTPBVRFWitness(0);
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

uint64_t sub_1000FCE94(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1000057C4(v2, &qword_100385890, &unk_1002D81E0);
  sub_1000FC848(a1, v2, a2);
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(updated - 8) + 56);

  return v6(v2, 0, 1, updated);
}

void (*sub_1000FCF4C(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_100095820(&qword_100385890, &unk_1002D81E0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for KTPBOptInOutResponse(0);
  v10 = *(*(v9 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1000AB050(v2, v8, &qword_100385890, &unk_1002D81E0);
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  v5[4] = updated;
  v14 = *(updated - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, updated) == 1)
  {
    sub_1000057C4(v8, &qword_100385890, &unk_1002D81E0);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = 1;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0xE000000000000000;
    v15 = v12 + v9[6];
    UnknownStorage.init()();
    v16 = v9[7];
    v17 = type metadata accessor for KTPBSignedObject(0);
    (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
    v18 = v9[8];
    v19 = type metadata accessor for KTPBVRFWitness(0);
    (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
    return sub_1000FD208;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1000FC4B4(v8, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
    goto LABEL_15;
  }

  sub_1000FC848(v8, v12, type metadata accessor for KTPBOptInOutResponse);
  return sub_1000FD208;
}

void sub_1000FD24C(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_1000FCBCC((*a1)[3], v10, a5);
    sub_1000057C4(v13, &qword_100385890, &unk_1002D81E0);
    sub_1000FC848(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_1000FC4B4(v11, a6);
  }

  else
  {
    sub_1000057C4(**a1, &qword_100385890, &unk_1002D81E0);
    sub_1000FC848(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t sub_1000FD3A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1000FD440(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1000FD59C@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  (*(*(updated - 8) + 56))(a1, 1, 1, updated);
  v3 = a1 + *(type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData(0) + 20);
  return UnknownStorage.init()();
}

uint64_t sub_1000FD610@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = _swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for KTPBBatchUpdateResponse(0) + 28);
  return UnknownStorage.init()();
}

uint64_t sub_1000FD664()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1000FD670(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t (*sub_1000FD6B0(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_100385898, &unk_1002DB9A0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for KTPBSignedObject(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for KTPBInsertResponse(0) + 28);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100385898, &unk_1002DB9A0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_10010D408(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100385898, &unk_1002DB9A0);
    }
  }

  else
  {
    sub_1000FC848(v7, v13, type metadata accessor for KTPBSignedObject);
  }

  return sub_1000FD8BC;
}

void (*sub_1000FD920(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_1003858A0, &qword_1002D81F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for KTPBVRFWitness(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for KTPBInsertResponse(0) + 32);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_1003858A0, &qword_1002D81F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_10010C990(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_1003858A0, &qword_1002D81F0);
    }
  }

  else
  {
    sub_1000FC848(v7, v13, type metadata accessor for KTPBVRFWitness);
  }

  return sub_1000FDB2C;
}

void sub_1000FDB2C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000FCBCC((*a1)[5], v4, type metadata accessor for KTPBVRFWitness);
    sub_1000057C4(v9 + v3, &qword_1003858A0, &qword_1002D81F0);
    sub_1000FC848(v4, v9 + v3, type metadata accessor for KTPBVRFWitness);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000FC4B4(v5, type metadata accessor for KTPBVRFWitness);
  }

  else
  {
    sub_1000057C4(v9 + v3, &qword_1003858A0, &qword_1002D81F0);
    sub_1000FC848(v5, v9 + v3, type metadata accessor for KTPBVRFWitness);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1000FDD54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t (*sub_1000FDE10(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_100385898, &unk_1002DB9A0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for KTPBSignedObject(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for KTPBMarkForDeletionResponse(0) + 28);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100385898, &unk_1002DB9A0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_10010D408(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100385898, &unk_1002DB9A0);
    }
  }

  else
  {
    sub_1000FC848(v7, v13, type metadata accessor for KTPBSignedObject);
  }

  return sub_10010C1E4;
}

BOOL sub_1000FE034(uint64_t (*a1)(void))
{
  v3 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = a1(0);
  sub_1000AB050(v1 + *(v7 + 28), v6, &qword_100385898, &unk_1002DB9A0);
  v8 = type metadata accessor for KTPBSignedObject(0);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_1000057C4(v6, &qword_100385898, &unk_1002DB9A0);
  return v9;
}

uint64_t sub_1000FE150(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 28);
  sub_1000057C4(v1 + v2, &qword_100385898, &unk_1002DB9A0);
  v3 = type metadata accessor for KTPBSignedObject(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

void (*sub_1000FE214(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_1003858A0, &qword_1002D81F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for KTPBVRFWitness(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for KTPBMarkForDeletionResponse(0) + 32);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_1003858A0, &qword_1002D81F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_10010C990(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_1003858A0, &qword_1002D81F0);
    }
  }

  else
  {
    sub_1000FC848(v7, v13, type metadata accessor for KTPBVRFWitness);
  }

  return sub_10010C1E0;
}

BOOL sub_1000FE438(uint64_t (*a1)(void))
{
  v3 = sub_100095820(&qword_1003858A0, &qword_1002D81F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = a1(0);
  sub_1000AB050(v1 + *(v7 + 32), v6, &qword_1003858A0, &qword_1002D81F0);
  v8 = type metadata accessor for KTPBVRFWitness(0);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_1000057C4(v6, &qword_1003858A0, &qword_1002D81F0);
  return v9;
}

uint64_t sub_1000FE554(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 32);
  sub_1000057C4(v1 + v2, &qword_1003858A0, &qword_1002D81F0);
  v3 = type metadata accessor for KTPBVRFWitness(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t sub_1000FE600@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000FE69C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000FE77C@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v5 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = a1(0);
  sub_1000AB050(v2 + *(v9 + 28), v8, &qword_100385898, &unk_1002DB9A0);
  v10 = type metadata accessor for KTPBSignedObject(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1000FC848(v8, a2, type metadata accessor for KTPBSignedObject);
  }

  sub_10010D408(a2);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1000057C4(v8, &qword_100385898, &unk_1002DB9A0);
  }

  return result;
}

uint64_t sub_1000FE8F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  sub_1000057C4(v2 + v4, &qword_100385898, &unk_1002DB9A0);
  sub_1000FC848(a1, v2 + v4, type metadata accessor for KTPBSignedObject);
  v5 = type metadata accessor for KTPBSignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*sub_1000FE9AC(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_100385898, &unk_1002DB9A0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for KTPBSignedObject(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for KTPBOptInOutResponse(0) + 28);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100385898, &unk_1002DB9A0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_10010D408(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100385898, &unk_1002DB9A0);
    }
  }

  else
  {
    sub_1000FC848(v7, v13, type metadata accessor for KTPBSignedObject);
  }

  return sub_10010C1E4;
}

void sub_1000FEBB8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000FCBCC((*a1)[5], v4, type metadata accessor for KTPBSignedObject);
    sub_1000057C4(v9 + v3, &qword_100385898, &unk_1002DB9A0);
    sub_1000FC848(v4, v9 + v3, type metadata accessor for KTPBSignedObject);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000FC4B4(v5, type metadata accessor for KTPBSignedObject);
  }

  else
  {
    sub_1000057C4(v9 + v3, &qword_100385898, &unk_1002DB9A0);
    sub_1000FC848(v5, v9 + v3, type metadata accessor for KTPBSignedObject);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1000FED68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100095820(&qword_1003858A0, &qword_1002D81F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = a1(0);
  sub_1000AB050(v2 + *(v9 + 32), v8, &qword_1003858A0, &qword_1002D81F0);
  v10 = type metadata accessor for KTPBVRFWitness(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1000FC848(v8, a2, type metadata accessor for KTPBVRFWitness);
  }

  sub_10010C990(a2);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1000057C4(v8, &qword_1003858A0, &qword_1002D81F0);
  }

  return result;
}

uint64_t sub_1000FEEDC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  sub_1000057C4(v2 + v4, &qword_1003858A0, &qword_1002D81F0);
  sub_1000FC848(a1, v2 + v4, type metadata accessor for KTPBVRFWitness);
  v5 = type metadata accessor for KTPBVRFWitness(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*sub_1000FEF98(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_1003858A0, &qword_1002D81F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for KTPBVRFWitness(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for KTPBOptInOutResponse(0) + 32);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_1003858A0, &qword_1002D81F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_10010C990(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_1003858A0, &qword_1002D81F0);
    }
  }

  else
  {
    sub_1000FC848(v7, v13, type metadata accessor for KTPBVRFWitness);
  }

  return sub_10010C1E0;
}

uint64_t sub_1000FF24C(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t sub_1000FF25C()
{
  v1 = *(v0 + 80);
  sub_100002D78(v1, *(v0 + 88));
  return v1;
}

uint64_t sub_1000FF290(uint64_t a1, uint64_t a2)
{
  result = sub_1000956CC(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_1000FF300(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_1000FF3BC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1000FF3EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_1000FF424()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_1000FF454(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_1000FF4E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000FF580(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000FF648@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1002D4770;
  *(a1 + 16) = xmmword_1002D4770;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  v1 = a1 + *(type metadata accessor for KTPBVerifySyncRequest.DeviceData(0) + 48);
  return UnknownStorage.init()();
}

uint64_t sub_1000FF6A4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = xmmword_1002D4770;
  *(a1 + 96) = 0;
  *(a1 + 104) = _swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for KTPBVerifySyncRequest(0) + 48);
  return UnknownStorage.init()();
}

uint64_t sub_1000FF740@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000FF7DC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000FF8A4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v1 = a1 + *(type metadata accessor for KTPBVerifySyncResponse(0) + 28);
  return UnknownStorage.init()();
}

uint64_t sub_1000FF918()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D0D8);
  sub_10009597C(v0, qword_10039D0D8);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "requestUuid";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "idv";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "updates";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000FFBA4()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else if (result == 10)
        {
          type metadata accessor for KTPBBatchUpdateRequest.UpdateData(0);
          sub_10010A344(&qword_1003858B8, type metadata accessor for KTPBBatchUpdateRequest.UpdateData);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1)
      {
        sub_10010A2F0();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1000FFD04()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_10010A29C();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (sub_10010A2F0(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + 8) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
      {
        if (!*(v0[5] + 16) || (type metadata accessor for KTPBBatchUpdateRequest.UpdateData(0), sub_10010A344(&qword_1003858B8, type metadata accessor for KTPBBatchUpdateRequest.UpdateData), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
        {
          v7 = v0 + *(type metadata accessor for KTPBBatchUpdateRequest(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000FFF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = _swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t sub_1000FFF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A344(&qword_1003861D8, type metadata accessor for KTPBBatchUpdateRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100100024(uint64_t a1)
{
  v2 = sub_10010A344(&qword_100385988, type metadata accessor for KTPBBatchUpdateRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100100090()
{
  sub_10010A344(&qword_100385988, type metadata accessor for KTPBBatchUpdateRequest);

  return Message.hash(into:)();
}

uint64_t sub_100100134()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D0F0);
  sub_10009597C(v0, qword_10039D0F0);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1002D81B0;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "application";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "appVersion";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "uri";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "clientData";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "accountMismatch";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "expiryMs";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "accountKey";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "deviceId";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "optIn";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "includesOptIn";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "devices";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001005C4()
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

      if (result > 7)
      {
        if (result <= 10)
        {
          if (result == 8)
          {
            goto LABEL_25;
          }

LABEL_29:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          goto LABEL_5;
        }

        if (result == 11 || result == 12)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_5;
        }

        if (result == 13)
        {
          type metadata accessor for KTPBDeviceState(0);
          sub_10010A344(&qword_1003858E0, type metadata accessor for KTPBDeviceState);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result > 3)
      {
        switch(result)
        {
          case 4:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 6:
            goto LABEL_29;
          case 7:
            goto LABEL_4;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            sub_10010A38C();
            break;
          case 2:
            v3 = v0;
            sub_10010A434();
            break;
          case 3:
LABEL_25:
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            goto LABEL_5;
          default:
            goto LABEL_5;
        }

        v0 = v3;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001007F4()
{
  v2 = v1;
  if (*v0)
  {
    v25 = *v0;
    v26 = *(v0 + 8);
    sub_10010A38C();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  v4 = v0[2];
  v5 = *(v0 + 24);
  sub_10010A3E0();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v6 = v2;
  }

  else
  {
    sub_10010A434();
    v6 = v2;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }
  }

  if (!v0[4] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v6))
  {
    v7 = v0[6];
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v0[5] & 0xFFFFFFFFFFFFLL;
    }

    if (!v8 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v6))
    {
      v9 = v0[7];
      v10 = v0[8];
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 != 2)
        {
          goto LABEL_22;
        }

        v12 = *(v9 + 16);
        v13 = *(v9 + 24);
      }

      else
      {
        if (!v11)
        {
          if ((v10 & 0xFF000000000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v12 = v9;
        v13 = v9 >> 32;
      }

      if (v12 == v13)
      {
        goto LABEL_22;
      }

LABEL_21:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v6)
      {
        return result;
      }

LABEL_22:
      if (*(v0 + 72) == 1)
      {
        result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
        if (v6)
        {
          return result;
        }
      }

      if (v0[10])
      {
        result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
        if (v6)
        {
          return result;
        }
      }

      v14 = v0[11];
      v15 = v0[12];
      v16 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v16 != 2)
        {
          goto LABEL_35;
        }

        v17 = *(v14 + 16);
        v18 = *(v14 + 24);
      }

      else
      {
        if (!v16)
        {
          if ((v15 & 0xFF000000000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v17 = v14;
        v18 = v14 >> 32;
      }

      if (v17 == v18)
      {
        goto LABEL_35;
      }

LABEL_34:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v6)
      {
        return result;
      }

LABEL_35:
      v19 = v0[13];
      v20 = v0[14];
      v21 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_44;
        }

        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
      }

      else
      {
        if (!v21)
        {
          if ((v20 & 0xFF000000000000) == 0)
          {
LABEL_44:
            if (*(v0 + 120) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v6))
            {
              if (*(v0 + 121) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v6))
              {
                if (!*(v0[16] + 16) || (type metadata accessor for KTPBDeviceState(0), sub_10010A344(&qword_1003858E0, type metadata accessor for KTPBDeviceState), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v6))
                {
                  v24 = v0 + *(type metadata accessor for KTPBBatchUpdateRequest.UpdateData(0) + 64);
                  return UnknownStorage.traverse<A>(visitor:)();
                }
              }
            }

            return result;
          }

LABEL_43:
          result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
          if (v6)
          {
            return result;
          }

          goto LABEL_44;
        }

        v22 = v19;
        v23 = v19 >> 32;
      }

      if (v22 == v23)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  return result;
}

uint64_t sub_100100BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = xmmword_1002D4770;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = xmmword_1002D81A0;
  *(a2 + 112) = 0xC000000000000000;
  *(a2 + 120) = 0;
  *(a2 + 128) = _swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 64);
  return UnknownStorage.init()();
}

uint64_t sub_100100C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100100CD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_100100D48(uint64_t a1, uint64_t a2))()
{
  result = KTBucketNearFutureScheduler.KTBucketNFSResult.rawValue.getter;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t sub_100100D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A344(&qword_1003861D0, type metadata accessor for KTPBBatchUpdateRequest.UpdateData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100100E3C(uint64_t a1)
{
  v2 = sub_10010A344(&qword_1003858B8, type metadata accessor for KTPBBatchUpdateRequest.UpdateData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100100EA8()
{
  sub_10010A344(&qword_1003858B8, type metadata accessor for KTPBBatchUpdateRequest.UpdateData);

  return Message.hash(into:)();
}

uint64_t sub_100100F24()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D108);
  sub_10009597C(v0, qword_10039D108);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "INSERT";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MARK_FOR_DELETE";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "OPT_IN_OUT";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001011CC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D120);
  sub_10009597C(v0, qword_10039D120);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D7190;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "appVersion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceId";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "clientData";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "addedMs";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "expiryMs";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001014A8()
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
        goto LABEL_2;
      }

      if (result == 2)
      {
LABEL_12:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }
    }

    else
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4 || result == 5)
      {
LABEL_2:
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }
    }
  }
}

uint64_t sub_100101570()
{
  if (*v0)
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v3 = v0[1];
  v4 = v0[2];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
  }

  else
  {
    if (!v5)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v6 = v3;
    v7 = v3 >> 32;
  }

  if (v6 == v7)
  {
    goto LABEL_12;
  }

LABEL_11:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_12:
  v8 = v0[3];
  v9 = v0[4];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_21;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      goto LABEL_21;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (!v0[5] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
  {
    if (!v0[6] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
    {
      v13 = v0 + *(type metadata accessor for KTPBDeviceState(0) + 36);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100101730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_1002D81A0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0xC000000000000000;
  v2 = a2 + *(a1 + 36);
  return UnknownStorage.init()();
}

uint64_t sub_10010176C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1001017E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_100101854(uint64_t a1, uint64_t a2))()
{
  result = KTBucketNearFutureScheduler.KTBucketNFSResult.rawValue.getter;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_1001018A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A344(&qword_1003861C8, type metadata accessor for KTPBDeviceState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100101948(uint64_t a1)
{
  v2 = sub_10010A344(&qword_1003858E0, type metadata accessor for KTPBDeviceState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001019B4()
{
  sub_10010A344(&qword_1003858E0, type metadata accessor for KTPBDeviceState);

  return Message.hash(into:)();
}

uint64_t sub_100101A58()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D138);
  sub_10009597C(v0, qword_10039D138);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "serverEventInfo";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 10;
  *v11 = "responses";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100101CB4()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 10:
          type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData(0);
          sub_10010A344(&qword_100385908, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          sub_10010A4DC();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100101DEC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_10010A488();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (sub_10010A4DC(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0[4] + 16) || (type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData(0), sub_10010A344(&qword_100385908, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
      {
        v7 = v0 + *(type metadata accessor for KTPBBatchUpdateResponse(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_100101FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t sub_100102048(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A344(&qword_1003861C0, type metadata accessor for KTPBBatchUpdateResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001020E8(uint64_t a1)
{
  v2 = sub_10010A344(&qword_1003859C0, type metadata accessor for KTPBBatchUpdateResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100102154()
{
  sub_10010A344(&qword_1003859C0, type metadata accessor for KTPBBatchUpdateResponse);

  return Message.hash(into:)();
}

uint64_t sub_1001021F8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D150);
  sub_10009597C(v0, qword_10039D150);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "insertResponse";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "markForDeletionResponse";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "optInOutResponse";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100102454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_100103078(v5, a1, a2, a3);
        break;
      case 2:
        sub_100102ABC(v5, a1, a2, a3);
        break;
      case 1:
        sub_10010250C(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_10010250C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for KTPBInsertResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v41 - v10;
  v11 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  v16 = *(updated - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(updated);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v23 = sub_100095820(&qword_1003861F8, &qword_1002D9460);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1000AB050(a1, v14, &qword_100385890, &unk_1002D81E0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, updated);
  if (v32 == 1)
  {
    sub_1000057C4(v14, &qword_100385890, &unk_1002D81E0);
    v33 = v48;
    v34 = updated;
  }

  else
  {
    sub_1000FC848(v14, v22, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
    sub_1000FC848(v22, v20, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
    v34 = updated;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1000FC4B4(v20, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
      v33 = v48;
    }

    else
    {
      sub_1000057C4(v28, &qword_1003861F8, &qword_1002D9460);
      v35 = v43;
      sub_1000FC848(v20, v43, type metadata accessor for KTPBInsertResponse);
      sub_1000FC848(v35, v28, type metadata accessor for KTPBInsertResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_10010A344(&qword_1003859E8, type metadata accessor for KTPBInsertResponse);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return sub_1000057C4(v28, &qword_1003861F8, &qword_1002D9460);
  }

  sub_1000AB050(v28, v36, &qword_1003861F8, &qword_1002D9460);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1000057C4(v28, &qword_1003861F8, &qword_1002D9460);
    return sub_1000057C4(v36, &qword_1003861F8, &qword_1002D9460);
  }

  else
  {
    v39 = v44;
    sub_1000FC848(v36, v44, type metadata accessor for KTPBInsertResponse);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000057C4(v28, &qword_1003861F8, &qword_1002D9460);
    v40 = v42;
    sub_1000057C4(v42, &qword_100385890, &unk_1002D81E0);
    sub_1000FC848(v39, v40, type metadata accessor for KTPBInsertResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_100102ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for KTPBMarkForDeletionResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v41 - v10;
  v11 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  v16 = *(updated - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(updated);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v23 = sub_100095820(&qword_100386200, &qword_1002D9468);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1000AB050(a1, v14, &qword_100385890, &unk_1002D81E0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, updated);
  if (v32 == 1)
  {
    sub_1000057C4(v14, &qword_100385890, &unk_1002D81E0);
    v33 = v48;
    v34 = updated;
  }

  else
  {
    sub_1000FC848(v14, v22, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
    sub_1000FC848(v22, v20, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
    v34 = updated;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000057C4(v28, &qword_100386200, &qword_1002D9468);
      v35 = v44;
      sub_1000FC848(v20, v44, type metadata accessor for KTPBMarkForDeletionResponse);
      sub_1000FC848(v35, v28, type metadata accessor for KTPBMarkForDeletionResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1000FC4B4(v20, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_10010A344(&qword_100385A00, type metadata accessor for KTPBMarkForDeletionResponse);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return sub_1000057C4(v28, &qword_100386200, &qword_1002D9468);
  }

  sub_1000AB050(v28, v36, &qword_100386200, &qword_1002D9468);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1000057C4(v28, &qword_100386200, &qword_1002D9468);
    return sub_1000057C4(v36, &qword_100386200, &qword_1002D9468);
  }

  else
  {
    v39 = v43;
    sub_1000FC848(v36, v43, type metadata accessor for KTPBMarkForDeletionResponse);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000057C4(v28, &qword_100386200, &qword_1002D9468);
    v40 = v42;
    sub_1000057C4(v42, &qword_100385890, &unk_1002D81E0);
    sub_1000FC848(v39, v40, type metadata accessor for KTPBMarkForDeletionResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_100103078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for KTPBOptInOutResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v41 - v10;
  v11 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  v16 = *(updated - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(updated);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v23 = sub_100095820(&qword_100386208, &qword_1002D9470);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1000AB050(a1, v14, &qword_100385890, &unk_1002D81E0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, updated);
  if (v32 == 1)
  {
    sub_1000057C4(v14, &qword_100385890, &unk_1002D81E0);
    v33 = v48;
    v34 = updated;
  }

  else
  {
    sub_1000FC848(v14, v22, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
    sub_1000FC848(v22, v20, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
    v34 = updated;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1000057C4(v28, &qword_100386208, &qword_1002D9470);
      v35 = v44;
      sub_1000FC848(v20, v44, type metadata accessor for KTPBOptInOutResponse);
      sub_1000FC848(v35, v28, type metadata accessor for KTPBOptInOutResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1000FC4B4(v20, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_10010A344(&qword_100385A18, type metadata accessor for KTPBOptInOutResponse);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return sub_1000057C4(v28, &qword_100386208, &qword_1002D9470);
  }

  sub_1000AB050(v28, v36, &qword_100386208, &qword_1002D9470);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1000057C4(v28, &qword_100386208, &qword_1002D9470);
    return sub_1000057C4(v36, &qword_100386208, &qword_1002D9470);
  }

  else
  {
    v39 = v43;
    sub_1000FC848(v36, v43, type metadata accessor for KTPBOptInOutResponse);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000057C4(v28, &qword_100386208, &qword_1002D9470);
    v40 = v42;
    sub_1000057C4(v42, &qword_100385890, &unk_1002D81E0);
    sub_1000FC848(v39, v40, type metadata accessor for KTPBOptInOutResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_100103634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  sub_1000AB050(v3, &v16 - v10, &qword_100385890, &unk_1002D81E0);
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  if ((*(*(updated - 8) + 48))(v11, 1, updated) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100103A18(v3, a1, a2, a3);
    }

    else
    {
      sub_100103C50(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_1001037E4(v3, a1, a2, a3);
  }

  result = sub_1000FC4B4(v11, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
  if (!v4)
  {
LABEL_8:
    v15 = v3 + *(type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001037E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for KTPBInsertResponse(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB050(a1, v8, &qword_100385890, &unk_1002D81E0);
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  if ((*(*(updated - 8) + 48))(v8, 1, updated) == 1)
  {
    sub_1000057C4(v8, &qword_100385890, &unk_1002D81E0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1000FC848(v8, v12, type metadata accessor for KTPBInsertResponse);
    sub_10010A344(&qword_1003859E8, type metadata accessor for KTPBInsertResponse);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_1000FC4B4(v12, type metadata accessor for KTPBInsertResponse);
  }

  result = sub_1000FC4B4(v8, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
  __break(1u);
  return result;
}

uint64_t sub_100103A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for KTPBMarkForDeletionResponse(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB050(a1, v8, &qword_100385890, &unk_1002D81E0);
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  if ((*(*(updated - 8) + 48))(v8, 1, updated) == 1)
  {
    sub_1000057C4(v8, &qword_100385890, &unk_1002D81E0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000FC848(v8, v12, type metadata accessor for KTPBMarkForDeletionResponse);
    sub_10010A344(&qword_100385A00, type metadata accessor for KTPBMarkForDeletionResponse);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_1000FC4B4(v12, type metadata accessor for KTPBMarkForDeletionResponse);
  }

  result = sub_1000FC4B4(v8, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
  __break(1u);
  return result;
}

uint64_t sub_100103C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for KTPBOptInOutResponse(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB050(a1, v8, &qword_100385890, &unk_1002D81E0);
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  if ((*(*(updated - 8) + 48))(v8, 1, updated) == 1)
  {
    sub_1000057C4(v8, &qword_100385890, &unk_1002D81E0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1000FC848(v8, v12, type metadata accessor for KTPBOptInOutResponse);
    sub_10010A344(&qword_100385A18, type metadata accessor for KTPBOptInOutResponse);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_1000FC4B4(v12, type metadata accessor for KTPBOptInOutResponse);
  }

  result = sub_1000FC4B4(v8, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
  __break(1u);
  return result;
}

uint64_t sub_100103ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  (*(*(updated - 8) + 56))(a2, 1, 1, updated);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t sub_100103F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A344(&qword_1003861B8, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100104014(uint64_t a1)
{
  v2 = sub_10010A344(&qword_100385908, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100104080()
{
  sub_10010A344(&qword_100385908, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData);

  return Message.hash(into:)();
}

uint64_t sub_100104184()
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

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v7 = *(type metadata accessor for KTPBInsertResponse(0) + 32);
          type metadata accessor for KTPBVRFWitness(0);
          v5 = type metadata accessor for KTPBVRFWitness;
          v6 = &qword_1003861E0;
          goto LABEL_15;
        }

        if (result == 7)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_10010A4DC();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v4 = *(type metadata accessor for KTPBInsertResponse(0) + 28);
          type metadata accessor for KTPBSignedObject(0);
          v5 = type metadata accessor for KTPBSignedObject;
          v6 = &qword_1003861E8;
LABEL_15:
          sub_10010A344(v6, v5);
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001043E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A344(&qword_1003861B0, type metadata accessor for KTPBInsertResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100104480(uint64_t a1)
{
  v2 = sub_10010A344(&qword_1003859E8, type metadata accessor for KTPBInsertResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001044EC()
{
  sub_10010A344(&qword_1003859E8, type metadata accessor for KTPBInsertResponse);

  return Message.hash(into:)();
}

uint64_t sub_1001045A4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = type metadata accessor for _NameMap();
  sub_100098130(v4, a2);
  sub_10009597C(v4, a2);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v5 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002D47C0;
  v9 = v8 + v7;
  v10 = v8 + v7 + v5[14];
  *(v8 + v7) = 1;
  *v10 = "status";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v11 = enum case for _NameMap.NameDescription.same(_:);
  v12 = type metadata accessor for _NameMap.NameDescription();
  v13 = *(*(v12 - 8) + 104);
  (v13)(v10, v11, v12);
  v14 = v9 + v6 + v5[14];
  *(v9 + v6) = 2;
  *v14 = "smt";
  *(v14 + 8) = 3;
  *(v14 + 16) = 2;
  v13();
  v15 = (v9 + 2 * v6);
  v16 = v15 + v5[14];
  *v15 = 3;
  *v16 = "uriWitness";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v13();
  v17 = (v9 + 3 * v6);
  v18 = v17 + v5[14];
  *v17 = a3;
  *v18 = "serverEventInfo";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v13();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001048AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v12 = *v6;
  v13 = *(v6 + 8);
  sub_10010A488();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (sub_10010A4DC(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v7))
  {
    result = sub_100104EA8(v6, a1, a2, a3, a4);
    if (!v7)
    {
      sub_1001050C8(v6, a1, a2, a3, a4);
      v15 = *(v6 + 24);
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = *(v6 + 16) & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
      }

      v17 = v6 + *(a6(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100104A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A344(&qword_1003861A8, type metadata accessor for KTPBMarkForDeletionResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100104B08(uint64_t a1)
{
  v2 = sub_10010A344(&qword_100385A00, type metadata accessor for KTPBMarkForDeletionResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100104B74()
{
  sub_10010A344(&qword_100385A00, type metadata accessor for KTPBMarkForDeletionResponse);

  return Message.hash(into:)();
}

uint64_t sub_100104C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v9 = *(a4(0) + 32);
          type metadata accessor for KTPBVRFWitness(0);
          sub_10010A344(&qword_1003861E0, type metadata accessor for KTPBVRFWitness);
          goto LABEL_15;
        }

        if (result == 5)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_10010A4DC();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v8 = *(a4(0) + 28);
          type metadata accessor for KTPBSignedObject(0);
          sub_10010A344(&qword_1003861E8, type metadata accessor for KTPBSignedObject);
LABEL_15:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100104EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  v7 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for KTPBSignedObject(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  sub_1000AB050(a1 + *(v16 + 28), v10, &qword_100385898, &unk_1002DB9A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000057C4(v10, &qword_100385898, &unk_1002DB9A0);
  }

  sub_1000FC848(v10, v15, type metadata accessor for KTPBSignedObject);
  sub_10010A344(&qword_1003861E8, type metadata accessor for KTPBSignedObject);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1000FC4B4(v15, type metadata accessor for KTPBSignedObject);
}

uint64_t sub_1001050C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  v7 = sub_100095820(&qword_1003858A0, &qword_1002D81F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for KTPBVRFWitness(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  sub_1000AB050(a1 + *(v16 + 32), v10, &qword_1003858A0, &qword_1002D81F0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000057C4(v10, &qword_1003858A0, &qword_1002D81F0);
  }

  sub_1000FC848(v10, v15, type metadata accessor for KTPBVRFWitness);
  sub_10010A344(&qword_1003861E0, type metadata accessor for KTPBVRFWitness);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1000FC4B4(v15, type metadata accessor for KTPBVRFWitness);
}

uint64_t sub_100105330@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  v4 = a2 + a1[6];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = type metadata accessor for KTPBSignedObject(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for KTPBVRFWitness(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_100105410(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A344(&qword_1003861A0, type metadata accessor for KTPBOptInOutResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001054B0(uint64_t a1)
{
  v2 = sub_10010A344(&qword_100385A18, type metadata accessor for KTPBOptInOutResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010551C()
{
  sub_10010A344(&qword_100385A18, type metadata accessor for KTPBOptInOutResponse);

  return Message.hash(into:)();
}

uint64_t sub_1001055C0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D1B0);
  sub_10009597C(v0, qword_10039D1B0);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002D4780;
  v4 = v22 + v3 + v1[14];
  *(v22 + v3) = 1;
  *v4 = "version";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v22 + v3 + v2 + v1[14];
  *(v22 + v3 + v2) = 2;
  *v8 = "requestUuid";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v22 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "serverEventInfo";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v22 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "application";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v22 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "uri";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v7();
  v15 = (v22 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "accountKey";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v22 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "optIn";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v22 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 10;
  *v20 = "devices";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100105948()
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

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          }

          else if (result == 10)
          {
            type metadata accessor for KTPBVerifySyncRequest.DeviceData(0);
            sub_10010A344(&qword_100385938, type metadata accessor for KTPBVerifySyncRequest.DeviceData);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          }
        }

        else
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
LABEL_4:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            goto LABEL_5;
          }

          v3 = v0;
          sub_10010A434();
          goto LABEL_21;
        }

        if (result == 1)
        {
          v3 = v0;
          sub_10010A2F0();
LABEL_21:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100105B28()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_10010A29C();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (sub_10010A2F0(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v7 = v0[5];
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v8 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        v9 = v0[6];
        v10 = *(v0 + 56);
        sub_10010A3E0();
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (sub_10010A434(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
        {
          v11 = v0[9];
          v12 = HIBYTE(v11) & 0xF;
          if ((v11 & 0x2000000000000000) == 0)
          {
            v12 = v0[8] & 0xFFFFFFFFFFFFLL;
          }

          if (!v12 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
          {
            v13 = v0[10];
            v14 = v0[11];
            v15 = v14 >> 62;
            if ((v14 >> 62) > 1)
            {
              if (v15 != 2)
              {
                goto LABEL_26;
              }

              v16 = *(v13 + 16);
              v17 = *(v13 + 24);
            }

            else
            {
              if (!v15)
              {
                if ((v14 & 0xFF000000000000) == 0)
                {
                  goto LABEL_26;
                }

LABEL_25:
                result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
                if (v1)
                {
                  return result;
                }

                goto LABEL_26;
              }

              v16 = v13;
              v17 = v13 >> 32;
            }

            if (v16 != v17)
            {
              goto LABEL_25;
            }

LABEL_26:
            if (*(v0 + 96) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
            {
              if (!*(v0[13] + 16) || (type metadata accessor for KTPBVerifySyncRequest.DeviceData(0), sub_10010A344(&qword_100385938, type metadata accessor for KTPBVerifySyncRequest.DeviceData), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
              {
                v18 = v0 + *(type metadata accessor for KTPBVerifySyncRequest(0) + 48);
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

uint64_t sub_100105E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = xmmword_1002D4770;
  *(a2 + 96) = 0;
  *(a2 + 104) = _swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 48);
  return UnknownStorage.init()();
}

uint64_t (*sub_100105ED8(uint64_t a1, uint64_t a2))()
{
  result = KTBucketNearFutureScheduler.KTBucketNFSResult.rawValue.getter;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_100105F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A344(&qword_100386198, type metadata accessor for KTPBVerifySyncRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100105FCC(uint64_t a1)
{
  v2 = sub_10010A344(&qword_100385A30, type metadata accessor for KTPBVerifySyncRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100106038()
{
  sub_10010A344(&qword_100385A30, type metadata accessor for KTPBVerifySyncRequest);

  return Message.hash(into:)();
}

uint64_t sub_1001060DC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D1C8);
  sub_10009597C(v0, qword_10039D1C8);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1002D4780;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "deviceId";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "clientData";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "expiryMs";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "idv";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "hwVersion";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "swVersion";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "skipUpdateReason";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "idvCurrentlySupported";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100106468()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          goto LABEL_18;
        }

        if (result == 8)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else
      {
LABEL_18:
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }
}

uint64_t sub_10010659C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_17:
    if (v11 == v12)
    {
      goto LABEL_19;
    }

LABEL_18:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_17;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (!*(v0 + 32) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 40) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
    {
      v13 = *(v0 + 56);
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = *(v0 + 48) & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        v15 = *(v0 + 72);
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = *(v0 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (!v16 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
        {
          if (!*(v0 + 80) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
          {
            if (*(v0 + 84) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
            {
              v17 = v0 + *(type metadata accessor for KTPBVerifySyncRequest.DeviceData(0) + 48);
              return UnknownStorage.traverse<A>(visitor:)();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001067E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1002D4770;
  *(a2 + 16) = xmmword_1002D4770;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 84) = 0;
  v2 = a2 + *(a1 + 48);
  return UnknownStorage.init()();
}

uint64_t sub_100106830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1001068A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10010694C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A344(&qword_100386190, type metadata accessor for KTPBVerifySyncRequest.DeviceData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001069EC(uint64_t a1)
{
  v2 = sub_10010A344(&qword_100385938, type metadata accessor for KTPBVerifySyncRequest.DeviceData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100106A58()
{
  sub_10010A344(&qword_100385938, type metadata accessor for KTPBVerifySyncRequest.DeviceData);

  return Message.hash(into:)();
}

uint64_t sub_100106AFC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D1E0);
  sub_10009597C(v0, qword_10039D1E0);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "serverEventInfo";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "verified";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100106D58()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          sub_10010A4DC();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100106E34()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_10010A488();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (sub_10010A4DC(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (*(v0 + 32) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
      {
        v7 = v0 + *(type metadata accessor for KTPBVerifySyncResponse(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

Swift::Int sub_100106FD0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_10010A344(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100107058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t sub_1001070C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A344(&qword_100386188, type metadata accessor for KTPBVerifySyncResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100107160(uint64_t a1)
{
  v2 = sub_10010A344(&qword_100385A58, type metadata accessor for KTPBVerifySyncResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001071CC()
{
  sub_10010A344(&qword_100385A58, type metadata accessor for KTPBVerifySyncResponse);

  return Message.hash(into:)();
}

uint64_t sub_100107248(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  v5 = *(updated - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(updated);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v39 - v10;
  v47 = sub_100095820(&qword_1003861F0, &qword_1002D9458);
  v12 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v14 = &v39 - v13;
  v46 = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData(0);
  v15 = *(*(v46 - 8) + 64);
  v16 = __chkstk_darwin(v46);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v21 = &v39 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v41 = v18;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v44 = *(v19 + 72);
  v45 = updated;
  v27 = &qword_100385890;
  v40 = &v39 - v20;
  while (1)
  {
    result = sub_1000FCBCC(v24, v21, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData);
    if (!v22)
    {
      break;
    }

    v48 = v22;
    sub_1000FCBCC(v25, v18, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData);
    v29 = *(v47 + 48);
    sub_1000AB050(v21, v14, v27, &unk_1002D81E0);
    sub_1000AB050(v18, &v14[v29], v27, &unk_1002D81E0);
    v30 = *v26;
    v31 = v27;
    v32 = v45;
    if ((*v26)(v14, 1, v45) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        goto LABEL_16;
      }

      v27 = v31;
      sub_1000057C4(v14, v31, &unk_1002D81E0);
    }

    else
    {
      v33 = v26;
      v34 = v42;
      sub_1000AB050(v14, v42, v31, &unk_1002D81E0);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_1000FC4B4(v34, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
        v21 = v40;
        v18 = v41;
LABEL_16:
        sub_1000057C4(v14, &qword_1003861F0, &qword_1002D9458);
LABEL_17:
        sub_1000FC4B4(v18, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData);
        sub_1000FC4B4(v21, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData);
        goto LABEL_18;
      }

      v35 = v43;
      sub_1000FC848(&v14[v29], v43, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
      v36 = sub_100109D80(v34, v35);
      sub_1000FC4B4(v35, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
      sub_1000FC4B4(v34, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
      sub_1000057C4(v14, v31, &unk_1002D81E0);
      v26 = v33;
      v21 = v40;
      v18 = v41;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v37 = *(v46 + 20);
    type metadata accessor for UnknownStorage();
    sub_10010A344(&qword_1003825C8, &type metadata accessor for UnknownStorage);
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_1000FC4B4(v18, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData);
    sub_1000FC4B4(v21, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData);
    if (v38)
    {
      v22 = v48 - 1;
      v25 += v44;
      v24 += v44;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}