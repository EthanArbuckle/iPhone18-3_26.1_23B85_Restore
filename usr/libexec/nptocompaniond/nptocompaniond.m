id sub_10000268C()
{
  if (qword_10009C7D0 != -1)
  {
    dispatch_once(&qword_10009C7D0, &stru_10008B658);
  }

  v1 = qword_10009C7C8;

  return v1;
}

uint64_t sub_100002760()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000279C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000027F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002840()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002878()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000028B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000028FC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000293C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002994()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1000029F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002A2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002A90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002AC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002B00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100002B60()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002B98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002BF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100002C48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100002CA0()
{
  swift_unknownObjectRelease();

  sub_100030A3C(*(v0 + 48), *(v0 + 56), *(v0 + 57));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100002D00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002D38()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002D78()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100002E50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002E88()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100002ED0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_100002F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100002FFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000030B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_100003100(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100004180(&qword_100098BA8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100004180(&qword_100098BB0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_10000327C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100004180(&qword_100098BA8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_100004180(&qword_100098BB0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000033E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000034C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1000035A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_100003668(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_100003750()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000037A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000037D8()
{
  v1 = sub_100004180(&qword_1000998E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100003870()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000038B0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_100009B58(v0 + 40);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100003900()
{
  if (*(v0 + 40))
  {
    sub_100009B58(v0 + 16);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100003940()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100003988()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100004180(&qword_1000999A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100003AE4()
{
  v1 = sub_100004180(&qword_1000999B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100003BBC()
{
  v1 = sub_100004180(&qword_1000999B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100003C50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003C90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003CC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003D10()
{

  return _swift_deallocObject(v0, 40, 7);
}

id static PHFetchOptions.npto_defaultAssetFetchOptions(for:)(void *a1)
{
  v24 = a1;
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(PHFetchOptions) init];
  sub_100004134();
  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v6._countAndFlagsBits = 0x7954616964656D28;
  v6._object = 0xED0000203D206570;
  String.append(_:)(v6);
  v25 = 1;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD000000000000017;
  v8._object = 0x8000000100077460;
  String.append(_:)(v8);
  v25 = 1;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._object = 0x8000000100077480;
  v10._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v10);
  v25 = 3;
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 10537;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13 = NSPredicate.init(format:_:)();

  v14 = [objc_opt_self() npto_photosGIFSupportCapability];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  v16 = [v24 supportsCapability:isa];

  if (v16)
  {
    sub_100004180(&unk_100098660);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10006FCD0;
    *(v17 + 32) = v13;
    v18 = v13;
    *(v17 + 40) = sub_1000041C8();
    v19 = Array._bridgeToObjectiveC()().super.isa;

    v13 = [objc_opt_self() orPredicateWithSubpredicates:v19];
  }

  [v5 setPredicate:{v13, v24}];
  sub_100004180(&unk_100098860);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10006FCE0;
  *(v20 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 40) = v21;
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [v5 addFetchPropertySets:v22];

  return v5;
}

unint64_t sub_100004134()
{
  result = qword_100098670;
  if (!qword_100098670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100098670);
  }

  return result;
}

uint64_t sub_100004180(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000041C8()
{
  sub_100004134();
  _StringGuts.grow(_:)(40);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._object = 0x80000001000774A0;
  v1._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = NSPredicate.init(format:_:)();

  return v4;
}

char *sub_100004364(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC14nptocompaniond22DevicePropertyObserver_device] = a1;
  *&v4[OBJC_IVAR____TtC14nptocompaniond22DevicePropertyObserver_properties] = a2;
  v7 = &v4[OBJC_IVAR____TtC14nptocompaniond22DevicePropertyObserver_updateHandler];
  *v7 = a3;
  *(v7 + 1) = a4;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for DevicePropertyObserver();
  v8 = a1;

  v9 = objc_msgSendSuper2(&v15, "init");
  v10 = *&v9[OBJC_IVAR____TtC14nptocompaniond22DevicePropertyObserver_device];
  v11 = v9;
  v12 = v10;
  sub_1000044AC(a2);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 addPropertyObserver:v11 forPropertyChanges:{isa, v15.receiver, v15.super_class}];

  return v11;
}

unint64_t *sub_1000044AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_100004950(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100004950((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100004BEC(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_1000045AC()
{
  v1 = *&v0[OBJC_IVAR____TtC14nptocompaniond22DevicePropertyObserver_device];
  v2 = v0;

  sub_1000044AC(v3);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 removePropertyObserver:v2 forPropertyChanges:isa];

  v6.receiver = v2;
  v6.super_class = type metadata accessor for DevicePropertyObserver();
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_10000472C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = v3;
    v7 = a1;
    v8 = *(v4 + OBJC_IVAR____TtC14nptocompaniond22DevicePropertyObserver_device);
    sub_100004840();
    v9 = v8;
    v10 = v7;
    LOBYTE(v7) = static NSObject.== infix(_:_:)();

    if (v7)
    {
      if (a3)
      {
        v13[0] = a2;
        v13[1] = a3;
        __chkstk_darwin();
        v12[2] = v13;
        if (sub_100004A80(sub_100004B2C, v12, v11))
        {
          (*(v4 + OBJC_IVAR____TtC14nptocompaniond22DevicePropertyObserver_updateHandler))();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

unint64_t sub_100004840()
{
  result = qword_100098258;
  if (!qword_100098258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100098258);
  }

  return result;
}

char *sub_100004950(char *a1, int64_t a2, char a3)
{
  result = sub_100004970(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004970(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004180(&unk_1000982F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100004A80(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100004B2C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100004B84(uint64_t a1)
{
  v2 = sub_100004180(&qword_1000985D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_100004BEC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100004C00()
{
  v0 = type metadata accessor for Logger();
  sub_100004D40(v0, qword_10009C660);
  sub_100004D08(v0, qword_10009C660);
  swift_beginAccess();

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100004CA4()
{
  if (qword_100099BA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100004D08(v0, qword_10009C660);
}

uint64_t sub_100004D08(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004D40(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100004DF4(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*sub_100004E5C(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100004EFC;
}

void sub_100004EFC(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

char *sub_100004FCC(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v37 = a3;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  *&v3[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_updateTimer] = 0;
  v12 = &v3[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_appLastOpenDatePreferenceObserver];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v13 = OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_powerInfo;
  *&v4[v13] = [objc_allocWithZone(NPTOPowerSourceInfo) init];
  v14 = OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_networkMonitor;
  sub_100004180(&qword_100098378);
  v15 = type metadata accessor for NWInterface.InterfaceType();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10006FCE0;
  (*(v16 + 104))(v18 + v17, enum case for NWInterface.InterfaceType.cellular(_:), v15);
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *&v4[v14] = NWPathMonitor.init(prohibitedInterfaceTypes:)();
  *&v4[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_preferenceAccessor] = a1;
  v19 = &v4[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier];
  v20 = v37;
  *v19 = a2;
  v19[1] = v20;
  sub_100009C90(0, &qword_1000983B0);
  aBlock = 0xD000000000000019;
  v44 = 0x8000000100077580;
  v40 = a1;
  v21._countAndFlagsBits = a2;
  v21._object = v20;
  String.append(_:)(v21);
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100009CD8(&qword_100098DB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004180(&unk_1000983C0);
  sub_100009D20(&qword_100098DC0, &unk_1000983C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v41 + 104))(v39, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v42);
  *&v4[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_updateQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  updated = type metadata accessor for SyncContentUpdateScheduler();
  v49.receiver = v4;
  v49.super_class = updated;
  v23 = objc_msgSendSuper2(&v49, "init");
  v24 = *&v23[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_powerInfo];
  v25 = v23;
  [v24 setDelegate:v25];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1000059C0(sub_1000059B8);
  NWPathMonitor.pathUpdateHandler.setter();

  v26 = *&v25[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_updateQueue];

  v27 = v26;
  NWPathMonitor.start(queue:)();

  v28 = NPTOPreferencesAppLastOpenDateKey;
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = v28;

  v47 = sub_100005C28;
  v48 = v29;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10000A194;
  v46 = &unk_100089990;
  v31 = _Block_copy(&aBlock);

  v32 = v40;
  v33 = [v40 changeObserverForKey:v30 queue:0 block:v31];
  _Block_release(v31);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v34 = OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_appLastOpenDatePreferenceObserver;
  swift_beginAccess();
  sub_100005C48(&aBlock, &v25[v34]);
  swift_endAccess();

  return v25;
}

uint64_t sub_1000055FC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_100005668()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NWPath.Status();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    NWPath.status.getter();
    (*(v5 + 104))(v8, enum case for NWPath.Status.satisfied(_:), v4);
    v13 = static NWPath.Status.== infix(_:_:)();
    v14 = *(v5 + 8);
    v14(v8, v4);
    v14(v10, v4);
    if (v13)
    {
      v15 = sub_100004CA4();
      (*(v1 + 16))(v3, v15, v0);
      v16 = v12;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = v25;
        *v19 = 136315138;
        v20 = *(v16 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier);
        v21 = *(v16 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8);

        v22 = sub_1000095B0(v20, v21, &v26);

        *(v19 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v17, v18, "%s network condition is now satisfied. Rescheduling update.", v19, 0xCu);
        sub_100009B58(v25);
      }

      v23 = (*(v1 + 8))(v3, v0);
      (*((swift_isaMask & *v16) + 0xE0))(v23);
    }
  }
}

uint64_t sub_1000059C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1000059D0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100004CA4();
    (*(v1 + 16))(v3, v6, v0);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18 = v0;
      v11 = v10;
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = *(v7 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier);
      v14 = *(v7 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8);

      v15 = sub_1000095B0(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s scheduling updates because NanoPhotos last open date is updated.", v11, 0xCu);
      sub_100009B58(v12);

      v16 = (*(v1 + 8))(v3, v18);
    }

    else
    {

      v16 = (*(v1 + 8))(v3, v0);
    }

    (*((swift_isaMask & *v7) + 0xE0))(v16);
  }
}

uint64_t sub_100005C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004180(&qword_1000985D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005CB8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_updateQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100005F74;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A194;
  aBlock[3] = &unk_1000899E0;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_100009CD8(&qword_1000983E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004180(&qword_1000983E8);
  sub_100009D20(&qword_1000983F0, &qword_1000983E8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_100005F98(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100005FDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_preferenceAccessor);
  v11 = *(v1 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier);

  v4._countAndFlagsBits = 0x646574616470552DLL;
  v4._object = 0xEC00000065746144;
  String.append(_:)(v4);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    v7 = type metadata accessor for Date();
    v8 = swift_dynamicCast();
    return (*(*(v7 - 8) + 56))(a1, v8 ^ 1u, 1, v7);
  }

  else
  {
    sub_100009BA4(v13, &qword_1000985D0);
    v10 = type metadata accessor for Date();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

uint64_t sub_100006178(uint64_t a1)
{
  v3 = *(sub_100004180(&qword_1000984E0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = aBlock - v5;
  v7 = *&v1[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_preferenceAccessor];
  sub_100009E18(a1, aBlock - v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_100009E88(v6, v9 + v8);
  *(v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10000A064;
  *(v10 + 24) = v9;
  aBlock[4] = sub_10000A198;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006640;
  aBlock[3] = &unk_100089AF8;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  [v7 performBatchUpdates:v11 synchronizeToRemoteDevice:0];
  _Block_release(v11);
  sub_100009BA4(a1, &qword_1000984E0);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_1000063B0(uint64_t a1, uint64_t a2)
{
  sub_100004180(&qword_1000984E0);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009E18(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100009BA4(v5, &qword_1000984E0);
    v10 = *(a2 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_preferenceAccessor);
    v11 = *(a2 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8);
    v19 = *(a2 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier);
    v20 = v11;

    v12._countAndFlagsBits = 0x646574616470552DLL;
    v12._object = 0xEC00000065746144;
    String.append(_:)(v12);
    v13 = String._bridgeToObjectiveC()();

    [v10 removeObjectForKey:v13];
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14 = *(a2 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_preferenceAccessor);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v16 = *(a2 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8);
    v19 = *(a2 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier);
    v20 = v16;

    v17._countAndFlagsBits = 0x646574616470552DLL;
    v17._object = 0xEC00000065746144;
    String.append(_:)(v17);
    v18 = String._bridgeToObjectiveC()();

    [v14 setObject:isa forKey:v18];

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_100006668@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_preferenceAccessor);
  v11 = *(v1 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier);

  v4._object = 0x8000000100077690;
  v4._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v4);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    v7 = type metadata accessor for Date();
    v8 = swift_dynamicCast();
    return (*(*(v7 - 8) + 56))(a1, v8 ^ 1u, 1, v7);
  }

  else
  {
    sub_100009BA4(v13, &qword_1000985D0);
    v10 = type metadata accessor for Date();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

uint64_t sub_100006800(uint64_t a1)
{
  v3 = *(sub_100004180(&qword_1000984E0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = aBlock - v5;
  v7 = *&v1[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_preferenceAccessor];
  sub_100009E18(a1, aBlock - v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_100009E88(v6, v9 + v8);
  *(v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100009EF8;
  *(v10 + 24) = v9;
  aBlock[4] = sub_100009F10;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006640;
  aBlock[3] = &unk_100089A80;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  [v7 performBatchUpdates:v11 synchronizeToRemoteDevice:0];
  _Block_release(v11);
  sub_100009BA4(a1, &qword_1000984E0);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_100006A38(uint64_t a1, uint64_t a2)
{
  sub_100004180(&qword_1000984E0);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009E18(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100009BA4(v5, &qword_1000984E0);
    v10 = *(a2 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_preferenceAccessor);
    v11 = *(a2 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8);
    v19 = *(a2 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier);
    v20 = v11;

    v12._object = 0x8000000100077690;
    v12._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v12);
    v13 = String._bridgeToObjectiveC()();

    [v10 removeObjectForKey:v13];
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14 = *(a2 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_preferenceAccessor);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v16 = *(a2 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8);
    v19 = *(a2 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier);
    v20 = v16;

    v17._object = 0x8000000100077690;
    v17._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v17);
    v18 = String._bridgeToObjectiveC()();

    [v14 setObject:isa forKey:v18];

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_100006CC4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = (__chkstk_darwin)();
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = &v54 - v5;
  v6 = sub_100004180(&qword_1000984E0);
  __chkstk_darwin(v6 - 8);
  v54 = &v54 - v7;
  v57 = type metadata accessor for NWPath.Status();
  v8 = *(v57 - 8);
  v9 = __chkstk_darwin(v57);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v54 - v12;
  v56 = type metadata accessor for NWPath();
  v14 = *(v56 - 8);
  __chkstk_darwin(v56);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_updateQueue);
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v20, v17);
  if (v21)
  {
    if ([*(v1 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_powerInfo) hasExternalPowerSourceConnected])
    {
      NWPathMonitor.currentPath.getter();
      NWPath.status.getter();
      (*(v14 + 8))(v16, v56);
      v24 = v57;
      (*(v8 + 104))(v11, enum case for NWPath.Status.satisfied(_:), v57);
      v25 = static NWPath.Status.== infix(_:_:)();
      v26 = *(v8 + 8);
      v26(v11, v24);
      v27 = (v26)(v13, v24);
      if (v25)
      {
        v28 = (*((swift_isaMask & *v1) + 0x90))(v27);
        if (v28)
        {
          v30 = v28;
          v31 = v29;
          ObjectType = swift_getObjectType();
          (*(v31 + 24))(ObjectType, v31);
        }

        v33 = v54;
        static Date.now.getter();
        v34 = type metadata accessor for Date();
        v35 = *(*(v34 - 8) + 56);
        v35(v33, 0, 1, v34);
        sub_100006178(v33);
        v35(v33, 1, 1, v34);
        return sub_100006800(v33);
      }

      else
      {
        v45 = sub_100004CA4();
        v47 = v59;
        v46 = v60;
        v48 = v55;
        (*(v59 + 16))(v55, v45, v60);
        v49 = v1;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v61 = v53;
          *v52 = 136315138;
          *(v52 + 4) = sub_1000095B0(*(v49 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier), *(v49 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8), &v61);
          _os_log_impl(&_mh_execute_header, v50, v51, "%s skipped updating because netork condition is NOT satisfied", v52, 0xCu);
          sub_100009B58(v53);
        }

        return (*(v47 + 8))(v48, v46);
      }
    }

    else
    {
      v36 = sub_100004CA4();
      v37 = v58;
      v38 = v59;
      v39 = v60;
      (*(v59 + 16))(v58, v36, v60);
      v40 = v1;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v61 = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_1000095B0(*(v40 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier), *(v40 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8), &v61);
        _os_log_impl(&_mh_execute_header, v41, v42, "%s skipped updating because device is NOT charging", v43, 0xCu);
        sub_100009B58(v44);
      }

      return (*(v38 + 8))(v37, v39);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000073B0()
{
  v214 = type metadata accessor for DispatchTimeInterval();
  v213 = *(v214 - 8);
  v1 = __chkstk_darwin(v214);
  v212 = &v192 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v211 = &v192 - v3;
  v210 = type metadata accessor for DispatchWallTime();
  v209 = *(v210 - 8);
  v4 = __chkstk_darwin(v210);
  v216 = &v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v208 = &v192 - v6;
  v207 = type metadata accessor for DispatchWorkItemFlags();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v204 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for DispatchQoS();
  v203 = *(v205 - 8);
  __chkstk_darwin(v205);
  v202 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v201 = *(v215 - 8);
  __chkstk_darwin(v215);
  v200 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar.Component();
  v229 = *(v10 - 8);
  v230 = v10;
  __chkstk_darwin(v10);
  v227 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for Calendar();
  v226 = *(v228 - 8);
  __chkstk_darwin(v228);
  v225 = &v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v234 = *(v13 - 8);
  v235 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v192 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v217 = &v192 - v18;
  v19 = __chkstk_darwin(v17);
  v220 = &v192 - v20;
  v21 = __chkstk_darwin(v19);
  v223 = &v192 - v22;
  v23 = __chkstk_darwin(v21);
  v224 = &v192 - v24;
  __chkstk_darwin(v23);
  v232 = &v192 - v25;
  v26 = sub_100004180(&qword_1000984E0);
  v27 = __chkstk_darwin(v26 - 8);
  v199 = &v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v218 = &v192 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v192 - v32;
  __chkstk_darwin(v31);
  v35 = &v192 - v34;
  v36 = type metadata accessor for Date();
  v238 = *(v36 - 8);
  v239 = v36;
  v37 = __chkstk_darwin(v36);
  v219 = &v192 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v221 = &v192 - v40;
  v41 = __chkstk_darwin(v39);
  v222 = &v192 - v42;
  v43 = __chkstk_darwin(v41);
  v231 = &v192 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = &v192 - v46;
  v48 = __chkstk_darwin(v45);
  v236 = &v192 - v49;
  v50 = __chkstk_darwin(v48);
  v240 = &v192 - v51;
  __chkstk_darwin(v50);
  v237 = &v192 - v52;
  v53 = type metadata accessor for DispatchPredicate();
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v56 = (&v192 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = *(v0 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_updateQueue);
  *v56 = v57;
  (*(v54 + 104))(v56, enum case for DispatchPredicate.onQueue(_:), v53);
  v58 = v57;
  v59 = _dispatchPreconditionTest(_:)();
  v60 = (*(v54 + 8))(v56, v53);
  if ((v59 & 1) == 0)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v61 = (*((swift_isaMask & *v0) + 0x90))(v60);
  if (!v61)
  {
    return;
  }

  v63 = v62;
  v233 = v61;
  sub_100005FDC(v35);
  v65 = v238;
  v64 = v239;
  v198 = *(v238 + 48);
  if (v198(v35, 1, v239) == 1)
  {
    sub_100009BA4(v35, &qword_1000984E0);
    v66 = sub_100004CA4();
    v67 = v234;
    v68 = v235;
    (*(v234 + 16))(v16, v66, v235);
    v69 = v0;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock[0] = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_1000095B0(*(v69 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier), *(v69 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8), aBlock);
      _os_log_impl(&_mh_execute_header, v70, v71, "%s never updated before. Updating immediately.", v72, 0xCu);
      sub_100009B58(v73);
    }

    (*(v67 + 8))(v16, v68);
    sub_100006CC4();

    return;
  }

  v194 = v58;
  v74 = *(v65 + 32);
  v74(v237, v35, v64);
  static Date.now.getter();
  v197 = v0;
  v75 = [*(v0 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_preferenceAccessor) npto_appLastOpenDate];
  v193 = v74;
  if (v75)
  {
    v76 = v75;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v74(v33, v47, v64);
    v77 = v74;
    v78 = *(v65 + 56);
    (v78)(v33, 0, 1, v64);
    v77(v236, v33, v64);
  }

  else
  {
    v78 = *(v65 + 56);
    (v78)(v33, 1, 1, v64);
    static Date.distantPast.getter();
    if (v198(v33, 1, v64) != 1)
    {
      sub_100009BA4(v33, &qword_1000984E0);
    }

    v65 = v238;
    v64 = v239;
  }

  sub_10000ED00(1.0);
  Date.addingTimeInterval(_:)();
  v79 = static Date.< infix(_:_:)();
  v196 = *(v65 + 8);
  v195 = v65 + 8;
  v196(v47, v64);
  if (v79)
  {
    v80 = v64;
    v81 = sub_100004CA4();
    v83 = v234;
    v82 = v235;
    v84 = v232;
    (*(v234 + 16))(v232, v81, v235);
    v85 = v231;
    (*(v65 + 16))(v231, v236, v80);
    v86 = v197;
    v87 = v80;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();

    v90 = os_log_type_enabled(v88, v89);
    v91 = v237;
    if (v90)
    {
      v92 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v92 = 136315394;
      *(v92 + 4) = sub_1000095B0(*&v86[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier], *&v86[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8], aBlock);
      *(v92 + 12) = 2080;
      sub_100009CD8(&qword_1000984E8, &type metadata accessor for Date);
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      v96 = v85;
      v97 = v196;
      v196(v96, v87);
      v98 = sub_1000095B0(v93, v95, aBlock);

      *(v92 + 14) = v98;
      _os_log_impl(&_mh_execute_header, v88, v89, "%s skipped updating because NanoPhotos hasn't been launched for over a week (%s).", v92, 0x16u);
      swift_arrayDestroy();

      (*(v83 + 8))(v232, v235);
      v97(v236, v87);
      v97(v240, v87);
      v97(v237, v87);
    }

    else
    {

      v137 = v196;
      v196(v85, v87);
      (*(v83 + 8))(v84, v82);
      v137(v236, v87);
      v137(v240, v87);
      v137(v91, v87);
    }

    return;
  }

  v232 = v78;
  ObjectType = swift_getObjectType();
  v100 = (*(v63 + 8))(ObjectType, v63);
  v101 = v237;
  if ((v100 & 1) == 0)
  {
    v102 = v225;
    static Calendar.current.getter();
    v104 = v229;
    v103 = v230;
    v105 = v101;
    v106 = v227;
    (*(v229 + 104))(v227, enum case for Calendar.Component.day(_:), v230);
    v231 = Calendar.compare(_:to:toGranularity:)();
    v107 = v106;
    v101 = v105;
    (*(v104 + 8))(v107, v103);
    (*(v226 + 8))(v102, v228);
    if (v231 != -1)
    {
      v108 = sub_100004CA4();
      v110 = v234;
      v109 = v235;
      v111 = v224;
      (*(v234 + 16))(v224, v108, v235);
      v112 = v239;
      v113 = v222;
      (*(v238 + 16))(v222, v101, v239);
      v114 = v197;
      v115 = Logger.logObject.getter();
      v116 = v101;
      v117 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v115, v117))
      {
        v118 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v118 = 136315394;
        *(v118 + 4) = sub_1000095B0(*&v114[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier], *&v114[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8], aBlock);
        *(v118 + 12) = 2080;
        sub_100009CD8(&qword_1000984E8, &type metadata accessor for Date);
        v119 = dispatch thunk of CustomStringConvertible.description.getter();
        v121 = v120;
        v122 = v196;
        v196(v113, v112);
        v123 = sub_1000095B0(v119, v121, aBlock);

        *(v118 + 14) = v123;
        _os_log_impl(&_mh_execute_header, v115, v117, "%s skipped updating because it has already been updated within one day at %s.", v118, 0x16u);
        swift_arrayDestroy();

        (*(v110 + 8))(v224, v235);
        v122(v236, v112);
        v122(v240, v112);
        v122(v237, v112);
      }

      else
      {

        v151 = v196;
        v196(v113, v112);
        (*(v110 + 8))(v111, v109);
        v151(v236, v112);
        v151(v240, v112);
        v151(v116, v112);
      }

      return;
    }
  }

  if (((*(v63 + 16))(ObjectType, v63) & 1) == 0)
  {
    v138 = sub_100004CA4();
    v139 = v234;
    v140 = v235;
    v141 = v223;
    (*(v234 + 16))(v223, v138, v235);
    v142 = v197;
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v143, v144))
    {
      v145 = v101;
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      aBlock[0] = v147;
      *v146 = 136315138;
      *(v146 + 4) = sub_1000095B0(*&v142[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier], *&v142[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8], aBlock);
      _os_log_impl(&_mh_execute_header, v143, v144, "%s doesn't require randomized updates. Updating immediately.", v146, 0xCu);
      sub_100009B58(v147);

      v101 = v145;
    }

    (*(v139 + 8))(v141, v140);
    sub_100006CC4();

    v148 = v239;
    v149 = v196;
    v196(v236, v239);
    v149(v240, v148);
    v150 = v101;
LABEL_34:
    v149(v150, v148);
    return;
  }

  v124 = OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_updateTimer;
  v125 = v197;
  if (*&v197[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_updateTimer])
  {
    v126 = sub_100004CA4();
    v127 = v234;
    v128 = v235;
    v129 = v220;
    (*(v234 + 16))(v220, v126, v235);
    v130 = v125;
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      aBlock[0] = v134;
      *v133 = 136315138;
      *(v133 + 4) = sub_1000095B0(*&v130[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier], *&v130[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8], aBlock);
      _os_log_impl(&_mh_execute_header, v131, v132, "%s skipped updating because there is already a scheduled timer.", v133, 0xCu);
      sub_100009B58(v134);

      (*(v127 + 8))(v129, v128);
      v135 = v239;
      v136 = v196;
      v196(v236, v239);
      v136(v240, v135);
      v136(v237, v135);
      return;
    }

    (*(v127 + 8))(v129, v128);
    v148 = v239;
    v149 = v196;
    v196(v236, v239);
    v149(v240, v148);
    v150 = v237;
    goto LABEL_34;
  }

  v152 = v218;
  sub_100006668(v218);
  v153 = v239;
  if (v198(v152, 1, v239) != 1)
  {
    v159 = v221;
    v193(v221, v152, v153);
    Date.timeIntervalSince(_:)();
    v156 = v234;
    v157 = v217;
    v155 = v219;
    v158 = v238;
    goto LABEL_36;
  }

  sub_100009BA4(v152, &qword_1000984E0);
  v154 = sub_10000ECEC(1.0);
  v155 = v219;
  if (v154 < 1.0)
  {
    goto LABEL_41;
  }

  v156 = v234;
  v157 = v217;
  v158 = v238;
  if (COERCE__INT64(fabs(v154 + -1.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_42:
    __break(1u);
    return;
  }

  sub_100009C04(0x20000000000001uLL);
  v159 = v221;
  Date.addingTimeInterval(_:)();
  v160 = v199;
  v161 = v239;
  (*(v158 + 16))(v199, v159, v239);
  v153 = v161;
  (v232)(v160, 0, 1, v161);
  sub_100006800(v160);
LABEL_36:
  v238 = v124;
  v162 = sub_100004CA4();
  v163 = v235;
  (*(v156 + 16))(v157, v162, v235);
  (*(v158 + 16))(v155, v159, v153);
  v164 = v125;
  v165 = Logger.logObject.getter();
  v166 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v167 = 136315394;
    *(v167 + 4) = sub_1000095B0(*&v164[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier], *&v164[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8], aBlock);
    *(v167 + 12) = 2080;
    sub_100009CD8(&qword_1000984E8, &type metadata accessor for Date);
    v168 = dispatch thunk of CustomStringConvertible.description.getter();
    v169 = v153;
    v171 = v170;
    v196(v155, v169);
    v172 = sub_1000095B0(v168, v171, aBlock);

    *(v167 + 14) = v172;
    _os_log_impl(&_mh_execute_header, v165, v166, "%s scheduled to update at %s.", v167, 0x16u);
    swift_arrayDestroy();

    (*(v156 + 8))(v157, v235);
  }

  else
  {

    v196(v155, v153);
    (*(v156 + 8))(v157, v163);
  }

  v173 = v216;
  v174 = v215;
  sub_100009C90(0, &qword_1000984F0);
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100009CD8(&qword_1000984F8, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_100004180(&qword_100098500);
  sub_100009D20(&qword_100098508, &qword_100098500);
  v175 = v200;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v176 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v201 + 8))(v175, v174);
  v177 = swift_getObjectType();
  v178 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100009D74;
  aBlock[5] = v178;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A194;
  aBlock[3] = &unk_100089A08;
  v179 = _Block_copy(aBlock);

  v180 = v202;
  static DispatchQoS.unspecified.getter();
  v181 = v204;
  v235 = v177;
  sub_100009118();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v179);
  (*(v206 + 8))(v181, v207);
  (*(v203 + 8))(v180, v205);

  static DispatchWallTime.now()();
  v182 = v208;
  + infix(_:_:)();
  v234 = *(v209 + 8);
  v183 = v210;
  (v234)(v173, v210);
  v184 = v213;
  v185 = *(v213 + 104);
  v186 = v211;
  v187 = v214;
  v185(v211, enum case for DispatchTimeInterval.never(_:), v214);
  v188 = v212;
  *v212 = 0;
  v185(v188, enum case for DispatchTimeInterval.nanoseconds(_:), v187);
  OS_dispatch_source_timer.schedule(wallDeadline:repeating:leeway:)();
  v189 = *(v184 + 8);
  v189(v188, v187);
  v189(v186, v187);
  (v234)(v182, v183);
  OS_dispatch_source.resume()();

  v190 = v239;
  v191 = v196;
  v196(v221, v239);
  v191(v236, v190);
  v191(v240, v190);
  v191(v237, v190);
  *&v197[v238] = v176;
  swift_unknownObjectRelease();
}

uint64_t sub_100009118()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100009CD8(&qword_1000983E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004180(&qword_1000983E8);
  sub_100009D20(&qword_1000983F0, &qword_1000983E8);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id sub_100009220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncContentUpdateScheduler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000933C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 hasExternalPowerSourceConnected];
  if (result)
  {
    v8 = sub_100004CA4();
    (*(v4 + 16))(v6, v8, v3);
    v9 = v1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1000095B0(*(v9 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier), *(v9 + OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_identifier + 8), &v16);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s device is now charging. Rescheduling update.", v12, 0xCu);
      sub_100009B58(v13);
    }

    v14 = (*(v4 + 8))(v6, v3);
    return (*((swift_isaMask & *v9) + 0xE0))(v14);
  }

  return result;
}

unint64_t sub_1000095B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000967C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000A128(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009B58(v11);
  return v7;
}

unint64_t sub_10000967C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100009788(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100009788(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000097D4(a1, a2);
  sub_100009904(&off_100089940);
  return v3;
}

char *sub_1000097D4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000099F0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000099F0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100009904(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100009A64(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000099F0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100004180(&unk_100098510);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100009A64(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004180(&unk_100098510);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100009B58(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100009BA4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100004180(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100009C04(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100009C90(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100009CD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009D20(unint64_t *a1, uint64_t *a2)
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

void sub_100009D74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100006CC4();
    v2 = OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_updateTimer;
    if (*&v1[OBJC_IVAR____TtC14nptocompaniond26SyncContentUpdateScheduler_updateTimer])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }

    *&v1[v2] = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100009E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004180(&qword_1000984E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004180(&qword_1000984E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009F38()
{
  v1 = *(sub_100004180(&qword_1000984E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_10000A07C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_100004180(&qword_1000984E0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_10000A128(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000A1AC()
{
  result = qword_100098DB0;
  if (!qword_100098DB0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098DB0);
  }

  return result;
}

uint64_t sub_10000A204()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_internalQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10000EB2C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10000A198;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006640;
  aBlock[3] = &unk_100089C08;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_10000A468()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10000A4C8(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10000A560;
}

void sub_10000A560(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *sub_10000A614(void *a1)
{
  v77 = a1;
  v2 = type metadata accessor for Logger();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = __chkstk_darwin(v2);
  v66 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v65 = &v62 - v5;
  v64 = type metadata accessor for UUID();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v74 = *(v7 - 8);
  v75 = v7;
  __chkstk_darwin(v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v12 = &v1[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_photosSyncingPreferenceObserver];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v70 = v12;
  v13 = &v1[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_featuredPhotosSyncingPreferenceObserver];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v69 = v13;
  v14 = &v1[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_photosPreferenceObserver];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v71 = v14;
  v72 = OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_devicePropertyObserver;
  *&v1[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_devicePropertyObserver] = 0;
  v76 = OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_internalQueue;
  sub_100009C90(0, &qword_1000983B0);
  v73 = "-ScheduledUpdatedDate";
  static DispatchQoS.unspecified.getter();
  v79[0] = &_swiftEmptyArrayStorage;
  sub_10000A1AC();
  sub_100004180(&unk_1000983C0);
  sub_10000EBE8(&qword_100098DC0, &unk_1000983C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v74 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v75);
  v15 = v1;
  v16 = v76;
  *&v1[v16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_latestSuggestionsObserver;
  static OS_dispatch_queue.main.getter();
  v18 = objc_allocWithZone(sub_100004180(&qword_100098580));
  *&v1[v17] = FetchResultObserver.init(_:)();
  *&v1[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_subscriptions] = &_swiftEmptySetSingleton;
  v19 = OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_delegate;
  swift_unknownObjectWeakInit();
  v79[3] = &type metadata for NanoPhotosCoreFeatures;
  v79[4] = sub_10000AFC8();
  LOBYTE(v79[0]) = 1;
  v20 = isFeatureEnabled(_:)();
  sub_100009B58(v79);
  if ((v20 & 1) == 0)
  {

LABEL_18:
    sub_100009BA4(v70, &qword_1000985D0);
    sub_100009BA4(v69, &qword_1000985D0);
    sub_100009BA4(v71, &qword_1000985D0);

    sub_100009314(&v15[v19]);
    type metadata accessor for PhotosAppFeaturedPhotosContentProvider();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v21 = v77;
  if (([v77 relationship] & 2) != 0)
  {
    v47 = sub_100004CA4();
    v48 = v66;
    v49 = v67;
    v50 = v68;
    (*(v67 + 16))(v66, v47, v68);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "FeaturedPhotos is disabled on Tinker watch.", v53, 2u);
      v16 = v76;
    }

    else
    {
    }

    (*(v49 + 8))(v48, v50);
    goto LABEL_18;
  }

  result = [objc_opt_self() sharedInstance];
  v23 = v68;
  if (!result)
  {
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = [result deviceForIDSDevice:v21];

  if (!v25)
  {
    v54 = sub_100004CA4();
    (*(v67 + 16))(v65, v54, v23);
    v55 = v21;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v75 = v15;
      v59 = v58;
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      *(v59 + 4) = v55;
      *v60 = v21;
      v61 = v55;
      _os_log_impl(&_mh_execute_header, v56, v57, "FeaturedPhotos is stopped because no valid NRDevice for %@.", v59, 0xCu);
      sub_100009BA4(v60, &qword_1000985D8);
      v23 = v68;

      v15 = v75;
    }

    else
    {
      v61 = v56;
      v56 = v55;
    }

    (*(v67 + 8))(v65, v23);
    v16 = v76;
    goto LABEL_18;
  }

  *&v15[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_nrDevice] = v25;
  v26 = objc_allocWithZone(NPTOPreferencesAccessor);
  v27 = v25;
  v28 = [v26 initWithDevice:v27];
  *&v15[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_preferenceAccessor] = v28;
  type metadata accessor for SyncContentUpdateScheduler();
  *&v15[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_updateScheduler] = sub_100004F80(v28, 0xD000000000000026, 0x800000010006FDF0);
  v29 = *&v15[v76];
  v30 = objc_allocWithZone(sub_100004180(&qword_100098720));
  v31 = v29;
  *&v15[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_currentFeaturedPhotosObserver] = FetchResultObserver.init(_:)();
  v32 = type metadata accessor for PhotosAppFeaturedPhotosContentProvider();
  v78.receiver = v15;
  v78.super_class = v32;
  v33 = objc_msgSendSuper2(&v78, "init");
  v34 = OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_updateScheduler;
  v35 = *&v33[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_updateScheduler];
  v36 = *((swift_isaMask & *v35) + 0x98);
  v37 = v33;
  v38 = v35;
  v39 = v33;
  v36(v33, &off_100089B20);

  sub_10000C110();
  sub_10000BB70();
  v40 = *&v37[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_nrDevice];
  v41 = [objc_opt_self() npto_photosMemoriesSyncCapability];
  v42 = v62;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v63 + 8))(v42, v64);
  LODWORD(v40) = [v40 supportsCapability:isa];

  if (v40)
  {
    v44 = *&v39[v34];
    v45 = *((swift_isaMask & *v44) + 0xE0);
    v46 = v44;
    v45();
  }

  else
  {
    sub_10000CBFC();
  }

  return v39;
}

unint64_t sub_10000AFC8()
{
  result = qword_1000985C8;
  if (!qword_1000985C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000985C8);
  }

  return result;
}

id sub_10000B068()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v82 - v8;
  v10 = __chkstk_darwin(v7);
  v90 = &v82 - v11;
  v12 = __chkstk_darwin(v10);
  v89 = &v82 - v13;
  v14 = __chkstk_darwin(v12);
  v88 = &v82 - v15;
  __chkstk_darwin(v14);
  v87 = &v82 - v16;
  v17 = sub_100004180(&qword_100098B00);
  __chkstk_darwin(v17 - 8);
  v86 = &v82 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v84 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v82 - v23;
  v25 = *&v1[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_nrDevice];
  v26 = [objc_opt_self() npto_photosMemoriesSyncCapability];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v85 = v20;
  v83 = *(v20 + 8);
  v83(v24, v19);
  LODWORD(v24) = [v25 supportsCapability:isa];

  if (!v24)
  {
    v37 = sub_100004CA4();
    (*(v3 + 16))(v6, v37, v2);
    v38 = v1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v25;
      *v42 = v25;
      v43 = v25;
      _os_log_impl(&_mh_execute_header, v39, v40, "FeaturedPhotos is not a valid capability on %@.", v41, 0xCu);
      sub_100009BA4(v42, &qword_1000985D8);
    }

    v44 = *(v3 + 8);
    v45 = v6;
    goto LABEL_15;
  }

  v28 = *&v1[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_preferenceAccessor];
  if (![v28 npto_appPhotosSyncingEnabled])
  {
    v46 = sub_100004CA4();
    (*(v3 + 16))(v9, v46, v2);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "FeaturedPhotos is stopped because photos syncing setting is disabled.", v49, 2u);
    }

    v44 = *(v3 + 8);
    v45 = v9;
LABEL_15:
    v50 = v2;
LABEL_25:
    v44(v45, v50);
    return 0;
  }

  v29 = v2;
  if (!PLIsFeaturedContentAllowed())
  {
    v51 = sub_100004CA4();
    v52 = v90;
    (*(v3 + 16))(v90, v51, v2);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_24;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "FeaturedPhotos is disabled because Show Featured Content is off in iOS Photos settings.";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v53, v54, v56, v55, 2u);

    goto LABEL_24;
  }

  if (![v28 npto_featuredPhotosSyncingEnabled])
  {
    v57 = sub_100004CA4();
    v52 = v89;
    (*(v3 + 16))(v89, v57, v2);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_24;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "FeaturedPhotos is disabled.";
    goto LABEL_23;
  }

  v30 = sub_10000A204();
  if (!v30)
  {
    goto LABEL_21;
  }

  v31 = v30;
  if ([v30 count] < 1)
  {

LABEL_21:
    v58 = sub_100004CA4();
    v52 = v88;
    (*(v3 + 16))(v88, v58, v2);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "No assets in FeaturedPhotos.";
      goto LABEL_23;
    }

LABEL_24:

    v44 = *(v3 + 8);
    v45 = v52;
    v50 = v2;
    goto LABEL_25;
  }

  v32 = objc_opt_self();
  sub_100009C90(0, &unk_100098610);
  v33 = Array._bridgeToObjectiveC()().super.isa;
  v34 = [v32 transientAssetCollectionWithAssets:v33 title:0];

  v35 = v86;
  UUID.init(uuidString:)();
  v36 = v85;
  if ((*(v85 + 48))(v35, 1, v19) == 1)
  {
    sub_100009BA4(v35, &qword_100098B00);
  }

  else
  {
    v60 = v84;
    (*(v36 + 32))(v84, v35, v19);
    v61 = UUID._bridgeToObjectiveC()().super.isa;
    [v34 npto_setUUID:v61];

    v83(v60, v19);
  }

  sub_100004180(&unk_1000982F0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_10006FCE0;
  *(v62 + 56) = sub_100009C90(0, &unk_100098620);
  *(v62 + 32) = v34;
  v63 = objc_opt_self();
  v90 = v34;
  v64 = [v63 sharedPhotoLibrary];
  v65 = objc_allocWithZone(PHManualFetchResult);
  v66 = Array._bridgeToObjectiveC()().super.isa;

  v67 = [v65 initWithObjects:v66 photoLibrary:v64 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v68 = [v67 asAssetCollectionFetchResult];
  v69 = sub_100004CA4();
  v70 = v87;
  (*(v3 + 16))(v87, v69, v29);
  v71 = v68;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = v3;
    v76 = swift_slowAlloc();
    v91 = v76;
    *v74 = 136315138;
    v77 = [v71 debugDescription];
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v29;
    v80 = v79;

    v81 = sub_1000095B0(v78, v80, &v91);

    *(v74 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v72, v73, "Featured photos manual fetch result: %s", v74, 0xCu);
    sub_100009B58(v76);

    (*(v75 + 8))(v87, v89);
  }

  else
  {

    (*(v3 + 8))(v70, v29);
  }

  return v71;
}

uint64_t sub_10000BB70()
{
  v1 = *(v0 + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_preferenceAccessor);
  v2 = NPTOPreferencesAppPhotosSyncingEnabledKey;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_10000ECD8;
  v27 = v3;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10000A194;
  v25 = &unk_100089C58;
  v4 = _Block_copy(&aBlock);
  v5 = v2;

  v6 = [v1 changeObserverForKey:v5 queue:0 block:v4];
  _Block_release(v4);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_photosSyncingPreferenceObserver;
  swift_beginAccess();
  sub_100005C48(&aBlock, v0 + v7);
  swift_endAccess();
  v8 = NPTOPreferencesFeaturedPhotosSyncingEnabledKey;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_10000EBC4;
  v27 = v9;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10000A194;
  v25 = &unk_100089C80;
  v10 = _Block_copy(&aBlock);
  v11 = v8;

  v12 = [v1 changeObserverForKey:v11 queue:0 block:v10];
  _Block_release(v10);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v13 = OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_featuredPhotosSyncingPreferenceObserver;
  swift_beginAccess();
  sub_100005C48(&aBlock, v0 + v13);
  swift_endAccess();
  v14 = *(v0 + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_internalQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = objc_allocWithZone(NPTODarwinNotificationObserver);

  v17 = String._bridgeToObjectiveC()();
  v26 = sub_10000ECD8;
  v27 = v15;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10000A194;
  v25 = &unk_100089CA8;
  v18 = _Block_copy(&aBlock);
  v19 = [v16 initWithNotificationName:v17 queue:v14 block:v18];

  _Block_release(v18);

  v25 = sub_100009C90(0, &unk_100098690);
  aBlock = v19;
  v20 = OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_photosPreferenceObserver;
  swift_beginAccess();
  sub_100005C48(&aBlock, v0 + v20);
  return swift_endAccess();
}

void sub_10000BF44()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_nrDevice);
    v7 = [objc_opt_self() npto_photosMemoriesSyncCapability];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v1 + 8))(v3, v0);
    v9 = [v6 supportsCapability:isa];

    if (v9 && (v10 = (*((swift_isaMask & *v5) + 0x150))()) != 0)
    {
      v11 = v10;
      v12 = v5;
      [v11 contentProviderDidInvalidateContent:v12];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10000C110()
{
  v1 = v0;
  v2 = sub_100004180(&qword_100098870);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - v4;
  v6 = sub_100004180(&qword_1000986A0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = *(v0 + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_latestSuggestionsObserver);
  (*((swift_isaMask & *v11) + 0x88))(v8);
  sub_100004180(&qword_1000986A8);
  sub_10000EBE8(&qword_1000986B0, &qword_100098870);
  Publisher.compactMap<A>(_:)();
  (*(v3 + 8))(v5, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000EBE8(&qword_1000986B8, &qword_1000986A0);
  Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v12 = objc_opt_self();
  sub_100009C90(0, &unk_100098840);
  v13 = sub_10000E720();
  v14 = [v12 fetchSuggestionsWithOptions:v13];

  (*((swift_isaMask & *v11) + 0xA8))(v14);
  v15 = *(v1 + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_preferenceAccessor);
  v16 = objc_opt_self();
  sub_10000CAF8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v15 device];
  v19 = static PHFetchOptions.npto_defaultAssetFetchOptions(for:)(v18);

  v20 = [v16 fetchAssetsWithLocalIdentifiers:isa options:v19];
  if (v20)
  {
    v21 = *(v1 + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_currentFeaturedPhotosObserver);
    v22 = *((swift_isaMask & *v21) + 0xA8);
    v23 = v21;
    v24 = v20;
    v22(v20);
  }
}

id sub_10000C590@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_10000C59C(uint64_t *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = v5;
    v56 = v3;
    v12 = OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_nrDevice;
    v13 = *(Strong + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_nrDevice);
    v14 = Strong;
    v15 = [objc_opt_self() npto_photosMemoriesSyncCapability];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v9, v6);
    LODWORD(v13) = [v13 supportsCapability:isa];

    if (!v13)
    {
      v20 = v14;
LABEL_27:

      return;
    }

    v17 = objc_opt_self();
    sub_100009C90(0, &unk_100098840);
    v54 = v14;
    v18 = *&v14[v12];
    v19 = static PHFetchOptions.npto_defaultAssetFetchOptions(for:)(v18);

    v20 = [v17 fetchKeyAssetForEachSuggestion:v10 options:v19];
    if (v20)
    {
      v21 = [v20 fetchedObjects];
      v22 = &_swiftEmptyArrayStorage;
      if (v21)
      {
        v23 = v21;
        v53 = v20;
        sub_100009C90(0, &unk_100098610);
        v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v24 >> 62)
        {
          v25 = _CocoaArrayWrapper.endIndex.getter();
          if (v25)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
LABEL_7:
            v52 = v2;
            v57 = &_swiftEmptyArrayStorage;
            sub_10000E5F4(0, v25 & ~(v25 >> 63), 0);
            if (v25 < 0)
            {
              __break(1u);
              return;
            }

            v26 = 0;
            v22 = v57;
            do
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v27 = *(v24 + 8 * v26 + 32);
              }

              v28 = v27;
              v29 = [v27 localIdentifier];
              v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v32 = v31;

              v57 = v22;
              v34 = v22[2];
              v33 = v22[3];
              if (v34 >= v33 >> 1)
              {
                sub_10000E5F4((v33 > 1), v34 + 1, 1);
                v22 = v57;
              }

              ++v26;
              v22[2] = v34 + 1;
              v35 = &v22[2 * v34];
              v35[4] = v30;
              v35[5] = v32;
            }

            while (v25 != v26);

            v2 = v52;
            goto LABEL_20;
          }
        }

LABEL_20:
        v20 = v53;
      }
    }

    else
    {
      v22 = &_swiftEmptyArrayStorage;
    }

    v36 = *(v54 + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_preferenceAccessor);
    v37 = sub_10000CAF8();

    v38 = sub_10000EC30(v37);

    v39 = sub_10000EC30(v22);

    v40 = sub_10000DB78(v38, v39);

    v42 = v55;
    v41 = v56;
    if (v40)
    {
      v43 = v54;
    }

    else
    {
      v44 = sub_100004CA4();
      (*(v41 + 16))(v42, v44, v2);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Latest FeaturedPhotos has been updated. Scheduling FeaturedPhotos updates.", v47, 2u);
      }

      (*(v41 + 8))(v42, v2);
      v48 = v54;
      v49 = *(v54 + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_updateScheduler);
      v50 = *((swift_isaMask & *v49) + 0xE0);
      v43 = v49;
      v50();
    }

    goto LABEL_27;
  }
}

void *sub_10000CAF8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100004180(&qword_1000986C0);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100009BA4(v7, &qword_1000985D0);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10000CBFC()
{
  type metadata accessor for DevicePropertyObserver();
  v1 = *(v0 + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_nrDevice);
  sub_100004180(&unk_100098860);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10006FCE0;
  *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v2 + 40) = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_devicePropertyObserver) = sub_100004308(v1, v2, sub_10000EBBC, v4);

  return _objc_release_x1();
}

void sub_10000CCF0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v29 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_nrDevice);
    v14 = [objc_opt_self() npto_photosMemoriesSyncCapability];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v10, v7);
    v16 = [v13 supportsCapability:isa];

    v17 = sub_100004CA4();
    v18 = *(v1 + 16);
    if (v16)
    {
      v18(v6, v17, v0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "NRDevice capabilities did change. Scheduling FeaturedPhotos updates.", v21, 2u);
      }

      (*(v1 + 8))(v6, v0);
      v22 = *&v12[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_updateScheduler];
      v23 = *((swift_isaMask & *v22) + 0xE0);
      v24 = v22;
      v23();

      v25 = *&v12[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_devicePropertyObserver];
      *&v12[OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_devicePropertyObserver] = 0;
    }

    else
    {
      v18(v4, v17, v0);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "NRDevice capabilities did change, but still not support FeaturedPhotos .", v28, 2u);
      }

      else
      {
      }

      (*(v1 + 8))(v4, v0);
    }
  }
}

id sub_10000D0D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosAppFeaturedPhotosContentProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000D228()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_100009C90(0, &unk_100098840);
  v3 = sub_10000E720();
  v4 = [v2 fetchSuggestionsWithOptions:v3];

  v5 = objc_opt_self();
  v6 = *(v1 + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_nrDevice);
  v7 = v4;
  v8 = static PHFetchOptions.npto_defaultAssetFetchOptions(for:)(v6);
  v9 = [v5 fetchKeyAssetForEachSuggestion:v7 options:v8];

  v10 = *(v1 + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_preferenceAccessor);
  v11 = v9;
  ObjectType = swift_getObjectType();
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = ObjectType;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10000EB0C;
  *(v14 + 24) = v13;
  v24[4] = sub_100009F10;
  v24[5] = v14;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_100006640;
  v24[3] = &unk_100089B90;
  v15 = _Block_copy(v24);
  v16 = v11;
  v17 = v10;

  [v17 performBatchUpdates:v15 synchronizeToRemoteDevice:0];

  _Block_release(v15);
  LODWORD(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    if (v16)
    {
      v19 = *(v1 + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_currentFeaturedPhotosObserver);
      v20 = *((swift_isaMask & *v19) + 0xA8);
      v21 = v16;
      v22 = v19;
      v20(v9);
    }

    v23 = (*((swift_isaMask & *v1) + 0x150))(v18);
    if (v23)
    {
      [v23 contentProviderDidInvalidateContent:v1];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10000D548()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_nrDevice);
  v6 = [objc_opt_self() npto_photosSyncV2Capability];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  LODWORD(v1) = [v5 supportsCapability:isa];

  return v1 ^ 1;
}

void sub_10000D674(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  if (!a1)
  {
    goto LABEL_20;
  }

  v11 = [a1 fetchedObjects];
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v11;
  v44 = v5;
  sub_100009C90(0, &unk_100098610);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = v8;
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_15:

    v16 = &_swiftEmptyArrayStorage;
LABEL_16:
    v5 = v44;
    if (v16[2])
    {
      v26 = sub_100004CA4();
      (*(v5 + 16))(v10, v26, v4);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v45 = v30;
        *v29 = 136315138;
        v31 = Array.description.getter();
        v33 = sub_1000095B0(v31, v32, &v45);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "Setting FeaturedPhotos identifiers to %s", v29, 0xCu);
        sub_100009B58(v30);

        (*(v44 + 8))(v10, v4);
      }

      else
      {

        (*(v5 + 8))(v10, v4);
      }

      isa = Array._bridgeToObjectiveC()().super.isa;

      v38 = String._bridgeToObjectiveC()();
      [a2 setObject:isa forKey:v38];

LABEL_25:
      return;
    }

    v8 = v43;
LABEL_20:
    v34 = sub_100004CA4();
    (*(v5 + 16))(v8, v34, v4);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Removing FeaturedPhotos identifiers", v37, 2u);
    }

    (*(v5 + 8))(v8, v4);
    v38 = String._bridgeToObjectiveC()();
    [a2 removeObjectForKey:v38];
    goto LABEL_25;
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  v43 = v8;
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_5:
  v40 = v10;
  v41 = v4;
  v42 = a2;
  v45 = &_swiftEmptyArrayStorage;
  sub_10000E5F4(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v16 = v45;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v17 localIdentifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v45 = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        sub_10000E5F4((v23 > 1), v24 + 1, 1);
        v16 = v45;
      }

      ++v15;
      v16[2] = v24 + 1;
      v25 = &v16[2 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
    }

    while (v14 != v15);

    v4 = v41;
    a2 = v42;
    v10 = v40;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_10000DB78(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000DD30(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10000E0E0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000DE80()
{
  v1 = v0;
  v2 = *v0;
  sub_100004180(&qword_1000986C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_10000E0E0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000DE80();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000E260();
      goto LABEL_16;
    }

    sub_10000E3BC();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10000E260()
{
  v1 = v0;
  sub_100004180(&qword_1000986C8);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_10000E3BC()
{
  v1 = v0;
  v2 = *v0;
  sub_100004180(&qword_1000986C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

char *sub_10000E5F4(char *a1, int64_t a2, char a3)
{
  result = sub_10000E614(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000E614(char *result, int64_t a2, char a3, char *a4)
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

id sub_10000E720()
{
  v0 = [objc_allocWithZone(PHFetchOptions) init];
  sub_100004180(&unk_100098660);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10006FDF0;
  v2 = objc_allocWithZone(NSSortDescriptor);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithKey:v3 ascending:0];

  *(v1 + 32) = v4;
  sub_100009C90(0, &unk_100098850);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setSortDescriptors:isa];

  sub_100009C90(0, &qword_100098670);
  sub_100004180(&qword_100098678);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10006FCE0;
  *(v6 + 56) = &type metadata for UInt16;
  *(v6 + 64) = &protocol witness table for UInt16;
  *(v6 + 32) = 1;
  v7 = NSPredicate.init(format:_:)();
  [v0 setPredicate:v7];

  [v0 setFetchLimit:10];
  return v0;
}

void *sub_10000E8F0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A204();
  v5 = sub_100004CA4();
  (*(v1 + 16))(v3, v5, v0);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    if (v4)
    {
      v11 = [v6 count];
    }

    else
    {
      v11 = 0;
    }

    v16[1] = v11;
    v17 = v4 == 0;
    sub_100004180(&unk_100098680);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000095B0(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "FeaturedPhotos selected %s assets.", v9, 0xCu);
    sub_100009B58(v10);
  }

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_10000EB14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10000EB2C()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + OBJC_IVAR___NPTOPhotosAppFeaturedPhotosContentProvider_currentFeaturedPhotosObserver);
  v3 = *((swift_isaMask & *v2) + 0x70);
  v4 = v2;
  v5 = v3();

  v6 = *v1;
  *v1 = v5;
}

uint64_t sub_10000EBE8(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000EC30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10000DD30(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10000ED14()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_internalQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100013620;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10000A198;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006640;
  aBlock[3] = &unk_100089E30;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_10000EE78()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_internalQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000135F4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_100009F10;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006640;
  aBlock[3] = &unk_100089D40;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_10000F0DC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10000F13C(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10000A560;
}

char *sub_10000F208(void *a1)
{
  v82 = a1;
  v2 = type metadata accessor for Logger();
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = __chkstk_darwin(v2);
  v71 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v70 = &v67 - v5;
  v69 = type metadata accessor for UUID();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v12 = &v1[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_photosSyncingPreferenceObserver];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v75 = v12;
  v13 = &v1[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_memoriesSyncingPreferenceObserver];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v74 = v13;
  v14 = &v1[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_photosPreferenceObserver];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v76 = v14;
  v77 = OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_devicePropertyObserver;
  *&v1[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_devicePropertyObserver] = 0;
  v81 = OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_internalQueue;
  sub_100009C90(0, &qword_1000983B0);
  v78 = "slideshow.PreferenceChanged";
  static DispatchQoS.unspecified.getter();
  v84[0] = &_swiftEmptyArrayStorage;
  sub_10000A1AC();
  sub_100004180(&unk_1000983C0);
  sub_10000EBE8(&qword_100098DC0, &unk_1000983C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v79 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v80);
  v15 = v1;
  v16 = v81;
  *&v1[v16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_latestMemoryObserver;
  static OS_dispatch_queue.main.getter();
  v18 = objc_allocWithZone(sub_100004180(&qword_1000986D0));
  *&v1[v17] = FetchResultObserver.init(_:)();
  *&v1[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_subscriptions] = &_swiftEmptySetSingleton;
  v19 = OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_delegate;
  swift_unknownObjectWeakInit();
  v84[3] = &type metadata for NanoPhotosCoreFeatures;
  v84[4] = sub_10000AFC8();
  LOBYTE(v84[0]) = 1;
  v20 = isFeatureEnabled(_:)();
  sub_100009B58(v84);
  if ((v20 & 1) == 0)
  {

LABEL_18:
    sub_100009BA4(v75, &qword_1000985D0);
    sub_100009BA4(v74, &qword_1000985D0);
    sub_100009BA4(v76, &qword_1000985D0);

    sub_100009314(&v15[v19]);
    type metadata accessor for PhotosAppMemoriesContentProvider();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v21 = v82;
  if (([v82 relationship] & 2) != 0)
  {
    v52 = sub_100004CA4();
    v53 = v71;
    v54 = v72;
    v55 = v73;
    (*(v72 + 16))(v71, v52, v73);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "SyncedMemory is disabled on Tinker watch.", v58, 2u);
      v16 = v81;
    }

    else
    {
    }

    (*(v54 + 8))(v53, v55);
    goto LABEL_18;
  }

  result = [objc_opt_self() sharedInstance];
  v23 = v73;
  if (!result)
  {
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = [result deviceForIDSDevice:v21];

  if (!v25)
  {
    v59 = sub_100004CA4();
    (*(v72 + 16))(v70, v59, v23);
    v60 = v21;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v80 = v15;
      v64 = v63;
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      *(v64 + 4) = v60;
      *v65 = v21;
      v66 = v60;
      _os_log_impl(&_mh_execute_header, v61, v62, "SyncedMemory is stopped because no valid NRDevice for %@.", v64, 0xCu);
      sub_100009BA4(v65, &qword_1000985D8);
      v23 = v73;

      v15 = v80;
    }

    else
    {
      v66 = v61;
      v61 = v60;
    }

    (*(v72 + 8))(v70, v23);
    v16 = v81;
    goto LABEL_18;
  }

  v26 = *&v15[v16];
  v27 = v16;
  v28 = sub_100004180(&qword_100098720);
  v29 = objc_allocWithZone(v28);
  v30 = v26;
  *&v15[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_currentMemoryAssetsObserver] = FetchResultObserver.init(_:)();
  v31 = *&v15[v27];
  v32 = objc_allocWithZone(v28);
  v33 = v31;
  *&v15[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_currentMemoryKeyAssetsObserver] = FetchResultObserver.init(_:)();
  *&v15[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_nrDevice] = v25;
  v34 = objc_allocWithZone(NPTOPreferencesAccessor);
  v35 = v25;
  v36 = [v34 initWithDevice:v35];
  *&v15[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_preferenceAccessor] = v36;
  type metadata accessor for SyncContentUpdateScheduler();
  *&v15[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_updateScheduler] = sub_100004F80(v36, 0xD000000000000020, 0x800000010006FEB0);
  v37 = type metadata accessor for PhotosAppMemoriesContentProvider();
  v83.receiver = v15;
  v83.super_class = v37;
  v38 = objc_msgSendSuper2(&v83, "init");
  v39 = OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_updateScheduler;
  v40 = *&v38[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_updateScheduler];
  v41 = *((swift_isaMask & *v40) + 0x98);
  v42 = v38;
  v43 = v40;
  v44 = v38;
  v41(v38, &off_100089CD0);

  sub_100010EA0();
  sub_100010900();
  v45 = *&v42[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_nrDevice];
  v46 = [objc_opt_self() npto_photosMemoriesSyncCapability];
  v47 = v67;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v68 + 8))(v47, v69);
  LODWORD(v45) = [v45 supportsCapability:isa];

  if (v45)
  {
    v49 = *&v44[v39];
    v50 = *((swift_isaMask & *v49) + 0xE0);
    v51 = v49;
    v50();
  }

  else
  {
    sub_100011C5C();
  }

  return v44;
}

id sub_10000FC30()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v83 - v8;
  v10 = __chkstk_darwin(v7);
  v88 = &v83 - v11;
  v12 = __chkstk_darwin(v10);
  v87 = &v83 - v13;
  v14 = __chkstk_darwin(v12);
  v86 = &v83 - v15;
  v16 = __chkstk_darwin(v14);
  v84 = &v83 - v17;
  v18 = __chkstk_darwin(v16);
  v85 = &v83 - v19;
  __chkstk_darwin(v18);
  v83 = &v83 - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v1[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_nrDevice];
  v26 = [objc_opt_self() npto_photosMemoriesSyncCapability];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v22 + 8))(v24, v21);
  LODWORD(v24) = [v25 supportsCapability:isa];

  if (!v24)
  {
    v51 = sub_100004CA4();
    (*(v3 + 16))(v6, v51, v2);
    v52 = v1;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      *(v55 + 4) = v25;
      *v56 = v25;
      v57 = v25;
      _os_log_impl(&_mh_execute_header, v53, v54, "SyncedMemory is not a valid capability on %@.", v55, 0xCu);
      sub_100009BA4(v56, &qword_1000985D8);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v28 = v2;
  v29 = *&v1[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_preferenceAccessor];
  if (![v29 npto_appPhotosSyncingEnabled])
  {
    v58 = sub_100004CA4();
    v59 = v2;
    (*(v3 + 16))(v9, v58, v2);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "SyncedMemory is stopped because photos syncing setting is disabled.", v62, 2u);
    }

    v63 = *(v3 + 8);
    v64 = v9;
    goto LABEL_18;
  }

  if (!PLIsFeaturedContentAllowed())
  {
    v65 = sub_100004CA4();
    v66 = v88;
    (*(v3 + 16))(v88, v65, v2);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "SyncedMemory is disabled because Show Featured Content is off in iOS Photos settings.", v69, 2u);
    }

    (*(v3 + 8))(v66, v2);
    return 0;
  }

  if (![v29 npto_memoriesSyncingEnabled])
  {
    v70 = sub_100004CA4();
    v71 = v87;
    (*(v3 + 16))(v87, v70, v2);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v72, v73))
    {
      goto LABEL_30;
    }

    v74 = swift_slowAlloc();
    *v74 = 0;
    v75 = "SyncedMemory is disabled.";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v72, v73, v75, v74, 2u);

    goto LABEL_30;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v31 = result;
  v32 = String._bridgeToObjectiveC()();
  v33 = [v31 applicationIsInstalled:v32];

  if (!v33)
  {
    v76 = sub_100004CA4();
    v71 = v86;
    (*(v3 + 16))(v86, v76, v28);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v72, v73))
    {
      goto LABEL_30;
    }

    v74 = swift_slowAlloc();
    *v74 = 0;
    v75 = "SyncedMemory is disabled because Photos app is not installed.";
    goto LABEL_29;
  }

  v34 = sub_1000105D0();
  if (!v34)
  {
    v77 = sub_100004CA4();
    v71 = v84;
    (*(v3 + 16))(v84, v77, v28);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      v75 = "No SyncedMemory available for the day.";
      goto LABEL_29;
    }

LABEL_30:

    (*(v3 + 8))(v71, v28);
    return 0;
  }

  v35 = v34;
  v36 = sub_10000ED14();
  if (!v36)
  {
LABEL_34:
    v78 = sub_100004CA4();
    v79 = v85;
    v59 = v28;
    (*(v3 + 16))(v85, v78, v28);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "No assets in SyncedMemory.", v82, 2u);
    }

    v63 = *(v3 + 8);
    v64 = v79;
LABEL_18:
    v63(v64, v59);
    return 0;
  }

  v37 = v36;
  if ([v36 count] < 1)
  {

    goto LABEL_34;
  }

  v38 = sub_100004CA4();
  v39 = v83;
  v40 = v28;
  (*(v3 + 16))(v83, v38, v28);
  v41 = v35;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v89 = v35;
    v90 = v45;
    *v44 = 136315138;
    v46 = v35;
    v47 = v41;
    sub_100004180(&qword_100098750);
    v48 = String.init<A>(describing:)();
    v50 = sub_1000095B0(v48, v49, &v90);

    *(v44 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v42, v43, "SyncedMemory selected collection %s.", v44, 0xCu);
    sub_100009B58(v45);

    (*(v3 + 8))(v83, v40);
    return v46;
  }

  else
  {

    (*(v3 + 8))(v39, v28);
    return v35;
  }
}

id sub_1000105D0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = objc_opt_self();
      sub_100004180(&unk_100098860);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_10006FCE0;
      *(v4 + 32) = v9;
      *(v4 + 40) = v10;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v6 = sub_1000130E8();
      v7 = [v3 npto_fetchMemoriesWithLocalIdentifiers:isa options:v6];

      return v7;
    }
  }

  else
  {
    sub_100009BA4(v13, &qword_1000985D0);
  }

  return 0;
}

uint64_t sub_100010900()
{
  v1 = *(v0 + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_preferenceAccessor);
  v2 = NPTOPreferencesAppPhotosSyncingEnabledKey;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_1000136E8;
  v27 = v3;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10000A194;
  v25 = &unk_100089E80;
  v4 = _Block_copy(&aBlock);
  v5 = v2;

  v6 = [v1 changeObserverForKey:v5 queue:0 block:v4];
  _Block_release(v4);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_photosSyncingPreferenceObserver;
  swift_beginAccess();
  sub_100005C48(&aBlock, v0 + v7);
  swift_endAccess();
  v8 = NPTOPreferencesMemoriesSyncingEnabledKey;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_1000136A8;
  v27 = v9;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10000A194;
  v25 = &unk_100089EA8;
  v10 = _Block_copy(&aBlock);
  v11 = v8;

  v12 = [v1 changeObserverForKey:v11 queue:0 block:v10];
  _Block_release(v10);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v13 = OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_memoriesSyncingPreferenceObserver;
  swift_beginAccess();
  sub_100005C48(&aBlock, v0 + v13);
  swift_endAccess();
  v14 = *(v0 + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_internalQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = objc_allocWithZone(NPTODarwinNotificationObserver);

  v17 = String._bridgeToObjectiveC()();
  v26 = sub_1000136E8;
  v27 = v15;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10000A194;
  v25 = &unk_100089ED0;
  v18 = _Block_copy(&aBlock);
  v19 = [v16 initWithNotificationName:v17 queue:v14 block:v18];

  _Block_release(v18);

  v25 = sub_100009C90(0, &unk_100098690);
  aBlock = v19;
  v20 = OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_photosPreferenceObserver;
  swift_beginAccess();
  sub_100005C48(&aBlock, v0 + v20);
  return swift_endAccess();
}

void sub_100010CD4()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_nrDevice);
    v7 = [objc_opt_self() npto_photosMemoriesSyncCapability];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v1 + 8))(v3, v0);
    v9 = [v6 supportsCapability:isa];

    if (v9 && (v10 = (*((swift_isaMask & *v5) + 0x148))()) != 0)
    {
      v11 = v10;
      v12 = v5;
      [v11 contentProviderDidInvalidateContent:v12];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100010EA0()
{
  v1 = v0;
  v2 = sub_100004180(&qword_100098870);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24[2] = v24 - v6;
  __chkstk_darwin(v5);
  v24[1] = v24 - v6;
  v7 = sub_100004180(&qword_100098878);
  v8 = *(v7 - 8);
  v25 = v7;
  v26 = v8;
  v9 = __chkstk_darwin(v7);
  v11 = v24 - v10;
  __chkstk_darwin(v9);
  v12 = v24 - v6;
  v13 = sub_100004180(&qword_1000986A0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v24 - v16;
  v18 = *(v1 + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_latestMemoryObserver);
  (*((swift_isaMask & *v18) + 0x88))(v15);
  sub_100004180(&qword_1000986A8);
  v24[0] = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10000EBE8(&qword_100098880, &qword_100098870);
  Publisher.compactMap<A>(_:)();
  (*(v3 + 8))(v12, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000EBE8(&qword_100098888, &qword_1000986A0);
  Publisher<>.sink(receiveValue:)();

  (*(v14 + 8))(v17, v13);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v19 = objc_opt_self();
  v20 = sub_1000130E8();
  v21 = [v19 npto_fetchMemoriesWithOptions:v20];

  (*((swift_isaMask & *v18) + 0xA8))(v21);
  v22 = (*((swift_isaMask & **(v1 + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_currentMemoryAssetsObserver)) + 0x88))();
  (*((swift_isaMask & **(v1 + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_currentMemoryKeyAssetsObserver)) + 0x88))(v22);
  sub_10000EBE8(&qword_100098890, &qword_100098870);
  Publishers.Merge.init(_:_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000EBE8(&qword_100098898, &qword_100098878);
  v23 = v25;
  Publisher<>.sink(receiveValue:)();

  (*(v26 + 8))(v11, v23);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_100012108();
}

void sub_100011478(void **a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v13 = *(Strong + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_nrDevice);
  v14 = [objc_opt_self() npto_photosMemoriesSyncCapability];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v6);
  v16 = [v13 supportsCapability:isa];

  if (!v16)
  {
    goto LABEL_29;
  }

  v17 = [v10 fetchedObjects];
  if (!v17)
  {
    v22 = 0;
    goto LABEL_13;
  }

  sub_100009C90(0, &unk_1000988A0);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

LABEL_12:

    v22 = 0;
    v17 = 0;
    goto LABEL_13;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v19 = *(v18 + 32);
  }

  v20 = v19;

  v21 = [v20 localIdentifier];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v23;

LABEL_13:
  v24 = sub_1000105D0();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 firstObject];

    if (v26)
    {
      v27 = [v26 localIdentifier];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v29;

      if (!v17)
      {
LABEL_23:
        if (v26)
        {
          goto LABEL_24;
        }

LABEL_29:

        return;
      }
    }

    else
    {
      v28 = 0;
      if (!v17)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v28 = 0;
    v26 = 0;
    if (!v17)
    {
      goto LABEL_23;
    }
  }

  if (v26)
  {
    if (v22 == v28 && v17 == v26)
    {

      return;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v37 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

LABEL_24:

LABEL_25:
  v30 = sub_100004CA4();
  (*(v3 + 16))(v5, v30, v2);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Latest memory has been updated. Scheduling SyncedMemory updates.", v33, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v34 = *&v12[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_updateScheduler];
  v35 = *((swift_isaMask & *v34) + 0xE0);
  v36 = v34;
  v35();
}

void sub_100011950()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_nrDevice);
    v11 = [objc_opt_self() npto_photosMemoriesSyncCapability];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v13 = [v10 supportsCapability:isa];

    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = sub_100004CA4();
    (*(v1 + 16))(v3, v14, v0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "SyncedMemory assets have been updated. Invalidating content.", v17, 2u);
    }

    v18 = (*(v1 + 8))(v3, v0);
    v19 = (*((swift_isaMask & *v9) + 0x148))(v18);
    if (v19)
    {
      v20 = v19;
      v21 = v9;
      [v20 contentProviderDidInvalidateContent:v21];

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_7:
    }
  }
}

uint64_t sub_100011C5C()
{
  type metadata accessor for DevicePropertyObserver();
  v1 = *(v0 + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_nrDevice);
  sub_100004180(&unk_100098860);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10006FCE0;
  *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v2 + 40) = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_devicePropertyObserver) = sub_100004308(v1, v2, sub_1000136A0, v4);

  return _objc_release_x1();
}

