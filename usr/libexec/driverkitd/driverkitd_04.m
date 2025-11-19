uint64_t sub_100053FDC(uint64_t a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.end.getter();
  if (qword_100133AB8 != -1)
  {
    swift_once();
  }

  v7 = 0xD000000000000016;
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000F3160;
  if (*(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) > 1u)
  {
    if (*(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) == 2)
    {
      v9 = "o prelink UUID key?";
      v7 = 0xD000000000000019;
    }

    else
    {
      v9 = "f dext in the ARV at %{public}s";
      v7 = 0xD000000000000012;
    }
  }

  else if (*(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind))
  {
    v9 = "auxiliary kext collection";
  }

  else
  {
    v9 = "system kext collection";
  }

  v10 = v9 | 0x8000000000000000;
  *(v8 + 56) = &type metadata for String;
  v11 = v8;
  *(v8 + 64) = sub_100003D24();
  *(v11 + 32) = v7;
  *(v11 + 40) = v10;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  return (*(v3 + 8))(v6, v2);
}

CFStringRef sub_1000541FC(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v12, 0, 14);
      goto LABEL_15;
    }

    v5 = *(a1 + 16);

    v6 = __DataStorage._bytes.getter();
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = __DataStorage._offset.getter();
    v8 = v5 - v7;
    if (!__OFSUB__(v5, v7))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v12[0] = a1;
    LOWORD(v12[1]) = a2;
    BYTE2(v12[1]) = BYTE2(a2);
    BYTE3(v12[1]) = BYTE3(a2);
    BYTE4(v12[1]) = BYTE4(a2);
    BYTE5(v12[1]) = BYTE5(a2);
LABEL_15:
    v10 = sub_10009ECF4(v12);
    sub_1000128D8(a1, a2);
    return v10;
  }

  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = __DataStorage._bytes.getter();
  if (v6)
  {
    v9 = __DataStorage._offset.getter();
    v8 = a1 - v9;
    if (!__OFSUB__(a1, v9))
    {
LABEL_12:
      v6 = (v6 + v8);
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
  }

LABEL_13:
  __DataStorage._length.getter();
  v10 = sub_1000549E8(v6, a1, a2);
  sub_1000128D8(a1, a2);
  return v10;
}