void sub_100011D50()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v29 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_nrDevice);
    v14 = [objc_opt_self() npto_photosMemoriesSyncCapability];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v10, v7);
    v16 = [v13 supportsCapability:isa];

    v17 = sub_100004CA4();
    v18 = *(v1 + 16);
    if (v16)
    {
      v18(v6, v17, v0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "NRDevice capabilities did change. Scheduling SyncedMemory updates.", v21, 2u);
      }

      (*(v1 + 8))(v6, v0);
      v22 = *&v12[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_updateScheduler];
      v23 = *((swift_isaMask & *v22) + 0xE0);
      v24 = v22;
      v23();

      v25 = *&v12[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_devicePropertyObserver];
      *&v12[OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_devicePropertyObserver] = 0;
    }

    else
    {
      v18(v4, v17, v0);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "NRDevice capabilities did change, but still not support SyncedMemory .", v28, 2u);
      }

      else
      {
      }

      (*(v1 + 8))(v4, v0);
    }
  }
}

void sub_100012108()
{
  v1 = v0;
  v2 = sub_1000105D0();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v2 firstObject];

  if (!v4)
  {
    return;
  }

  v5 = *(v1 + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_currentMemoryAssetsObserver);
  v6 = *(v1 + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_nrDevice);
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 BOOLForKey:v8];

  if (v9)
  {
    v10 = objc_opt_self();
    v11 = sub_10001328C(v6);
    v12 = [v10 fetchExtendedCuratedAssetsInAssetCollection:v4 options:v11];

    if (!v12)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    v14 = objc_opt_self();
    v15 = sub_10001328C(v6);
    v12 = [v14 fetchReducedCuratedAssetsInMemory:v13 options:v15];

    if (!v12)
    {
LABEL_13:
      __break(1u);
      return;
    }
  }

  (*((swift_isaMask & *v5) + 0xA8))(v12);

  v16 = *(v1 + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_currentMemoryKeyAssetsObserver);
  v17 = objc_opt_self();
  sub_100009C90(0, &unk_100098840);
  v18 = static PHFetchOptions.npto_defaultAssetFetchOptions(for:)(v6);
  sub_100004180(&unk_100098660);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10006FDF0;
  v20 = objc_allocWithZone(NSSortDescriptor);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 initWithKey:v21 ascending:1];

  *(v19 + 32) = v22;
  sub_100009C90(0, &unk_100098850);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 setSortDescriptors:isa];

  [v18 setFetchLimit:1];
  v24 = [v17 fetchKeyCuratedAssetInAssetCollection:v4 referenceAsset:0 options:v18];

  if (!v24)
  {
    __break(1u);
    goto LABEL_13;
  }

  (*((swift_isaMask & *v16) + 0xA8))(v24);
}

id sub_1000124EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosAppMemoriesContentProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10001264C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_1000130E8();
  v8 = [v6 npto_fetchMemoriesWithOptions:v7];

  v9 = *(v1 + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_preferenceAccessor);
  v10 = sub_1000105D0();
  v38 = v3;
  v39 = v10;
  if (v10 && (v11 = [v10 firstObject]) != 0)
  {
    v12 = v11;
    v13 = [v11 localIdentifier];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [v8 firstObject];
  if (!v17)
  {
    if (v16)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

  v18 = v17;
  v19 = [v17 localIdentifier];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (!v16)
  {
    if (v22)
    {
LABEL_17:

      goto LABEL_18;
    }

LABEL_23:
    v33 = sub_100004CA4();
    v34 = v38;
    (*(v38 + 16))(v5, v33, v2);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Skipped updating SyncedMemory because there is no change.", v37, 2u);
    }

    else
    {
    }

    (*(v34 + 8))(v5, v2);
    return;
  }

  if (!v22)
  {
    goto LABEL_17;
  }

  if (v14 == v20 && v16 == v22)
  {

    goto LABEL_23;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_23;
  }

LABEL_18:
  v25 = v8;
  ObjectType = swift_getObjectType();
  v27 = swift_allocObject();
  v27[2] = v8;
  v27[3] = v9;
  v27[4] = ObjectType;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_100013618;
  *(v28 + 24) = v27;
  aBlock[4] = sub_10000A198;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006640;
  aBlock[3] = &unk_100089DB8;
  v29 = _Block_copy(aBlock);
  v30 = v25;
  v31 = v9;

  [v31 performBatchUpdates:v29 synchronizeToRemoteDevice:0];

  _Block_release(v29);
  LODWORD(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
  }

  else
  {
    sub_100012108();
    v32 = (*((swift_isaMask & *v1) + 0x148))();
    if (v32)
    {
      [v32 contentProviderDidInvalidateContent:v1];
      swift_unknownObjectRelease();
    }
  }
}