uint64_t sub_1000543C0()
{
  v1 = OBJC_IVAR____TtC10driverkitd16KernelCollection_path;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch + 8);

  sub_100003C90((v0 + OBJC_IVAR____TtC10driverkitd16KernelCollection_data));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KernelCollection()
{
  result = qword_100135808;
  if (!qword_100135808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000544D4()
{
  result = type metadata accessor for URL();
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

Swift::Int sub_1000546A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_10005494C(&qword_1001342B0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  return Hasher._finalize()();
}

void sub_10005475C()
{
  v1 = *v0;
  type metadata accessor for URL();
  sub_10005494C(&qword_1001342B0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
}

Swift::Int sub_1000547F8()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  type metadata accessor for URL();
  sub_10005494C(&qword_1001342B0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  return Hasher._finalize()();
}

BOOL sub_1000548A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return (static URL.== infix(_:_:)() & 1) != 0 && *(v2 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) == *(v3 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind);
}

uint64_t sub_10005494C(unint64_t *a1, void (*a2)(uint64_t))
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

CFStringRef sub_1000549E8(CFStringRef result, uint64_t a2, unint64_t a3)
{
  if (result)
  {
    v3 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v3 != 2 || !__OFSUB__(*(a2 + 24), *(a2 + 16)))
      {
        return sub_10009ECF4(result);
      }

      __break(1u);
    }

    else
    {
      if (!v3 || !__OFSUB__(HIDWORD(a2), a2))
      {
        return sub_10009ECF4(result);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100054A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(qword_1001358E0, &unk_1000F57E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100054AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100054B58(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_100054E78();
}

id sub_100054B98()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100054BD0(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;

  v4 = *(*(*((v3 & v2) + 0x50) - 8) + 8);
  v5 = a1 + *((swift_isaMask & *a1) + 0x70);

  return v4(v5);
}

uint64_t sub_100054CB0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100054CF0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_100054DC0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_100054EAC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100054EC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100054F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100054F6C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v60[1] = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LookupSpec();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005B218(a1, v14, type metadata accessor for LookupSpec);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v10, v14, v6);
      v45 = v3[5];
      if (*(v45 + 16) && (v46 = sub_100061740(v10), (v47 & 1) != 0))
      {
        v32 = *(*(v45 + 56) + 8 * v46);
        v48 = *(v7 + 8);

        v48(v10, v6);
        if (!a2)
        {
          return v32;
        }
      }

      else
      {
        (*(v7 + 8))(v10, v6);
        v32 = 0;
        if (!a2)
        {
          return v32;
        }
      }

      goto LABEL_47;
    }

    v27 = v14[1];
    v28 = v3[4];
    if (*(v28 + 16))
    {
      v29 = sub_100061588(*v14, v14[1]);
      v31 = v30;

      if (v31)
      {
        v32 = *(*(v28 + 56) + 8 * v29);
        goto LABEL_21;
      }
    }

    else
    {
      v52 = v14[1];
    }

LABEL_46:
    v32 = 0;
    if (!a2)
    {
      return v32;
    }

    goto LABEL_47;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v33 = v3[6];
    if (*(v33 + 16))
    {
      v34 = sub_1000616D4(*v14);
      if (v35)
      {
        v32 = *(*(v33 + 56) + 8 * v34);
LABEL_21:

        if (!a2)
        {
          return v32;
        }

        goto LABEL_47;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v16 = *v14;
    *&v61[0] = v3[3];
    if ((*&v61[0] & 0xC000000000000001) != 0)
    {
      v17 = &_swiftEmptyDictionarySingleton;
      *&v63[0] = &_swiftEmptyDictionarySingleton;
      __CocoaDictionary.makeIterator()();

      v18 = __CocoaDictionary.Iterator.next()();
      if (v18)
      {
        v20 = v19;
        v21 = v18;
        type metadata accessor for OSExtension(0);
        v22 = v21;
        do
        {
          v66 = v22;
          swift_dynamicCast();
          v65 = v20;
          type metadata accessor for RealizedInfo(0);
          swift_dynamicCast();
          v24 = v67;
          if (!v67)
          {
            break;
          }

          v25 = v66;
          if (v16 == *v67)
          {
            v26 = v17[2];
            if (v17[3] <= v26)
            {
              sub_1000329C0(v26 + 1, 1);
            }

            v17 = *&v63[0];
            sub_100057540(v24, v25, *&v63[0]);
          }

          else
          {
          }

          v22 = __CocoaDictionary.Iterator.next()();
          v20 = v23;
        }

        while (v22);
      }

LABEL_39:
      sub_1000145A4();
      goto LABEL_43;
    }

    v17 = sub_100057DF0(v49, v16);
    v50 = v61;
  }

  else
  {
    v67 = v3[3];
    if ((v67 & 0xC000000000000001) != 0)
    {
      v17 = &_swiftEmptyDictionarySingleton;
      v66 = &_swiftEmptyDictionarySingleton;
      __CocoaDictionary.makeIterator()();

      v36 = __CocoaDictionary.Iterator.next()();
      if (v36)
      {
        v38 = v37;
        v39 = v36;
        type metadata accessor for OSExtension(0);
        v40 = v39;
        do
        {
          *&v63[0] = v40;
          swift_dynamicCast();
          v65 = v38;
          type metadata accessor for RealizedInfo(0);
          swift_dynamicCast();
          v42 = *&v61[0];
          if (!*&v61[0])
          {
            break;
          }

          v43 = *&v63[0];
          sub_1000138F8(*&v61[0] + 24, v61);
          if (v62)
          {

            sub_100013954(v61);
            memset(v63, 0, sizeof(v63));
            v64 = 0;
            sub_10000A184(v63, &qword_1001342A8, &unk_1000F39C0);
          }

          else
          {
            sub_100009F34(v61, v63);

            sub_10000A184(v63, &qword_1001342A8, &unk_1000F39C0);

            v44 = v17[2];
            if (v17[3] <= v44)
            {
              sub_1000329C0(v44 + 1, 1);
            }

            v17 = v66;
            sub_100057540(v42, v43, v66);
          }

          v40 = __CocoaDictionary.Iterator.next()();
          v38 = v41;
        }

        while (v40);
      }

      goto LABEL_39;
    }

    v17 = sub_100057C90(v51);
    v50 = &v67;
  }

  sub_10000A184(v50, &qword_100135A68, &unk_1000F59B8);
LABEL_43:
  v32 = sub_100057BC0(v17);

  if (!a2)
  {
    return v32;
  }

LABEL_47:
  if (v32)
  {
    *&v63[0] = _swiftEmptyArrayStorage;
    if (v32 >> 62)
    {
      goto LABEL_67;
    }

    v53 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_50:
    sub_100057C70(a2);

    if (v53)
    {
      v54 = 0;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v56 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
LABEL_61:
            __break(1u);
LABEL_62:
            v58 = *&v63[0];
            goto LABEL_64;
          }
        }

        else
        {
          if (v54 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_67:
            v53 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_50;
          }

          v55 = *(v32 + 8 * v54 + 32);

          v56 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_61;
          }
        }

        if (a2(v55))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v57 = *(*&v63[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v54;
        if (v56 == v53)
        {
          goto LABEL_62;
        }
      }
    }

    v58 = _swiftEmptyArrayStorage;
LABEL_64:
    sub_100057C80(a2);

    sub_100057C80(a2);
    return v58;
  }

  return v32;
}

uint64_t type metadata accessor for LookupSpec()
{
  result = qword_100135AF8;
  if (!qword_100135AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000556D0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      type metadata accessor for RealizedInfo(0);
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_100061968(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
    }
  }

  return 0;
}

uint64_t sub_100055784(uint64_t a1)
{
  v3 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  v14 = *(a1 + 24);
  v15 = sub_1000556D0(v14, *(v1 + 24));
  if (!v15)
  {
    return v15 != 0;
  }

  v37 = v13;

  sub_1000368E0(v14);

  v16 = sub_1000D7374();
  v18 = v17;
  v39 = v1;
  v20 = sub_100025148(v40, v16, v17);
  if (*v19)
  {
    v21 = v19;
    v36 = v15;

    v22 = 0;
    v15 = sub_100059B78(v21, a1);

    v23 = *v21;
    if (*v21 >> 62)
    {
      if (v23 < 0)
      {
        v34 = *v21;
      }

      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (v24 >= v15)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24 >= v15)
      {
LABEL_5:
        sub_100059AA0(v15, v24);
        v20(v40, 0);
        v15 = v36;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v20(v40, 0);
  v22 = 0;
LABEL_7:

  sub_1000D7444(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000A184(v6, &unk_1001389D0, &qword_1000F4F60);
    goto LABEL_15;
  }

  v25 = v37;
  (*(v8 + 32))(v37, v6, v7);
  v6 = v38;
  (*(v8 + 16))(v38, v25, v7);
  v20 = sub_1000251D0(v40);
  if (!*v26)
  {
    v20(v40, 0);
    goto LABEL_14;
  }

  v27 = v26;

  v18 = sub_100059B78(v27, a1);

  if (*v27 >> 62)
  {
LABEL_28:
    v28 = _CocoaArrayWrapper.endIndex.getter();
    if (v28 >= v18)
    {
      goto LABEL_12;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v28 = *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v28 < v18)
  {
    goto LABEL_29;
  }

LABEL_12:
  sub_100059AA0(v18, v28);
  v20(v40, 0);
LABEL_14:
  v29 = *(v8 + 8);
  v29(v6, v7);
  v29(v37, v7);
LABEL_15:
  sub_1000138F8(v14 + 24, v40);
  if (v41 != 1)
  {
    sub_100013954(v40);
    return v15 != 0;
  }

  v20 = sub_100025360(v40, *(v40[0] + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  if (!*v30)
  {
    v20(v40, 0);
    goto LABEL_22;
  }

  v31 = v30;

  v22 = sub_100059B78(v31, a1);

  if (*v31 >> 62)
  {
LABEL_30:
    result = _CocoaArrayWrapper.endIndex.getter();
    v33 = result;
    if (result >= v22)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

  v33 = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v33 >= v22)
  {
LABEL_19:
    sub_100059AA0(v22, v33);
    v20(v40, 0);
LABEL_22:

    return v15 != 0;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100055C50(uint64_t a1)
{
  v2 = type metadata accessor for LookupSpec();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  swift_storeEnumTagMultiPayload();
  sub_100056FA0(v5, 0, 0, &v17);
  v7 = v17;
  if (v23)
  {
    *v16 = v17;
    *&v16[24] = v19;
    *&v16[40] = v20;
    *&v16[56] = v21;
    *&v16[72] = v22;
    *&v16[8] = v18;
    sub_10005B2E8();
    swift_willThrowTypedImpl();
    sub_100059150(v5);
    v12 = *&v16[32];
    v13 = *&v16[48];
    v14 = *&v16[64];
    v15 = *&v16[80];
    v11[0] = *v16;
    v11[1] = *&v16[16];
    sub_10005B33C(v11);
  }

  else
  {
    sub_100059150(v5);
    sub_1000138F8(*(v7 + 24) + 24, v11);
    if (!BYTE8(v12))
    {
      sub_100009F34(v11, v9);
      sub_10000A184(v9, &qword_1001342A8, &unk_1000F39C0);
      return v7;
    }

    sub_10000A184(&v17, &qword_100135A78, &unk_1000F59C8);
    sub_100013954(v11);
    memset(v9, 0, sizeof(v9));
    v10 = 0;
    sub_10000A184(v9, &qword_1001342A8, &unk_1000F39C0);
  }

  return 0;
}

uint64_t sub_100055E4C(uint64_t a1)
{
  v2 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = v1[5];
  v15 = v1[6];
  v16 = v1[7];
  v17 = v1[8];
  v18 = v1[9];
  if (v1[10] < 0)
  {
    return sub_1000AA704(a1);
  }

  _StringGuts.grow(_:)(17);
  v4 = sub_1000AA704(v3);

  v5._countAndFlagsBits = 0x736E657478652820;
  v5._object = 0xEC000000206E6F69;
  String.append(_:)(v5);
  v7._countAndFlagsBits = sub_1000D77B8(v6);
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return v4;
}

uint64_t sub_100055F6C(uint64_t result)
{
  v2 = *v1;
  if (*v1 >> 62)
  {
LABEL_17:
    v15 = result;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    result = v15;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = result;
      v6 = v2 & 0xC000000000000001;
      v7 = v2 & 0xFFFFFFFFFFFFFF8;
      v8 = &OBJC_IVAR____TtC10driverkitd16KernelCollection_kind;
      v17 = v3;
      while (1)
      {
        if (v6)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = result;
          v10 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v4 >= *(v7 + 16))
          {
            __break(1u);
            goto LABEL_17;
          }

          v9 = *(v2 + 8 * v4 + 32);

          v10 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_25;
          }
        }

        if (*(*(v9 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection) + *v8) == v5)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v11 = v8;
          v12 = v7;
          v13 = v5;
          v14 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v5 = v13;
          v7 = v12;
          v8 = v11;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          result = specialized ContiguousArray._endMutation()();
          v3 = v17;
          v6 = v2 & 0xC000000000000001;
        }

        else
        {
        }

        ++v4;
        if (v10 == v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_21;
    }

LABEL_26:

    return 0;
  }

LABEL_25:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_26;
  }

LABEL_21:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_24;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v16 = _swiftEmptyArrayStorage[4];

LABEL_24:

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100056178(unint64_t a1)
{
  v4 = v1;
  v6 = type metadata accessor for URL();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v73 = &v72 - v12;
  v13 = __chkstk_darwin(v11);
  v76 = &v72 - v14;
  __chkstk_darwin(v13);
  v16 = &v72 - v15;
  v17 = *(a1 + 24);
  v18 = sub_1000556D0(v17, *(v1 + 24));
  if (v18)
  {
    v19 = v18;
    static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1000F3160;
    v20 = sub_1000D77B8(v2);
    v3 = v21;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_100003D24();
    *(v2 + 32) = v20;
    *(v2 + 40) = v3;
    sub_10001491C();
    v22 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100055784(v19);
  }

  v23 = *(v4 + 24);
  if ((v23 & 0xC000000000000001) != 0)
  {
    if (v23 < 0)
    {
      v24 = *(v4 + 24);
    }

    else
    {
      v24 = v23 & 0xFFFFFFFFFFFFFF8;
    }

    v25 = __CocoaDictionary.count.getter();
    v26 = v76;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    *(v4 + 24) = sub_100036DB4(v24, v25 + 1);
  }

  else
  {
    v27 = *(v4 + 24);

    v26 = v76;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v77[0] = *(v4 + 24);
  sub_100038FA4(a1, v17, isUniquelyReferenced_nonNull_native);
  *(v4 + 24) = *&v77[0];
  v29 = sub_1000D7374();
  sub_100056994(a1, v29, v30, (v4 + 32), 1);

  sub_1000138F8(v17 + 24, v77);
  if (v78)
  {
    sub_100013954(v77);
    sub_1000138F8(v17 + 24, v77);
    if (v78 != 1)
    {
      return sub_100013954(v77);
    }

    v2 = *&v77[0];
    v31 = OBJC_IVAR____TtC10driverkitd16KernelCollection_path;
    v32 = (v4 + 40);
    v17 = v74;
    if (*(*(v4 + 40) + 16))
    {
      sub_100061740(*&v77[0] + OBJC_IVAR____TtC10driverkitd16KernelCollection_path);
      v16 = v75;
      if (v33)
      {
        goto LABEL_29;
      }

      v34 = *v32;
    }

    else
    {
      v16 = v75;
    }

    v49 = swift_isUniquelyReferenced_nonNull_native();
    *&v77[0] = *v32;
    sub_100038DC4(_swiftEmptyArrayStorage, v2 + v31, v49);
    *v32 = *&v77[0];
LABEL_29:
    (*(v17 + 16))(v10, v2 + v31, v16);
    v3 = sub_1000251D0(v77);
    if (!*v50)
    {
      (v3)(v77, 0);
LABEL_33:
      (*(v17 + 8))(v10, v16);
      v52 = *(v2 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind);
      v54 = *(v4 + 48);
      v53 = (v4 + 48);
      if (*(v54 + 16))
      {
        sub_1000616D4(*(v2 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
        if (v55)
        {
LABEL_37:
          v59 = sub_100025360(v77, v52);
          if (*v58)
          {
            v60 = v58;

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v61 = *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            (v59)(v77, 0);
          }

          else
          {
            (v59)(v77, 0);
          }
        }

        v56 = *v53;
      }

      v57 = swift_isUniquelyReferenced_nonNull_native();
      *&v77[0] = *v53;
      sub_100038C78(_swiftEmptyArrayStorage, v52, v57);
      *v53 = *&v77[0];
      goto LABEL_37;
    }

    v51 = v50;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_31:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v3)(v77, 0);
      goto LABEL_33;
    }

LABEL_45:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_31;
  }

  sub_100009F34(v77, v79);
  sub_100009F34(v79, v80);
  v35 = v81;
  v36 = v82;
  sub_100003C4C(v80, v81);
  (*(v36 + 64))(v35, v36);
  v38 = (v4 + 40);
  v37 = *(v4 + 40);
  if (!*(v37 + 16) || (v39 = sub_100061740(v16), (v40 & 1) == 0))
  {
    v48 = v74;
    v47 = v75;
    v42 = *(v74 + 8);
    v42(v16, v75);
    goto LABEL_48;
  }

  v41 = *(*(v37 + 56) + 8 * v39);
  v42 = *(v74 + 8);

  result = (v42)(v16, v75);
  if (v41 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v44 = result;
    if (result)
    {
      goto LABEL_19;
    }

LABEL_47:

    v48 = v74;
    v47 = v75;
    goto LABEL_48;
  }

  v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v44)
  {
    goto LABEL_47;
  }

LABEL_19:
  if (v44 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v44; ++i)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v46 = *(v41 + 8 * i + 32);
    }

    sub_100055784(v46);
  }

  v48 = v74;
  v47 = v75;
  v26 = v76;
LABEL_48:
  v62 = v81;
  v63 = v82;
  sub_100003C4C(v80, v81);
  (*(v63 + 64))(v62, v63);
  v64 = v73;
  if (!*(*v38 + 16))
  {
LABEL_51:
    v67 = swift_isUniquelyReferenced_nonNull_native();
    *&v77[0] = *v38;
    sub_100038DC4(_swiftEmptyArrayStorage, v26, v67);
    *v38 = *&v77[0];
    goto LABEL_52;
  }

  sub_100061740(v26);
  if ((v65 & 1) == 0)
  {
    v66 = *v38;
    goto LABEL_51;
  }

LABEL_52:
  (*(v48 + 16))(v64, v26, v47);
  v69 = sub_1000251D0(v77);
  if (*v68)
  {
    v70 = v68;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v71 = *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (v69)(v77, 0);
  }

  else
  {
    (v69)(v77, 0);
  }

  v42(v64, v47);
  v42(v26, v47);
  return sub_100003C90(v80);
}

uint64_t sub_100056994(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, char a5)
{
  if (!(*a4)[2] || (sub_100061588(a2, a3), (v10 & 1) == 0))
  {

    v11 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = *a4;
    sub_100038F90(_swiftEmptyArrayStorage, a2, a3, isUniquelyReferenced_nonNull_native);

    *a4 = v32[0];
  }

  if (a5)
  {
    v13 = sub_100025148(v32, a2, a3);
    v15 = v13;
    if (!*v14)
    {
      return (v13)(v32, 0);
    }

    v16 = v14;
    v31 = a1;
    v17 = *v14;
    __chkstk_darwin(v13);
    v30[2] = sub_10002F090;
    v30[3] = 0;
    v30[4] = &v31;
    v19 = sub_1000573A0(sub_10005B36C, v30, v18);
    if (v20)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return (v15)(v32, 0);
    }

    v25 = v19;
    v26 = *v16;
    if (*v16 >> 62)
    {
      if (v26 < 0)
      {
        v29 = *v16;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result >= v25)
      {
LABEL_18:
        if ((v25 & 0x8000000000000000) == 0)
        {

          sub_10005A794(v25, v25, a1);

          return (v15)(v32, 0);
        }

        goto LABEL_25;
      }
    }

    else
    {
      result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v22 = sub_100025148(v32, a2, a3);
  if (!*v21)
  {
    return (v22)(v32, 0);
  }

  v23 = v21;

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v27 = *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return (v22)(v32, 0);
}

uint64_t sub_100056C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LookupSpec();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  v7[1] = a2;
  swift_storeEnumTagMultiPayload();

  sub_10005719C(v7, sub_10005731C, 0, &v13);
  v8 = v13;
  sub_100059150(v7);
  if (v19)
  {
    *v12 = v8;
    *&v12[8] = v14;
    *&v12[24] = v15;
    *&v12[40] = v16;
    *&v12[56] = v17;
    *&v12[72] = v18;
    sub_10005B2E8();
    swift_willThrowTypedImpl();
    v10[2] = *&v12[32];
    v10[3] = *&v12[48];
    v10[4] = *&v12[64];
    v11 = *&v12[80];
    v10[0] = *v12;
    v10[1] = *&v12[16];
    sub_10005B33C(v10);
    return 0;
  }

  return v8;
}

void sub_100056DAC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 8);

  v8 = sub_10005ABBC(v7, a1, a2);

  if (!v8[2])
  {

    _StringGuts.grow(_:)(40);

    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0x6F6620746F6E2027;
    v19._object = 0xEB00000000646E75;
    String.append(_:)(v19);
    v12 = 0xD00000000000001BLL;
    *&v15 = 0x8000000100105E70;
    v20 = 0x8000000000000000;
    v17 = 10;
LABEL_12:
    *a3 = v12;
    *(a3 + 8) = v15;
    *(a3 + 24) = v16;
    *(a3 + 40) = v13;
    *(a3 + 56) = v14;
    *(a3 + 72) = v17;
    *(a3 + 80) = v20;
    return;
  }

  sub_10005BA88(v8, &v32);
  v9 = v32;
  if (!v32)
  {
    goto LABEL_14;
  }

  sub_10001465C(v33);
  v10 = v8[2];
  if (!v10)
  {

    v12 = _swiftEmptyArrayStorage;
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  if (v10 != 1)
  {
    v12 = sub_1000326B8(v8[2], 0);
    v21 = sub_1000596B4(v26, v12 + 32, v10, v8);
    sub_1000145A4();
    if (v21 == v10)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_10005BA88(v8, v26);

  if (v26[0])
  {
    v11 = v31;
    v24 = v29;
    v25 = v30;
    v22 = v27;
    v23 = v28;
    v12 = v26[1];

    v13 = v24;
    v14 = v25;
    v15 = v22;
    v16 = v23;
    v17 = v11 & 0x7F;
LABEL_11:
    v20 = v9 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

unint64_t sub_100056FA0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LookupSpec();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100054F6C(a1, a2, a3);
  if (!result)
  {
    goto LABEL_10;
  }

  v13 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v20 = result;
  v21 = _CocoaArrayWrapper.endIndex.getter();
  result = v20;
  if (!v21)
  {
LABEL_9:

LABEL_10:
    sub_10005B218(a1, v11, type metadata accessor for LookupSpec);
    if (swift_getEnumCaseMultiPayload())
    {
      v14 = 0x8000000100105E30;
      LOBYTE(v26[0]) = 1;
      result = sub_100059150(v11);
      v18 = v26[0];
      *&v19 = vdupq_n_s64(0xD000000000000032).u64[0];
      *(&v19 + 1) = 0x8000000100105E30;
      v8 = 0x8000000000000000;
      a1 = 10;
    }

    else
    {
      sub_100056DAC(*v11, v11[1], v26);
      v24 = v26[0];
      v25 = v26[1];
      v22 = v26[2];
      v23 = v26[3];
      v14 = v27;
      a1 = v28;
      v8 = v29;

      v16 = v22;
      v17 = v23;
      v19 = v24;
      v15 = v25;
      v18 = 1;
    }

    goto LABEL_13;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*(v13 + 16))
  {
    v14 = *(result + 32);

LABEL_7:

    v18 = 0;
    *&v19 = v14;
LABEL_13:
    *a4 = v19;
    *(a4 + 16) = v15;
    *(a4 + 32) = v16;
    *(a4 + 48) = v17;
    *(a4 + 64) = v14;
    *(a4 + 72) = a1;
    *(a4 + 80) = v8;
    *(a4 + 88) = v18;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005719C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for LookupSpec();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100054F6C(a1, a2, a3);
  if (result)
  {
    v18 = 0;
    *&v14 = result;
  }

  else
  {
    sub_10005B218(a1, v12, type metadata accessor for LookupSpec);
    if (swift_getEnumCaseMultiPayload())
    {
      v4 = 0x8000000100105E30;
      LOBYTE(v23[0]) = 1;
      result = sub_100059150(v12);
      v18 = v23[0];
      *&v14 = vdupq_n_s64(0xD000000000000032).u64[0];
      *(&v14 + 1) = 0x8000000100105E30;
      v9 = 0x8000000000000000;
      a1 = 10;
    }

    else
    {
      sub_100056DAC(*v12, v12[1], v23);
      v21 = v23[0];
      v22 = v23[1];
      v19 = v23[2];
      v20 = v23[3];
      v4 = v24;
      a1 = v25;
      v9 = v26;

      v16 = v19;
      v17 = v20;
      v14 = v21;
      v15 = v22;
      v18 = 1;
    }
  }

  *a4 = v14;
  *(a4 + 16) = v15;
  *(a4 + 32) = v16;
  *(a4 + 48) = v17;
  *(a4 + 64) = v4;
  *(a4 + 72) = a1;
  *(a4 + 80) = v9;
  *(a4 + 88) = v18;
  return result;
}

BOOL sub_10005731C(uint64_t a1)
{
  sub_1000138F8(*(a1 + 24) + 24, v3);
  v1 = v4;
  if (v4)
  {
    sub_100013954(v3);
    memset(v5, 0, sizeof(v5));
    v6 = 0;
  }

  else
  {
    sub_100009F34(v3, v5);
  }

  sub_10000A184(v5, &qword_1001342A8, &unk_1000F39C0);
  return v1 == 0;
}

uint64_t sub_1000573A0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1000574BC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 40)
  {
    v8 = a1(i);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_100057540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 40);
  Hasher.init(_seed:)();
  sub_1000D7374();
  String.hash(into:)();

  sub_1000D7614();
  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();

    v14 = OSKextParseVersionCFString();
  }

  else
  {
    v14 = 0;
  }

  Hasher._combine(_:)(v14);
  sub_1000138F8(a1 + 24, v23);
  if (v24)
  {
    if (v24 == 1)
    {
      v15 = *&v23[0];
      sub_10005B1D0(&qword_1001342B0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v15 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(v23, v20);
    v16 = v21;
    v17 = v22;
    sub_100003C4C(v20, v21);
    (*(v17 + 64))(v16, v17);
    sub_10005B1D0(&qword_1001342B0, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v10, v6);
    sub_100003C90(v20);
  }

  Hasher._finalize()();
  v18 = -1 << *(a3 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a3 + 48) + 8 * result) = a1;
  *(*(a3 + 56) + 8 * result) = a2;
  ++*(a3 + 16);
  return result;
}

__n128 sub_100057820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 40);
  Hasher.init(_seed:)();
  sub_1000D7374();
  String.hash(into:)();

  sub_1000D7614();
  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();

    v14 = OSKextParseVersionCFString();
  }

  else
  {
    v14 = 0;
  }

  Hasher._combine(_:)(v14);
  sub_1000138F8(a1 + 24, v27);
  if (v28)
  {
    if (v28 == 1)
    {
      v15 = *&v27[0];
      sub_10005B1D0(&qword_1001342B0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v15 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(v27, v24);
    v16 = v25;
    v17 = v26;
    sub_100003C4C(v24, v25);
    (*(v17 + 64))(v16, v17);
    sub_10005B1D0(&qword_1001342B0, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v10, v6);
    sub_100003C90(v24);
  }

  Hasher._finalize()();
  v18 = -1 << *(a3 + 32);
  v19 = _HashTable.nextHole(atOrAfter:)();
  *(a3 + 64 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
  *(*(a3 + 48) + 8 * v19) = a1;
  v20 = (*(a3 + 56) + 80 * v19);
  *(v20 + 57) = *(a2 + 57);
  v21 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v21;
  result = *a2;
  v23 = *(a2 + 16);
  *v20 = *a2;
  v20[1] = v23;
  ++*(a3 + 16);
  return result;
}

uint64_t sub_100057B20(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

void *sub_100057BC0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaDictionary.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100041D50(v2, 0);

    v1 = sub_100058F5C(&v5, (v3 + 32), v2, v1);
    sub_1000145A4();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_100057C70(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100057C80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100057C90(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_10005806C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1000582CC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100057DF0(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_100057F5C(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_100058244(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_100057F5C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (**(*(a3 + 48) + 8 * v12) == a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_100058624(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_100058624(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10005806C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    sub_1000138F8(*(*(a3 + 48) + 8 * v13) + 24, v18);
    if (v19)
    {

      sub_100013954(v18);
      memset(v20, 0, sizeof(v20));
      v21 = 0;
      sub_10000A184(v20, &qword_1001342A8, &unk_1000F39C0);
    }

    else
    {
      sub_100009F34(v18, v20);

      sub_10000A184(v20, &qword_1001342A8, &unk_1000F39C0);

      *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_100058624(v17, a2, v22, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_100058624(v17, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100058244(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100057F5C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1000582CC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10005806C(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_100058344(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10005A880(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_1000583E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003CDC(&qword_100135118, &qword_1000F4FF8);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + v16);
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_100058624(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003CDC(&qword_100135048, &qword_1000F4F08);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    v17 = *(*(v4 + 56) + 8 * v15);

    result = sub_100057540(v16, v17, v9);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100058768(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DriverBinEntry();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v58 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = v46 - v12;
  v57 = type metadata accessor for UUID();
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  v14 = __chkstk_darwin(v57);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = v46 - v17;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100003CDC(&qword_100135078, &qword_1000F4F38);
  result = static _DictionaryStorage.allocate(capacity:)();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46[1] = v55 + 16;
  v47 = a2;
  v56 = v55 + 32;
  v22 = result + 64;
  v48 = a1;
  v46[0] = a4;
  v23 = v57;
  while (v20)
  {
    v24 = v16;
    v25 = __clz(__rbit64(v20));
    v52 = (v20 - 1) & v20;
LABEL_16:
    v28 = v25 | (v21 << 6);
    v29 = a4[6];
    v30 = v55;
    v54 = *(v55 + 72);
    v31 = v49;
    (*(v55 + 16))(v49, v29 + v54 * v28, v23);
    v32 = a4[7];
    v53 = *(v51 + 72);
    v33 = v32 + v53 * v28;
    v34 = v50;
    sub_10005B218(v33, v50, type metadata accessor for DriverBinEntry);
    v35 = *(v30 + 32);
    v16 = v24;
    v35(v24, v31, v23);
    sub_10005B280(v34, v58, type metadata accessor for DriverBinEntry);
    v36 = *(v19 + 40);
    sub_10005B1D0(&qword_100134FC8, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v37 = -1 << *(v19 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v37) >> 6;
      a2 = v47;
      a1 = v48;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v22 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    a2 = v47;
    a1 = v48;
LABEL_26:
    *(v22 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v35((*(v19 + 48) + v40 * v54), v16, v57);
    result = sub_10005B280(v58, *(v19 + 56) + v40 * v53, type metadata accessor for DriverBinEntry);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v46[0];
    v20 = v52;
    if (!a3)
    {
      return v19;
    }
  }

  v26 = v21;
  while (1)
  {
    v21 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v27 = a1[v21];
    ++v26;
    if (v27)
    {
      v24 = v16;
      v25 = __clz(__rbit64(v27));
      v52 = (v27 - 1) & v27;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_100058BF8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    if (a4[2] == a3)
    {
    }

    else
    {
      sub_100003CDC(&qword_1001350E8, &qword_1000F4FC0);
      v8 = static _DictionaryStorage.allocate(capacity:)();
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      while (v9)
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v14 = v11 | (v10 << 6);
        v15 = *(a4[6] + 8 * v14);
        v16 = (a4[7] + 80 * v14);
        v22[0] = *v16;
        v18 = v16[2];
        v17 = v16[3];
        v19 = v16[1];
        *&v23[9] = *(v16 + 57);
        v22[2] = v18;
        *v23 = v17;
        v22[1] = v19;

        sub_1000419A4(v22, &v21);
        sub_100057820(v15, v22, v8);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_20;
        }

        if (!v5)
        {
          return;
        }
      }

      v12 = v10;
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          return;
        }

        v13 = a1[v10];
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v9 = (v13 - 1) & v13;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }
  }
}

unint64_t sub_100058D6C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_100031E70(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_100058E40(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_100058E40(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_100003CDC(&qword_100135178, &qword_1000F5060);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_10000A184(a4, &qword_100135A80, &qword_1000F59D8);
  }

  result = sub_10000A990(a4, v10);
  if (a3 == 1)
  {
    return sub_10000A184(a4, &qword_100135A80, &qword_1000F59D8);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100058F5C(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v10 = v21 & *(v4 + 64);
    v23 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = __CocoaDictionary.makeIterator()();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v23 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v24 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      type metadata accessor for RealizedInfo(0);
      swift_dynamicCast();
      result = v25;
      v15 = v11;
      if (!v25)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));

    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v24;
    if (v13 == v24)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v22 = v11 + 1;
  }

  else
  {
    v22 = v12;
  }

  v15 = v22 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v23;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

uint64_t sub_100059150(uint64_t a1)
{
  v2 = type metadata accessor for LookupSpec();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000591AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  active = type metadata accessor for ActiveDriverInfo();
  v34 = *(active - 8);
  v9 = *(v34 + 64);
  v10 = __chkstk_darwin(active - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v32 = &v29 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_10005B218(*(a4 + 56) + a1 * (v23 | (v18 << 6)), v33, type metadata accessor for ActiveDriverInfo);
      v25 = v24;
      v26 = v32;
      sub_10005B280(v25, v32, type metadata accessor for ActiveDriverInfo);
      sub_10005B280(v26, a2, type metadata accessor for ActiveDriverInfo);
      if (v20 == v31)
      {
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += a1;
      result = v20;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100059410(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for URL();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1000596B4(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 80 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      *&v26[9] = *(v18 + 57);
      v25[2] = v20;
      *v26 = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x49uLL);
      if (v14 == v10)
      {
        sub_1000419A4(v25, v24);
        goto LABEL_24;
      }

      v11 += 80;
      sub_1000419A4(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100059848(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000599A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for RealizedInfo(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100059AA0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_100057B20(result);

  return sub_1000599A0(v4, v2, 0);
}

unint64_t sub_100059B78(unint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *a1;
  result = sub_10005A1A4(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = a1;
  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v58 = 0x8000000100104280;
  v53 = v3;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_82;
    }

    v13 = *(v5 + 8 * v9 + 32);

LABEL_16:
    v14 = *(v13 + 24);
    v54 = *(v3 + 24);
    v15 = *(v14 + 16);
    if (qword_100133A50 != -1)
    {
      swift_once();
    }

    v16 = qword_10014E8C0;
    v17 = *algn_10014E8C8;
    if (*(v15 + 16) && (v18 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v19 & 1) != 0) && (sub_10000B430(*(v15 + 56) + 32 * v18, v57), swift_dynamicCast()))
    {
      v20 = v55;
      v21 = v56;
    }

    else
    {
      v20 = 0xD000000000000014;
      v21 = v58;
    }

    v22 = *(v54 + 16);
    if (*(v22 + 16) && (v23 = sub_100061588(v16, v17), (v24 & 1) != 0) && (sub_10000B430(*(v22 + 56) + 32 * v23, v57), swift_dynamicCast()))
    {
      v25 = v56;
      if (v20 != v55)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v25 = v58;
      if (v20 != 0xD000000000000014)
      {
        goto LABEL_31;
      }
    }

    if (v21 == v25)
    {

      goto LABEL_32;
    }

LABEL_31:
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_32:
    v27 = *(v14 + 16);
    if (*(v27 + 16) && (v28 = sub_100061588(v16, v17), (v29 & 1) != 0) && (sub_10000B430(*(v27 + 56) + 32 * v28, v57), swift_dynamicCast()))
    {
      v30 = v55;
      v31 = v56;
    }

    else
    {
      v30 = 0xD000000000000014;
      v31 = v58;
    }

    if (v30 == 0xD000000000000014 && v58 == v31)
    {

      goto LABEL_58;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_57;
    }

    v33 = *(v14 + 16);
    if (qword_100133A70 != -1)
    {
      swift_once();
    }

    v34 = qword_10014E900;
    v35 = *algn_10014E908;
    if (*(v33 + 16) && (v36 = sub_100061588(qword_10014E900, *algn_10014E908), (v37 & 1) != 0) && (sub_10000B430(*(v33 + 56) + 32 * v36, v57), (swift_dynamicCast() & 1) != 0))
    {
      v38 = String._bridgeToObjectiveC()();

      v39 = OSKextParseVersionCFString();
    }

    else
    {
      v39 = 0;
    }

    v40 = *(v54 + 16);
    if (*(v40 + 16) && (v41 = sub_100061588(v34, v35), (v42 & 1) != 0) && (sub_10000B430(*(v40 + 56) + 32 * v41, v57), (swift_dynamicCast() & 1) != 0))
    {
      v43 = String._bridgeToObjectiveC()();

      v44 = OSKextParseVersionCFString();

      if (v39 != v44)
      {
        goto LABEL_57;
      }
    }

    else if (v39)
    {
LABEL_57:

      goto LABEL_58;
    }

    v45 = sub_1000DCBA8(v14 + 24, v54 + 24);

    if (v45)
    {
      v3 = v53;
      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        goto LABEL_83;
      }
    }

    else
    {
LABEL_58:
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_87;
          }

          v48 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v48)
          {
            goto LABEL_88;
          }

          if (v9 >= v48)
          {
            goto LABEL_89;
          }

          v46 = *(v5 + 32 + 8 * v8);
          v47 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_100068614(v5);
          v49 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v49) = 0;
        }

        v50 = v5 & 0xFFFFFFFFFFFFFF8;
        v51 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v47;

        if ((v5 & 0x8000000000000000) != 0 || v49)
        {
          v5 = sub_100068614(v5);
          v50 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_85;
        }

        if (v9 >= *(v50 + 16))
        {
          goto LABEL_86;
        }

        v10 = v50 + 8 * v9;
        v11 = *(v10 + 32);
        *(v10 + 32) = v46;

        *v52 = v5;
      }

      v12 = __OFADD__(v8++, 1);
      v3 = v53;
      if (v12)
      {
        goto LABEL_84;
      }

      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        goto LABEL_83;
      }
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

unint64_t sub_10005A1A4(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_53:
    v40 = v2 & 0xFFFFFFFFFFFFFF8;
    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v42 = v2 & 0xC000000000000001;
  v39 = v2;
  while (v43 != v3)
  {
    if (v42)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v40 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v5 = *(v2 + 8 * v3 + 32);
    }

    v6 = *(v5 + 24);
    v47 = *(a2 + 24);
    v7 = *(v6 + 16);
    if (qword_100133A50 != -1)
    {
      swift_once();
    }

    v8 = qword_10014E8C0;
    v9 = *algn_10014E8C8;
    if (*(v7 + 16) && (v10 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v11 & 1) != 0) && (sub_10000B430(*(v7 + 56) + 32 * v10, v46), swift_dynamicCast()))
    {
      v12 = v44;
      v13 = v45;
    }

    else
    {
      v12 = 0xD000000000000014;
      v13 = 0x8000000100104280;
    }

    v14 = *(v47 + 16);
    if (*(v14 + 16) && (v15 = sub_100061588(v8, v9), (v16 & 1) != 0) && (sub_10000B430(*(v14 + 56) + 32 * v15, v46), swift_dynamicCast()))
    {
      v17 = v45;
      if (v12 != v44)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v17 = 0x8000000100104280;
      if (v12 != 0xD000000000000014)
      {
        goto LABEL_26;
      }
    }

    if (v13 != v17)
    {
LABEL_26:
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }

LABEL_27:
    v19 = *(v6 + 16);
    if (*(v19 + 16) && (v20 = sub_100061588(v8, v9), (v21 & 1) != 0) && (sub_10000B430(*(v19 + 56) + 32 * v20, v46), swift_dynamicCast()))
    {
      v22 = v44;
      v23 = v45;
    }

    else
    {
      v22 = 0xD000000000000014;
      v23 = 0x8000000100104280;
    }

    if (v22 == 0xD000000000000014 && 0x8000000100104280 == v23)
    {

      goto LABEL_6;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      v25 = *(v6 + 16);
      if (qword_100133A70 != -1)
      {
        swift_once();
      }

      v26 = qword_10014E900;
      v27 = *algn_10014E908;
      if (*(v25 + 16) && (v28 = sub_100061588(qword_10014E900, *algn_10014E908), (v29 & 1) != 0) && (sub_10000B430(*(v25 + 56) + 32 * v28, v46), (swift_dynamicCast() & 1) != 0))
      {
        v30 = String._bridgeToObjectiveC()();

        v31 = OSKextParseVersionCFString();
      }

      else
      {
        v31 = 0;
      }

      v32 = *(v47 + 16);
      if (*(v32 + 16) && (v33 = sub_100061588(v26, v27), (v34 & 1) != 0) && (sub_10000B430(*(v32 + 56) + 32 * v33, v46), (swift_dynamicCast() & 1) != 0))
      {
        v35 = String._bridgeToObjectiveC()();

        v36 = OSKextParseVersionCFString();

        if (v31 == v36)
        {
LABEL_47:
          v37 = sub_1000DCBA8(v6 + 24, v47 + 24);

          if (v37)
          {
            return v3;
          }

          goto LABEL_6;
        }
      }

      else if (!v31)
      {
        goto LABEL_47;
      }
    }

LABEL_5:

LABEL_6:
    v4 = __OFADD__(v3++, 1);
    v2 = v39;
    if (v4)
    {
      goto LABEL_52;
    }
  }

  return 0;
}

uint64_t sub_10005A674(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for RealizedInfo(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_10005A794(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_100057B20(result);

  return sub_10005A674(v6, v5, 1, v3);
}

void sub_10005A880(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  v38 = 0;
  v5 = 0;
  v8 = a3[8];
  v6 = a3 + 8;
  v7 = v8;
  v9 = 1 << *(v6 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v39 = v6;
  v40 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v48 = (v11 - 1) & v11;
LABEL_12:
    v16 = v13 | (v5 << 6);
    v41 = v16;
    v17 = a3[7] + 80 * v16;
    v19 = *v17;
    v18 = *(v17 + 8);
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    v22 = *(v17 + 32);
    v23 = *(v17 + 48);
    v24 = *(v17 + 56);
    v25 = *(v17 + 64);
    v26 = *(v17 + 72);
    v44 = *(v17 + 40);
    v45 = *(*(a3[6] + 8 * v16) + 16);

    v46 = v26;
    v35 = v26;
    v47 = v18;
    v27 = v23;
    v28 = v23;
    v29 = v24;
    sub_10005AD88(v19, v18, v21, v20, v22, v44, v28, v24, v25, v35);
    if (qword_100133A50 != -1)
    {
      swift_once();
    }

    if (*(v45 + 16) && (v30 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v31 & 1) != 0) && (sub_10000B430(*(v45 + 56) + 32 * v30, v51), swift_dynamicCast()))
    {
      v32 = v49;
      v33 = v50;
    }

    else
    {
      v32 = 0xD000000000000014;
      v33 = 0x8000000100104280;
    }

    if (v32 == v52 && v33 == a5)
    {

      sub_10005AFAC(v19, v47, v21, v20, v22, v44, v27, v24, v25, v46);

      v11 = v48;
      goto LABEL_22;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10005AFAC(v19, v47, v21, v20, v22, v44, v27, v29, v25, v46);

    v11 = v48;
    if (v12)
    {
LABEL_22:
      *(a1 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v38++, 1))
      {
        goto LABEL_27;
      }
    }
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v40)
    {
      sub_100058BF8(a1, a2, v38, a3);
      return;
    }

    v15 = v39[v5];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v48 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

unint64_t *sub_10005ABBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_100058344(v15, v9, a1, a2, a3);

      swift_bridgeObjectRelease_n();
      return v13;
    }
  }

  __chkstk_darwin(v11);
  bzero(&v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  sub_10005A880((&v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);
  v13 = v12;

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v13;
}

uint64_t sub_10005AD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  switch(a10)
  {
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 16:
    case 17:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
      goto LABEL_2;
    case 3:
    case 6:
    case 14:
    case 18:
    case 26:
    case 42:

      goto LABEL_2;
    case 13:

      sub_100041D48(a4, a5);

      goto LABEL_2;
    case 15:

LABEL_2:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005AFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  switch(a10)
  {
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 16:
    case 17:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
      goto LABEL_2;
    case 3:
    case 6:
    case 14:
    case 18:
    case 26:
    case 42:

      goto LABEL_2;
    case 13:

      sub_100014988(a4, a5);

      goto LABEL_2;
    case 15:

LABEL_2:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005B1D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005B218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005B280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10005B2E8()
{
  result = qword_100135A70;
  if (!qword_100135A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135A70);
  }

  return result;
}

BOOL sub_10005B36C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  v6 = **(v1 + 32);
  v7 = v4;
  return (v3(&v7, &v6) & 1) == 0;
}

unint64_t sub_10005B3C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10005B470(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100031C40(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_10005B3C8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10005B530(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005B558(uint64_t a1)
{
  if ((*(a1 + 72) & 0x7Fu) <= 0x4A)
  {
    return *(a1 + 72) & 0x7F;
  }

  else
  {
    return (*a1 + 75);
  }
}

__n128 sub_10005B580(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10005B5A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72) >> 7;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_10005B5F4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 0;
      *(a1 + 72) = -a2 << 7;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005B66C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80) & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *(result + 72) &= 0x7FuLL;
  *(result + 80) = v2;
  return result;
}

unint64_t sub_10005B6E4()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = sub_10005B76C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10005B76C()
{
  result = qword_100135B08;
  if (!qword_100135B08)
  {
    type metadata accessor for OSExtension(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100135B08);
  }

  return result;
}

_BYTE *sub_10005B7B4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10008DF38(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_10005B834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  v8 = -1 << *(a1 + 32);
  v9 = _HashTable.startBucket.getter();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v15 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    v12 = *(v4 + 48);
    sub_10008DFBC(v7, &v7[v12], v9, *(a1 + 36), 0, a1);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 32))(a2, v7, v13);
    sub_100068024(&v7[v12], a2 + *(v4 + 48));
    return (*(v15 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_10005B9F4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1000659B8(v3, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_10005BA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    *v8 = sub_10008E0C0(&v8[8], result, *(a1 + 36), 0, a1);
    v9[1] = *&v8[24];
    v9[2] = *&v8[40];
    v10[0] = *&v8[56];
    *(v10 + 9) = *&v8[65];
    v9[0] = *&v8[8];
    v15 = *&v8[40];
    v16[0] = *&v8[56];
    *(v16 + 9) = *&v8[65];
    v13 = *&v8[8];
    v14 = *&v8[24];
    *v11 = *v8;
    *&v11[8] = *&v8[8];
    *&v11[24] = *&v8[24];
    *&v11[40] = *&v8[40];
    *&v11[56] = *&v8[56];
    *&v11[65] = *&v8[65];
    v6 = *&v11[48];
    *(a2 + 32) = *&v11[32];
    *(a2 + 48) = v6;
    *(a2 + 64) = *&v11[64];
    *(a2 + 80) = v11[80];
    v7 = *&v11[16];
    *a2 = *v11;
    *(a2 + 16) = v7;
    v12 = *v8;

    sub_1000419A4(v9, v17);
    sub_100014894(v11, v17, &qword_100135DC0, &qword_1000F7BA8);
    sub_10000A184(&v12, &qword_100135DC0, &qword_1000F7BA8);
    v17[2] = *&v8[32];
    v17[3] = *&v8[48];
    v17[4] = *&v8[64];
    v18 = v8[80];
    v17[0] = *v8;
    v17[1] = *&v8[16];
    return sub_10000A184(v17, &qword_100135DC0, &qword_1000F7BA8);
  }

  return result;
}

uint64_t sub_10005BC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    v6 = sub_10008E188(&v11, result, *(a1 + 36), 0, a1);
    v7 = v11;
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    *(a2 + 32) = v7;

    sub_1000146B0(v7, *(&v7 + 1));

    sub_1000146B0(v7, *(&v7 + 1));

    sub_100014528(v7, *(&v7 + 1));

    return sub_100014528(v7, *(&v7 + 1));
  }

  return result;
}

void *sub_10005BD44(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000F3160;
      *(v20 + 56) = &type metadata for UInt8;
      *(v20 + 64) = &protocol witness table for UInt8;
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_1000635A4((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      v8[2] = v24 + 1;
      v25 = &v8[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_10005C0B4()
{
  v0 = sub_10003E554(&off_100125F58);
  sub_100003CDC(&qword_100135E58, &unk_1000F7C08);
  result = swift_arrayDestroy();
  off_100135B38 = v0;
  return result;
}

driverkitd::ApprovalState_optional __swiftcall ApprovalState.init(fromString:)(Swift::String fromString)
{
  if (qword_100133A30 != -1)
  {
    countAndFlagsBits = fromString._countAndFlagsBits;
    object = fromString._object;
    swift_once();
    fromString._countAndFlagsBits = countAndFlagsBits;
    fromString._object = object;
  }

  v1 = off_100135B38;
  if (*(off_100135B38 + 2))
  {
    v2 = sub_1000618D4(fromString._countAndFlagsBits, fromString._object, &String.hash(into:), sub_100062020);
    v4 = v3;

    if (v4)
    {
      return *(v1[7] + v2);
    }
  }

  else
  {
  }

  return 3;
}

Swift::Bool __swiftcall ApprovalState.canTransitionTo(_:)(driverkitd::ApprovalState a1)
{
  if (v1 == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return v2 == a1;
}

driverkitd::ApprovalState_optional __swiftcall ApprovalState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t *sub_10005C240@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10005C298(uint64_t a1)
{
  if (qword_100133A30 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  __chkstk_darwin(a1);
  v3 = sub_10006573C(v2, v1);
  v4 = sub_10005B7B4(v3);
  v6 = v5;

  if (v6)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005C370()
{
  v1 = *v0;
  if (qword_100133A30 != -1)
  {
    swift_once();
  }

  v2 = __chkstk_darwin(off_100135B38);
  v3 = sub_10006573C(v2, sub_10006861C);
  v4 = sub_10005B7B4(v3);
  v6 = v5;

  if (v6)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t ApprovalState.debugDescription.getter()
{
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 10272;
  v0._object = 0xE200000000000000;
  String.append(_:)(v0);
  if (qword_100133A30 != -1)
  {
    swift_once();
  }

  v1 = __chkstk_darwin(off_100135B38);
  v2 = sub_10006573C(v1, sub_10006861C);
  v3 = sub_10005B7B4(v2);
  v5 = v4;

  if (v5)
  {
    v7._countAndFlagsBits = v3;
    v7._object = v5;
    String.append(_:)(v7);

    v8._countAndFlagsBits = 41;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10005C62C(uint64_t a1, void *a2, char a3)
{
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  v8 = NSOSStatusErrorDomain;
  v9 = sub_10005C77C(a1, a2, a3 & 1);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_10003E208(inited);
  swift_setDeallocating();
  sub_10000A184(inited + 32, &unk_1001372D0, &unk_1000F4500);
  v11 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWithDomain:v8 code:5 userInfo:isa];

  return v13;
}

unint64_t sub_10005C77C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(18);

    v7 = 0xD000000000000010;
  }

  else
  {
    _StringGuts.grow(_:)(20);

    v7 = 0xD000000000000012;
  }

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  return v7;
}

uint64_t sub_10005C844()
{
  if (*v0)
  {
    return 0x7261506472696874;
  }

  else
  {
    return 0x7261507473726966;
  }
}

uint64_t sub_10005C87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7261507473726966 && a2 == 0xEA00000000007974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261506472696874 && a2 == 0xEA00000000007974)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10005C960(uint64_t a1)
{
  v2 = sub_1000658BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005C99C(uint64_t a1)
{
  v2 = sub_1000658BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005C9E4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10005CA20(uint64_t a1)
{
  v2 = sub_100065964();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005CA5C(uint64_t a1)
{
  v2 = sub_100065964();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005CABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x8000000100105FB0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10005CB50(uint64_t a1)
{
  v2 = sub_100065910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005CB8C(uint64_t a1)
{
  v2 = sub_100065910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ApprovalDBEntrySource.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v26 = a3;
  v23 = a2;
  v4 = sub_100003CDC(&qword_100135B40, &qword_1000F6AE0);
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v22 = sub_100003CDC(&qword_100135B48, &qword_1000F6AE8);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v22);
  v11 = &v21 - v10;
  v12 = sub_100003CDC(&qword_100135B50, &unk_1000F6AF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  v17 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_1000658BC();
  v18 = v26;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18 >> 60 == 15)
  {
    LOBYTE(v27) = 0;
    sub_100065964();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v8 + 8))(v11, v22);
  }

  else
  {
    LOBYTE(v27) = 1;
    sub_100065910();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v23;
    v28 = v18;
    sub_10001D6A4();
    v20 = v25;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v24 + 8))(v7, v20);
  }

  return (*(v13 + 8))(v16, v12);
}

void *sub_10005CEF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100065A14(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void ApprovalDBEntrySource.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);

    Data.hash(into:)();
  }
}

Swift::Int ApprovalDBEntrySource.hashValue.getter(uint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int sub_10005D034()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void sub_10005D0AC()
{
  if (v0[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1uLL);

    Data.hash(into:)();
  }
}

Swift::Int sub_10005D12C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t static ApprovalDBEntrySource.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    return a4 >> 60 == 15;
  }

  if (a4 >> 60 == 15)
  {
    return 0;
  }

  return sub_10006475C(a1, a2, a3, a4);
}

uint64_t sub_10005D1D8(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (v4 >> 60 == 15)
  {
    return 0;
  }

  return sub_10006475C(*a1, v3, *a2, v4);
}

uint64_t ApprovalDBEntrySource.description.getter(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0x6D6574737973;
  }

  _StringGuts.grow(_:)(38);

  sub_10005BD44(a1, a2);
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0);
  v5 = BidirectionalCollection<>.joined(separator:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  return 0xD000000000000024;
}

uint64_t ApprovalDBEntry.init(driverIdentifier:source:approvalState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

unint64_t sub_10005D370()
{
  v1 = 0x656372756F73;
  if (*v0 != 1)
  {
    v1 = 0x6C61766F72707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10005D3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006607C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005D40C(uint64_t a1)
{
  v2 = sub_100065F48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005D448(uint64_t a1)
{
  v2 = sub_100065F48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ApprovalDBEntry.description.getter()
{
  v13 = *v0;
  v14 = v13;
  sub_100065EEC(&v14, v12);
  v1._countAndFlagsBits = 544106784;
  v1._object = 0xE400000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = ApprovalDBEntrySource.description.getter(*(v0 + 2), *(v0 + 3));
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8250;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4 = *(v0 + 32);
  if (qword_100133A30 != -1)
  {
    swift_once();
  }

  v5 = __chkstk_darwin(off_100135B38);
  v6 = sub_10006573C(v5, sub_10006861C);
  v7 = sub_10005B7B4(v6);
  v9 = v8;

  if (v9)
  {
    v11._countAndFlagsBits = v7;
    v11._object = v9;
    String.append(_:)(v11);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ApprovalDBEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100003CDC(&qword_100135B70, &qword_1000F6B00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_100065F48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = *(v3 + 1);
    v17 = v16;
    v15[23] = 1;
    sub_100065F9C(&v17, v15);
    sub_100065FD4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100014528(v16, *(&v16 + 1));
    LOBYTE(v16) = *(v3 + 32);
    v15[0] = 2;
    sub_100066028();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

double ApprovalDBEntry.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000661A4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

BOOL sub_10005D7FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s10driverkitd15ApprovalDBEntryV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

uint64_t sub_10005D848(void *a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100135D70, &qword_1000F7B60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_100067DF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_100003CDC(&qword_100135D80, &qword_1000F7B68);
  sub_100067E48(&qword_100135D88, sub_100067EC0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10005DA20(uint64_t a1)
{
  v2 = sub_100067DF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005DA5C(uint64_t a1)
{
  v2 = sub_100067DF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10005DA98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000664F0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ApprovalDB.entries.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*ApprovalDB.entries.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_10005DB60;
}

uint64_t sub_10005DB60(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *v3 = v4;
  }

  else
  {
    v7 = a1[2];

    *v3 = v4;
  }

  return result;
}

uint64_t sub_10005DBD4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *a1;
    v7 = *(a1 + 8);
    v8 = (v3 + 32);
    v52 = v4;
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_69;
      }

      v10 = *v8;
      v9 = v8[1];
      v61 = *(v8 + 32);
      v59 = v10;
      v60 = v9;
      v11 = v10 == v6 && *(&v10 + 1) == v7;
      if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v12 = *(a1 + 24);
      if (*(&v60 + 1) >> 60 == 15)
      {
        if (v12 >> 60 == 15)
        {
          goto LABEL_66;
        }

        goto LABEL_4;
      }

      if (v12 >> 60 == 15)
      {
        goto LABEL_4;
      }

      v13 = *(a1 + 16);
      v14 = *(&v60 + 1) >> 62;
      v15 = v12 >> 62;
      if (*(&v60 + 1) >> 62 == 3)
      {
        break;
      }

      if (v14 <= 1)
      {
        if (!v14)
        {
          v16 = BYTE14(v60);
          if (v15 > 1)
          {
            goto LABEL_35;
          }

          goto LABEL_30;
        }

        LODWORD(v16) = DWORD1(v60) - v60;
        if (__OFSUB__(DWORD1(v60), v60))
        {
          goto LABEL_73;
        }

        v16 = v16;
        goto LABEL_29;
      }

      if (v14 == 2)
      {
        v18 = *(v60 + 16);
        v17 = *(v60 + 24);
        v19 = __OFSUB__(v17, v18);
        v16 = v17 - v18;
        if (v19)
        {
          goto LABEL_72;
        }

        goto LABEL_29;
      }

      v16 = 0;
      if (v15 > 1)
      {
LABEL_35:
        if (v15 != 2)
        {
          if (!v16)
          {
            goto LABEL_66;
          }

          goto LABEL_4;
        }

        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        v19 = __OFSUB__(v21, v22);
        v20 = v21 - v22;
        if (v19)
        {
          goto LABEL_71;
        }

        goto LABEL_37;
      }

LABEL_30:
      if (v15)
      {
        LODWORD(v20) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
        }

        v20 = v20;
      }

      else
      {
        v20 = BYTE6(v12);
      }

LABEL_37:
      if (v16 == v20)
      {
        if (v16 < 1)
        {
          goto LABEL_66;
        }

        if (v14 > 1)
        {
          v53 = *(a1 + 16);
          if (v14 != 2)
          {
            memset(v56, 0, 14);
            sub_100067FBC(&v59, &v57);
            v24 = v53;
            goto LABEL_53;
          }

          v48 = *(v60 + 24);
          v51 = *(v60 + 16);
          sub_100067FBC(&v59, &v57);
          v25 = __DataStorage._bytes.getter();
          if (v25)
          {
            v45 = v25;
            v26 = __DataStorage._offset.getter();
            v27 = v51;
            if (__OFSUB__(v51, v26))
            {
              goto LABEL_76;
            }

            v46 = v51 - v26 + v45;
          }

          else
          {
            v46 = 0;
            v27 = v51;
          }

          if (__OFSUB__(v48, v27))
          {
            goto LABEL_75;
          }

          __DataStorage._length.getter();
          sub_100045F4C(v46, v53, v12, &v57);
          v30 = v57;
        }

        else
        {
          if (!v14)
          {
            v56[0] = v60;
            LOWORD(v56[1]) = WORD4(v60);
            *(&v56[1] + 2) = *(&v60 + 10);
            v23 = v13;
            sub_100067FBC(&v59, &v57);
            v4 = v52;
            v24 = v23;
LABEL_53:
            sub_100045F4C(v56, v24, v12, &v57);
            if (v57)
            {
              goto LABEL_67;
            }

LABEL_61:
            sub_100067FF4(&v59);
            goto LABEL_4;
          }

          v54 = *(a1 + 16);
          v49 = v60;
          if (v60 >> 32 < v60)
          {
            goto LABEL_74;
          }

          sub_100067FBC(&v59, &v57);
          v28 = __DataStorage._bytes.getter();
          if (v28)
          {
            v47 = v28;
            v29 = __DataStorage._offset.getter();
            if (__OFSUB__(v49, v29))
            {
              goto LABEL_77;
            }

            v50 = v49 - v29 + v47;
          }

          else
          {
            v50 = 0;
          }

          __DataStorage._length.getter();
          sub_100045F4C(v50, v54, v12, &v57);
          v30 = v57;
        }

        v4 = v52;
        if (v30)
        {
          goto LABEL_67;
        }

        goto LABEL_61;
      }

LABEL_4:
      ++v5;
      v8 = (v8 + 40);
      if (v4 == v5)
      {
        goto LABEL_62;
      }
    }

    v16 = 0;
    if (v60 == __PAIR128__(0xC000000000000000, 0) && v12 >> 62 == 3)
    {
      v16 = 0;
      if (!v13 && v12 == 0xC000000000000000)
      {
LABEL_66:
        sub_100067FBC(&v59, &v57);
LABEL_67:
        v57 = 0;
        v58 = 0xE000000000000000;
        _StringGuts.grow(_:)(64);
        v38._countAndFlagsBits = 0xD000000000000027;
        v38._object = 0x80000001001060C0;
        String.append(_:)(v38);
        v39._countAndFlagsBits = ApprovalDBEntry.description.getter();
        String.append(_:)(v39);

        v40._object = 0x80000001001060F0;
        v40._countAndFlagsBits = 0xD000000000000015;
        String.append(_:)(v40);
        v41._countAndFlagsBits = ApprovalDBEntry.description.getter();
        String.append(_:)(v41);

        v42 = v57;
        v43 = v58;
        sub_100067F68();
        swift_allocError();
        *v44 = v42;
        *(v44 + 8) = v43;
        *(v44 + 16) = 0;
        swift_willThrow();
        return sub_100067FF4(&v59);
      }
    }

LABEL_29:
    if (v15 > 1)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

LABEL_62:

  v31 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_69:
    v31 = sub_100031208(0, *(v3 + 16) + 1, 1, v3);
  }

  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_100031208((v32 > 1), v33 + 1, 1, v31);
  }

  *(v31 + 2) = v33 + 1;
  v34 = &v31[40 * v33];
  v35 = *a1;
  v36 = *(a1 + 16);
  v34[64] = *(a1 + 32);
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  sub_100067FBC(a1, &v57);

  *v55 = v31;
  return result;
}

uint64_t sub_10005E1C8(uint64_t *a1)
{
  v4 = *v1;
  v65 = *(*v1 + 16);
  if (v65)
  {
    v5 = 0;
    v67 = a1[1];
    v68 = *a1;
    v6 = 64;
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
LABEL_86:
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
        goto LABEL_94;
      }

      v8 = *(v4 + v6 - 32);
      v7 = *(v4 + v6 - 24);
      v3 = *(v4 + v6 - 16);
      v2 = *(v4 + v6 - 8);
      LODWORD(v9) = *(v4 + v6);
      v10 = v8 == v68 && v7 == v67;
      if (!v10)
      {
        v11 = *(v4 + v6 - 32);
        v12 = *(v4 + v6 - 24);
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v13 = a1[3];
      if (v2 >> 60 == 15)
      {
        if (v13 >> 60 == 15)
        {
          goto LABEL_70;
        }

LABEL_43:

        sub_1000146B0(v3, v2);
        goto LABEL_44;
      }

      if (v13 >> 60 == 15)
      {
        goto LABEL_43;
      }

      v14 = a1[2];
      v15 = v2 >> 62;
      v16 = v13 >> 62;
      if (v2 >> 62 == 3)
      {
        break;
      }

      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v23 = *(v3 + 16);
          v22 = *(v3 + 24);
          v20 = __OFSUB__(v22, v23);
          v17 = v22 - v23;
          if (v20)
          {
            goto LABEL_88;
          }

          goto LABEL_29;
        }

        v17 = 0;
        if (v16 > 1)
        {
          goto LABEL_23;
        }
      }

      else if (v15)
      {
        LODWORD(v17) = HIDWORD(v3) - v3;
        if (__OFSUB__(HIDWORD(v3), v3))
        {
          goto LABEL_89;
        }

        v17 = v17;
        if (v16 > 1)
        {
LABEL_23:
          if (v16 != 2)
          {
            if (!v17)
            {
              goto LABEL_70;
            }

            goto LABEL_43;
          }

          v19 = *(v14 + 16);
          v18 = *(v14 + 24);
          v20 = __OFSUB__(v18, v19);
          v21 = v18 - v19;
          if (v20)
          {
            goto LABEL_87;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v17 = BYTE6(v2);
        if (v16 > 1)
        {
          goto LABEL_23;
        }
      }

LABEL_30:
      if (!v16)
      {
        v21 = BYTE6(v13);
LABEL_32:
        if (v17 != v21)
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }

      if (__OFSUB__(HIDWORD(v14), v14))
      {
        goto LABEL_86;
      }

      if (v17 != HIDWORD(v14) - v14)
      {
        goto LABEL_43;
      }

LABEL_38:
      if (v17 < 1)
      {
LABEL_70:

        sub_1000146B0(v3, v2);
LABEL_71:
        v38 = *(a1 + 32);
        v10 = v9 == v38;
        v39 = v9;
        LOBYTE(v9) = v9 != v38;
        if (v10)
        {
          goto LABEL_84;
        }

        v69 = *(a1 + 32);
        if (v39)
        {
          v40 = v39;
          if (v39 == 1)
          {
            if (v38 != 2)
            {
              goto LABEL_75;
            }

LABEL_80:

            sub_1000146B0(v3, v2);

            v51 = v4;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = sub_1000646B8(v4);
            }

            if (v5 >= *(v51 + 2))
            {
              __break(1u);
            }

            v52 = &v51[v6];
            v53 = *&v51[v6 - 24];
            v54 = *&v51[v6 - 16];
            v55 = *(v52 - 1);
            *(v52 - 4) = v8;
            *(v52 - 3) = v7;
            *(v52 - 2) = v3;
            *(v52 - 1) = v2;
            *v52 = v69;

            sub_100014528(v54, v55);

            *v63 = v51;
LABEL_84:

            sub_100014528(v3, v2);
            return v9 & 1;
          }
        }

        else
        {
          v40 = 0;
        }

        if (v38 == 1)
        {
          goto LABEL_80;
        }

LABEL_75:
        *&v71 = 0;
        *(&v71 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        *&v71 = 0xD00000000000001DLL;
        *(&v71 + 1) = 0x80000001001060A0;
        v72 = v8;
        v73 = v7;
        v74 = v3;
        v75 = v2;
        v76 = v40;
        v41._countAndFlagsBits = ApprovalDBEntry.description.getter();
        String.append(_:)(v41);

        v42._countAndFlagsBits = 0x2077656E206F7420;
        v42._object = 0xEE00206574617473;
        String.append(_:)(v42);
        if (qword_100133A30 == -1)
        {
LABEL_76:
          v43 = __chkstk_darwin(off_100135B38);
          v44 = sub_10006573C(v43, sub_10006861C);
          v45 = sub_10005B7B4(v44);
          v47 = v46;

          if (v47)
          {
            v48._countAndFlagsBits = v45;
            v48._object = v47;
            String.append(_:)(v48);

            v9 = *(&v71 + 1);
            v49 = v71;
            sub_100067F68();
            swift_allocError();
            *v50 = __PAIR128__(v9, v49);
            *(v50 + 16) = 0;
            swift_willThrow();

            sub_100014528(v3, v2);
            return v9 & 1;
          }

          __break(1u);
          return result;
        }

LABEL_94:
        swift_once();
        goto LABEL_76;
      }

      if (v15 > 1)
      {
        v64 = a1[2];
        if (v15 != 2)
        {
          *(&v71 + 6) = 0;
          *&v71 = 0;

          sub_1000146B0(v3, v2);
          sub_100045F4C(&v71, v64, v13, &v70);
          if (v70)
          {
            goto LABEL_71;
          }

          goto LABEL_44;
        }

        v62 = v9;
        v59 = *(v3 + 24);
        v61 = *(v3 + 16);

        sub_1000146B0(v3, v2);
        v25 = __DataStorage._bytes.getter();
        if (v25)
        {
          v56 = v25;
          v26 = __DataStorage._offset.getter();
          v27 = v61;
          if (__OFSUB__(v61, v26))
          {
            goto LABEL_92;
          }

          v57 = v61 - v26 + v56;
        }

        else
        {
          v57 = 0;
          v27 = v61;
        }

        if (__OFSUB__(v59, v27))
        {
          goto LABEL_91;
        }

        __DataStorage._length.getter();
        v30 = v57;
      }

      else
      {
        v62 = v9;
        if (!v15)
        {
          *&v71 = v3;
          WORD4(v71) = v2;
          BYTE10(v71) = BYTE2(v2);
          BYTE11(v71) = BYTE3(v2);
          BYTE12(v71) = BYTE4(v2);
          BYTE13(v71) = BYTE5(v2);
          v24 = v14;

          sub_1000146B0(v3, v2);
          sub_100045F4C(&v71, v24, v13, &v70);
          if (v70)
          {
            goto LABEL_67;
          }

          goto LABEL_44;
        }

        v64 = a1[2];
        if (v3 >> 32 < v3)
        {
          goto LABEL_90;
        }

        sub_1000146B0(v3, v2);
        v28 = __DataStorage._bytes.getter();
        if (v28)
        {
          v58 = v28;
          v29 = __DataStorage._offset.getter();
          if (__OFSUB__(v3, v29))
          {
            goto LABEL_93;
          }

          v60 = v3 - v29 + v58;
        }

        else
        {
          v60 = 0;
        }

        __DataStorage._length.getter();
        v30 = v60;
      }

      sub_100045F4C(v30, v64, v13, &v71);
      if (v71)
      {
LABEL_67:
        LODWORD(v9) = v62;
        goto LABEL_71;
      }

LABEL_44:
      ++v5;

      sub_100014528(v3, v2);
      v6 += 40;
      if (v65 == v5)
      {
        goto LABEL_68;
      }
    }

    v17 = 0;
    if (!v3 && v2 == 0xC000000000000000 && v13 >> 62 == 3)
    {
      v17 = 0;
      if (!v14 && v13 == 0xC000000000000000)
      {

        sub_1000146B0(0, 0xC000000000000000);
        v3 = 0;
        goto LABEL_71;
      }
    }

LABEL_29:
    if (v16 > 1)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

LABEL_68:
  *&v71 = 0;
  *(&v71 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  v31._countAndFlagsBits = 0xD00000000000002CLL;
  v31._object = 0x8000000100106050;
  String.append(_:)(v31);
  String.append(_:)(*a1);
  v32._countAndFlagsBits = 0x656372756F73202CLL;
  v32._object = 0xEA00000000002020;
  String.append(_:)(v32);
  v33._countAndFlagsBits = ApprovalDBEntrySource.description.getter(a1[2], a1[3]);
  String.append(_:)(v33);

  v34._object = 0x8000000100106080;
  v34._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v34);
  v9 = *(&v71 + 1);
  v35 = v71;
  sub_100067F68();
  swift_allocError();
  *v36 = __PAIR128__(v9, v35);
  *(v36 + 16) = 1;
  swift_willThrow();
  return v9 & 1;
}

uint64_t sub_10005F0FC()
{
  if (*v0)
  {
    result = 0x6E6F6973726576;
  }

  else
  {
    result = 12406;
  }

  *v0;
  return result;
}

uint64_t sub_10005F12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12406 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10005F200(uint64_t a1)
{
  v2 = sub_100066448();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005F23C(uint64_t a1)
{
  v2 = sub_100066448();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ApprovalDB.encode(to:)(void *a1, uint64_t a2)
{
  v5 = sub_100003CDC(&qword_100135B90, &qword_1000F6B08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_100066448();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v12[15] = 0;
  sub_10006649C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005F430@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000666A4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Int sub_10005F48C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10005F4D0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10005F510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10005F598(uint64_t a1)
{
  v2 = sub_100066868();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005F5D4(uint64_t a1)
{
  v2 = sub_100066868();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ApprovalSettingsState.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100135BA8, &qword_1000F6B10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_100066868();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_100003CDC(&qword_100135BB8, &qword_1000F6B18);
  sub_100068234(&qword_100135BC0, sub_1000668BC);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

void *sub_10005F7B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100066910(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10005F800(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  if (v7)
  {
LABEL_7:
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
    goto LABEL_13;
  }

  while (1)
  {
    v12 = v3;
    do
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v13 = *(v4 + 8 * v3);
      ++v12;
    }

    while (!v13);
    v10 = __clz(__rbit64(v13));
    v11 = (v13 - 1) & v13;
LABEL_13:
    v124 = a1;
    v14 = *(a1 + 48) + 72 * (v10 | (v3 << 6));
    v134 = *v14;
    v16 = *(v14 + 32);
    v15 = *(v14 + 48);
    v17 = *(v14 + 16);
    v138 = *(v14 + 64);
    v136 = v16;
    v137 = v15;
    v135 = v17;
    v18 = *(a2 + 40);
    Hasher.init(_seed:)();
    sub_1000681CC(&v134, &__s2);
    ApprovalSettingsStateEntry.hash(into:)();
    v19 = Hasher._finalize()();
    v20 = -1 << *(a2 + 32);
    v21 = v19 & ~v20;
    if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_171:
      sub_100068204(&v134);
      return 0;
    }

    v122 = v11;
    v123 = v8;
    v22 = ~v20;
    v23 = v134;
    while (1)
    {
      v24 = *(a2 + 48) + 72 * v21;
      v129 = *v24;
      v26 = *(v24 + 32);
      v25 = *(v24 + 48);
      v27 = *(v24 + 16);
      v133 = *(v24 + 64);
      v132 = v25;
      v130 = v27;
      v131 = v26;
      if (v129 != v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (*(&v130 + 1))
      {
        if (!*(&v135 + 1) || v130 != v135 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(&v135 + 1))
      {
        goto LABEL_16;
      }

      if (*(&v131 + 1))
      {
        if (!*(&v136 + 1) || v131 != v136 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(&v136 + 1))
      {
        goto LABEL_16;
      }

      v28 = *(&v137 + 1);
      if (*(&v132 + 1) >> 60 == 15)
      {
        if (*(&v137 + 1) >> 60 == 15)
        {
          goto LABEL_31;
        }

        goto LABEL_16;
      }

      if (*(&v137 + 1) >> 60 == 15)
      {
        goto LABEL_16;
      }

      v29 = *(&v132 + 1) >> 62;
      v30 = *(&v137 + 1) >> 62;
      if (*(&v132 + 1) >> 62 == 3)
      {
        v31 = 0;
        if (v132 == __PAIR128__(0xC000000000000000, 0) && *(&v137 + 1) >> 62 == 3)
        {
          v31 = 0;
          if (v137 == __PAIR128__(0xC000000000000000, 0))
          {
            goto LABEL_31;
          }
        }

        goto LABEL_54;
      }

      if (v29 <= 1)
      {
        if (!v29)
        {
          v31 = BYTE14(v132);
          if (v30 > 1)
          {
            break;
          }

          goto LABEL_55;
        }

        LODWORD(v31) = DWORD1(v132) - v132;
        if (__OFSUB__(DWORD1(v132), v132))
        {
          goto LABEL_176;
        }

        v31 = v31;
LABEL_54:
        if (v30 > 1)
        {
          break;
        }

        goto LABEL_55;
      }

      if (v29 == 2)
      {
        v37 = *(v132 + 16);
        v36 = *(v132 + 24);
        v34 = __OFSUB__(v36, v37);
        v31 = v36 - v37;
        if (v34)
        {
          goto LABEL_177;
        }

        goto LABEL_54;
      }

      v31 = 0;
      if (v30 > 1)
      {
        break;
      }

LABEL_55:
      if (!v30)
      {
        v35 = BYTE14(v137);
        goto LABEL_57;
      }

      if (__OFSUB__(DWORD1(v137), v137))
      {
        goto LABEL_174;
      }

      if (v31 == DWORD1(v137) - v137)
      {
        goto LABEL_61;
      }

LABEL_16:
      v21 = (v21 + 1) & v22;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_171;
      }
    }

    if (v30 != 2)
    {
      if (v31)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

    v33 = *(v137 + 16);
    v32 = *(v137 + 24);
    v34 = __OFSUB__(v32, v33);
    v35 = v32 - v33;
    if (v34)
    {
      goto LABEL_175;
    }

LABEL_57:
    if (v31 != v35)
    {
      goto LABEL_16;
    }

LABEL_61:
    if (v31 >= 1)
    {
      break;
    }

LABEL_31:
    if (v133 != v138)
    {
      goto LABEL_16;
    }

    sub_100068204(&v134);
    a1 = v124;
    v7 = v122;
    v8 = v123;
    if (v122)
    {
      goto LABEL_7;
    }
  }

  if (v29 <= 1)
  {
    if (!v29)
    {
      __s1[0] = v132;
      LODWORD(__s1[1]) = DWORD2(v132);
      WORD2(__s1[1]) = WORD6(v132);
      if (v30)
      {
        if (v30 == 1)
        {
          v99 = (v137 >> 32) - v137;
          v110 = v137;
          if (v137 >> 32 < v137)
          {
            goto LABEL_182;
          }

          sub_1000681CC(&v129, &__s2);
          v38 = __DataStorage._bytes.getter();
          if (!v38)
          {
            goto LABEL_212;
          }

          v39 = v38;
          v40 = __DataStorage._offset.getter();
          if (__OFSUB__(v110, v40))
          {
            goto LABEL_186;
          }

          v41 = (v110 - v40 + v39);
          v42 = __DataStorage._length.getter();
          if (!v41)
          {
            goto LABEL_211;
          }

LABEL_109:
          if (v42 >= v99)
          {
            v68 = v99;
          }

          else
          {
            v68 = v42;
          }

          v69 = __s1;
LABEL_165:
          p_s2 = v41;
LABEL_166:
          v91 = memcmp(v69, p_s2, v68);
          sub_100068204(&v129);
          if (v91)
          {
            goto LABEL_16;
          }

          goto LABEL_31;
        }

        v105 = *(v137 + 24);
        v116 = *(v137 + 16);
        sub_1000681CC(&v129, &__s2);
        v60 = __DataStorage._bytes.getter();
        if (v60)
        {
          v61 = v60;
          v62 = __DataStorage._offset.getter();
          v63 = v116;
          if (__OFSUB__(v116, v62))
          {
            goto LABEL_191;
          }

          v64 = (v116 - v62 + v61);
        }

        else
        {
          v64 = 0;
          v63 = v116;
        }

        v121 = v64;
        v81 = v105 - v63;
        if (__OFSUB__(v105, v63))
        {
          goto LABEL_184;
        }

        v82 = __DataStorage._length.getter();
        p_s2 = v121;
        if (!v121)
        {
          goto LABEL_210;
        }

LABEL_130:
        if (v82 >= v81)
        {
          v68 = v81;
        }

        else
        {
          v68 = v82;
        }

        v69 = __s1;
        goto LABEL_166;
      }

LABEL_86:
      __s2 = v137;
      v127 = DWORD2(v137);
      v128 = WORD6(v137);
      if (memcmp(__s1, &__s2, BYTE14(v137)))
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

    v101 = *(&v137 + 1) >> 62;
    v112 = v137;
    v97 = v132;
    if (v132 > v132 >> 32)
    {
      goto LABEL_178;
    }

    sub_1000681CC(&v129, &__s2);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v94 = v45;
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v97, v46))
      {
        goto LABEL_180;
      }

      v98 = (v97 + v94 - v46);
    }

    else
    {
      v98 = 0;
    }

    __DataStorage._length.getter();
    if (v101 != 2)
    {
      v56 = v112;
      if (v101 == 1)
      {
        v57 = v112;
        v115 = (v112 >> 32) - v112;
        if (v56 >> 32 < v56)
        {
          goto LABEL_189;
        }

        v58 = __DataStorage._bytes.getter();
        if (v58)
        {
          v104 = v58;
          v59 = __DataStorage._offset.getter();
          if (__OFSUB__(v57, v59))
          {
            goto LABEL_196;
          }

          v41 = (v57 - v59 + v104);
        }

        else
        {
          v41 = 0;
        }

        v90 = __DataStorage._length.getter();
        v87 = v115;
        if (v90 < v115)
        {
          v87 = v90;
        }

        v69 = v98;
        if (!v98)
        {
          goto LABEL_206;
        }

        if (!v41)
        {
          goto LABEL_207;
        }

        goto LABEL_162;
      }

      v69 = v98;
      __s2 = v112;
      LOWORD(v127) = v28;
      BYTE2(v127) = BYTE2(v28);
      HIBYTE(v127) = BYTE3(v28);
      LOBYTE(v128) = BYTE4(v28);
      HIBYTE(v128) = BYTE5(v28);
      if (!v98)
      {
        goto LABEL_205;
      }

LABEL_122:
      v68 = BYTE6(v28);
      p_s2 = &__s2;
      goto LABEL_166;
    }

    v107 = *(v112 + 16);
    v119 = *(v112 + 24);
    v75 = __DataStorage._bytes.getter();
    if (v75)
    {
      v76 = v75;
      v77 = __DataStorage._offset.getter();
      v78 = v107;
      if (__OFSUB__(v107, v77))
      {
        goto LABEL_194;
      }

      v79 = (v107 - v77 + v76);
    }

    else
    {
      v79 = 0;
      v78 = v107;
    }

    v109 = v79;
    v88 = v119 - v78;
    if (__OFSUB__(v119, v78))
    {
      goto LABEL_190;
    }

    v89 = __DataStorage._length.getter();
    if (v89 >= v88)
    {
      v85 = v88;
    }

    else
    {
      v85 = v89;
    }

    v69 = v98;
    if (!v98)
    {
      goto LABEL_209;
    }

    p_s2 = v109;
    if (!v109)
    {
      goto LABEL_208;
    }

LABEL_155:
    if (v69 != p_s2)
    {
      v68 = v85;
      goto LABEL_166;
    }

    goto LABEL_163;
  }

  if (v29 == 2)
  {
    v100 = *(&v137 + 1) >> 62;
    v111 = v137;
    v95 = *(v132 + 16);
    sub_1000681CC(&v129, &__s2);
    v43 = __DataStorage._bytes.getter();
    if (v43)
    {
      v93 = v43;
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v95, v44))
      {
        goto LABEL_179;
      }

      v96 = &v95[v93 - v44];
    }

    else
    {
      v96 = 0;
    }

    __DataStorage._length.getter();
    if (v100 == 2)
    {
      v106 = *(v111 + 16);
      v118 = *(v111 + 24);
      v70 = __DataStorage._bytes.getter();
      if (v70)
      {
        v71 = v70;
        v72 = __DataStorage._offset.getter();
        v73 = v106;
        if (__OFSUB__(v106, v72))
        {
          goto LABEL_193;
        }

        v74 = (v106 - v72 + v71);
      }

      else
      {
        v74 = 0;
        v73 = v106;
      }

      v108 = v74;
      v83 = v118 - v73;
      if (__OFSUB__(v118, v73))
      {
        goto LABEL_188;
      }

      v84 = __DataStorage._length.getter();
      if (v84 >= v83)
      {
        v85 = v83;
      }

      else
      {
        v85 = v84;
      }

      v69 = v96;
      if (!v96)
      {
        goto LABEL_203;
      }

      p_s2 = v108;
      if (!v108)
      {
        goto LABEL_204;
      }

      goto LABEL_155;
    }

    v52 = v111;
    if (v100 != 1)
    {
      v69 = v96;
      __s2 = v111;
      LOWORD(v127) = v28;
      BYTE2(v127) = BYTE2(v28);
      HIBYTE(v127) = BYTE3(v28);
      LOBYTE(v128) = BYTE4(v28);
      HIBYTE(v128) = BYTE5(v28);
      if (!v96)
      {
        goto LABEL_200;
      }

      goto LABEL_122;
    }

    v53 = v111;
    v114 = (v111 >> 32) - v111;
    if (v52 >> 32 < v52)
    {
      goto LABEL_183;
    }

    v54 = __DataStorage._bytes.getter();
    if (v54)
    {
      v103 = v54;
      v55 = __DataStorage._offset.getter();
      if (__OFSUB__(v53, v55))
      {
        goto LABEL_195;
      }

      v41 = (v53 - v55 + v103);
    }

    else
    {
      v41 = 0;
    }

    v86 = __DataStorage._length.getter();
    v87 = v114;
    if (v86 < v114)
    {
      v87 = v86;
    }

    v69 = v96;
    if (!v96)
    {
      goto LABEL_201;
    }

    if (!v41)
    {
      goto LABEL_202;
    }

LABEL_162:
    if (v69 != v41)
    {
      v68 = v87;
      goto LABEL_165;
    }

LABEL_163:
    sub_100068204(&v129);
    goto LABEL_31;
  }

  memset(__s1, 0, 14);
  if (!v30)
  {
    goto LABEL_86;
  }

  if (v30 == 2)
  {
    v102 = *(v137 + 24);
    v113 = *(v137 + 16);
    sub_1000681CC(&v129, &__s2);
    v47 = __DataStorage._bytes.getter();
    if (v47)
    {
      v48 = v47;
      v49 = __DataStorage._offset.getter();
      v50 = v113;
      if (__OFSUB__(v113, v49))
      {
        goto LABEL_192;
      }

      v51 = (v113 - v49 + v48);
    }

    else
    {
      v51 = 0;
      v50 = v113;
    }

    v120 = v51;
    v81 = v102 - v50;
    if (__OFSUB__(v102, v50))
    {
      goto LABEL_185;
    }

    v82 = __DataStorage._length.getter();
    p_s2 = v120;
    if (!v120)
    {
      goto LABEL_199;
    }

    goto LABEL_130;
  }

  v99 = (v137 >> 32) - v137;
  v117 = v137;
  if (v137 >> 32 < v137)
  {
    goto LABEL_181;
  }

  sub_1000681CC(&v129, &__s2);
  v65 = __DataStorage._bytes.getter();
  if (v65)
  {
    v66 = v65;
    v67 = __DataStorage._offset.getter();
    if (__OFSUB__(v117, v67))
    {
      goto LABEL_187;
    }

    v41 = (v117 - v67 + v66);
    v42 = __DataStorage._length.getter();
    if (!v41)
    {
      goto LABEL_198;
    }

    goto LABEL_109;
  }

  __DataStorage._length.getter();
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

unint64_t ApprovalSettingsState.debugDescription.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(35);

  v37._countAndFlagsBits = 0xD000000000000017;
  v37._object = 0x8000000100105EE0;
  v33._countAndFlagsBits = *(a1 + 16);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x73656972746E6520;
  v3._object = 0xEA00000000000A3ALL;
  String.append(_:)(v3);
  countAndFlagsBits = 0xD000000000000017;
  v49 = v37;
  v5 = -1 << *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = ~v5;
  v8 = -v5;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v43 = a1;
  v44 = a1 + 56;
  v45 = v7;
  v46 = 0;
  v47 = v9 & v6;
  v48 = 0;
  sub_10006078C(&v33);
  *&v38[41] = *&v36[9];
  *&v38[16] = v35;
  *&v38[32] = *v36;
  v37 = v33;
  *v38 = v34;
  object = v33._object;
  v11 = v34;
  v42 = v36[24];
  v40 = *&v38[24];
  v41 = *&v38[40];
  v39 = *&v38[8];
  if (v34)
  {
    do
    {
      v50 = object;
      v51 = v11;
      v52 = v39;
      v53 = v40;
      v54 = v41;
      v55 = v42;
      v33._countAndFlagsBits = 0x207865646E492020;
      v33._object = 0xE800000000000000;
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v17._countAndFlagsBits = 2618;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      String.append(_:)(v33);

      v18 = ApprovalSettingsStateEntry.debugDescription.getter();
      v21 = sub_10004448C(0x7FFFFFFFFFFFFFFFuLL, 1, v18, v19, v20);
      v22 = *(v21 + 16);
      if (v22)
      {
        sub_1000635A4(0, v22, 0);
        v23 = (v21 + 56);
        do
        {
          v24 = *(v23 - 3);
          v25 = *(v23 - 2);
          v26 = *(v23 - 1);
          v27 = *v23;
          v33._countAndFlagsBits = 538976288;
          v33._object = 0xE400000000000000;

          v28._countAndFlagsBits = static String._fromSubstring(_:)();
          String.append(_:)(v28);

          v29 = v33;
          v31 = _swiftEmptyArrayStorage[2];
          v30 = _swiftEmptyArrayStorage[3];
          if (v31 >= v30 >> 1)
          {
            sub_1000635A4((v30 > 1), v31 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v31 + 1;
          *&_swiftEmptyArrayStorage[2 * v31 + 4] = v29;
          v23 += 4;
          --v22;
        }

        while (v22);
      }

      v33._countAndFlagsBits = _swiftEmptyArrayStorage;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v14 = v13;

      v33._countAndFlagsBits = v12;
      v33._object = v14;

      v15._countAndFlagsBits = 10;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);

      String.append(_:)(v33);

      sub_10000A184(&v37, &qword_100135BD0, &unk_1000F6B20);
      sub_10006078C(&v33);
      v37 = v33;
      *v38 = v34;
      *&v38[16] = v35;
      *&v38[32] = *v36;
      *&v38[41] = *&v36[9];
      object = v33._object;
      v11 = v34;
      v42 = v36[24];
      v40 = *&v38[24];
      v41 = *&v38[40];
      v39 = *&v38[8];
    }

    while (v34);
    countAndFlagsBits = v49._countAndFlagsBits;
  }

  sub_1000145A4();
  return countAndFlagsBits;
}

uint64_t sub_10006078C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  if (!v3)
  {
    v5 = (v1[2] + 64) >> 6;
    if (v5 <= v2 + 1)
    {
      v6 = v2 + 1;
    }

    else
    {
      v6 = (v1[2] + 64) >> 6;
    }

    v7 = v6 - 1;
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        v1[3] = v7;
        v1[4] = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0u;
        *(a1 + 48) = 0u;
        *(a1 + 57) = 0u;
        return result;
      }

      v3 = *(v1[1] + 8 * v4);
      ++v2;
      if (v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v4 = v1[3];
LABEL_10:
  v8 = *(*v1 + 48) + 72 * (__clz(__rbit64(v3)) | (v4 << 6));
  v17 = *v8;
  v9 = *(v8 + 16);
  v10 = *(v8 + 32);
  v11 = *(v8 + 48);
  v21 = *(v8 + 64);
  v19 = v10;
  v20 = v11;
  v18 = v9;
  v1[3] = v4;
  v1[4] = (v3 - 1) & v3;
  v12 = v1[5];
  if (__OFADD__(v12, 1))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[5] = v12 + 1;
  *a1 = v12;
  v13 = v17;
  *(a1 + 24) = v18;
  v14 = v20;
  *(a1 + 40) = v19;
  *(a1 + 56) = v14;
  *(a1 + 72) = v21;
  *(a1 + 8) = v13;
  return sub_1000681CC(&v17, v16);
}

uint64_t ApprovalSettingsStateEntry.debugDescription.getter()
{
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(83);
  v19 = v21;
  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x8000000100105F00;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x79616C707369440ALL;
  v2._object = 0xEF203A656D614E20;
  String.append(_:)(v2);
  v20 = *(v0 + 16);
  v21 = v20;
  sub_100014894(&v21, &v18, &qword_100135108, &unk_1000F4FD8);
  sub_100003CDC(&qword_100135108, &unk_1000F4FD8);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x542065676173550ALL;
  v4._object = 0xED0000203A747865;
  String.append(_:)(v4);
  v20 = *(v0 + 32);
  v18 = *(v0 + 32);
  sub_100014894(&v20, v17, &qword_100135108, &unk_1000F4FD8);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x3A656372756F530ALL;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  v7._countAndFlagsBits = ApprovalDBEntrySource.description.getter(*(v0 + 48), *(v0 + 56));
  String.append(_:)(v7);

  v8._object = 0x8000000100105F20;
  v8._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v8);
  v9 = *(v0 + 64);
  if (qword_100133A30 != -1)
  {
    swift_once();
  }

  v10 = __chkstk_darwin(off_100135B38);
  v11 = sub_10006573C(v10, sub_10006861C);
  v12 = sub_10005B7B4(v11);
  v14 = v13;

  if (v14)
  {
    v16._countAndFlagsBits = v12;
    v16._object = v14;
    String.append(_:)(v16);

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ApprovalSettingsStateEntry.driverIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ApprovalSettingsStateEntry.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ApprovalSettingsStateEntry.source.getter()
{
  v1 = *(v0 + 48);
  sub_1000146B0(v1, *(v0 + 56));
  return v1;
}

unint64_t sub_100060BB0()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x7865546567617375;
  v4 = 0x656372756F73;
  if (v1 != 3)
  {
    v4 = 0x6C61766F72707061;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_100060C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100066B18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100060C8C(uint64_t a1)
{
  v2 = sub_100066AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100060CC8(uint64_t a1)
{
  v2 = sub_100066AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ApprovalSettingsStateEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100003CDC(&qword_100135BD8, &qword_1000F6B30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8 - 8];
  v10 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_100066AC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 3);
    v21 = v20;
    v19[23] = 3;
    sub_100065F9C(&v21, v19);
    sub_100065FD4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100014528(v20, *(&v20 + 1));
    LOBYTE(v20) = *(v3 + 64);
    v19[0] = 4;
    sub_100066028();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 ApprovalSettingsStateEntry.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100066CE4(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

BOOL sub_100060FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s10driverkitd26ApprovalSettingsStateEntryV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9);
}

void ApprovalSettingsStateEntry.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  if (v0[3])
  {
    v3 = v0[2];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[5])
    {
LABEL_3:
      v4 = v0[4];
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v0[5])
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  if (v0[7] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = v0[6];
    Hasher._combine(_:)(1uLL);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(*(v0 + 64));
}

Swift::Int ApprovalSettingsStateEntry.hashValue.getter()
{
  Hasher.init(_seed:)();
  ApprovalSettingsStateEntry.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100061148()
{
  Hasher.init(_seed:)();
  ApprovalSettingsStateEntry.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ApprovalStateUpdateRequest.__allocating_init(entry:callback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 56) = a2;
  *(v9 + 64) = a3;
  static Date.now.getter();
  return v9;
}

uint64_t ApprovalStateUpdateRequest.init(entry:callback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v12;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  static Date.now.getter();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC10driverkitd26ApprovalStateUpdateRequest_timestamp, v11, v7);
  return v3;
}

char *ApprovalStateUpdateRequest.deinit()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);

  sub_100014528(v2, v3);
  v4 = *(v0 + 8);

  v5 = OBJC_IVAR____TtC10driverkitd26ApprovalStateUpdateRequest_timestamp;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t ApprovalStateUpdateRequest.__deallocating_deinit()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);

  sub_100014528(v2, v3);
  v4 = *(v0 + 8);

  v5 = OBJC_IVAR____TtC10driverkitd26ApprovalStateUpdateRequest_timestamp;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t ApprovalStateUpdateRequest.description.getter()
{
  _StringGuts.grow(_:)(26);

  type metadata accessor for Date();
  sub_100068088(&unk_1001372C0, &type metadata accessor for Date);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  v3._countAndFlagsBits = ApprovalDBEntry.description.getter();
  String.append(_:)(v3);

  return 0xD000000000000014;
}

unint64_t sub_1000615C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_100068088(&qword_100134FC8, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000621B4(a1, v5, &type metadata accessor for UUID, &qword_100134FC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100061698(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();
  return sub_1000620D8(a1, v4);
}

unint64_t sub_1000616D4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_100062144(a1, v4);
}

unint64_t sub_100061740(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for URL();
  sub_100068088(&qword_1001342B0, &type metadata accessor for URL);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000621B4(a1, v5, &type metadata accessor for URL, &qword_1001342B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_100061814(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100062354(a1, v4);
}

uint64_t sub_1000618D4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t sub_100061968(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_1000D7374();
  String.hash(into:)();

  sub_1000D7614();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();

    v11 = OSKextParseVersionCFString();
  }

  else
  {
    v11 = 0;
  }

  Hasher._combine(_:)(v11);
  sub_1000138F8(a1 + 24, v20);
  if (v21)
  {
    if (v21 == 1)
    {
      v12 = *&v20[0];
      sub_100068088(&qword_1001342B0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v12 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(v20, v17);
    v13 = v18;
    v14 = v19;
    sub_100003C4C(v17, v18);
    (*(v14 + 64))(v13, v14);
    sub_100068088(&qword_1001342B0, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v7, v3);
    sub_100003C90(v17);
  }

  v15 = Hasher._finalize()();
  return sub_100062858(a1, v15);
}

unint64_t sub_100061BF8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  v13 = *(v2 + 40);
  Hasher.init(_seed:)();
  sub_100014894(a1, v12, &unk_1001389D0, &qword_1000F4F60);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    Hasher._combine(_:)(1u);
    sub_100068088(&qword_1001342B0, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }

  v14 = Hasher._finalize()();
  return sub_100062D98(a1, v14);
}

unint64_t sub_100061E08(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_100063214(a1, v4);
}

unint64_t sub_100061ECC(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100068088(&qword_100135DD8, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100063398(a1, v4);
}

unint64_t sub_100061F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  return sub_1000634A4(a1, a2, a3, a4, v10);
}

unint64_t sub_100062020(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000620D8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100062144(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_1000621B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_100068088(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_100062354(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100062458(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_1000146C4(v17, v16);
          sub_100045F4C(v45, v9, v8, &v44);
          sub_1000128D8(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_1000146C4(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_1000146C4(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_100045F4C(v34, a1, a2, v45);
        sub_1000128D8(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_1000146C4(v17, v16);
      sub_100045F4C(v45, v9, v8, &v44);
      sub_1000128D8(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_100062858(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v41 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = v2;
    v40 = ~v3;
    v6 = *(a1 + 16);
    do
    {
      v7 = *(*(v5 + 48) + 8 * v4);
      v8 = *(v7 + 16);
      v9 = qword_100133A50;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = qword_10014E8C0;
      v11 = *algn_10014E8C8;
      if (*(v8 + 16) && (v12 = sub_1000618D4(qword_10014E8C0, *algn_10014E8C8, &String.hash(into:), sub_100062020), (v13 & 1) != 0) && (sub_10000B430(*(v8 + 56) + 32 * v12, v44), (swift_dynamicCast() & 1) != 0))
      {
        v15 = v42;
        v14 = v43;
        if (!*(v6 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v15 = 0xD000000000000014;
        v14 = 0x8000000100104280;
        if (!*(v6 + 16))
        {
          goto LABEL_18;
        }
      }

      v16 = sub_1000618D4(v10, v11, &String.hash(into:), sub_100062020);
      if (v17)
      {
        sub_10000B430(*(v6 + 56) + 32 * v16, v44);
        if (swift_dynamicCast())
        {
          v18 = v43;
          if (v15 != v42)
          {
            goto LABEL_21;
          }

          goto LABEL_19;
        }
      }

LABEL_18:
      v18 = 0x8000000100104280;
      if (v15 != 0xD000000000000014)
      {
        goto LABEL_21;
      }

LABEL_19:
      if (v14 == v18)
      {

        goto LABEL_22;
      }

LABEL_21:
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_22:
      v20 = *(v7 + 16);
      if (*(v20 + 16) && (v21 = sub_1000618D4(v10, v11, &String.hash(into:), sub_100062020), (v22 & 1) != 0) && (sub_10000B430(*(v20 + 56) + 32 * v21, v44), (swift_dynamicCast() & 1) != 0))
      {
        v23 = v42;
        v24 = v43;
      }

      else
      {
        v23 = 0xD000000000000014;
        v24 = 0x8000000100104280;
      }

      if (v23 == 0xD000000000000014 && 0x8000000100104280 == v24)
      {

        goto LABEL_5;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
LABEL_4:

        goto LABEL_5;
      }

      v26 = *(v7 + 16);
      if (qword_100133A70 != -1)
      {
        swift_once();
      }

      v27 = qword_10014E900;
      v28 = *algn_10014E908;
      if (*(v26 + 16) && (v29 = sub_1000618D4(qword_10014E900, *algn_10014E908, &String.hash(into:), sub_100062020), (v30 & 1) != 0) && (sub_10000B430(*(v26 + 56) + 32 * v29, v44), swift_dynamicCast()))
      {
        v31 = String._bridgeToObjectiveC()();

        v32 = OSKextParseVersionCFString();

        if (!*(v6 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        v32 = 0;
        if (!*(v6 + 16))
        {
          goto LABEL_3;
        }
      }

      v33 = sub_1000618D4(v27, v28, &String.hash(into:), sub_100062020);
      if ((v34 & 1) == 0 || (sub_10000B430(*(v6 + 56) + 32 * v33, v44), !swift_dynamicCast()))
      {
LABEL_3:
        if (v32)
        {
          goto LABEL_4;
        }

        goto LABEL_42;
      }

      v35 = String._bridgeToObjectiveC()();

      v36 = OSKextParseVersionCFString();

      if (v32 != v36)
      {
        goto LABEL_4;
      }

LABEL_42:
      v37 = sub_1000DCBA8(v7 + 24, a1 + 24);

      if (v37)
      {
        return v4;
      }

LABEL_5:
      v4 = (v4 + 1) & v40;
    }

    while (((*(v41 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100062D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100003CDC(&qword_100135E60, &qword_1000F7C18);
  v9 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v11 = &v31 - v10;
  v12 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v42 = v3;
  v19 = -1 << *(v3 + 32);
  v20 = a2 & ~v19;
  v39 = v3 + 64;
  if ((*(v3 + 64 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = (v6 + 48);
    v23 = *(v15 + 72);
    v37 = v16;
    v38 = v23;
    v31 = (v6 + 48);
    v32 = (v6 + 32);
    v35 = (v6 + 8);
    v36 = ~v19;
    while (1)
    {
      sub_100014894(*(v42 + 48) + v38 * v20, v18, &unk_1001389D0, &qword_1000F4F60);
      v24 = *(v40 + 48);
      sub_100014894(v18, v11, &unk_1001389D0, &qword_1000F4F60);
      sub_100014894(v41, &v11[v24], &unk_1001389D0, &qword_1000F4F60);
      v25 = *v22;
      if ((*v22)(v11, 1, v5) == 1)
      {
        break;
      }

      v26 = v37;
      sub_100014894(v11, v37, &unk_1001389D0, &qword_1000F4F60);
      if (v25(&v11[v24], 1, v5) == 1)
      {
        sub_10000A184(v18, &unk_1001389D0, &qword_1000F4F60);
        (*v35)(v26, v5);
        v21 = v36;
LABEL_4:
        sub_10000A184(v11, &qword_100135E60, &qword_1000F7C18);
        goto LABEL_5;
      }

      v27 = &v11[v24];
      v28 = v33;
      (*v32)(v33, v27, v5);
      sub_100068088(&qword_1001342B8, &type metadata accessor for URL);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *v35;
      (*v35)(v28, v5);
      sub_10000A184(v18, &unk_1001389D0, &qword_1000F4F60);
      v29(v26, v5);
      v22 = v31;
      sub_10000A184(v11, &unk_1001389D0, &qword_1000F4F60);
      v21 = v36;
      if (v34)
      {
        return v20;
      }

LABEL_5:
      v20 = (v20 + 1) & v21;
      if (((*(v39 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return v20;
      }
    }

    sub_10000A184(v18, &unk_1001389D0, &qword_1000F4F60);
    if (v25(&v11[v24], 1, v5) == 1)
    {
      sub_10000A184(v11, &unk_1001389D0, &qword_1000F4F60);
      return v20;
    }

    goto LABEL_4;
  }

  return v20;
}

unint64_t sub_100063214(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD00000000000001ALL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = "OSKextExcludeList";
      }

      else
      {
        v5 = 0xD00000000000001DLL;
        v6 = "OSKextSigExceptionHashList";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD000000000000011;
      v8 = *(*(v2 + 48) + v4) ? v6 : "com.apple.message.bundlePath";
      if (a1)
      {
        v9 = a1 == 1 ? 0xD00000000000001ALL : 0xD00000000000001DLL;
        v10 = a1 == 1 ? "OSKextExcludeList" : "OSKextSigExceptionHashList";
      }

      else
      {
        v9 = 0xD000000000000011;
        v10 = "com.apple.message.bundlePath";
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100063398(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100068088(&qword_100135DD8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000634A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

char *sub_1000635A4(char *a1, int64_t a2, char a3)
{
  result = sub_10006374C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000635C4(size_t a1, int64_t a2, char a3)
{
  result = sub_100063BB0(a1, a2, a3, *v3, &qword_100135088, &unk_1000F7B90, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_100063608(char *a1, int64_t a2, char a3)
{
  result = sub_10006398C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100063628(char *a1, int64_t a2, char a3)
{
  result = sub_100063AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100063648(size_t a1, int64_t a2, char a3)
{
  result = sub_100063BB0(a1, a2, a3, *v3, &qword_100135080, &unk_1000F4F40, type metadata accessor for ActiveDriverInfo);
  *v3 = result;
  return result;
}

char *sub_10006368C(char *a1, int64_t a2, char a3)
{
  result = sub_100063D8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000636AC(char *a1, int64_t a2, char a3)
{
  result = sub_100063E98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000636CC(size_t a1, int64_t a2, char a3)
{
  result = sub_100063F8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000636EC(void *a1, int64_t a2, char a3)
{
  result = sub_100064270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10006370C(void *a1, int64_t a2, char a3)
{
  result = sub_1000643A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10006372C(void *a1, int64_t a2, char a3)
{
  result = sub_1000644D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}