id sub_100012AF4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_nrDevice);
  v6 = [objc_opt_self() npto_photosSyncV2Capability];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  v8 = [v5 supportsCapability:isa];

  return v8;
}

uint64_t sub_100012C1C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___NPTOPhotosAppMemoriesContentProvider_nrDevice);
  v6 = [objc_opt_self() npto_photosSyncV2Capability];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  LODWORD(v1) = [v5 supportsCapability:isa];

  return v1 ^ 1;
}

void sub_100012D48(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - v10;
  if (v9 && (v12 = [v9 firstObject]) != 0)
  {
    v13 = v12;
    v14 = [v12 localIdentifier];

    v15 = v14;
    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = String._bridgeToObjectiveC()();
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v19 = sub_100004CA4();
    (*(v5 + 16))(v8, v19, v4);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v31 = a2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      v25 = sub_1000095B0(v16, v18, &v32);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Setting SyncedMemory identifier to %s", v23, 0xCu);
      sub_100009B58(v24);

      a2 = v31;
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    v30 = String._bridgeToObjectiveC()();
    [a2 setObject:v15 forKey:v30];
  }

  else
  {
    v26 = sub_100004CA4();
    (*(v5 + 16))(v11, v26, v4);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Removing SyncedMemory identifier", v29, 2u);
    }

    (*(v5 + 8))(v11, v4);
    v30 = String._bridgeToObjectiveC()();
    [a2 removeObjectForKey:v30];
  }
}

id sub_1000130E8()
{
  v0 = [objc_allocWithZone(PHFetchOptions) init];
  [v0 setFetchLimit:1];
  [v0 setIncludePendingMemories:1];
  sub_100004180(&unk_100098660);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10006FDF0;
  v2 = objc_allocWithZone(NSSortDescriptor);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithKey:v3 ascending:0];

  *(v1 + 32) = v4;
  sub_100009C90(0, &unk_100098850);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setSortDescriptors:isa];

  sub_100009C90(0, &qword_100098670);
  v6 = NSPredicate.init(format:_:)();
  [v0 setPredicate:v6];

  return v0;
}

id sub_10001328C(void *a1)
{
  sub_100009C90(0, &unk_100098840);
  v2 = static PHFetchOptions.npto_defaultAssetFetchOptions(for:)(a1);
  sub_100004180(&unk_100098660);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10006FDF0;
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithKey:v5 ascending:1];

  *(v3 + 32) = v6;
  sub_100009C90(0, &unk_100098850);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setSortDescriptors:isa];

  [v2 setFetchLimit:50];
  return v2;
}

void *sub_1000133CC(uint64_t (*a1)(uint64_t), const char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1(v6);
  v10 = sub_100004CA4();
  (*(v5 + 16))(v8, v10, v4);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v21[0] = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    if (v9)
    {
      v16 = [v11 count];
    }

    else
    {
      v16 = 0;
    }

    v21[1] = v16;
    v22 = v9 == 0;
    sub_100004180(&unk_100098680);
    v17 = String.init<A>(describing:)();
    v19 = sub_1000095B0(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, v21[0], v14, 0xCu);
    sub_100009B58(v15);
  }

  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_100013600(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001362C(void *a1)
{
  v2 = *(v1 + 16);
  *v2 = (*((swift_isaMask & **(*(v1 + 24) + *a1)) + 0x70))();

  return _objc_release_x1();
}

uint64_t sub_10001373C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

void sub_10001382C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

Swift::Int sub_100013894()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100013908()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void *sub_100013974(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  swift_defaultActor_initialize();
  v3[17] = 0;
  v3[18] = 0;
  v3[19] = 0;
  v3[22] = 0;
  v3[23] = 0;
  v3[21] = 0;
  v3[14] = a1;
  v3[15] = a2;
  v9 = type metadata accessor for IDSMessagingService();
  swift_allocObject();
  v10 = a1;
  v11 = a2;
  v12 = v10;
  v13 = sub_100024698(v11, v12);
  v32[3] = v9;
  v32[4] = &off_10008A608;
  v32[0] = v13;
  type metadata accessor for InitialSyncServerController();
  v14 = swift_allocObject();
  v15 = sub_10001AF80(v32, v9);
  __chkstk_darwin(v15);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v20 = v12;

  v21 = sub_10001CF2C(v20, v19, v14);
  sub_100009B58(v32);
  v3[16] = v13;
  v3[20] = v21;
  v22 = type metadata accessor for ServerDeviceController();
  v31.receiver = v3;
  v31.super_class = v22;

  v23 = objc_msgSendSuper2(&v31, "init");
  v24 = sub_100009C90(0, &qword_100098AE8);
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v24;
  v26[5] = &unk_100070098;
  v26[6] = v23;
  v27 = v23;
  v28 = sub_10001C888(0, 0, v8, &unk_1000700A0, v26);

  v27[22] = v28;

  return v27;
}

uint64_t sub_100013CAC()
{
  v0[5] = &type metadata for SensitiveContentAnalysisFeature;
  v0[6] = sub_10001D3FC();
  v1 = swift_allocObject();
  v0[2] = v1;
  *(v1 + 16) = "SensitiveContentAnalysis";
  *(v1 + 24) = 24;
  *(v1 + 32) = 2;
  *(v1 + 40) = "spa_detection";
  *(v1 + 48) = 13;
  *(v1 + 56) = 2;
  v2 = isFeatureEnabled(_:)();
  sub_100009B58((v0 + 2));
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_100013E18;

    return static SensitiveContentPolicy.prefetch()();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_100014078;

    return sub_10001473C();
  }
}

uint64_t sub_100013E18()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100014170;
  }

  else
  {
    v2 = sub_100013F2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013F2C()
{
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004D08(v1, qword_10009C6A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Sensitive] Successfully prefetched sensitive policy", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_100014078;

  return sub_10001473C();
}

uint64_t sub_100014078()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100014170()
{
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004D08(v1, qword_10009C6A8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Sensitive] Error prefetching sensitive policy %@", v4, 0xCu);
    sub_100009BA4(v5, &qword_1000985D8);
  }

  else
  {
  }

  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_100014078;

  return sub_10001473C();
}

uint64_t sub_100014390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_100004180(&qword_100098AE0);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100014430, a4, 0);
}

uint64_t sub_100014430()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_100009C90(0, &qword_100098AE8);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = &unk_1000701D8;
  v5[6] = v1;

  *(v1 + 184) = sub_10001C888(0, 0, v2, &unk_1000701E0, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001458C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001EDC4;

  return sub_100015FD0();
}

uint64_t sub_10001463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_10003F3C4(0, 0, v8, a4, v10);
}

uint64_t sub_10001475C()
{
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004D08(v1, qword_10009C6A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[DeviceController] Finishing setup work after first unlock.", v4, 2u);
  }

  v5 = v0[5];

  v6 = *(v5 + 112);
  v0[6] = v6;
  v7 = [objc_allocWithZone(NPTOCompanionSyncDeviceContentController) initWithDevice:v6];
  v0[7] = v7;
  [v7 setDelegate:v5];
  type metadata accessor for SyncSessionMessageHandler();
  v8 = swift_allocObject();
  v0[8] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = *(v5 + 128);
  v0[9] = v9;
  v10 = swift_allocObject();
  v0[10] = v10;
  *(v10 + 16) = &unk_100070138;
  *(v10 + 24) = v8;
  v11 = v6;
  v12 = v7;

  return _swift_task_switch(sub_100014928, v9, 0);
}

uint64_t sub_100014928()
{
  v5 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v4[3] = sub_100004180(&qword_100098B60);
  v4[4] = &off_10008A880;
  v4[0] = &unk_100070148;
  v4[1] = v1;
  swift_beginAccess();

  sub_10001ADA4(v4, 2);
  swift_endAccess();

  return _swift_task_switch(sub_100014A08, v2, 0);
}

uint64_t sub_100014A08()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = swift_allocObject();
  v0[11] = v3;
  *(v3 + 16) = &unk_100070160;
  *(v3 + 24) = v1;

  return _swift_task_switch(sub_100014AAC, v2, 0);
}

uint64_t sub_100014AAC()
{
  v5 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v4[3] = sub_100004180(&qword_100098B68);
  v4[4] = &off_10008A880;
  v4[0] = &unk_100070170;
  v4[1] = v1;
  swift_beginAccess();

  sub_10001ADA4(v4, 3);
  swift_endAccess();

  return _swift_task_switch(sub_100014B90, v2, 0);
}

uint64_t sub_100014B90()
{
  if ([*(v0 + 48) isTinkerPaired])
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    v3 = *(v0 + 40);
    v4 = v3[17];
    v3[17] = v1;
    v5 = v1;

    v3[18] = v2;

    if (v3[20])
    {
      sub_100023FC8();
    }

    v6 = *(v0 + 56);
    v7 = *(v0 + 40);

    *(v7 + 176) = 0;

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 72);
    v11 = [objc_allocWithZone(type metadata accessor for WatchAssetsImportController()) init];
    *(v0 + 96) = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v13 = swift_allocObject();
    *(v0 + 104) = v13;
    *(v13 + 16) = &unk_100070188;
    *(v13 + 24) = v12;
    v14 = v11;

    return _swift_task_switch(sub_100014D0C, v10, 0);
  }
}

uint64_t sub_100014D0C()
{
  v5 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  v4[3] = sub_100004180(&qword_100098B70);
  v4[4] = &off_10008A870;
  v4[0] = &unk_100070198;
  v4[1] = v1;
  swift_beginAccess();

  sub_10001ADA4(v4, 4);
  swift_endAccess();

  return _swift_task_switch(sub_100014DF0, v2, 0);
}

uint64_t sub_100014DF0()
{
  v1 = v0[5];
  v2 = *(v1 + 152);
  *(v1 + 152) = v0[12];

  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v5[17];
  v5[17] = v3;
  v7 = v3;

  v5[18] = v4;

  if (v5[20])
  {
    sub_100023FC8();
  }

  v8 = v0[7];
  v9 = v0[5];

  *(v9 + 176) = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_100014EBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = swift_task_alloc();
  *(v2 + 128) = v4;
  *v4 = v2;
  v4[1] = sub_10001EE40;

  return sub_100018CA4(v2 + 16, a2);
}

uint64_t sub_100014F60(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 120) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 128) = v5;
  *v5 = v3;
  v5[1] = sub_100015060;

  return v7(v3 + 16, a2);
}

uint64_t sub_100015060()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 120);
    v5 = *(v2 + 16);
    v6 = *(v2 + 48);
    *(v4 + 16) = *(v2 + 32);
    *(v4 + 32) = v6;
    *v4 = v5;
    v7 = *(v2 + 64);
    v8 = *(v2 + 80);
    v9 = *(v2 + 96);
    *(v4 + 96) = *(v2 + 112);
    *(v4 + 64) = v8;
    *(v4 + 80) = v9;
    *(v4 + 48) = v7;
  }

  v10 = *(v3 + 8);

  return v10();
}

uint64_t sub_100015190(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = swift_task_alloc();
  *(v2 + 128) = v4;
  *v4 = v2;
  v4[1] = sub_10001EE40;

  return sub_1000197A8(v2 + 16, a2);
}

uint64_t sub_100015234(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 120) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 128) = v5;
  *v5 = v3;
  v5[1] = sub_10001EE40;

  return v7(v3 + 16, a2);
}

uint64_t sub_100015334(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001EDC4;

  return sub_10004577C(a1);
}

uint64_t sub_1000153CC(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000154C0;

  return v6(v3);
}

uint64_t sub_1000154C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000155D4()
{
  v1 = *(v0[2] + 176);
  v0[3] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    v3 = sub_100004180(&unk_100098B20);
    *v2 = v0;
    v2[1] = sub_10001571C;

    return Task.value.getter(v3, v1, &type metadata for () + 8, v3, &protocol self-conformance witness table for Error);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1000158F0;

    return sub_100015A78();
  }
}

uint64_t sub_10001571C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 16);

    v4 = sub_1000159E8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 16);
    v4 = sub_100015858;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100015858()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000158F0;

  return sub_100015A78();
}

uint64_t sub_1000158F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000159E8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000158F0;

  return sub_100015A78();
}

uint64_t sub_100015A98()
{
  v1 = objc_allocWithZone(NPTOTransaction);
  v2 = String._bridgeToObjectiveC()();
  v0[3] = [v1 initWithDescription:v2];

  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100004D08(v3, qword_10009C6A8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;

    _os_log_impl(&_mh_execute_header, v4, v5, "[DeviceController] Resuming device controller: %@.", v7, 0xCu);
    sub_100009BA4(v8, &qword_1000985D8);
  }

  v9 = v0[2];

  v10 = *(v9 + 128);
  v0[4] = v10;

  return _swift_task_switch(sub_100015C78, v10, 0);
}

uint64_t sub_100015C78()
{
  sub_10002491C();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100015D10;

  return sub_100016434();
}

uint64_t sub_100015D10()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_100015E50;

  return sub_10001735C();
}

uint64_t sub_100015E50()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100015F60, v1, 0);
}

uint64_t sub_100015F60()
{
  v1 = v0[3];
  *(v0[2] + 184) = 0;

  v2 = v0[1];

  return v2();
}

uint64_t sub_100015FF0()
{
  v1 = v0[2];
  v2 = objc_allocWithZone(NPTOTransaction);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithDescription:v3];
  v0[3] = v4;

  if (*(v1 + 184))
  {

    sub_100004180(&unk_100098B20);
    Task.cancel()();

    *(v1 + 184) = 0;

    v5 = v0[1];

    return v5();
  }

  else
  {
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v0[4] = sub_100004D08(v7, qword_10009C6A8);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[2];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v10;
      *v12 = v10;

      _os_log_impl(&_mh_execute_header, v8, v9, "[DeviceController] Pausing device controller: %@.", v11, 0xCu);
      sub_100009BA4(v12, &qword_1000985D8);
    }

    v13 = v0[2];

    v14 = *(v13 + 128);
    v0[5] = v14;

    return _swift_task_switch(sub_100016274, v14, 0);
  }
}

uint64_t sub_100016274()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 40);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v3;
    *v5 = v3;

    _os_log_impl(&_mh_execute_header, v1, v2, "[Messaging] Pausing messaging service %@", v4, 0xCu);
    sub_100009BA4(v5, &qword_1000985D8);
  }

  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  [*(v6 + 120) removeDelegate:v6];

  return _swift_task_switch(sub_1000163D4, v7, 0);
}

uint64_t sub_1000163D4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016434()
{
  v1[29] = v0;
  v1[30] = type metadata accessor for SyncSignal(0);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = type metadata accessor for SyncLibraryInfoResponse(0);
  v1[34] = swift_task_alloc();

  return _swift_task_switch(sub_100016504, v0, 0);
}

uint64_t sub_100016504()
{
  v1 = *(v0[29] + 136);
  v0[35] = v1;
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v1;
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_10001661C;
  v3 = v0[34];

  return sub_10001F968(v3);
}

uint64_t sub_10001661C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_10001716C;
  }

  else
  {
    v4 = sub_100016748;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100016748()
{
  v30 = v0;
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  UnknownStorage.init()();
  v5 = (v3 + *(v4 + 20));
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + *(v2 + 28));
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v0 + 304) = v8;
  *(v0 + 312) = v9;
  v10 = *(v0 + 296);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  *v5 = v8;
  v5[1] = v9;
  sub_10001DE70(v11, v12, type metadata accessor for SyncSignal);

  sub_100031560(v12, v0 + 16);
  if (v10)
  {
    v13 = *(v0 + 280);
    v14 = *(v0 + 256);
    sub_10001DED8(*(v0 + 272), type metadata accessor for SyncLibraryInfoResponse);

    sub_10001DED8(v14, type metadata accessor for SyncSignal);
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100004D08(v15, qword_10009C6A8);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      *(v0 + 224) = v10;
      swift_errorRetain();
      sub_100004180(&unk_100098B20);
      v20 = String.init<A>(describing:)();
      v22 = sub_1000095B0(v20, v21, &v29);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "[DeviceController] Failed to send sync signal to watch due to %s.", v18, 0xCu);
      sub_100009B58(v19);
    }

    else
    {
    }

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v23 = *(*(v0 + 232) + 128);
    v24 = *(v0 + 80);
    *(v0 + 168) = *(v0 + 64);
    *(v0 + 184) = v24;
    *(v0 + 200) = *(v0 + 96);
    v25 = *(v0 + 32);
    *(v0 + 120) = *(v0 + 16);
    v26 = *(v0 + 48);
    *(v0 + 320) = v23;
    *(v0 + 328) = v26;
    *(v0 + 360) = *(v0 + 56);
    *(v0 + 216) = *(v0 + 112);
    *(v0 + 136) = v25;
    *(v0 + 152) = *(v0 + 48);

    return _swift_task_switch(sub_100016A7C, v23, 0);
  }
}

uint64_t sub_100016A7C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 320);
  v3 = swift_task_alloc();
  *(v0 + 336) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 120;
  v4 = swift_task_alloc();
  *(v0 + 344) = v4;
  *v4 = v0;
  v4[1] = sub_100016B60;
  v5 = *(v0 + 328);

  return withCancellationHandlingContinuation<A>(timeout:_:)(v4, v5, v1 & 1, sub_10001DF38, v3, &type metadata for () + 8);
}

uint64_t sub_100016B60()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = sub_100016ECC;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_100016C88;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100016C88()
{
  v18 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004D08(v1, qword_10009C6A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 304);
    v4 = *(v0 + 312);
    v6 = *(v0 + 272);
    v7 = *(v0 + 280);
    v8 = *(v0 + 256);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;

    v11 = sub_1000095B0(v5, v4, &v17);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "[DeviceController] Sent sync signal with hash %s to watch.", v9, 0xCu);
    sub_100009B58(v10);

    sub_10001DF40(v0 + 16);
    sub_10001DED8(v6, type metadata accessor for SyncLibraryInfoResponse);
    v12 = v8;
  }

  else
  {
    v13 = *(v0 + 272);
    v14 = *(v0 + 256);

    sub_10001DF40(v0 + 16);
    sub_10001DED8(v13, type metadata accessor for SyncLibraryInfoResponse);
    v12 = v14;
  }

  sub_10001DED8(v12, type metadata accessor for SyncSignal);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100016ECC()
{
  v1 = *(v0 + 232);

  return _swift_task_switch(sub_100016F38, v1, 0);
}

uint64_t sub_100016F38()
{
  v15 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);

  sub_10001DF40(v0 + 16);
  sub_10001DED8(v1, type metadata accessor for SyncLibraryInfoResponse);
  sub_10001DED8(v2, type metadata accessor for SyncSignal);
  v3 = *(v0 + 352);
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100004D08(v4, qword_10009C6A8);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v0 + 224) = v3;
    swift_errorRetain();
    sub_100004180(&unk_100098B20);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000095B0(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[DeviceController] Failed to send sync signal to watch due to %s.", v7, 0xCu);
    sub_100009B58(v8);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10001716C()
{
  v13 = v0;

  v1 = *(v0 + 296);
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100004D08(v2, qword_10009C6A8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v0 + 224) = v1;
    swift_errorRetain();
    sub_100004180(&unk_100098B20);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000095B0(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[DeviceController] Failed to send sync signal to watch due to %s.", v5, 0xCu);
    sub_100009B58(v6);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10001735C()
{
  *(v1 + 40) = v0;
  type metadata accessor for SyncLibraryInfoResponse(0);
  *(v1 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000173EC, v0, 0);
}

uint64_t sub_1000173EC()
{
  v1 = *(v0[5] + 136);
  v0[7] = v1;
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v1;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100017504;
  v3 = v0[6];

  return sub_10001F968(v3);
}

uint64_t sub_100017504()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1000184E8;
  }

  else
  {
    v4 = sub_100017630;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100017630()
{
  v1 = v0[9];
  sub_100043338();
  v0[10] = v2;
  if (v1)
  {
    v3 = v0[7];
    sub_10001DED8(v0[6], type metadata accessor for SyncLibraryInfoResponse);

    v0[2] = v1;
    sub_100004180(&unk_100098B20);
    sub_100009C90(0, &qword_100098F80);
    result = swift_dynamicCast();
    if (!result)
    {
      return result;
    }

    v7 = v0[3];
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100004D08(v8, qword_10009C6A8);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "[DeviceController] Failed to persist collectionTargetMap to %@.", v12, 0xCu);
      sub_100009BA4(v13, &qword_1000985D8);

      v9 = v10;
      v10 = v14;
    }

    goto LABEL_10;
  }

  v4 = v2;
  sub_1000435E8();
  v0[11] = v5;
  v16 = v0[5];
  v17 = [v4 collectionTargetMapWithLibrary:v5];
  v0[12] = sub_100009C90(0, &qword_100098B30);
  v0[13] = sub_100004180(&qword_100098B38);
  v0[14] = sub_10001DE08();
  v0[15] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = *(v16 + 168);
  if (v18)
  {
    v19 = v18;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v19 setCollectionTargetMap:isa];

    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100004D08(v21, qword_10009C6A8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[10];
    v26 = v0[11];
    v27 = v0[6];
    v28 = v0[7];
    if (v24)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "[DeviceController] Persisted collectionTargetMap.", v29, 2u);
    }

    else
    {
    }

    sub_10001DED8(v27, type metadata accessor for SyncLibraryInfoResponse);
LABEL_10:

    v15 = v0[1];

    return v15();
  }

  v0[16] = sub_100009C90(0, &unk_100098C30);

  return _swift_task_switch(sub_100017ADC, 0, 0);
}

uint64_t sub_100017ADC()
{
  v1 = v0[16];
  v2 = swift_task_alloc();
  v0[17] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[18] = v3;
  v4 = sub_100004180(&qword_100098B10);
  *v3 = v0;
  v3[1] = sub_100017BE0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 4, 0, 0, 0x6168735F6F74706ELL, 0xEB00000000646572, sub_10001EE44, v2, v4);
}

uint64_t sub_100017BE0()
{

  return _swift_task_switch(sub_100017CF8, 0, 0);
}

uint64_t sub_100017CF8()
{
  v1 = v0[5];
  v0[19] = v0[4];
  return _swift_task_switch(sub_100017D18, v1, 0);
}

uint64_t sub_100017D18()
{
  if (v0[19])
  {
    v1 = *(v0[5] + 112);
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_10001808C;

    return sub_1000438E0(v1);
  }

  else
  {
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100004D08(v4, qword_10009C6A8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[5];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = *(v7 + 112);
      *(v8 + 4) = v10;
      *v9 = v10;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "[DeviceController] Failed to create libraryInfo because no NRDevice is found for %@.", v8, 0xCu);
      sub_100009BA4(v9, &qword_1000985D8);
    }

    v12 = v0[5];

    v13 = *(v12 + 168);
    if (v13)
    {
      v14 = v13;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v14 setCollectionTargetMap:isa];
    }

    else
    {
    }

    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    sub_100004D08(v4, qword_10009C6A8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[6];
    v22 = v0[7];
    if (v18)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[DeviceController] Persisted collectionTargetMap.", v23, 2u);
    }

    else
    {

      v16 = v22;
    }

    sub_10001DED8(v21, type metadata accessor for SyncLibraryInfoResponse);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_10001808C(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 40);
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1000181BC, v3, 0);
}

uint64_t sub_1000181BC()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[5];
    v3 = [objc_allocWithZone(NPTOLibraryInfo) initWithDevice:v1];

    v4 = *(v2 + 168);
    *(v2 + 168) = v3;
  }

  else
  {
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100004D08(v5, qword_10009C6A8);

    v4 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v6))
    {
      v7 = v0[5];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = *(v7 + 112);
      *(v8 + 4) = v10;
      *v9 = v10;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v4, v6, "[DeviceController] Failed to create libraryInfo because no NRDevice is found for %@.", v8, 0xCu);
      sub_100009BA4(v9, &qword_1000985D8);
    }
  }

  v12 = v0[5];

  v13 = *(v12 + 168);
  if (v13)
  {
    v14 = v13;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v14 setCollectionTargetMap:isa];
  }

  else
  {
  }

  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100004D08(v16, qword_10009C6A8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[10];
  v21 = v0[11];
  v22 = v0[6];
  v23 = v0[7];
  if (v19)
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "[DeviceController] Persisted collectionTargetMap.", v24, 2u);
  }

  else
  {

    v17 = v23;
  }

  sub_10001DED8(v22, type metadata accessor for SyncLibraryInfoResponse);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1000184E8()
{
  *(v0 + 16) = *(v0 + 72);
  sub_100004180(&unk_100098B20);
  sub_100009C90(0, &qword_100098F80);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *(v0 + 24);
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100004D08(v3, qword_10009C6A8);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "[DeviceController] Failed to persist collectionTargetMap to %@.", v7, 0xCu);
      sub_100009BA4(v8, &qword_1000985D8);

      v4 = v5;
      v5 = v9;
    }

    v10 = *(v0 + 8);

    return v10();
  }

  return result;
}

id *sub_10001872C()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10001879C()
{
  sub_10001872C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100018818()
{
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004D08(v1, qword_10009C6A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[DeviceController] Sync content was invalidated, sending sync signal to watch.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100018964;

  return sub_100016434();
}

uint64_t sub_100018964()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100018AA4;

  return sub_10001735C();
}

uint64_t sub_100018AA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100018CA4(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v3[21] = type metadata accessor for SyncLibraryInfoResponse(0);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for SyncLibraryInfoRequest(0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_100018D9C, 0, 0);
}

uint64_t sub_100018D9C()
{
  v21 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[19];
  v3 = type metadata accessor for Logger();
  v0[29] = sub_100004D08(v3, qword_10009C6A8);
  sub_10001DE70(v2, v1, type metadata accessor for SyncLibraryInfoRequest);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  if (v6)
  {
    v8 = v0[27];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    sub_10001DE70(v7, v8, type metadata accessor for SyncLibraryInfoRequest);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_10001DED8(v7, type metadata accessor for SyncLibraryInfoRequest);
    v14 = sub_1000095B0(v11, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[DeviceController] Handling request: %s.", v9, 0xCu);
    sub_100009B58(v10);
  }

  else
  {

    sub_10001DED8(v7, type metadata accessor for SyncLibraryInfoRequest);
  }

  v15 = objc_allocWithZone(NPTOTransaction);
  v16 = String._bridgeToObjectiveC()();
  v0[30] = [v15 initWithDescription:v16];

  v17 = swift_task_alloc();
  v0[31] = v17;
  *v17 = v0;
  v17[1] = sub_100019050;
  v18 = v0[24];

  return sub_10001F968(v18);
}

uint64_t sub_100019050()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1000196F8;
  }

  else
  {
    v2 = sub_100019164;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100019164()
{
  v54 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = (*(v0 + 152) + *(*(v0 + 200) + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0xE000000000000000;
  if (v4)
  {
    v7 = v3[1];
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8 = *(v2 + 28);
  v9 = (v1 + v8);
  if (*(v1 + v8 + 8))
  {
    v10 = *v9;
    v6 = *(v1 + v8 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (v5 == v10 && v7 == v6)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[DeviceController] LibraryInfoResponse has the same syncHash with request, so responding with empty response with hash.", v15, 2u);
  }

  v17 = *(v0 + 184);
  v16 = *(v0 + 192);
  v18 = *(v0 + 168);

  UnknownStorage.init()();
  v19 = *(v18 + 20);
  v20 = type metadata accessor for SyncLibrary(0);
  (*(*(v20 - 8) + 56))(v17 + v19, 1, 1, v20);
  v21 = *(v18 + 24);
  v22 = type metadata accessor for SyncCollectionTargetList(0);
  (*(*(v22 - 8) + 56))(v17 + v21, 1, 1, v22);
  v23 = (v17 + *(v2 + 28));
  *v23 = 0;
  v23[1] = 0;
  sub_10001DCF0(v17, v16);
  v24 = 0xE000000000000000;
  if (v4)
  {
    v24 = v4;
  }

  *v9 = v5;
  v9[1] = v24;

LABEL_22:
  v25 = *(v0 + 256);
  v26 = *(v0 + 176);
  sub_10001DE70(*(v0 + 192), v26, type metadata accessor for SyncLibraryInfoResponse);
  sub_100041FBC(v26, v0 + 16);
  if (v25)
  {
    v27 = *(v0 + 240);
    sub_10001DED8(*(v0 + 192), type metadata accessor for SyncLibraryInfoResponse);

    v28 = *(v0 + 8);
  }

  else
  {
    sub_10001DE70(*(v0 + 152), *(v0 + 208), type metadata accessor for SyncLibraryInfoRequest);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 208);
      v32 = *(v0 + 216);
      v33 = *(v0 + 192);
      v34 = *(v0 + 184);
      v35 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      *v35 = 136315394;
      swift_beginAccess();
      sub_10001DE70(v33, v34, type metadata accessor for SyncLibraryInfoResponse);
      v36 = String.init<A>(describing:)();
      v38 = sub_1000095B0(v36, v37, v53);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      sub_10001DE70(v31, v32, type metadata accessor for SyncLibraryInfoRequest);
      v39 = String.init<A>(describing:)();
      v41 = v40;
      sub_10001DED8(v31, type metadata accessor for SyncLibraryInfoRequest);
      v42 = sub_1000095B0(v39, v41, v53);

      *(v35 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "[DeviceController] Composed response %s for request %s.", v35, 0x16u);
      swift_arrayDestroy();

      v43 = v33;
    }

    else
    {
      v44 = *(v0 + 208);
      v45 = *(v0 + 192);

      sub_10001DED8(v44, type metadata accessor for SyncLibraryInfoRequest);
      v43 = v45;
    }

    sub_10001DED8(v43, type metadata accessor for SyncLibraryInfoResponse);
    v46 = *(v0 + 144);

    v47 = *(v0 + 16);
    v48 = *(v0 + 48);
    *(v46 + 16) = *(v0 + 32);
    *(v46 + 32) = v48;
    *v46 = v47;
    v49 = *(v0 + 64);
    v50 = *(v0 + 80);
    v51 = *(v0 + 96);
    *(v46 + 96) = *(v0 + 112);
    *(v46 + 64) = v50;
    *(v46 + 80) = v51;
    *(v46 + 48) = v49;

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_1000196F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000197A8(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  type metadata accessor for URL();
  v3[38] = swift_task_alloc();
  sub_100004180(&qword_100098B00);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = type metadata accessor for SyncAssetResourceRequest(0);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return _swift_task_switch(sub_1000198D4, 0, 0);
}

uint64_t sub_1000198D4()
{
  v45 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = v0[36];
  v3 = type metadata accessor for Logger();
  v0[46] = sub_100004D08(v3, qword_10009C6A8);
  sub_10001DE70(v2, v1, type metadata accessor for SyncAssetResourceRequest);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[45];
  if (v6)
  {
    v8 = v0[44];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 136315138;
    sub_10001DE70(v7, v8, type metadata accessor for SyncAssetResourceRequest);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_10001DED8(v7, type metadata accessor for SyncAssetResourceRequest);
    v14 = sub_1000095B0(v11, v13, &v44);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[DeviceController] Handling request: %s.", v9, 0xCu);
    sub_100009B58(v10);
  }

  else
  {

    sub_10001DED8(v7, type metadata accessor for SyncAssetResourceRequest);
  }

  v15 = v0[41];
  v16 = v0[36];
  v17 = objc_allocWithZone(NPTOTransaction);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithDescription:v18];
  v0[47] = v19;

  v20 = (v16 + *(v15 + 20));
  v21 = v20[1];
  if (v21 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v20;
  }

  if (v21 >> 60 == 15)
  {
    v23 = 0xC000000000000000;
  }

  else
  {
    v23 = v20[1];
  }

  sub_10001D450(*v20, v21);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v25 = [(objc_class *)isa npto_uuid];

  if (v25)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D4B8(v22, v23);

    v26 = 0;
  }

  else
  {
    sub_10001D4B8(v22, v23);
    v26 = 1;
  }

  v28 = v0[39];
  v27 = v0[40];
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v28, v26, 1, v29);
  sub_10001D50C(v28, v27);
  v31 = (*(v30 + 48))(v27, 1, v29);
  v32 = v0[40];
  if (v31 == 1)
  {
    sub_100009BA4(v0[40], &qword_100098B00);
LABEL_21:
    sub_10001D57C();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();

    v42 = v0[1];

    return v42();
  }

  UUID.uuidString.getter();
  (*(v30 + 8))(v32, v29);
  sub_100009C90(0, &unk_100098610);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = String._bridgeToObjectiveC()();

  v35 = [ObjCClassFromMetadata localIdentifierWithUUID:v34];
  v0[48] = v35;

  if (!v35)
  {
    goto LABEL_21;
  }

  v0[49] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[50] = v36;
  v37 = sub_100009C90(0, &unk_100098C30);
  v38 = swift_task_alloc();
  v0[51] = v38;
  *(v38 + 16) = v37;
  v39 = swift_task_alloc();
  v0[52] = v39;
  v40 = sub_100004180(&qword_100098B10);
  *v39 = v0;
  v39[1] = sub_100019EAC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 33, 0, 0, 0x6168735F6F74706ELL, 0xEB00000000646572, sub_10001D5D0, v38, v40);
}

uint64_t sub_100019EAC()
{

  return _swift_task_switch(sub_100019FC4, 0, 0);
}

uint64_t sub_100019FC4()
{
  v1 = v0[33];
  v0[53] = v1;
  if (v1)
  {
    v2 = *(v0[37] + 16);
    v3 = swift_task_alloc();
    v0[54] = v3;
    *v3 = v0;
    v3[1] = sub_10001A144;

    return sub_1000438E0(v2);
  }

  else
  {
    v5 = v0[47];
    v6 = v0[48];

    sub_10001D57C();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10001A144(uint64_t a1)
{
  v2 = *(*v1 + 424);
  *(*v1 + 440) = a1;

  return _swift_task_switch(sub_10001A260, 0, 0);
}

uint64_t sub_10001A260()
{
  v28 = v0;
  v1 = *(v0 + 440);
  if (v1)
  {
    sub_10001DE70(*(v0 + 288), *(v0 + 344), type metadata accessor for SyncAssetResourceRequest);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 400);
    if (v4)
    {
      v26 = v1;
      v6 = *(v0 + 392);
      v8 = *(v0 + 344);
      v7 = *(v0 + 352);
      v9 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v9 = 136315394;
      v10 = sub_1000095B0(v6, v5, v27);

      *(v9 + 4) = v10;
      *(v9 + 12) = 2080;
      sub_10001DE70(v8, v7, type metadata accessor for SyncAssetResourceRequest);
      v11 = String.init<A>(describing:)();
      v13 = v12;
      sub_10001DED8(v8, type metadata accessor for SyncAssetResourceRequest);
      v14 = sub_1000095B0(v11, v13, v27);
      v1 = v26;

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v2, v3, "[DeviceController] Fetching asset resource for %s for request %s.", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v18 = *(v0 + 344);

      sub_10001DED8(v18, type metadata accessor for SyncAssetResourceRequest);
    }

    v19 = *(v0 + 384);
    v20 = [*(*(v0 + 296) + 24) assetForLocalIdentifier:{v19, v26}];
    *(v0 + 448) = v20;

    if (v20)
    {
      v21 = *(*(v0 + 288) + *(*(v0 + 328) + 24));
      *(v0 + 464) = v21;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 248;
      *(v0 + 24) = sub_10001A6A4;
      v22 = swift_continuation_init();
      *(v0 + 240) = sub_100004180(&qword_100098B18);
      *(v0 + 184) = _NSConcreteStackBlock;
      *(v0 + 192) = 1107296256;
      *(v0 + 200) = sub_10001AC40;
      *(v0 + 208) = &unk_10008A0F0;
      *(v0 + 216) = v22;
      [v20 npto_exportForDevice:v1 isUserInitiated:v21 & 1 completionHandler:v0 + 184];

      return _swift_continuation_await(v0 + 16);
    }

    v15 = *(v0 + 376);
    sub_10001D57C();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  else
  {
    v15 = *(v0 + 376);
    v16 = *(v0 + 384);

    sub_10001D57C();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10001A6A4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 456) = v1;
  if (v1)
  {
    v2 = sub_10001AB6C;
  }

  else
  {
    v2 = sub_10001A7B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001A7B4()
{
  v32 = v0;
  v1 = *(v0 + 248);
  type metadata accessor for TemporaryResourceFile();
  v2 = [v1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = TemporaryResourceFile.__allocating_init(localResourceURL:metadata:)();
  sub_10001DE70(*(v0 + 288), *(v0 + 336), type metadata accessor for SyncAssetResourceRequest);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 440);
  v8 = *(v0 + 448);
  if (v6)
  {
    v9 = *(v0 + 352);
    v29 = *(v0 + 336);
    v30 = *(v0 + 440);
    v10 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v0 + 272) = v3;

    v11 = String.init<A>(describing:)();
    v13 = sub_1000095B0(v11, v12, v31);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    sub_10001DE70(v29, v9, type metadata accessor for SyncAssetResourceRequest);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    sub_10001DED8(v29, type metadata accessor for SyncAssetResourceRequest);
    v17 = sub_1000095B0(v14, v16, v31);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "[DeviceController] Composed resourceFile %s for request %s.", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v18 = *(v0 + 336);

    sub_10001DED8(v18, type metadata accessor for SyncAssetResourceRequest);
  }

  v19 = v3;
  v20 = *(v0 + 376);
  v21 = *(v0 + 280);
  sub_100032BFC(v19, *(v0 + 464) & 1, v0 + 80);

  v22 = *(v0 + 80);
  v23 = *(v0 + 112);
  *(v21 + 16) = *(v0 + 96);
  *(v21 + 32) = v23;
  *v21 = v22;
  v24 = *(v0 + 128);
  v25 = *(v0 + 144);
  v26 = *(v0 + 160);
  *(v21 + 96) = *(v0 + 176);
  *(v21 + 64) = v25;
  *(v21 + 80) = v26;
  *(v21 + 48) = v24;

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10001AB6C()
{
  v1 = v0[56];
  v2 = v0[55];
  v3 = v0[47];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10001AC40(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = sub_10001DCAC((a1 + 32), *(a1 + 56));
  v7 = *v6;
  if (a4)
  {
    sub_100004180(&unk_100098B20);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a2)
    {
      v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = *(v7[8] + 40);
      *v12 = a2;
      v12[1] = v11;
      v13 = a2;
      v6 = v7;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v6);
  }
}

uint64_t sub_10001AD40()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10001ADA4(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_100002B00(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_10001F294(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_100009BA4(a1, &qword_100098B78);
    v7 = sub_1000474E0(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_100041624();
        v11 = v13;
      }

      sub_100002B00((*(v11 + 56) + 40 * v9), v14);
      sub_10001CBD0(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_100009BA4(v14, &qword_100098B78);
  }

  return result;
}

uint64_t sub_10001AEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100002B00(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_10001F3C4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_100009BA4(a1, &qword_100098B50);
    sub_10001CB24(a2, a3, v9);

    return sub_100009BA4(v9, &qword_100098B50);
  }

  return result;
}

uint64_t sub_10001AF80(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10001AFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[40] = a5;
  v6[41] = a6;
  v6[39] = a4;
  return _swift_task_switch(sub_10001AFF4, a4, 0);
}

uint64_t sub_10001AFF4()
{
  v39 = v0;
  v1 = [*(*(v0 + 312) + 112) isTinkerPaired];
  v2 = *(v0 + 320);
  if (v1)
  {
    v3 = 300;
  }

  else
  {
    v3 = *(v2 + 96);
  }

  v4 = *v2;
  v5 = *(v2 + 24);
  *(v0 + 224) = *(v2 + 8);
  *(v0 + 240) = v5;
  v6 = *(v2 + 40);
  v7 = *(v2 + 56);
  v8 = *(v2 + 72);
  *(v0 + 304) = *(v2 + 88);
  *(v0 + 272) = v7;
  *(v0 + 288) = v8;
  *(v0 + 256) = v6;
  type metadata accessor for TemporaryResourceFile();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = v4;
    v12 = sub_100028130(v10, v3);
    v14 = v13;
  }

  else
  {
    v12 = sub_1000283E8(v4, v3);
    v14 = v15;
  }

  *(v0 + 336) = v14;
  *(v0 + 344) = v12;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 320);
  v17 = type metadata accessor for Logger();
  sub_100004D08(v17, qword_10009C6A8);

  sub_10001E0C8(v16, v0 + 16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 320);
  if (v20)
  {
    v22 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_1000095B0(v12, v14, v38);
    *(v22 + 12) = 2080;
    v24 = *(v21 + 16);
    v23 = *(v21 + 32);
    *(v0 + 120) = *v21;
    *(v0 + 136) = v24;
    *(v0 + 152) = v23;
    v26 = *(v21 + 64);
    v25 = *(v21 + 80);
    v27 = *(v21 + 96);
    *(v0 + 168) = *(v21 + 48);
    *(v0 + 216) = v27;
    *(v0 + 200) = v25;
    *(v0 + 184) = v26;
    v28 = String.init<A>(describing:)();
    v30 = sub_1000095B0(v28, v29, v38);

    *(v22 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "[Messaging] Sent message with %s for %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10001DF40(v21);
  }

  v31 = *(v0 + 328);
  v32 = swift_allocObject();
  *(v0 + 352) = v32;
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v0 + 360) = v33;
  v33[2] = v12;
  v33[3] = v14;
  v33[4] = v32;
  v34 = *(*v31 + 168);

  v37 = (v34 + *v34);
  v35 = swift_task_alloc();
  *(v0 + 368) = v35;
  *v35 = v0;
  v35[1] = sub_10001B458;

  return (v37)(&unk_1000700F8, v33);
}

uint64_t sub_10001B458()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v3 = *v0;

  v4 = *(v2 + 89);
  v5 = swift_task_alloc();
  v1[47] = v5;
  *v5 = v3;
  v5[1] = sub_10001EE3C;
  v6 = v1[43];
  v7 = v1[42];
  v8 = v1[41];

  return sub_10001C244(v6, v7, v4, v8);
}

uint64_t sub_10001B634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[40] = a5;
  v6[41] = a6;
  v6[39] = a4;
  return _swift_task_switch(sub_10001B658, a4, 0);
}

uint64_t sub_10001B658()
{
  v39 = v0;
  v1 = [*(*(v0 + 312) + 112) isTinkerPaired];
  v2 = *(v0 + 320);
  if (v1)
  {
    v3 = 300;
  }

  else
  {
    v3 = *(v2 + 96);
  }

  v4 = *v2;
  v5 = *(v2 + 24);
  *(v0 + 224) = *(v2 + 8);
  *(v0 + 240) = v5;
  v6 = *(v2 + 40);
  v7 = *(v2 + 56);
  v8 = *(v2 + 72);
  *(v0 + 304) = *(v2 + 88);
  *(v0 + 272) = v7;
  *(v0 + 288) = v8;
  *(v0 + 256) = v6;
  type metadata accessor for TemporaryResourceFile();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = v4;
    v12 = sub_100028130(v10, v3);
    v14 = v13;
  }

  else
  {
    v12 = sub_1000283E8(v4, v3);
    v14 = v15;
  }

  *(v0 + 336) = v14;
  *(v0 + 344) = v12;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 320);
  v17 = type metadata accessor for Logger();
  sub_100004D08(v17, qword_10009C6A8);

  sub_10001EC10(v16, v0 + 16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 320);
  if (v20)
  {
    v22 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_1000095B0(v12, v14, v38);
    *(v22 + 12) = 2080;
    v24 = *(v21 + 16);
    v23 = *(v21 + 32);
    *(v0 + 120) = *v21;
    *(v0 + 136) = v24;
    *(v0 + 152) = v23;
    v26 = *(v21 + 64);
    v25 = *(v21 + 80);
    v27 = *(v21 + 96);
    *(v0 + 168) = *(v21 + 48);
    *(v0 + 216) = v27;
    *(v0 + 200) = v25;
    *(v0 + 184) = v26;
    v28 = String.init<A>(describing:)();
    v30 = sub_1000095B0(v28, v29, v38);

    *(v22 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "[Messaging] Sent message with %s for %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10001EC6C(v21);
  }

  v31 = *(v0 + 328);
  v32 = swift_allocObject();
  *(v0 + 352) = v32;
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v0 + 360) = v33;
  v33[2] = v12;
  v33[3] = v14;
  v33[4] = v32;
  v34 = *(*v31 + 168);

  v37 = (v34 + *v34);
  v35 = swift_task_alloc();
  *(v0 + 368) = v35;
  *v35 = v0;
  v35[1] = sub_10001BABC;

  return (v37)(&unk_100070338, v33);
}

uint64_t sub_10001BABC()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v3 = *v0;

  v4 = *(v2 + 89);
  v5 = swift_task_alloc();
  v1[47] = v5;
  *v5 = v3;
  v5[1] = sub_10001BC98;
  v6 = v1[43];
  v7 = v1[42];
  v8 = v1[41];

  return sub_10001C244(v6, v7, v4, v8);
}

uint64_t sub_10001BC98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001BDAC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 112) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  v6 = type metadata accessor for CancellationError();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_10001BEA0, 0, 0);
}

uint64_t sub_10001BEA0()
{
  v18 = v0;
  if (*(v0 + 112))
  {
    *(v0 + 40) = *(v0 + 56);
    swift_errorRetain();
    sub_100004180(&unk_100098B20);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      if (qword_1000988C0 != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      sub_100004D08(v1, qword_10009C6A8);

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v2, v3))
      {
        v5 = *(v0 + 64);
        v4 = *(v0 + 72);
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v17 = v7;
        *v6 = 136315138;
        *(v6 + 4) = sub_1000095B0(v5, v4, &v17);
        _os_log_impl(&_mh_execute_header, v2, v3, "[Messaging] Message with %s is cancelled.", v6, 0xCu);
        sub_100009B58(v7);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        v10 = String._bridgeToObjectiveC()();
        *(v0 + 48) = 0;
        v11 = [v9 cancelIdentifier:v10 error:v0 + 48];

        v12 = *(v0 + 48);
        if (v11)
        {
          v13 = v12;
        }

        else
        {
          v14 = v12;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10001C150(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 112) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  v6 = type metadata accessor for CancellationError();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_10001EDC8, 0, 0);
}

uint64_t sub_10001C244(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 160) = a3;
  *(v5 + 104) = a1;
  *(v5 + 112) = a2;
  return _swift_task_switch(sub_10001C26C, v4, 0);
}

uint64_t sub_10001C26C()
{
  v32 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004D08(v1, qword_10009C6A8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000095B0(v5, v4, &v28);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Messaging] Creating response handler for: %s", v6, 0xCu);
    sub_100009B58(v7);
  }

  v8 = *(v0 + 128);
  swift_beginAccess();
  v9 = *(v8 + 136);
  if (*(v9 + 16))
  {
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);

    v12 = sub_100047550(v11, v10);
    if (v13)
    {
      v15 = *(v0 + 104);
      v14 = *(v0 + 112);
      sub_10001E2AC(*(v9 + 56) + 40 * v12, v0 + 16);

      sub_100009BA4(v0 + 16, &qword_100098B50);
      v28 = 0;
      v29 = 0xE000000000000000;
      _StringGuts.grow(_:)(67);
      v16._object = 0x8000000100077F20;
      v16._countAndFlagsBits = 0xD000000000000041;
      String.append(_:)(v16);
      v17._countAndFlagsBits = v15;
      v17._object = v14;
      String.append(_:)(v17);
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  v19 = *(v0 + 120);
  v20 = *(v0 + 160);
  v22 = *(v0 + 104);
  v21 = *(v0 + 112);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_100009BA4(v0 + 16, &qword_100098B50);
  v30 = sub_100004180(&qword_100098B58);
  v31 = &off_10008A890;
  LOBYTE(v28) = v20;
  v29 = v19;
  swift_beginAccess();
  swift_retain_n();

  sub_10001AEB0(&v28, v22, v21);
  swift_endAccess();
  v23 = swift_allocObject();
  *(v0 + 136) = v23;
  swift_weakInit();
  v24 = swift_allocObject();
  *(v0 + 144) = v24;
  v24[2] = v23;
  v24[3] = v22;
  v24[4] = v21;
  v25 = *(*v19 + 168);

  v27 = (v25 + *v25);
  v26 = swift_task_alloc();
  *(v0 + 152) = v26;
  *v26 = v0;
  v26[1] = sub_10001C6D8;

  return (v27)(&unk_100070120, v24);
}

uint64_t sub_10001C6D8()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_10001C828, v1, 0);
}

uint64_t sub_10001C828()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10001D38C(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100009BA4(v10, &qword_100098AE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100009BA4(a3, &qword_100098AE0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009BA4(a3, &qword_100098AE0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double sub_10001CB24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100047550(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000417A4();
      v10 = v12;
    }

    sub_100002B00((*(v10 + 56) + 40 * v8), a3);
    sub_10001CD70(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

Swift::Int sub_10001CBD0(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11 + 100);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10001CD70(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

id sub_10001CF2C(void *a1, uint64_t a2, void *a3)
{

  swift_defaultActor_initialize();
  if (([a1 relationship] & 1) != 0 && (v5 = String._bridgeToObjectiveC()(), v6 = objc_msgSend(objc_opt_self(), "syncCoordinatorWithServiceName:", v5), v5, v6))
  {
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100004D08(v7, qword_10009C6A8);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v6;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "[InitialSync] Created sync coordinator %@.", v11, 0xCu);
      sub_100009BA4(v12, &qword_1000985D8);
    }

    a3[14] = v8;
    v21.receiver = a3;
    v21.super_class = type metadata accessor for InitialSyncServerController();
    v14 = objc_msgSendSuper2(&v21, "init");

    return v14;
  }

  else
  {
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100004D08(v16, qword_10009C6A8);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = [v17 relationship];

      _os_log_impl(&_mh_execute_header, v18, v19, "[InitialSync] Skipped creating sync coordinator for device relationship %ld.", v20, 0xCu);
    }

    else
    {

      v18 = v17;
    }

    type metadata accessor for InitialSyncServerController();
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_10001D234()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001EDC4;

  return sub_100013C8C(v0);
}

uint64_t sub_10001D2C4(uint64_t a1)
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

  return sub_1000421B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10001D38C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004180(&qword_100098AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001D3FC()
{
  result = qword_100098AF0;
  if (!qword_100098AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098AF0);
  }

  return result;
}

uint64_t sub_10001D450(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001D464(a1, a2);
  }

  return a1;
}

uint64_t sub_10001D464(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001D4B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001D50C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004180(&qword_100098B00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001D57C()
{
  result = qword_100098B08;
  if (!qword_100098B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098B08);
  }

  return result;
}

uint64_t sub_10001D604(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7 - 8];
  v9 = a3[5];
  v26 = a3[4];
  v27 = v9;
  v28 = *(a3 + 12);
  v10 = a3[1];
  v22 = *a3;
  v23 = v10;
  v11 = a3[3];
  v24 = a3[2];
  v25 = v11;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = sub_10001DF94();
  v14 = swift_allocObject();
  v15 = v24;
  *(v14 + 88) = v25;
  v16 = v27;
  *(v14 + 104) = v26;
  *(v14 + 120) = v16;
  v17 = v23;
  *(v14 + 40) = v22;
  *(v14 + 56) = v17;
  *(v14 + 16) = a2;
  *(v14 + 24) = v13;
  *(v14 + 32) = a2;
  v18 = v28;
  *(v14 + 72) = v15;
  *(v14 + 136) = v18;
  *(v14 + 144) = a1;
  swift_retain_n();
  sub_10001E0C8(&v22, v21);

  sub_10001C888(0, 0, v8, &unk_1000700E0, v14);
}

uint64_t sub_10001D79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 + 80);
  *(v6 + 80) = *(a5 + 64);
  *(v6 + 96) = v12;
  *(v6 + 112) = *(a5 + 96);
  v13 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v13;
  v14 = *(a5 + 48);
  *(v6 + 48) = *(a5 + 32);
  *(v6 + 64) = v14;
  v15 = swift_task_alloc();
  *(v6 + 120) = v15;
  *v15 = v6;
  v15[1] = sub_10001D888;

  return sub_10001AFD0(a1, a2, a3, a4, v6 + 16, a6);
}

uint64_t sub_10001D888()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000154C0;

  return sub_10001BDAC(v8, v9, a2, a3, a4);
}

uint64_t sub_10001DA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  return _swift_task_switch(sub_10001DA64, 0, 0);
}

uint64_t sub_10001DA64()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10001DB1C, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10001DB1C()
{
  sub_100028640(*(v0 + 48), *(v0 + 56));

  return _swift_task_switch(sub_10001DB88, 0, 0);
}

uint64_t sub_10001DB88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001DBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10001EDC4;

  return sub_10001C150(v8, v9, a2, a3, a4);
}

void *sub_10001DCAC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}