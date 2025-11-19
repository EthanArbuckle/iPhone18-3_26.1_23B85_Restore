uint64_t sub_100063C7C()
{
  v0 = sub_10000560C(&qword_10012A8B8, &qword_1001097B8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v13 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  StoredPhoto.localIdentifier.getter();
  v9 = StoredPhotoLayout.timePosition.getter();
  StoredPhotoLayout.maskImage.getter();
  v10 = type metadata accessor for StoredPhotoLayout.ImageLocation();
  v11 = (*(*(v10 - 8) + 48))(v3, 1, v10) != 1;
  sub_10000C460(v3, &qword_10012A8B8, &qword_1001097B8);
  LOBYTE(v11) = sub_10006C824(v8, v9, v11);
  (*(v5 + 8))(v8, v4);
  return v11 & 1;
}

uint64_t sub_100063E38(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v25 = a1;
  v26 = type metadata accessor for StoredPhotoLayout();
  v6 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 56) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v3)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if ((v20 & 1) == 0)
    {
      a2 = 0;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 1;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100064050(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000045BC;

  return sub_10005FB64(a1, a2);
}

uint64_t sub_1000640FC(const char *a1, void *a2, uint64_t a3)
{
  result = fsctl(a1, 0xC0084A44uLL, a2, 0);
  if (result)
  {
    v5 = result;
    sub_10000560C(&qword_10012A890, &qword_100109790);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001089C0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v7;
    v8 = type metadata accessor for URL();
    *(inited + 72) = v8;
    v9 = sub_10000C1AC((inited + 48));
    (*(*(v8 - 8) + 16))(v9, a3, v8);
    v10 = NSPOSIXErrorDomain;
    sub_10005DAFC(inited);
    swift_setDeallocating();
    sub_10000C460(inited + 32, &qword_10012A5F8, &qword_100109460);
    v11 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 initWithDomain:v10 code:v5 userInfo:isa];

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100064298()
{
  v1 = OBJC_IVAR____TtC11photosfaced10PhotoCache_baseFolder;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11photosfaced10PhotoCache_database);

  v4 = *(v0 + OBJC_IVAR____TtC11photosfaced10PhotoCache_background);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for PhotoCache()
{
  result = qword_10012A7F8;
  if (!qword_10012A7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000643A8()
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

uint64_t sub_100064448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhoto();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_10006D104(&qword_10012A560, &type metadata accessor for StoredPhoto);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

char *sub_10006465C(uint64_t a1, uint64_t a2)
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

  sub_10000560C(&qword_10012A430, &qword_1001093D0);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100064758(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000667CC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000648A8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ShuffleID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10006D104(&qword_10012A690, &type metadata accessor for ShuffleID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10006D104(&qword_10012A698, &type metadata accessor for ShuffleID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10006694C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100064B88(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10006D104(&qword_10012A1F8, &type metadata accessor for UUID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10006D104(&qword_10012A660, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100066C14(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100064E68(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for StoredPhoto();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10006D104(&qword_10012A8A0, &type metadata accessor for StoredPhoto);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10006D104(&qword_10012A560, &type metadata accessor for StoredPhoto);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100066EDC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100065148(void *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for NetworkConnection();
      swift_dynamicCast();
      result = 0;
      *a1 = v28;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v24 = sub_1000653DC(v7, result + 1);
        v25 = *(v24 + 16);
        if (*(v24 + 24) <= v25)
        {
          sub_100066494(v25 + 1);
        }

        sub_100066708(v26, v24);

        *v3 = v24;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    v11 = *(*(a2 + 16) + 16);

    v12 = NWConnection.identifier.getter();

    Hasher._combine(_:)(v12);
    v13 = Hasher._finalize()();
    v14 = -1 << *(v6 + 32);
    v15 = v13 & ~v14;
    if ((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = *(*(*(*(v6 + 48) + 8 * v15) + 16) + 16);

        v18 = NWConnection.identifier.getter();

        v19 = *(*(a2 + 16) + 16);

        v20 = NWConnection.identifier.getter();

        if (v18 == v20)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v15);

      return 0;
    }

    else
    {
LABEL_11:
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v3;

      sub_1000672C4(v23, v15, isUniquelyReferenced_nonNull_native);
      *v3 = v29;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_1000653DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000560C(&qword_10012A8C0, "0*");
    v2 = static _SetStorage.convert(_:capacity:)();
    v18 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NetworkConnection();
      do
      {
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100066494(v12 + 1);
        }

        v2 = v18;
        v3 = *(v18 + 40);
        Hasher.init(_seed:)();
        v4 = *(*(v17 + 16) + 16);

        v5 = NWConnection.identifier.getter();

        Hasher._combine(_:)(v5);
        result = Hasher._finalize()();
        v7 = v18 + 56;
        v8 = -1 << *(v18 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v18 + 48) + 8 * v11) = v17;
        ++*(v18 + 16);
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

uint64_t sub_1000655FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000560C(&qword_10012A8D8, &qword_1001097E8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10006585C(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for ShuffleID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000560C(&qword_10012A8C8, &qword_1001097C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10006D104(&qword_10012A690, &type metadata accessor for ShuffleID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100065BB8(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000560C(&qword_10012A8A8, &qword_1001097A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10006D104(&qword_10012A1F8, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100065F14(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for StoredPhoto();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000560C(&qword_10012A8B0, &qword_1001097B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10006D104(&qword_10012A8A0, &type metadata accessor for StoredPhoto);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100066270(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000560C(&qword_10012A8D0, &qword_1001097D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v19 = *(v6 + 40);
      result = static Hasher._hash(seed:_:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100066494(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000560C(&qword_10012A8C0, "0*");
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
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
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      v20 = *(*(v18 + 16) + 16);

      v21 = NWConnection.identifier.getter();

      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100066708(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = *(*(a1 + 16) + 16);

  v6 = NWConnection.identifier.getter();

  Hasher._combine(_:)(v6);
  Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_1000667CC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1000655FC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10006749C();
      goto LABEL_16;
    }

    sub_100067AE8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10006694C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for ShuffleID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10006585C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100067620(&type metadata accessor for ShuffleID, &qword_10012A8C8, &qword_1001097C8);
      goto LABEL_12;
    }

    sub_100067D20(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10006D104(&qword_10012A690, &type metadata accessor for ShuffleID);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_10006D104(&qword_10012A698, &type metadata accessor for ShuffleID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100066C14(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100065BB8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100067620(&type metadata accessor for UUID, &qword_10012A8A8, &qword_1001097A8);
      goto LABEL_12;
    }

    sub_10006803C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10006D104(&qword_10012A1F8, &type metadata accessor for UUID);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_10006D104(&qword_10012A660, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100066EDC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for StoredPhoto();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100065F14(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100067620(&type metadata accessor for StoredPhoto, &qword_10012A8B0, &qword_1001097B0);
      goto LABEL_12;
    }

    sub_100068358(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10006D104(&qword_10012A8A0, &type metadata accessor for StoredPhoto);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_10006D104(&qword_10012A560, &type metadata accessor for StoredPhoto);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000671A4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100066270(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100067858();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100068674(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000672C4(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100066494(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100067998();
      goto LABEL_12;
    }

    sub_100068864(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v11 = *(*(v6 + 16) + 16);

  v12 = NWConnection.identifier.getter();

  Hasher._combine(_:)(v12);
  result = Hasher._finalize()();
  v13 = -1 << *(v9 + 32);
  a2 = result & ~v13;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    type metadata accessor for NetworkConnection();
    do
    {
      v15 = *(*(*(*(v9 + 48) + 8 * a2) + 16) + 16);

      v16 = NWConnection.identifier.getter();

      v17 = *(*(v6 + 16) + 16);

      v18 = NWConnection.identifier.getter();

      if (v16 == v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10006749C()
{
  v1 = v0;
  sub_10000560C(&qword_10012A8D8, &qword_1001097E8);
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

void *sub_100067620(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_10000560C(a2, a3);
  v12 = *v3;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

void *sub_100067858()
{
  v1 = v0;
  sub_10000560C(&qword_10012A8D0, &qword_1001097D8);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100067998()
{
  v1 = v0;
  sub_10000560C(&qword_10012A8C0, "0*");
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_100067AE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000560C(&qword_10012A8D8, &qword_1001097E8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_100067D20(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for ShuffleID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000560C(&qword_10012A8C8, &qword_1001097C8);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10006D104(&qword_10012A690, &type metadata accessor for ShuffleID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10006803C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000560C(&qword_10012A8A8, &qword_1001097A8);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10006D104(&qword_10012A1F8, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100068358(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for StoredPhoto();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000560C(&qword_10012A8B0, &qword_1001097B0);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10006D104(&qword_10012A8A0, &type metadata accessor for StoredPhoto);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100068674(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000560C(&qword_10012A8D0, &qword_1001097D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = static Hasher._hash(seed:_:)();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_100068864(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000560C(&qword_10012A8C0, "0*");
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      v19 = *(*(v17 + 16) + 16);

      v20 = NWConnection.identifier.getter();

      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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

        v2 = v28;
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

void *sub_100068AB0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v59 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v51 - v10;
  __chkstk_darwin(v9);
  i = v51 - v12;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v65[0] = a1;
  v13 = *(a1 + 16);

  v53 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v55 = a1;
  v56 = a1 + ((v17 + 32) & ~v17);
  v62 = *(v15 + 56);
  v63 = v16;
  v60 = a2 + 7;
  v61 = a2;
  v64 = v15;
  v18 = (v15 - 8);
  v52 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v57 = v14 + 1;
    v65[1] = v14 + 1;
    v63(i, v56 + v62 * v14, v4);
    v19 = a2[5];
    v54 = sub_10006D104(&qword_10012A1F8, &type metadata accessor for UUID);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v60[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v57;
    if (v57 == v53)
    {
      goto LABEL_30;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v63(v11, v61[6] + v22 * v62, v4);
    sub_10006D104(&qword_10012A660, &type metadata accessor for UUID);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v18;
    (*v18)(v11, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v60[v22 >> 6]) == 0)
    {
      a2 = v61;
      goto LABEL_10;
    }
  }

  v28 = (v27)(i, v4);
  v29 = v61;
  v30 = *(v61 + 32);
  v51[0] = ((1 << v30) + 63) >> 6;
  v31 = 8 * v51[0];
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v51[1] = v51;
    __chkstk_darwin(v28);
    v33 = v51 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v60, v32);
    v34 = *(v29 + 16);
    *&v33[8 * v23] &= ~v24;
    v52 = v33;
    v53 = (v34 - 1);
    v35 = *(v55 + 16);
    v36 = v57;
    for (i = v35; ; v35 = i)
    {
      if (v36 == v35)
      {
        a2 = sub_10006AF50(v52, v51[0], v53, v29);
        goto LABEL_30;
      }

      if (v36 >= *(v55 + 16))
      {
        break;
      }

      v57 = v36;
      v63(v59, v56 + v36 * v62, v4);
      v38 = *(v29 + 40);
      v39 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v40 = -1 << *(v29 + 32);
      v22 = v39 & ~v40;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v60[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v63(v11, v61[6] + v22 * v62, v4);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27(v11, v4);
      if ((v41 & 1) == 0)
      {
        v42 = ~v40;
        while (1)
        {
          v22 = (v22 + 1) & v42;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v60[v22 >> 6]) == 0)
          {
            break;
          }

          v63(v11, v61[6] + v22 * v62, v4);
          v43 = dispatch thunk of static Equatable.== infix(_:_:)();
          v27(v11, v4);
          if (v43)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v27(v59, v4);
        v29 = v61;
LABEL_16:
        v37 = v57;
        goto LABEL_17;
      }

LABEL_25:
      v27(v59, v4);
      v44 = v52[v24];
      v52[v24] = v44 & ~v23;
      v29 = v61;
      if ((v44 & v23) == 0)
      {
        goto LABEL_16;
      }

      v45 = v53 - 1;
      v37 = v57;
      if (__OFSUB__(v53, 1))
      {
        goto LABEL_33;
      }

      --v53;
      if (!v45)
      {

        a2 = &_swiftEmptySetSingleton;
        goto LABEL_30;
      }

LABEL_17:
      v36 = v37 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v47 = v31;

    v48 = v47;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v49 = v61;

      v29 = v49;
      continue;
    }

    break;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v60, v48);
  a2 = sub_10006A294(v50, v51[0], v61, v22, v65);

LABEL_30:

  return a2;
}

void *sub_100069170(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for StoredPhoto();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v59 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v51 - v10;
  __chkstk_darwin(v9);
  i = v51 - v12;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v65[0] = a1;
  v13 = *(a1 + 16);

  v53 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v55 = a1;
  v56 = a1 + ((v17 + 32) & ~v17);
  v62 = *(v15 + 56);
  v63 = v16;
  v60 = a2 + 7;
  v61 = a2;
  v64 = v15;
  v18 = (v15 - 8);
  v52 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v57 = v14 + 1;
    v65[1] = v14 + 1;
    v63(i, v56 + v62 * v14, v4);
    v19 = a2[5];
    v54 = sub_10006D104(&qword_10012A8A0, &type metadata accessor for StoredPhoto);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v60[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v57;
    if (v57 == v53)
    {
      goto LABEL_30;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v63(v11, v61[6] + v22 * v62, v4);
    sub_10006D104(&qword_10012A560, &type metadata accessor for StoredPhoto);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v18;
    (*v18)(v11, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v60[v22 >> 6]) == 0)
    {
      a2 = v61;
      goto LABEL_10;
    }
  }

  v28 = (v27)(i, v4);
  v29 = v61;
  v30 = *(v61 + 32);
  v51[0] = ((1 << v30) + 63) >> 6;
  v31 = 8 * v51[0];
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v51[1] = v51;
    __chkstk_darwin(v28);
    v33 = v51 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v60, v32);
    v34 = *(v29 + 16);
    *&v33[8 * v23] &= ~v24;
    v52 = v33;
    v53 = (v34 - 1);
    v35 = *(v55 + 16);
    v36 = v57;
    for (i = v35; ; v35 = i)
    {
      if (v36 == v35)
      {
        a2 = sub_10006B278(v52, v51[0], v53, v29);
        goto LABEL_30;
      }

      if (v36 >= *(v55 + 16))
      {
        break;
      }

      v57 = v36;
      v63(v59, v56 + v36 * v62, v4);
      v38 = *(v29 + 40);
      v39 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v40 = -1 << *(v29 + 32);
      v22 = v39 & ~v40;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v60[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v63(v11, v61[6] + v22 * v62, v4);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27(v11, v4);
      if ((v41 & 1) == 0)
      {
        v42 = ~v40;
        while (1)
        {
          v22 = (v22 + 1) & v42;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v60[v22 >> 6]) == 0)
          {
            break;
          }

          v63(v11, v61[6] + v22 * v62, v4);
          v43 = dispatch thunk of static Equatable.== infix(_:_:)();
          v27(v11, v4);
          if (v43)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v27(v59, v4);
        v29 = v61;
LABEL_16:
        v37 = v57;
        goto LABEL_17;
      }

LABEL_25:
      v27(v59, v4);
      v44 = v52[v24];
      v52[v24] = v44 & ~v23;
      v29 = v61;
      if ((v44 & v23) == 0)
      {
        goto LABEL_16;
      }

      v45 = v53 - 1;
      v37 = v57;
      if (__OFSUB__(v53, 1))
      {
        goto LABEL_33;
      }

      --v53;
      if (!v45)
      {

        a2 = &_swiftEmptySetSingleton;
        goto LABEL_30;
      }

LABEL_17:
      v36 = v37 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v47 = v31;

    v48 = v47;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v49 = v61;

      v29 = v49;
      continue;
    }

    break;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v60, v48);
  a2 = sub_10006A688(v50, v51[0], v61, v22, v65);

LABEL_30:

  return a2;
}

void *sub_100069830(uint64_t a1, void *a2)
{
  v5 = sub_10000560C(&qword_10012A200, &qword_100108F60);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v68 - v10);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v88 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = (&v68 - v17);
  __chkstk_darwin(v16);
  v83 = (&v68 - v20);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v69 = v11;
  v71 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v82 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v90 = (v24 & v21);
  v75 = (63 - v23) >> 6;
  v89 = v19 + 16;
  v80 = (v19 + 48);
  v81 = (v19 + 56);
  v79 = (v19 + 32);
  v85 = a2 + 7;
  v70 = v19;
  v91 = (v19 + 8);

  v26 = 0;
  v72 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v90;
    v28 = v26;
    if (v90)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v69;
      (*(v70 + 16))(v69, *(a1 + 48) + *(v70 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v75 <= (v26 + 1) ? v26 + 1 : v75;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v75)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v69;
    }

    v77 = *v81;
    v77(v32, v33, 1, v12);
    v92 = a1;
    v93 = v22;
    v94 = v82;
    v95 = v30;
    v96 = v2;
    v76 = *v80;
    if (v76(v32, 1, v12) == 1)
    {
      sub_10000C460(v32, &qword_10012A200, &qword_100108F60);
      goto LABEL_52;
    }

    v74 = *v79;
    v74(v83, v32, v12);
    v34 = a2[5];
    v73 = sub_10006D104(&qword_10012A1F8, &type metadata accessor for UUID);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) != 0)
    {
      break;
    }

    (*v91)(v83, v12);
LABEL_22:
    v26 = v30;
    v90 = v2;
  }

  v68 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = ~v36;
  v37 = *(v70 + 72);
  v86 = *(v70 + 16);
  v87 = v37;
  while (1)
  {
    v86(v18, a2[6] + v87 * v26, v12);
    v38 = sub_10006D104(&qword_10012A660, &type metadata accessor for UUID);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v90 = *v91;
    v90(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v84;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) == 0)
    {
      a1 = v72;
      v90(v83, v12);
      goto LABEL_22;
    }
  }

  v84 = v38;
  v40 = (v90)(v83, v12);
  v41 = *(a2 + 32);
  v68 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v68;
  a1 = v72;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v69 = &v68;
    __chkstk_darwin(v40);
    v43 = &v68 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v85, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = a2[2];
    v83 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v71;
    v47 = i;
    v48 = v75;
LABEL_26:
    v70 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v86(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v87, v12);
      v53 = 0;
LABEL_39:
      v77(v26, v53, 1, v12);
      v92 = a1;
      v93 = v47;
      v94 = v82;
      v95 = v30;
      v96 = v2;
      if (v76(v26, 1, v12) == 1)
      {
        sub_10000C460(v26, &qword_10012A200, &qword_100108F60);
        a2 = sub_10006AF50(v83, v68, v70, a2);
        goto LABEL_52;
      }

      v74(v88, v26, v12);
      v54 = a2[5];
      v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v85[v58 >> 6]) != 0)
      {
        v86(v18, v56[6] + v58 * v87, v12);
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        v90(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v85[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v86(v18, v56[6] + v58 * v87, v12);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v90(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v90(v88, v12);
        v62 = v83[v28];
        v83[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
        if ((v62 & v22) != 0)
        {
          v46 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v90(v88, v12);
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v64 = v25;

    v83 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v83;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v85, v65);
  a2 = sub_10006AA7C(v67, v68, v83, v26, &v92);

LABEL_52:
  sub_100010E54();
  return a2;
}

void *sub_10006A294(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v44 = &v37 - v16;
  result = __chkstk_darwin(v15);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    return sub_10006AF50(v38, v37, v39, a3);
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_10006D104(&qword_10012A1F8, &type metadata accessor for UUID);
    v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_6:
      result = (v23)(v50, v9);
      goto LABEL_7;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      v46(v14, *(v32 + 48) + v29 * v47, v9);
      sub_10006D104(&qword_10012A660, &type metadata accessor for UUID);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v49;
      (*v49)(v14, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_6;
      }
    }

    result = (v23)(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_7:
      v10 = v43;
      goto LABEL_8;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_21;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return &_swiftEmptySetSingleton;
    }

LABEL_8:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_10006A688(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = type metadata accessor for StoredPhoto();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v44 = &v37 - v16;
  result = __chkstk_darwin(v15);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    return sub_10006B278(v38, v37, v39, a3);
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_10006D104(&qword_10012A8A0, &type metadata accessor for StoredPhoto);
    v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_6:
      result = (v23)(v50, v9);
      goto LABEL_7;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      v46(v14, *(v32 + 48) + v29 * v47, v9);
      sub_10006D104(&qword_10012A560, &type metadata accessor for StoredPhoto);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v49;
      (*v49)(v14, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_6;
      }
    }

    result = (v23)(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_7:
      v10 = v43;
      goto LABEL_8;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_21;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return &_swiftEmptySetSingleton;
    }

LABEL_8:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_10006AA7C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = sub_10000560C(&qword_10012A200, &qword_100108F60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_10000C460(v12, &qword_10012A200, &qword_100108F60);
          v48 = v64;

          return sub_10006AF50(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_10006D104(&qword_10012A1F8, &type metadata accessor for UUID);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_10006D104(&qword_10012A660, &type metadata accessor for UUID);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_10006AF50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for UUID();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10000560C(&qword_10012A8A8, &qword_1001097A8);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_10006D104(&qword_10012A1F8, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_10006B278(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for StoredPhoto();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10000560C(&qword_10012A8B0, &qword_1001097B0);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_10006D104(&qword_10012A8A0, &type metadata accessor for StoredPhoto);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_10006B5A0(uint64_t a1)
{
  v3 = sub_10000560C(&qword_10012A200, &qword_100108F60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_10000C460(v6, &qword_10012A200, &qword_100108F60))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_1000786D8(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10006B7BC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for UUID();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
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
    v38 = a4 + 64;
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

uint64_t sub_10006BA60(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for UUID();
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

void *sub_10006BD04(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10006BE04(uint64_t a1)
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

      sub_100064758(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10006BE9C(uint64_t a1)
{
  v2 = type metadata accessor for ShuffleID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_10006D104(&qword_10012A690, &type metadata accessor for ShuffleID);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_1000648A8(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_10006C038(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_10006D104(&qword_10012A1F8, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100064B88(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_10006C1D4(uint64_t a1)
{
  v2 = type metadata accessor for StoredPhoto();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_10006D104(&qword_10012A8A0, &type metadata accessor for StoredPhoto);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100064E68(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_10006C370(uint64_t a1, char a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for Logger();
  v15 = *(v5 - 8);
  v16 = v5;
  v6 = *(v15 + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 66048;
  if ((a2 & 1) == 0)
  {
    v12 = 0;
  }

  v17[0] = v12;
  static SystemDirectory.folderURL(for:)();
  v17[3] = v17;
  v17[4] = v11;
  URL.withUnsafeFileSystemRepresentation<A>(_:)();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10006C804()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100063C7C() & 1;
}

uint64_t sub_10006C824(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v56) = a3;
  v3 = type metadata accessor for Logger();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  v5 = __chkstk_darwin(v3);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = &v54 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v54 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v54 - v17;
  __chkstk_darwin(v16);
  v20 = &v54 - v19;
  static SystemDirectory.baseImageURL(timePosition:uuid:)();
  v60 = v18;
  static SystemDirectory.maskImageURL(timePosition:uuid:)();
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  URL.path(percentEncoded:)(1);
  v23 = String._bridgeToObjectiveC()();

  v24 = [v22 fileExistsAtPath:v23];

  if (v24)
  {
    v25 = v20;
    v26 = v60;
    if (v56 & 1) == 0 || (v27 = [v21 defaultManager], URL.path(percentEncoded:)(1), v28 = String._bridgeToObjectiveC()(), , v29 = objc_msgSend(v27, "fileExistsAtPath:", v28), v27, v28, (v29))
    {
      v30 = *(v9 + 8);
      v30(v26, v8);
      v30(v20, v8);
      return 1;
    }

    v41 = v55;
    static Log.photos.getter();
    v42 = v9;
    v43 = v54;
    (*(v9 + 16))(v54, v26, v8);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      LODWORD(v59) = v45;
      v48 = v43;
      v49 = v47;
      v61 = v47;
      *v46 = 136315138;
      v50 = URL.path(percentEncoded:)(1);
      v51 = *(v42 + 8);
      v51(v48, v8);
      v52 = sub_100102F80(v50._countAndFlagsBits, v50._object, &v61);

      *(v46 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v44, v59, "Failed to find file %s", v46, 0xCu);
      sub_10000C304(v49);

      (*(v57 + 8))(v55, v58);
      v51(v60, v8);
      v51(v25, v8);
    }

    else
    {

      v53 = *(v42 + 8);
      v53(v43, v8);
      (*(v57 + 8))(v41, v58);
      v53(v26, v8);
      v53(v25, v8);
    }
  }

  else
  {
    static Log.photos.getter();
    (*(v9 + 16))(v15, v20, v8);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v56 = v20;
      v35 = v34;
      v36 = swift_slowAlloc();
      v61 = v36;
      *v35 = 136315138;
      v37 = URL.path(percentEncoded:)(1);
      v38 = *(v9 + 8);
      v38(v15, v8);
      v39 = sub_100102F80(v37._countAndFlagsBits, v37._object, &v61);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to find file %s", v35, 0xCu);
      sub_10000C304(v36);

      (*(v57 + 8))(v59, v58);
      v38(v60, v8);
      v38(v56, v8);
    }

    else
    {

      v40 = *(v9 + 8);
      v40(v15, v8);
      (*(v57 + 8))(v59, v58);
      v40(v60, v8);
      v40(v20, v8);
    }
  }

  return 0;
}

uint64_t sub_10006CEB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012A6B0, &qword_1001095A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006CF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012A6B0, &qword_1001095A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006CF90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000045BC;

  return sub_1000611F0();
}

uint64_t sub_10006D020()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006D058()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000045BC;

  return sub_100062464(v2);
}

uint64_t sub_10006D104(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PhotoProvidingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotoProvidingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10006D2B0()
{
  result = qword_10012A8E0[0];
  if (!qword_10012A8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10012A8E0);
  }

  return result;
}

uint64_t sub_10006D320(uint64_t a1)
{
  v2 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 96);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

char *sub_10006D434()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(*v0 + 136)]);
  sub_10000C304(&v0[*(*v0 + 144)]);
  (*(*(*(v1 + 96) - 8) + 8))(&v0[*(*v0 + 152)]);
  v3 = *&v0[*(*v0 + 160)];

  v4 = *&v0[*(*v0 + 168)];

  v5 = *&v0[*(*v0 + 176)];

  v6 = *&v0[*(*v0 + 184)];

  v7 = *&v0[*(*v0 + 192)];

  return v0;
}

uint64_t sub_10006D5B0()
{
  sub_10006D434();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10006D620(uint64_t a1, uint64_t a2, void *a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = *a3;
  v4 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v3[12] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_10006D6EC, 0, 0);
}

uint64_t sub_10006D6EC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  Photo = GeneratePhotoRequest.photoIdentifiers.getter();
  v0[14] = Photo;
  v0[7] = v2;
  v0[15] = type metadata accessor for CommunicationActor();
  v0[16] = static CommunicationActor.shared.getter();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_10006D848;

  return (sub_10006F844)(v0 + 2, Photo, 0, 0, v1, &off_100126B50);
}

uint64_t sub_10006D848()
{
  v2 = v0;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v11 = *v1;
  *(*v1 + 144) = v2;

  sub_10006FA3C();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v9 = sub_10006DB40;
  }

  else
  {
    v9 = sub_10006D9C0;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10006D9C0()
{
  v1 = *(v0 + 128);

  return _swift_task_switch(sub_10006DA28, 0, 0);
}

uint64_t sub_10006DA28()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];
  v4 = v0[6];
  sub_10000C3CC(v0 + 2, v0[5]);
  AsyncSequence.generic.getter();
  type metadata accessor for GeneratePhotoResponse();
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
  AsyncMapSequence.init(_:transform:)();
  sub_10000C304(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006DB40()
{
  v1 = *(v0 + 128);

  return _swift_task_switch(sub_10006DBA8, 0, 0);
}

uint64_t sub_10006DBA8()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

uint64_t sub_10006DC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = sub_10000560C(&qword_10012AA18, &qword_100109A00);
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = sub_10000560C(&qword_10012AA20, &qword_100109A08);
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v4[15] = v12;
  v13 = *(v12 - 8);
  v4[16] = v13;
  v14 = *(v13 + 64) + 15;
  v4[17] = swift_task_alloc();
  v15 = type metadata accessor for StoredPhoto();
  v4[18] = v15;
  v16 = *(v15 - 8);
  v4[19] = v16;
  v17 = *(v16 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for CommunicationActor();
  v4[24] = static CommunicationActor.shared.getter();
  v4[25] = sub_10006FA3C();
  v19 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[26] = v19;
  v4[27] = v18;

  return _swift_task_switch(sub_10006DE94, v19, v18);
}

uint64_t sub_10006DE94()
{
  v0[28] = *(v0[6] + 16);
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_10006DF34;
  v2 = v0[3];

  return sub_100060270(v2);
}

uint64_t sub_10006DF34(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 232);
  v7 = *v3;
  v5[30] = a1;
  v5[31] = a2;
  v5[32] = v2;

  v8 = v4[27];
  v9 = v4[26];
  if (v2)
  {
    v10 = sub_10006F0C4;
  }

  else
  {
    v10 = sub_10006E07C;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10006E07C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6[30];
  v8 = *(v7 + 16);
  v6[33] = v8;
  if (v8)
  {
    v9 = v6[19];
    v10 = v6[16];
    v11 = v6[4];
    v6[34] = 0;
    if (*(v7 + 16))
    {
      v12 = v6[17];
      v13 = v6[15];
      (*(v9 + 16))(v6[22], v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v6[18]);
      StoredPhoto.localIdentifier.getter();
      sub_10006C370(v12, 0);
      (*(v10 + 8))(v12, v13);
      v48 = (v11 + *v11);
      v14 = v11[1];
      v15 = swift_task_alloc();
      v6[35] = v15;
      *v15 = v6;
      v15[1] = sub_10006E434;
      v16 = v6[22];
      v17 = v6[5];

      return v48(v16);
    }

    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, a2, a3, a4, a5, a6);
  }

  v20 = v6[31];
  v19 = v6[32];
  v21 = v6[14];
  v22 = v6[6];

  v23 = *(v22 + 24);
  sub_1000046B0(v20, v21);
  if (!v19)
  {
    v35 = v6[31];
    v36 = v6[13];
    v37 = v6[14];
    v38 = v6[11];
    v39 = v6[12];
    v40 = v6[10];

    (*(v39 + 16))(v36, v37, v38);
    sub_10000CC24(&qword_10012AA28, &qword_10012AA20, &qword_100109A08);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    v41 = v6[25];
    v42 = v6[23];
    v43 = static CommunicationActor.shared.getter();
    v6[37] = v43;
    v44 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
    v45 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v46 = swift_task_alloc();
    v6[38] = v46;
    *v46 = v6;
    v46[1] = sub_10006E95C;
    v47 = v6[10];
    v7 = v6[7];
    a5 = v6[8];
    a4 = v6 + 2;
    a2 = v43;
    a3 = v41;
    a6 = v44;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, a2, a3, a4, a5, a6);
  }

  v24 = v6[31];
  v25 = v6[24];

  v27 = v6[21];
  v26 = v6[22];
  v28 = v6[20];
  v29 = v6[17];
  v31 = v6[13];
  v30 = v6[14];
  v32 = v6[10];
  v33 = v6[7];

  v34 = v6[1];

  return v34();
}

uint64_t sub_10006E434()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v10 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v5 = v2[30];
    v4 = v2[31];
    (*(v2[19] + 8))(v2[22], v2[18]);

    v6 = v2[26];
    v7 = v2[27];
    v8 = sub_10006F194;
  }

  else
  {
    (*(v2[19] + 8))(v2[22], v2[18]);
    v6 = v2[26];
    v7 = v2[27];
    v8 = sub_10006E594;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10006E594(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6[34] + 1;
  if (v7 == v6[33])
  {
    v8 = v6[36];
    v9 = v6[30];
    v10 = v6[31];
    v11 = v6[14];
    v12 = v6[6];

    v13 = *(v12 + 24);
    sub_1000046B0(v10, v11);
    if (v8)
    {
      v14 = v6[31];
      v15 = v6[24];

      v17 = v6[21];
      v16 = v6[22];
      v18 = v6[20];
      v19 = v6[17];
      v21 = v6[13];
      v20 = v6[14];
      v22 = v6[10];
      v23 = v6[7];

      v24 = v6[1];

      return v24();
    }

    v35 = v6[31];
    v36 = v6[13];
    v37 = v6[14];
    v38 = v6[11];
    v39 = v6[12];
    v40 = v6[10];

    (*(v39 + 16))(v36, v37, v38);
    sub_10000CC24(&qword_10012AA28, &qword_10012AA20, &qword_100109A08);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    v41 = v6[25];
    v42 = v6[23];
    v43 = static CommunicationActor.shared.getter();
    v6[37] = v43;
    v44 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
    v45 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v46 = swift_task_alloc();
    v6[38] = v46;
    *v46 = v6;
    v46[1] = sub_10006E95C;
    v47 = v6[10];
    a1 = v6[7];
    a5 = v6[8];
    a4 = v6 + 2;
    a2 = v43;
    a3 = v41;
    a6 = v44;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v6[34] = v7;
  v26 = v6[30];
  if (v7 >= *(v26 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v28 = v6[16];
  v27 = v6[17];
  v29 = v6[15];
  v30 = v6[4];
  (*(v6[19] + 16))(v6[22], v26 + ((*(v6[19] + 80) + 32) & ~*(v6[19] + 80)) + *(v6[19] + 72) * v7, v6[18]);
  StoredPhoto.localIdentifier.getter();
  sub_10006C370(v27, 0);
  (*(v28 + 8))(v27, v29);
  v48 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  v6[35] = v32;
  *v32 = v6;
  v32[1] = sub_10006E434;
  v33 = v6[22];
  v34 = v6[5];

  return v48(v33);
}

uint64_t sub_10006E95C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v9 = *v1;

  v4 = v2[37];

  v5 = v2[26];
  v6 = v2[27];
  if (v0)
  {
    v7 = sub_10006F264;
  }

  else
  {
    v7 = sub_10006EA7C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10006EA7C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[24];
    v6 = v0[21];
    v5 = v0[22];
    v19 = v0[20];
    v20 = v0[17];
    v7 = v0[14];
    v21 = v0[13];
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[9];
    v11 = v0[10];
    v12 = v0[8];

    (*(v10 + 8))(v11, v12);
    (*(v8 + 8))(v7, v9);

    v13 = v0[1];

    return v13();
  }

  else
  {
    (*(v2 + 32))(v0[21], v3, v1);
    v15 = swift_task_alloc();
    v0[39] = v15;
    *v15 = v0;
    v15[1] = sub_10006EC60;
    v16 = v0[28];
    v17 = v0[20];
    v18 = v0[21];

    return sub_10005FB64(v17, v18);
  }
}

uint64_t sub_10006EC60()
{
  v2 = *(*v1 + 312);
  v3 = *v1;
  v3[40] = v0;

  if (v0)
  {
    v4 = v3[26];
    v5 = v3[27];

    return _swift_task_switch(sub_10006F374, v4, v5);
  }

  else
  {
    v11 = (v3[4] + *v3[4]);
    v6 = *(v3[4] + 4);
    v7 = swift_task_alloc();
    v3[41] = v7;
    *v7 = v3;
    v7[1] = sub_10006EE34;
    v8 = v3[5];
    v9 = v3[20];

    return v11(v9);
  }
}

uint64_t sub_10006EE34()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  v2[42] = v0;

  v5 = v2[20];
  v6 = v2[19];
  v7 = v2[18];
  v8 = *(v6 + 8);
  v9 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[45] = v8;
    v2[46] = v9;
    v8(v5, v7);
    v10 = v2[26];
    v11 = v2[27];
    v12 = sub_10006F4AC;
  }

  else
  {
    v2[43] = v8;
    v2[44] = v9;
    v8(v5, v7);
    v10 = v2[26];
    v11 = v2[27];
    v12 = sub_10006EFB8;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_10006EFB8()
{
  v1 = *(v0 + 352);
  (*(v0 + 344))(*(v0 + 168), *(v0 + 144));
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = static CommunicationActor.shared.getter();
  *(v0 + 296) = v4;
  v5 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
  v6 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v7 = swift_task_alloc();
  *(v0 + 304) = v7;
  *v7 = v0;
  v7[1] = sub_10006E95C;
  v8 = *(v0 + 80);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, v4, v2, v0 + 16, v10, v5);
}

uint64_t sub_10006F0C4()
{
  v1 = v0[24];

  v2 = v0[32];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[10];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10006F194()
{
  v1 = v0[24];

  v2 = v0[36];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[10];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10006F264()
{
  v1 = v0[24];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = v0[2];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[20];
  v12 = v0[17];
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[10];
  v16 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10006F374()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];

  (*(v4 + 8))(v2, v3);
  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  v11 = v0[40];
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[20];
  v15 = v0[17];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[10];
  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10006F4AC()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[18];
  v22 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];

  v2(v4, v5);
  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v22, v6);
  v11 = v0[42];
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[20];
  v15 = v0[17];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[10];
  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10006F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000045BC;

  return sub_10006DC0C(a4, a1, a2);
}

uint64_t sub_10006F6B8()
{
  *(v1 + 16) = *v0;
  type metadata accessor for CommunicationActor();
  *(v1 + 24) = static CommunicationActor.shared.getter();
  sub_10006FA3C();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006F754, v3, v2);
}

uint64_t sub_10006F754()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *(v2 + 32);

  sub_10000560C(&qword_10012A608, &unk_100109A20);
  sub_10000CC24(&qword_10012A610, &qword_10012A608, &unk_100109A20);
  PhotosXPCServer.registerGeneratePhoto<A>(callback:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006F844(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for CommunicationActor();
  v3[7] = static CommunicationActor.shared.getter();
  v3[8] = sub_10006FA3C();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006F8E8, v5, v4);
}

uint64_t sub_10006F8E8()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];

  v7 = *v4;
  static CommunicationActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  v6[3] = sub_10000560C(&qword_10012A3F8, &qword_100109178);
  v0[2] = type metadata accessor for StoredPhoto();
  v6[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v6);

  swift_checkMetadataState();
  generateElements<A>(isolation:_:)();

  v9 = v0[1];

  return v9();
}

unint64_t sub_10006FA3C()
{
  result = qword_100129EA0;
  if (!qword_100129EA0)
  {
    type metadata accessor for CommunicationActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100129EA0);
  }

  return result;
}

uint64_t sub_10006FA94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006FAD4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000045BC;

  return sub_10006F5E0(a1, a2, v7, v6);
}

uint64_t sub_10006FB84(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000CC84;

  return sub_10006D620(a1, a2, v2);
}

uint64_t sub_10006FC30()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Log.network.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    swift_beginAccess();
    v11 = *(v1 + 24);
    type metadata accessor for NetworkConnection();
    sub_100072EA4(&qword_10012AAF0, type metadata accessor for NetworkConnection);

    v12 = Set.description.getter();
    v14 = v13;

    v15 = sub_100102F80(v12, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "[ICM] Current connections: %s", v9, 0xCu);
    sub_10000C304(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

void *sub_10006FE60()
{
  v1 = v0;
  v2 = *v0;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = sub_100072658(&_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  v0[3] = v3;
  type metadata accessor for NWListener();
  v0[4] = 0;
  v0[5] = 0;
  _s11photosfaced16NetworkConstantsO10parameters6domain4type0B012NWParametersCSS_SStFZ_0(0xD000000000000016, 0x8000000100106DF0, 0x6E657473694C5341, 0xEA00000000007265);
  v0[2] = NWListener.__allocating_init(applicationService:using:)();

  NWListener.newConnectionHandler.setter();

  v4 = v0[2];

  NWListener.stateUpdateHandler.setter();

  return v1;
}

uint64_t sub_100070098(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NetworkConnection();
  v13 = swift_allocObject();
  type metadata accessor for NetworkCanceller();
  v14 = swift_allocObject();
  sub_10000560C(&qword_10012AAE8, &qword_100109A90);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = a1;
  *(v14 + 24) = v15;
  *(v13 + 16) = v14;

  static Log.network.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = v9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v40 = v20;
    *v19 = 136315138;
    v21 = *(*(v13 + 16) + 16);

    v22 = sub_1000842B8();
    v37 = v8;
    v23 = v22;
    v39 = v2;
    v24 = v7;
    v26 = v25;

    v27 = sub_100102F80(v23, v26, &v40);
    v7 = v24;
    v2 = v39;

    *(v19 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "[ICM] Found new incoming connection: %s", v19, 0xCu);
    sub_10000C304(v20);

    (*(v38 + 8))(v12, v37);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  type metadata accessor for CommunicationActor();

  v29 = static CommunicationActor.shared.getter();
  v30 = sub_100072EA4(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v30;
  v31[4] = v13;
  v31[5] = v2;
  sub_100005654(0, 0, v7, &unk_100109AA0, v31);

  v32 = swift_allocObject();
  *(v32 + 16) = v2;
  *(v32 + 24) = v13;
  v33 = *(*(v13 + 16) + 16);

  NWConnection.stateUpdateHandler.setter();

  v34 = *(v13 + 16);
  sub_10007E1D8();
  swift_beginAccess();

  sub_100065148(&v41, v13);
  swift_endAccess();

  sub_10006FC30();
}

uint64_t sub_1000705FC(NSObject *a1, uint64_t a2)
{
  v177 = a1;
  v3 = type metadata accessor for NWError();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v175 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v176 = &v162 - v9;
  v10 = __chkstk_darwin(v8);
  v172 = (&v162 - v11);
  v12 = __chkstk_darwin(v10);
  v14 = (&v162 - v13);
  __chkstk_darwin(v12);
  v173 = (&v162 - v15);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v178 = v16;
  v179 = v17;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v166 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v169 = &v162 - v22;
  v23 = __chkstk_darwin(v21);
  v168 = &v162 - v24;
  v25 = __chkstk_darwin(v23);
  v174 = (&v162 - v26);
  v27 = __chkstk_darwin(v25);
  v165 = &v162 - v28;
  v29 = __chkstk_darwin(v27);
  v171 = &v162 - v30;
  v31 = __chkstk_darwin(v29);
  v170 = (&v162 - v32);
  __chkstk_darwin(v31);
  v167 = &v162 - v33;
  v34 = type metadata accessor for NWConnection.State();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v163 = &v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v164 = &v162 - v40;
  __chkstk_darwin(v39);
  v42 = (&v162 - v41);
  v43 = *(v35 + 16);
  v44 = a2;
  v43(&v162 - v41, a2, v34);
  v45 = (*(v35 + 88))(v42, v34);
  if (v45 == enum case for NWConnection.State.waiting(_:))
  {
    (*(v35 + 96))(v42, v34);
    v46 = v176;
    (*(v4 + 32))(v176, v42, v3);
    static Log.network.getter();
    v47 = *(v4 + 16);
    v47(v175, v46, v3);
    v48 = v177;

    v49 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v42))
    {
      v50 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v183[0] = v173;
      *v50 = 136315394;
      v51 = *(v48[2].isa + 2);

      v52 = v3;
      v53 = sub_1000842B8();
      v3 = v54;

      v55 = sub_100102F80(v53, v3, v183);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2112;
      sub_100072EA4(&qword_10012AAF8, &type metadata accessor for NWError);
      swift_allocError();
      v56 = v175;
      v47(v57, v175, v52);
      v58 = _swift_stdlib_bridgeErrorToNSError();
      v59 = *(v4 + 8);
      v59(v56, v52);
      *(v50 + 14) = v58;
      v60 = v172;
      *v172 = v58;
      _os_log_impl(&_mh_execute_header, v49, v42, "[ICM] %s waiting with error: %@", v50, 0x16u);
      sub_100072EEC(v60);

      sub_10000C304(v173);

      (*(v179 + 8))(v174, v178);
      v59(v176, v52);
    }

    else
    {

      v76 = *(v4 + 8);
      v76(v175, v3);
      (*(v179 + 8))(v174, v178);
      v76(v176, v3);
    }

    goto LABEL_19;
  }

  if (v45 == enum case for NWConnection.State.failed(_:))
  {
    (*(v35 + 96))(v42, v34);
    v61 = v173;
    v62 = v3;
    (*(v4 + 32))(v173, v42, v3);
    *v14 = 60;
    (*(v4 + 104))(v14, enum case for NWError.posix(_:), v3);
    v63 = static NWError.== infix(_:_:)();
    v3 = v4 + 8;
    v64 = *(v4 + 8);
    (v64)(v14, v62);
    if (v63)
    {
      v65 = v170;
      static Log.network.getter();
      v66 = v177;

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v176 = v64;
        v71 = v70;
        v183[0] = v70;
        *v69 = 136315138;
        v72 = *(v66[2].isa + 2);

        v42 = sub_1000842B8();
        v74 = v73;

        v75 = sub_100102F80(v42, v74, v183);
        v61 = v173;

        *(v69 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v67, v68, "[ICM] %s timed out", v69, 0xCu);
        sub_10000C304(v71);
        v64 = v176;

        (*(v179 + 8))(v170, v178);
      }

      else
      {

        (*(v179 + 8))(v65, v178);
      }

      v105 = v180;
    }

    else
    {
      v176 = v64;
      v87 = v171;
      static Log.network.getter();
      v42 = v62;
      v88 = *(v4 + 16);
      v175 = (v4 + 16);
      v89 = v172;
      v88(v172, v61, v42);
      v90 = v177;

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v183[0] = v174;
        *v93 = 136315394;
        v94 = *(v90[2].isa + 2);

        v95 = sub_1000842B8();
        v97 = v96;

        v98 = v95;
        v61 = v173;
        v99 = sub_100102F80(v98, v97, v183);

        *(v93 + 4) = v99;
        *(v93 + 12) = 2112;
        sub_100072EA4(&qword_10012AAF8, &type metadata accessor for NWError);
        swift_allocError();
        v100 = v172;
        v88(v101, v172, v42);
        v102 = _swift_stdlib_bridgeErrorToNSError();
        v103 = v176;
        (v176)(v100, v42);
        *(v93 + 14) = v102;
        v104 = v170;
        *v170 = v102;
        _os_log_impl(&_mh_execute_header, v91, v92, "[ICM] %s failed with error: %@", v93, 0x16u);
        sub_100072EEC(v104);

        sub_10000C304(v174);

        (*(v179 + 8))(v171, v178);
        v105 = v180;
        v66 = v90;
        v64 = v103;
      }

      else
      {

        v110 = v176;
        (v176)(v89, v42);
        (*(v179 + 8))(v87, v178);
        v105 = v180;
        v66 = v90;
        v64 = v110;
      }

      v62 = v42;
    }

    isa = v66[2].isa;
    sub_10007E560();
    (v64)(v61, v62);
    goto LABEL_25;
  }

  if (v45 != enum case for NWConnection.State.setup(_:))
  {
    if (v45 != enum case for NWConnection.State.preparing(_:))
    {
      if (v45 == enum case for NWConnection.State.ready(_:))
      {
        v127 = v167;
        static Log.network.getter();
        v128 = v177;

        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v183[0] = v42;
          *v131 = 136315138;
          v132 = *(v128[2].isa + 2);

          v133 = sub_1000842B8();
          v135 = v134;

          v136 = sub_100102F80(v133, v135, v183);

          *(v131 + 4) = v136;
          _os_log_impl(&_mh_execute_header, v129, v130, "[ICM] %s changed to ready", v131, 0xCu);
          sub_10000C304(v42);
        }

        (*(v179 + 8))(v127, v178);
      }

      else
      {
        if (v45 == enum case for NWConnection.State.cancelled(_:))
        {
          v137 = v165;
          static Log.network.getter();
          v138 = v177;

          v139 = Logger.logObject.getter();
          v140 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v142 = swift_slowAlloc();
            v183[0] = v142;
            *v141 = 136315138;
            v143 = *(v138[2].isa + 2);

            v42 = sub_1000842B8();
            v145 = v144;

            v146 = sub_100102F80(v42, v145, v183);

            *(v141 + 4) = v146;
            _os_log_impl(&_mh_execute_header, v139, v140, "[ICM] %s cancelled", v141, 0xCu);
            sub_10000C304(v142);
          }

          (*(v179 + 8))(v137, v178);
          v105 = v180;
          swift_beginAccess();
          sub_100078980(v138);
          swift_endAccess();

          sub_10006FC30();
          goto LABEL_25;
        }

        v3 = v166;
        static Log.network.getter();
        v121 = v164;
        v43(v164, v44, v34);
        v147 = v177;

        v116 = Logger.logObject.getter();
        v148 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v116, v148))
        {
          v3 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v183[0] = v176;
          *v3 = 136315394;
          v149 = v147[2].isa;
          v177 = v116;
          v150 = *(v149 + 2);

          v151 = sub_1000842B8();
          LODWORD(v175) = v148;
          v153 = v152;

          v154 = sub_100102F80(v151, v153, v183);

          *(v3 + 4) = v154;
          *(v3 + 12) = 2080;
          v43(v163, v121, v34);
          v155 = String.init<A>(describing:)();
          v156 = v121;
          v158 = v157;
          v159 = *(v35 + 8);
          v159(v156, v34);
          v160 = sub_100102F80(v155, v158, v183);

          *(v3 + 14) = v160;
          v161 = v177;
          _os_log_impl(&_mh_execute_header, v177, v175, "[ICM] %s Unknown state: %s", v3, 0x16u);
          swift_arrayDestroy();

          (*(v179 + 8))(v166, v178);
        }

        else
        {
LABEL_58:

          v159 = *(v35 + 8);
          v159(v121, v34);
          (*(v179 + 8))(v3, v178);
        }

        v159(v42, v34);
      }

      goto LABEL_19;
    }

    v77 = v168;
    static Log.network.getter();
    v42 = v177;

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v78, v79))
    {
      goto LABEL_18;
    }

    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v183[0] = v81;
    *v80 = 136315138;
    v106 = *(v42[2] + 16);

    v42 = sub_1000842B8();
    v108 = v107;

    v109 = sub_100102F80(v42, v108, v183);

    *(v80 + 4) = v109;
    v86 = "[ICM] %s preparing";
    goto LABEL_17;
  }

  v77 = v169;
  static Log.network.getter();
  v42 = v177;

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v183[0] = v81;
    *v80 = 136315138;
    v82 = *(v42[2] + 16);

    v42 = sub_1000842B8();
    v84 = v83;

    v85 = sub_100102F80(v42, v84, v183);

    *(v80 + 4) = v85;
    v86 = "[ICM] %s setup";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v78, v79, v86, v80, 0xCu);
    sub_10000C304(v81);
  }

LABEL_18:

  (*(v179 + 8))(v77, v178);
LABEL_19:
  v105 = v180;
LABEL_25:
  swift_beginAccess();
  v112 = *(v105 + 24);
  if ((v112 & 0xC000000000000001) != 0)
  {
    if (v112 < 0)
    {
      v113 = *(v105 + 24);
    }

    v114 = *(v105 + 24);

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NetworkConnection();
    sub_100072EA4(&qword_10012AAF0, type metadata accessor for NetworkConnection);
    Set.Iterator.init(_cocoa:)();
    v35 = v183[0];
    v115 = v183[1];
    v116 = v183[2];
    v34 = v183[3];
    v117 = v183[4];
  }

  else
  {
    v118 = -1 << *(v112 + 32);
    v115 = v112 + 56;
    v116 = ~v118;
    v119 = -v118;
    if (v119 < 64)
    {
      v120 = ~(-1 << v119);
    }

    else
    {
      v120 = -1;
    }

    v117 = v120 & *(v112 + 56);
    swift_bridgeObjectRetain_n();
    v34 = 0;
    v35 = v112;
  }

  v180 = v116;
  v121 = (v116 + 64) >> 6;
  while ((v35 & 0x8000000000000000) == 0)
  {
    v122 = v34;
    v123 = v117;
    v124 = v34;
    if (!v117)
    {
      while (1)
      {
        v124 = v122 + 1;
        if (__OFADD__(v122, 1))
        {
          break;
        }

        if (v124 >= v121)
        {
          goto LABEL_46;
        }

        v123 = *(v115 + 8 * v124);
        ++v122;
        if (v123)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_40:
    v42 = ((v123 - 1) & v123);
    v3 = *(*(v35 + 48) + ((v124 << 9) | (8 * __clz(__rbit64(v123)))));

    if (!v3)
    {
      goto LABEL_46;
    }

LABEL_44:
    type metadata accessor for CommunicationActor();
    static CommunicationActor.shared.getter();
    sub_100072EA4(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v116 = v3;
    sub_10007B094();

    v34 = v124;
    v117 = v42;
  }

  v125 = __CocoaSet.Iterator.next()();
  if (v125)
  {
    v181 = v125;
    type metadata accessor for NetworkConnection();
    swift_dynamicCast();
    v3 = v182;
    v124 = v34;
    v42 = v117;
    if (v182)
    {
      goto LABEL_44;
    }
  }

LABEL_46:
  sub_100010E54();
}

uint64_t sub_100071AB4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];
  sub_100071B20(v0[4]);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100071B20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100071B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for Message();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v5[17] = static CommunicationActor.shared.getter();
  sub_100072EA4(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[18] = v13;
  v5[19] = v12;

  return _swift_task_switch(sub_100071CBC, v13, v12);
}

uint64_t sub_100071CBC()
{
  v22 = v0;
  v1 = v0[16];
  v2 = *(v0[8] + 16);
  v0[20] = v2;
  v3 = *(v2 + 16);

  v4 = sub_1000842B8();
  v6 = v5;

  v0[21] = v4;
  v0[22] = v6;
  static Log.network.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[14];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100102F80(v4, v6, &v21);
    _os_log_impl(&_mh_execute_header, v7, v8, "[ICM] Listening for messages on %s", v13, 0xCu);
    sub_10000C304(v14);
  }

  v15 = *(v12 + 8);
  v15(v10, v11);
  v0[23] = v15;
  v16 = v0[8];
  sub_10007B094();
  v17 = swift_task_alloc();
  v0[24] = v17;
  *v17 = v0;
  v17[1] = sub_100071EA4;
  v18 = v0[12];
  v19 = v0[8];

  return sub_10007B790(v18);
}

uint64_t sub_100071EA4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_1000723C4;
  }

  else
  {
    v7 = sub_100071FE0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100071FE0()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 32);
  v0[26] = v2;
  if (v2)
  {
    v0[27] = *(v0[9] + 40);
    swift_endAccess();

    v11 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[28] = v4;
    *v4 = v0;
    v4[1] = sub_1000721B0;
    v5 = v0[12];

    return v11(v5);
  }

  else
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    swift_endAccess();
    v7 = v0[8];
    sub_10007B094();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_100071EA4;
    v9 = v0[12];
    v10 = v0[8];

    return sub_10007B790(v9);
  }
}

uint64_t sub_1000721B0()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);
  v8 = *v0;

  sub_100071B20(v4);
  v5 = *(v1 + 152);
  v6 = *(v1 + 144);

  return _swift_task_switch(sub_10007230C, v6, v5);
}

uint64_t sub_10007230C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[8];
  sub_10007B094();
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_100071EA4;
  v3 = v0[12];
  v4 = v0[8];

  return sub_10007B790(v3);
}

uint64_t sub_1000723C4()
{
  v34 = v0;
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[15];

  static Log.network.getter();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[25];
    v8 = v0[22];
    v9 = v0[21];
    v10 = v0[14];
    v31 = v0[15];
    v32 = v0[23];
    v30 = v0[13];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v11 = 136315394;
    v14 = sub_100102F80(v9, v8, &v33);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[ICM] %s stopped listening with error: %@", v11, 0x16u);
    sub_100072EEC(v12);

    sub_10000C304(v13);

    v32(v31, v30);
  }

  else
  {
    v16 = v0[22];
    v17 = v0[23];
    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[13];

    v17(v18, v20);
  }

  v21 = v0[25];
  v22 = v0[20];
  v24 = v0[15];
  v23 = v0[16];
  v25 = v0[12];
  v27 = v0[8];
  v26 = v0[9];
  sub_10007E560();
  swift_beginAccess();
  sub_100078980(v27);
  swift_endAccess();

  sub_10006FC30();

  v28 = v0[1];

  return v28();
}

unint64_t sub_100072658(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_10000560C(&qword_10012A8C0, "0*");
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = (v3 + 7);
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      v10 = v3[5];
      Hasher.init(_seed:)();
      v11 = *(*(v9 + 16) + 16);

      v12 = NWConnection.identifier.getter();

      Hasher._combine(_:)(v12);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *&v6[8 * v15];
      v17 = 1 << (result & v13);
      if ((v17 & v16) != 0)
      {
        while (1)
        {
          v18 = *(*(*(v3[6] + 8 * v14) + 16) + 16);

          v19 = NWConnection.identifier.getter();

          v20 = *(*(v9 + 16) + 16);

          v21 = NWConnection.identifier.getter();

          if (v19 == v21)
          {
            break;
          }

          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *&v6[8 * (v14 >> 6)];
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v5 = v40;
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
        v5 = v40;
        if (v7 == v40)
        {
          return v3;
        }
      }

      else
      {
LABEL_17:
        *&v6[8 * v15] = v17 | v16;
        *(v3[6] + 8 * v14) = v9;
        v22 = v3[2];
        v8 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v8)
        {
          goto LABEL_31;
        }

        v3[2] = v23;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v24 = 0;
    v38 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v24 != v39)
    {
      v25 = *(v38 + 8 * v24);
      v26 = v3[5];
      Hasher.init(_seed:)();
      v27 = *(*(v25 + 16) + 16);

      v28 = NWConnection.identifier.getter();

      Hasher._combine(_:)(v28);
      result = Hasher._finalize()();
      v29 = ~(-1 << *(v3 + 32));
      for (i = result & v29; ; i = (i + 1) & v29)
      {
        v31 = *&v6[8 * (i >> 6)];
        if (((1 << i) & v31) == 0)
        {
          break;
        }

        v32 = *(*(*(v3[6] + 8 * i) + 16) + 16);

        v33 = NWConnection.identifier.getter();

        v34 = *(*(v25 + 16) + 16);

        v35 = NWConnection.identifier.getter();

        if (v33 == v35)
        {

          goto LABEL_22;
        }
      }

      *&v6[8 * (i >> 6)] = (1 << i) | v31;
      *(v3[6] + 8 * i) = v25;
      v36 = v3[2];
      v8 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v8)
      {
        goto LABEL_33;
      }

      v3[2] = v37;
LABEL_22:
      if (++v24 == v40)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_100072A1C(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Logger();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.network.getter();
  v14 = *(v3 + 16);
  v14(v9, a1, v2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v10;
    v18 = v17;
    v24 = swift_slowAlloc();
    v27 = v24;
    *v18 = 136315138;
    v14(v7, v9, v2);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    (*(v3 + 8))(v9, v2);
    v22 = sub_100102F80(v19, v21, &v27);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "[ICM] Network Advertiser State Changed: %s", v18, 0xCu);
    sub_10000C304(v24);

    return (*(v26 + 8))(v13, v25);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
    return (*(v26 + 8))(v13, v10);
  }
}

uint64_t sub_100072CF0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_100070098(v1);
}

uint64_t sub_100072D20()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100072D68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000045BC;

  return sub_100071B30(a1, v4, v5, v7, v6);
}

uint64_t sub_100072E28()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100072E68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100070580();
}

uint64_t sub_100072E70()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1000705FC(v1, v2);
}

uint64_t sub_100072EA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100072EEC(uint64_t a1)
{
  v2 = sub_10000560C(&qword_100129EF8, &qword_100108C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100072F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000560C(&qword_10012A1F0, &unk_100109B30);
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
    v12 = sub_1000F4434(v7, v9, *(a1 + 36), 0, a1);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 32))(a2, v7, v13);
    *(a2 + *(v4 + 48)) = v12;
    return (*(v15 + 56))(a2, 0, 1, v4);
  }
}

void *sub_1000730FC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1000F444C(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_100073178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = _HashTable.startBucket.getter();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_100079394(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = type metadata accessor for NWBrowser.Result();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_100073234()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Log.network.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_outgoingConnections;
    swift_beginAccess();
    v12 = *(v1 + v11);
    type metadata accessor for NetworkConnection();
    sub_10007A988(&qword_10012AAF0, type metadata accessor for NetworkConnection);

    v13 = Set.description.getter();
    v15 = v14;

    v16 = sub_100102F80(v13, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "[OCM] Current outgoing connections: %s", v9, 0xCu);
    sub_10000C304(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10007346C()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_lastOutgoingLocation;
  v2 = sub_10000560C(&unk_10012AB50, &qword_100109B00);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = sub_100072658(&_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_outgoingConnections) = v3;
  v4 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
  *(v0 + v4) = *_emptyDequeStorage.unsafeMutableAddressor();

  return v0;
}

uint64_t sub_100073540(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for Message();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for CommunicationActor();
  v2[20] = static CommunicationActor.shared.getter();
  v2[21] = sub_10007A988(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[22] = v10;
  v2[23] = v9;

  return _swift_task_switch(sub_1000736E0, v10, v9);
}

uint64_t sub_1000736E0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v9 = *(v0 + 72);
  v3 = static CommunicationActor.shared.getter();
  *(v0 + 192) = v3;
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  v4[1] = vextq_s8(v9, v9, 8uLL);
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  v7 = type metadata accessor for NetworkConnection();
  *v6 = v0;
  v6[1] = sub_100073800;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 64, v3, v1, 0x293A5F28646E6573, 0xE800000000000000, sub_100074AF4, v4, v7);
}

uint64_t sub_100073800()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);
  v8 = *v0;

  v5 = *(v1 + 184);
  v6 = *(v1 + 176);

  return _swift_task_switch(sub_100073960, v6, v5);
}

uint64_t sub_100073960()
{
  v0[27] = v0[8];
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_100073A04;
  v2 = v0[9];

  return sub_10007D2AC(v2, 0, 0);
}

uint64_t sub_100073A04()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_100073EB4;
  }

  else
  {
    v7 = sub_100073B40;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100073B40()
{
  v46 = v0;
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v7 = v0[10];

  static Log.network.getter();
  (*(v6 + 16))(v4, v8, v5);
  swift_retain_n();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v41 = v0[27];
    v42 = v0[16];
    v43 = v0[15];
    v44 = v0[18];
    v11 = v0[14];
    v12 = v0[11];
    v13 = v0[12];
    v14 = v0[10];
    v15 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v15 = 136315650;
    sub_10007A988(&qword_100129EE8, &type metadata accessor for Message);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v11, v12);
    v19 = sub_100102F80(v16, v18, &v45);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = *(*(v41 + 16) + 16);

    v21 = sub_1000842B8();
    v23 = v22;

    v24 = sub_100102F80(v21, v23, &v45);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2048;
    v25 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
    swift_beginAccess();
    v26 = *(*(v14 + v25) + 24);

    *(v15 + 24) = v26;

    _os_log_impl(&_mh_execute_header, v9, v10, "[OCM] Message popped: %s to %s. Total: %ld", v15, 0x20u);
    swift_arrayDestroy();

    (*(v42 + 8))(v44, v43);
  }

  else
  {
    v27 = v0[27];
    v28 = v0[18];
    v29 = v0[15];
    v30 = v0[16];
    v31 = v0[14];
    v32 = v0[11];
    v33 = v0[12];
    v34 = v0[10];

    (*(v33 + 8))(v31, v32);
    (*(v30 + 8))(v28, v29);
  }

  v36 = v0[17];
  v35 = v0[18];
  v38 = v0[13];
  v37 = v0[14];

  v39 = v0[1];

  return v39();
}

uint64_t sub_100073EB4()
{
  v49 = v0;
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  static Log.network.getter();
  (*(v5 + 16))(v4, v8, v6);
  swift_retain_n();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[27];
    v45 = v0[16];
    v46 = v0[15];
    v47 = v0[17];
    v44 = v10;
    v13 = v0[12];
    v12 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    v16 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v16 = 136315650;
    sub_10007A988(&qword_100129EE8, &type metadata accessor for Message);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_100102F80(v17, v19, v48);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = *(*(v11 + 16) + 16);

    v22 = sub_1000842B8();
    v24 = v23;

    v25 = sub_100102F80(v22, v24, v48);

    *(v16 + 14) = v25;
    *(v16 + 22) = 2048;
    v26 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
    swift_beginAccess();
    v27 = *(*(v15 + v26) + 24);

    *(v16 + 24) = v27;

    _os_log_impl(&_mh_execute_header, v9, v44, "[OCM] Message failed: %s to %s. Total: %ld", v16, 0x20u);
    swift_arrayDestroy();

    (*(v45 + 8))(v47, v46);
  }

  else
  {
    v29 = v0[16];
    v28 = v0[17];
    v30 = v0[15];
    v32 = v0[12];
    v31 = v0[13];
    v33 = v0[10];
    v34 = v0[11];

    (*(v32 + 8))(v31, v34);
    (*(v29 + 8))(v28, v30);
  }

  v35 = v0[29];
  v36 = v0[27];
  v38 = v0[17];
  v37 = v0[18];
  v40 = v0[13];
  v39 = v0[14];
  swift_willThrow();

  v41 = v0[1];
  v42 = v0[29];

  return v41();
}

uint64_t sub_100074224(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v59 = a3;
  v5 = sub_10000560C(&qword_10012AC50, &qword_100109B08);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v54 - v7;
  v9 = sub_10000560C(&qword_100129F20, &qword_100109B10);
  v66 = *(v9 - 8);
  v10 = *(v66 + 64);
  __chkstk_darwin(v9);
  v67 = &v54 - v11;
  v12 = type metadata accessor for Message();
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  __chkstk_darwin(v12);
  v60 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Logger();
  v58 = *(v63 - 8);
  v15 = *(v58 + 64);
  __chkstk_darwin(v63);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommunicationActor();
  v18 = static CommunicationActor.shared.getter();
  sub_10007A988(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
  swift_beginAccess();
  result = *(a2 + v19);
  v21 = *(result + 24);
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    goto LABEL_27;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a2 + v19);
  if (*(v24 + 16) < v22 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10000ADAC(isUniquelyReferenced_nonNull_native, v22, 0);
    v24 = *(a2 + v19);
  }

  v65 = (*(v66 + 80) + 40) & ~*(v66 + 80);
  sub_10000B0B4((v24 + 16), v24 + v65, a1);
  swift_endAccess();
  v25 = v17;
  static Log.network.getter();
  v27 = v60;
  v26 = v61;
  v28 = v62;
  (*(v61 + 16))(v60, v59, v62);
  swift_retain_n();
  v29 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  v59 = v29;
  v30 = os_log_type_enabled(v29, v57);
  v64 = v18;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v56 = v25;
    v32 = v31;
    v55 = swift_slowAlloc();
    v68 = v55;
    *v32 = 136315394;
    sub_10007A988(&qword_100129EE8, &type metadata accessor for Message);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v27;
    v35 = v58;
    v37 = v36;
    (*(v26 + 8))(v34, v28);
    v38 = sub_100102F80(v33, v37, &v68);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2048;
    v39 = *(*(a2 + v19) + 24);

    *(v32 + 14) = v39;

    v40 = v59;
    _os_log_impl(&_mh_execute_header, v59, v57, "[OCM] Message added: %s. Total: %ld", v32, 0x16u);
    sub_10000C304(v55);

    (*(v35 + 8))(v56, v63);
  }

  else
  {

    (*(v26 + 8))(v27, v28);
    (*(v58 + 8))(v25, v63);
  }

  v41 = sub_100074AFC();
  if (!v41)
  {
  }

  v42 = v41;
  v43 = (v66 + 56);
  v44 = (v66 + 32);
  v45 = (v66 + 48);
  for (i = (v66 + 8); ; (*i)(v53, v9))
  {
    swift_beginAccess();
    if (*(*(a2 + v19) + 24) < 1)
    {
      v52 = 1;
      goto LABEL_21;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000BA8C();
    }

    v47 = *(a2 + v19);
    result = (*(v66 + 32))(v8, &v47[v65 + *(v66 + 72) * *(v47 + 4)], v9);
    v48 = *(v47 + 4);
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      break;
    }

    v51 = *(v47 + 3);
    if (v50 >= *(v47 + 2))
    {
      v50 = 0;
    }

    *(v47 + 4) = v50;
    if (__OFSUB__(v51, 1))
    {
      goto LABEL_26;
    }

    v52 = 0;
    *(v47 + 3) = v51 - 1;
LABEL_21:
    (*v43)(v8, v52, 1, v9);
    swift_endAccess();
    if ((*v45)(v8, 1, v9) == 1)
    {

      sub_10000C460(v8, &qword_10012AC50, &qword_100109B08);
    }

    v53 = v67;
    (*v44)(v67, v8, v9);
    v68 = v42;

    CheckedContinuation.resume(returning:)();
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000748E8()
{
  v1 = v0[2];

  sub_10000C460(v0 + OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_lastOutgoingLocation, &qword_10012AC60, &qword_100109B20);
  v2 = *(v0 + OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_outgoingConnections);

  v3 = *(v0 + OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for OutgoingConnectionManager()
{
  result = qword_10012AB38;
  if (!qword_10012AB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000749D8()
{
  sub_100074A90();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100074A90()
{
  if (!qword_10012AB48)
  {
    sub_10000A990(&unk_10012AB50, &qword_100109B00);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10012AB48);
    }
  }
}

uint64_t sub_100074AFC()
{
  v1 = sub_10000560C(&qword_10012AC58, &qword_100109B18);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v156 = &v153 - v3;
  v160 = type metadata accessor for NWBrowser.Result();
  v157 = *(v160 - 8);
  v4 = *(v157 + 64);
  v5 = __chkstk_darwin(v160);
  v154 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v158 = &v153 - v7;
  v168 = type metadata accessor for NWEndpoint();
  v166 = *(v168 - 8);
  v8 = *(v166 + 64);
  v9 = __chkstk_darwin(v168);
  v11 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v183 = (&v153 - v13);
  __chkstk_darwin(v12);
  v162 = &v153 - v14;
  v15 = sub_10000560C(&qword_10012AC60, &qword_100109B20);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v161 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v163 = &v153 - v19;
  v165 = type metadata accessor for Logger();
  v164 = *(v165 - 8);
  v20 = *(v164 + 64);
  v21 = __chkstk_darwin(v165);
  v23 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v167 = &v153 - v25;
  __chkstk_darwin(v24);
  v159 = &v153 - v26;
  v182 = type metadata accessor for NWConnection.State();
  v184 = *(v182 - 8);
  v27 = *(v184 + 64);
  v28 = __chkstk_darwin(v182);
  v181 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v180 = &v153 - v30;
  v31 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_outgoingConnections;
  swift_beginAccess();
  v171 = v0;
  v172 = v31;
  v32 = *(v0 + v31);
  v155 = v11;
  if ((v32 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NetworkConnection();
    sub_10007A988(&qword_10012AAF0, type metadata accessor for NetworkConnection);
    result = Set.Iterator.init(_cocoa:)();
    v35 = v187[6];
    v34 = v187[7];
    v36 = v187[8];
    v37 = v187[9];
    v38 = v187[10];
  }

  else
  {
    v39 = -1 << *(v32 + 32);
    v34 = v32 + 56;
    v36 = ~v39;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v38 = v41 & *(v32 + 56);
    result = swift_bridgeObjectRetain_n();
    v37 = 0;
    v35 = v32;
  }

  v179 = v36;
  v153 = v23;
  while ((v35 & 0x8000000000000000) == 0)
  {
    v42 = v37;
    v43 = v38;
    v44 = v37;
    if (!v38)
    {
      while (1)
      {
        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v44 >= ((v36 + 64) >> 6))
        {
          goto LABEL_20;
        }

        v43 = *(v34 + 8 * v44);
        ++v42;
        if (v43)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
      return result;
    }

LABEL_14:
    v45 = (v43 - 1) & v43;
    v46 = *(*(v35 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));

    if (!v46)
    {
      goto LABEL_20;
    }

LABEL_18:
    type metadata accessor for CommunicationActor();
    static CommunicationActor.shared.getter();
    sub_10007A988(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_10007B094();

    v37 = v44;
    v38 = v45;
  }

  v47 = __CocoaSet.Iterator.next()();
  if (v47)
  {
    v187[0] = v47;
    type metadata accessor for NetworkConnection();
    swift_dynamicCast();
    v44 = v37;
    v45 = v38;
    if (v188)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  sub_100010E54();

  v170 = *(v171 + v172);
  if ((v170 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NetworkConnection();
    sub_10007A988(&qword_10012AAF0, type metadata accessor for NetworkConnection);
    result = Set.Iterator.init(_cocoa:)();
    v48 = v188;
    v49 = v189;
    v50 = v190;
    v51 = v191;
    v52 = v192;
  }

  else
  {
    v53 = -1 << *(v170 + 32);
    v49 = v170 + 56;
    v50 = ~v53;
    v54 = -v53;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    else
    {
      v55 = -1;
    }

    v52 = v55 & *(v170 + 56);
    v48 = v170;
    result = swift_bridgeObjectRetain_n();
    v51 = 0;
  }

  v56 = v183;
  v169 = v50;
  v57 = (v50 + 64) >> 6;
  v178 = enum case for NWConnection.State.ready(_:);
  v177 = (v184 + 104);
  v176 = (v184 + 8);
  v179 = v48;
  v175 = v49;
  v58 = v180;
  if (v48 < 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v59 = v51;
  v60 = v52;
  for (i = v51; !v60; ++v59)
  {
    i = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      goto LABEL_82;
    }

    if (i >= v57)
    {
      goto LABEL_40;
    }

    v60 = *(v49 + 8 * i);
  }

  v62 = (v60 - 1) & v60;
  v63 = *(*(v48 + 48) + ((i << 9) | (8 * __clz(__rbit64(v60)))));

  if (!v63)
  {
LABEL_40:
    sub_100010E54();

    v70 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
    v71 = v171;
    swift_beginAccess();
    v72 = v168;
    if (!*(*(v71 + v70) + 24))
    {
      v73 = *(v71 + v172);
      if ((v73 & 0xC000000000000001) != 0)
      {
        if (v73 < 0)
        {
          v74 = *(v71 + v172);
        }

        v75 = *(v71 + v172);

        v76 = __CocoaSet.count.getter();

        if (!v76)
        {
LABEL_50:
          v96 = sub_10000560C(&unk_10012AB50, &qword_100109B00);
          v97 = v163;
          (*(*(v96 - 8) + 56))(v163, 1, 1, v96);
          v98 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_lastOutgoingLocation;
          swift_beginAccess();
          sub_1000792A8(v97, v71 + v98);
          swift_endAccess();
          if (*(v71 + 16))
          {
            v99 = *(v71 + 16);

            NWBrowser.cancel()();
          }
        }
      }

      else if (!*(v73 + 16))
      {
        goto LABEL_50;
      }
    }

    if (!*(*(v71 + v70) + 24))
    {
      return 0;
    }

    if (!*(v71 + 16))
    {
      v100 = sub_100076098();
      v101 = *(v71 + 16);
      *(v71 + 16) = v100;
    }

    v102 = *(v71 + v172);
    v103 = v166;
    if ((v102 & 0xC000000000000001) != 0)
    {
      if (v102 < 0)
      {
        v104 = *(v71 + v172);
      }

      v105 = *(v71 + v172);

      v106 = __CocoaSet.count.getter();

      if (!v106)
      {
LABEL_61:
        v107 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_lastOutgoingLocation;
        swift_beginAccess();
        v108 = v161;
        sub_100079238(v71 + v107, v161);
        v109 = sub_10000560C(&unk_10012AB50, &qword_100109B00);
        if ((*(*(v109 - 8) + 48))(v108, 1, v109) == 1)
        {
          sub_10000C460(v108, &qword_10012AC60, &qword_100109B20);
          goto LABEL_63;
        }

        v119 = *(v108 + *(v109 + 48));
        v120 = v162;
        (*(v103 + 32))(v162, v108, v72);
        v184 = v119;
        v121 = sub_100076250(v120);
        static Log.network.getter();
        v122 = *(v103 + 16);
        v122(v56, v120, v72);

        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = v56;
          v183 = swift_slowAlloc();
          v185 = v183;
          *v125 = 136315394;
          LODWORD(v182) = v124;
          v122(v155, v56, v72);
          v127 = String.init<A>(describing:)();
          v129 = v128;
          v130 = *(v103 + 8);
          v130(v126, v72);
          v131 = sub_100102F80(v127, v129, &v185);

          *(v125 + 4) = v131;
          *(v125 + 12) = 2080;
          v132 = *(*(v121 + 16) + 16);

          v133 = sub_1000842B8();
          v135 = v134;

          v136 = sub_100102F80(v133, v135, &v185);
          v72 = v168;

          *(v125 + 14) = v136;
          v137 = v130;
          _os_log_impl(&_mh_execute_header, v123, v182, "[OCM] Connecting to last known endpoint %s, replaced with %s", v125, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v137 = *(v103 + 8);
          v137(v56, v72);
        }

        (*(v164 + 8))(v167, v165);
        swift_beginAccess();

        sub_100065148(&v186, v121);
        swift_endAccess();

        sub_100073234();

        v137(v162, v72);
        return 0;
      }
    }

    else if (!*(v102 + 16))
    {
      goto LABEL_61;
    }

LABEL_63:
    v110 = *(v71 + v172);
    if ((v110 & 0xC000000000000001) != 0)
    {
      if (v110 < 0)
      {
        v111 = *(v71 + v172);
      }

      v112 = *(v71 + v172);

      v113 = __CocoaSet.count.getter();

      if (v113)
      {
        return 0;
      }
    }

    else if (*(v110 + 16))
    {
      return 0;
    }

    if (*(v71 + 16))
    {
      v114 = *(v71 + 16);

      v115 = NWBrowser.browseResults.getter();
      v116 = v156;
      sub_100073178(v115, v156);

      v117 = v157;
      v118 = v160;
      if ((*(v157 + 48))(v116, 1, v160) == 1)
      {

        sub_10000C460(v116, &qword_10012AC58, &qword_100109B18);
      }

      else
      {
        v138 = v158;
        (*(v117 + 32))(v158, v116, v118);
        v139 = v155;
        NWBrowser.Result.endpoint.getter();
        NWBrowser.parameters.getter();
        v140 = v118;
        v184 = sub_100076250(v139);

        (*(v166 + 8))(v139, v72);
        v141 = v153;
        static Log.network.getter();
        v142 = v154;
        (*(v117 + 16))(v154, v138, v140);
        v143 = Logger.logObject.getter();
        v144 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v185 = v183;
          *v145 = 136315138;
          NWBrowser.Result.endpoint.getter();
          v146 = String.init<A>(describing:)();
          v148 = v147;
          v149 = *(v117 + 8);
          v149(v142, v160);
          v150 = sub_100102F80(v146, v148, &v185);

          *(v145 + 4) = v150;
          _os_log_impl(&_mh_execute_header, v143, v144, "[OCM] Connecting to browser endpoint %s", v145, 0xCu);
          sub_10000C304(v183);

          v151 = v160;
        }

        else
        {

          v149 = *(v117 + 8);
          v151 = v160;
          v149(v142, v160);
        }

        (*(v164 + 8))(v141, v165);
        swift_beginAccess();
        v152 = v184;

        sub_100065148(&v186, v152);
        swift_endAccess();

        sub_100073234();

        v149(v158, v151);
      }
    }

    return 0;
  }

  while (1)
  {
    v184 = v62;
    v173 = v51;
    v174 = v52;
    type metadata accessor for CommunicationActor();
    static CommunicationActor.shared.getter();
    sub_10007A988(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v65 = *(*(v63 + 16) + 16);

    NWConnection.state.getter();

    v66 = v63;
    v67 = v181;
    v68 = v182;
    (*v177)(v181, v178, v182);
    LOBYTE(v65) = static NWConnection.State.== infix(_:_:)();
    v69 = *v176;
    (*v176)(v67, v68);
    v69(v58, v68);

    if (v65)
    {
      break;
    }

    v51 = i;
    v52 = v184;
    v56 = v183;
    v48 = v179;
    v49 = v175;
    if ((v179 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_33:
    v64 = __CocoaSet.Iterator.next()();
    if (v64)
    {
      v185 = v64;
      type metadata accessor for NetworkConnection();
      swift_dynamicCast();
      v63 = v187[0];
      i = v51;
      v62 = v52;
      if (v187[0])
      {
        continue;
      }
    }

    goto LABEL_40;
  }

  sub_100010E54();

  v77 = v159;
  static Log.network.getter();

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();

  v80 = v66;
  if (os_log_type_enabled(v78, v79))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v187[0] = v82;
    *v81 = 136315138;
    v83 = *(*(v66 + 16) + 16);

    v84 = sub_1000842B8();
    v86 = v85;

    v87 = sub_100102F80(v84, v86, v187);

    *(v81 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v78, v79, "[OCM] Using ready connection: %s", v81, 0xCu);
    sub_10000C304(v82);
  }

  (*(v164 + 8))(v77, v165);
  v88 = v171;
  v89 = sub_10000560C(&unk_10012AB50, &qword_100109B00);
  v90 = *(v89 + 48);
  v91 = *(*(v80 + 16) + 16);

  v92 = v163;
  NWConnection.endpoint.getter();

  v93 = *(*(v80 + 16) + 16);

  v94 = NWConnection.parameters.getter();

  *(v92 + v90) = v94;
  (*(*(v89 - 8) + 56))(v92, 0, 1, v89);
  v95 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_lastOutgoingLocation;
  swift_beginAccess();
  sub_1000792A8(v92, v88 + v95);
  swift_endAccess();
  return v80;
}

uint64_t sub_100076098()
{
  v0 = type metadata accessor for NWBrowser.Descriptor();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = 0xD000000000000024;
  v3[1] = 0x80000001001073A0;
  (*(v4 + 104))(v3, enum case for NWBrowser.Descriptor.applicationService(_:));
  _s11photosfaced16NetworkConstantsO10parameters6domain4type0B012NWParametersCSS_SStFZ_0(0xD000000000000016, 0x8000000100106DF0, 0x766C6F7365525341, 0xEA00000000007265);
  v5 = type metadata accessor for NWBrowser();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = NWBrowser.init(for:using:)();

  NWBrowser.stateUpdateHandler.setter();

  NWBrowser.browseResultsChangedHandler.setter();
  type metadata accessor for CommunicationActor();
  v9 = static CommunicationActor.sharedQueue.getter();
  NWBrowser.start(queue:)();

  return v8;
}

uint64_t sub_100076250(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = *(v5 + 16);
  v12(&v23 - v10, a1, v4);
  v12(v9, v11, v4);
  v13 = type metadata accessor for NWConnection();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = NWConnection.init(to:using:)();
  (*(v5 + 8))(v11, v4);
  type metadata accessor for NetworkConnection();
  v17 = swift_allocObject();
  type metadata accessor for NetworkCanceller();
  v18 = swift_allocObject();
  sub_10000560C(&qword_10012AAE8, &qword_100109A90);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  *(v17 + 16) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = v17;

  NWConnection.stateUpdateHandler.setter();

  v21 = *(v17 + 16);
  sub_10007E1D8();
  return v17;
}

uint64_t sub_1000764EC(uint64_t a1)
{
  v2 = type metadata accessor for NWError();
  v106 = *(v2 - 8);
  v3 = *(v106 + 64);
  v4 = __chkstk_darwin(v2);
  v107 = (&v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v8 = &v95 - v7;
  v9 = __chkstk_darwin(v6);
  v102 = &v95 - v10;
  __chkstk_darwin(v9);
  v104 = &v95 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v108 = v12;
  v109 = v13;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v100 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v98 = &v95 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v95 - v20;
  v22 = __chkstk_darwin(v19);
  v101 = &v95 - v23;
  v24 = __chkstk_darwin(v22);
  v103 = &v95 - v25;
  __chkstk_darwin(v24);
  v27 = &v95 - v26;
  v28 = type metadata accessor for NWBrowser.State();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v96 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v97 = &v95 - v34;
  __chkstk_darwin(v33);
  v36 = &v95 - v35;
  v37 = *(v29 + 16);
  v99 = a1;
  v37(&v95 - v35, a1, v28);
  v38 = (*(v29 + 88))(v36, v28);
  if (v38 == enum case for NWBrowser.State.failed(_:))
  {
    (*(v29 + 96))(v36, v28);
    v39 = v106;
    (*(v106 + 32))(v8, v36, v2);
    static Log.network.getter();
    v40 = *(v39 + 16);
    v40(v107, v8, v2);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = v39;
    v44 = v21;
    if (os_log_type_enabled(v41, v42))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v103 = v44;
      v104 = v8;
      v47 = v46;
      *v45 = 138412290;
      sub_10007A988(&qword_10012AAF8, &type metadata accessor for NWError);
      swift_allocError();
      v48 = v43;
      v49 = v107;
      v40(v50, v107, v2);
      v51 = _swift_stdlib_bridgeErrorToNSError();
      v52 = *(v48 + 8);
      v52(v49, v2);
      *(v45 + 4) = v51;
      *v47 = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "[OCM] Browser failed: %@", v45, 0xCu);
      sub_10000C460(v47, &qword_100129EF8, &qword_100108C70);
      v44 = v103;
      v8 = v104;
    }

    else
    {

      v52 = *(v43 + 8);
      v52(v107, v2);
    }

    (*(v109 + 8))(v44, v108);
    if (*(v105 + 16))
    {
      v69 = *(v105 + 16);

      NWBrowser.cancel()();
    }

    return (v52)(v8, v2);
  }

  else
  {
    v53 = v106;
    if (v38 == enum case for NWBrowser.State.waiting(_:))
    {
      (*(v29 + 96))(v36, v28);
      v54 = v53;
      v55 = v104;
      v56 = v2;
      (*(v53 + 32))(v104, v36, v2);
      v57 = v103;
      static Log.network.getter();
      v58 = *(v53 + 16);
      v59 = v102;
      v58(v102, v55, v56);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138412290;
        sub_10007A988(&qword_10012AAF8, &type metadata accessor for NWError);
        swift_allocError();
        v64 = v59;
        v58(v65, v59, v56);
        v66 = _swift_stdlib_bridgeErrorToNSError();
        v67 = *(v54 + 8);
        v67(v64, v56);
        *(v62 + 4) = v66;
        *v63 = v66;
        _os_log_impl(&_mh_execute_header, v60, v61, "[OCM] Browser waiting: %@", v62, 0xCu);
        sub_10000C460(v63, &qword_100129EF8, &qword_100108C70);

        (*(v109 + 8))(v103, v108);
        return (v67)(v104, v56);
      }

      else
      {

        v73 = *(v54 + 8);
        v73(v59, v56);
        (*(v109 + 8))(v57, v108);
        return (v73)(v55, v56);
      }
    }

    else if (v38 == enum case for NWBrowser.State.setup(_:))
    {
      static Log.network.getter();
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "[OCM] Browser setup", v72, 2u);
      }

      return (*(v109 + 8))(v27, v108);
    }

    else if (v38 == enum case for NWBrowser.State.ready(_:))
    {
      v74 = v101;
      static Log.network.getter();
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "[OCM] Browser ready", v77, 2u);
      }

      return (*(v109 + 8))(v74, v108);
    }

    else if (v38 == enum case for NWBrowser.State.cancelled(_:))
    {
      v78 = v98;
      static Log.network.getter();
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v79, v80, "[OCM] Browser cancelled", v81, 2u);
      }

      (*(v109 + 8))(v78, v108);
      v82 = *(v105 + 16);
      *(v105 + 16) = 0;
    }

    else
    {
      v83 = v100;
      static Log.network.getter();
      v84 = v97;
      v37(v97, v99, v28);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v110 = v107;
        *v87 = 136315138;
        LODWORD(v106) = v86;
        v37(v96, v84, v28);
        v88 = String.init<A>(describing:)();
        v89 = v84;
        v90 = v88;
        v92 = v91;
        v93 = *(v29 + 8);
        v93(v89, v28);
        v94 = sub_100102F80(v90, v92, &v110);

        *(v87 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v85, v106, "[OCM] Unknown Browser State: %s", v87, 0xCu);
        sub_10000C304(v107);
      }

      else
      {

        v93 = *(v29 + 8);
        v93(v84, v28);
      }

      (*(v109 + 8))(v83, v108);
      return (v93)(v36, v28);
    }
  }
}

uint64_t sub_100077170(NSObject *a1, void (*a2)(char **, char *, uint64_t))
{
  v210 = a2;
  v211 = a1;
  v2 = sub_10000560C(&qword_10012AC50, &qword_100109B08);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v193 - v4;
  v6 = sub_10000560C(&qword_100129F20, &qword_100109B10);
  v213 = *(v6 - 8);
  v7 = *(v213 + 64);
  __chkstk_darwin(v6);
  v9 = &v193 - v8;
  v10 = type metadata accessor for NWError();
  v212 = *(v10 - 8);
  v11 = v212[8];
  v12 = __chkstk_darwin(v10);
  v202 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v205 = (&v193 - v15);
  v16 = __chkstk_darwin(v14);
  v18 = &v193 - v17;
  v19 = __chkstk_darwin(v16);
  v207 = (&v193 - v20);
  __chkstk_darwin(v19);
  v208 = &v193 - v21;
  v22 = type metadata accessor for Logger();
  v209 = *(v22 - 8);
  v23 = *(v209 + 64);
  v24 = __chkstk_darwin(v22);
  v197 = &v193 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v194 = &v193 - v27;
  v28 = __chkstk_darwin(v26);
  v203 = (&v193 - v29);
  v30 = __chkstk_darwin(v28);
  v201 = (&v193 - v31);
  v32 = __chkstk_darwin(v30);
  v198 = &v193 - v33;
  v34 = __chkstk_darwin(v32);
  v206 = (&v193 - v35);
  v36 = __chkstk_darwin(v34);
  v199 = &v193 - v37;
  __chkstk_darwin(v36);
  v200 = &v193 - v38;
  v39 = type metadata accessor for NWConnection.State();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v193 = &v193 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v196 = &v193 - v45;
  __chkstk_darwin(v44);
  v47 = &v193 - v46;
  v195 = *(v40 + 16);
  v195(&v193 - v46, v210, v39);
  v48 = (*(v40 + 88))(v47, v39);
  if (v48 == enum case for NWConnection.State.waiting(_:))
  {
    v205 = v22;
    (*(v40 + 96))(v47, v39);
    v49 = v212;
    v50 = v208;
    (v212[4])(v208, v47, v10);
    static Log.network.getter();
    v210 = v49[2];
    v210(v207, v50, v10);
    v51 = v211;

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    v54 = v49;
    if (os_log_type_enabled(v52, v53))
    {
      v55 = swift_slowAlloc();
      v204 = v10;
      v56 = v55;
      v202 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v215[0] = v203;
      *v56 = 136315394;
      isa = v51[2].isa;
      v211 = v52;
      v58 = *(isa + 2);

      v59 = sub_1000842B8();
      v60 = v54;
      LODWORD(v201) = v53;
      v61 = v59;
      v63 = v62;

      v64 = sub_100102F80(v61, v63, v215);

      *(v56 + 4) = v64;
      *(v56 + 12) = 2112;
      sub_10007A988(&qword_10012AAF8, &type metadata accessor for NWError);
      v65 = v204;
      swift_allocError();
      v66 = v207;
      v210(v67, v207, v65);
      v68 = _swift_stdlib_bridgeErrorToNSError();
      v69 = v60[1];
      v69(v66, v65);
      *(v56 + 14) = v68;
      v70 = v202;
      *v202 = v68;
      v71 = v211;
      _os_log_impl(&_mh_execute_header, v211, v201, "[OCM] %s waiting with error: %@", v56, 0x16u);
      sub_10000C460(v70, &qword_100129EF8, &qword_100108C70);

      sub_10000C304(v203);

      (*(v209 + 8))(v206, v205);
      v72 = v69(v208, v65);
    }

    else
    {

      v93 = v49[1];
      v93(v207, v10);
      (*(v209 + 8))(v206, v205);
      v72 = (v93)(v208, v10);
    }

    goto LABEL_25;
  }

  v208 = v18;
  v73 = v212;
  v204 = v10;
  if (v48 == enum case for NWConnection.State.failed(_:))
  {
    (*(v40 + 96))(v47, v39);
    v74 = v208;
    v75 = v204;
    (v73[4])(v208, v47, v204);
    v76 = v205;
    *v205 = 60;
    (v73[13])(v76, enum case for NWError.posix(_:), v75);
    v77 = static NWError.== infix(_:_:)();
    v78 = v73[1];
    v210 = (v73 + 1);
    v207 = v78;
    (v78)(v76, v75);
    v79 = v22;
    if (v77)
    {
      v80 = v201;
      static Log.network.getter();
      v81 = v211;

      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        v215[0] = v212;
        *v84 = 136315138;
        v85 = v81[2].isa;
        LODWORD(v206) = v83;
        v86 = *(v85 + 2);

        v87 = sub_1000842B8();
        v89 = v88;

        v90 = v87;
        v81 = v211;
        v91 = sub_100102F80(v90, v89, v215);
        v75 = v204;

        *(v84 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v82, v206, "[OCM] %s timed out", v84, 0xCu);
        sub_10000C304(v212);
      }

      (*(v209 + 8))(v80, v79);
      v92 = v207;
    }

    else
    {
      v205 = v22;
      v106 = v203;
      static Log.network.getter();
      v107 = v73[2];
      v212 = v73 + 2;
      v108 = v202;
      v109 = v74;
      v110 = v106;
      v107(v202, v109, v75);
      v81 = v211;

      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        v215[0] = v206;
        *v113 = 136315394;
        v114 = v81[2].isa;
        LODWORD(v200) = v112;
        v115 = *(v114 + 2);

        v116 = sub_1000842B8();
        v118 = v117;

        v119 = v116;
        v81 = v211;
        v120 = sub_100102F80(v119, v118, v215);

        *(v113 + 4) = v120;
        *(v113 + 12) = 2112;
        sub_10007A988(&qword_10012AAF8, &type metadata accessor for NWError);
        swift_allocError();
        v107(v121, v108, v204);
        v122 = _swift_stdlib_bridgeErrorToNSError();
        v92 = v207;
        (v207)(v108, v204);
        *(v113 + 14) = v122;
        v123 = v201;
        *v201 = v122;
        _os_log_impl(&_mh_execute_header, v111, v200, "[OCM] %s failed with error: %@", v113, 0x16u);
        sub_10000C460(v123, &qword_100129EF8, &qword_100108C70);

        sub_10000C304(v206);

        v75 = v204;

        (*(v209 + 8))(v203, v205);
      }

      else
      {

        v92 = v207;
        (v207)(v108, v75);
        (*(v209 + 8))(v110, v205);
      }
    }

    v137 = v81[2].isa;
    sub_10007E560();
    v72 = v92(v208, v75);
    goto LABEL_25;
  }

  v205 = v22;
  if (v48 == enum case for NWConnection.State.setup(_:))
  {
    v94 = v200;
    static Log.network.getter();
    v95 = v211;

    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v215[0] = v212;
      *v98 = 136315138;
      v99 = v95[2].isa;
      v100 = v97;
      v101 = *(v99 + 2);

      v102 = sub_1000842B8();
      v104 = v103;

      v105 = sub_100102F80(v102, v104, v215);

      *(v98 + 4) = v105;
      _os_log_impl(&_mh_execute_header, v96, v100, "[OCM] %s setup", v98, 0xCu);
      sub_10000C304(v212);
    }

    v72 = (*(v209 + 8))(v94, v205);
    goto LABEL_25;
  }

  if (v48 != enum case for NWConnection.State.preparing(_:))
  {
    if (v48 != enum case for NWConnection.State.ready(_:))
    {
      if (v48 == enum case for NWConnection.State.cancelled(_:))
      {
        v163 = v194;
        static Log.network.getter();
        v164 = v211;

        v165 = Logger.logObject.getter();
        v166 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v215[0] = v168;
          *v167 = 136315138;
          v169 = v164[2].isa;
          LODWORD(v212) = v166;
          v170 = *(v169 + 2);

          v171 = sub_1000842B8();
          v173 = v172;

          v174 = v171;
          v164 = v211;
          v175 = sub_100102F80(v174, v173, v215);

          *(v167 + 4) = v175;
          _os_log_impl(&_mh_execute_header, v165, v212, "[OCM] %s cancelled", v167, 0xCu);
          sub_10000C304(v168);
        }

        (*(v209 + 8))(v163, v205);
        swift_beginAccess();
        sub_100078980(v164);
        swift_endAccess();

        v72 = sub_100073234();
      }

      else
      {
        static Log.network.getter();
        v195(v196, v210, v39);
        v176 = v211;

        v177 = Logger.logObject.getter();
        v178 = static os_log_type_t.default.getter();

        LODWORD(v212) = v178;
        if (os_log_type_enabled(v177, v178))
        {
          v179 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          v215[0] = v210;
          *v179 = 136315394;
          v180 = v176[2].isa;
          v211 = v177;
          v181 = *(v180 + 2);

          v207 = sub_1000842B8();
          v183 = v182;

          v184 = sub_100102F80(v207, v183, v215);

          v208 = v179;
          *(v179 + 4) = v184;
          *(v179 + 12) = 2080;
          v185 = v196;
          v195(v193, v196, v39);
          v186 = String.init<A>(describing:)();
          v188 = v187;
          v189 = *(v40 + 8);
          v189(v185, v39);
          v190 = sub_100102F80(v186, v188, v215);

          v191 = v208;
          *(v208 + 14) = v190;
          v192 = v211;
          _os_log_impl(&_mh_execute_header, v211, v212, "[OCM] %s unknown state: %s", v191, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v189 = *(v40 + 8);
          v189(v196, v39);
        }

        (*(v209 + 8))(v197, v205);
        v72 = (v189)(v47, v39);
      }

      goto LABEL_25;
    }

    v124 = v198;
    static Log.network.getter();
    v138 = v211;

    v126 = Logger.logObject.getter();
    v139 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v126, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v215[0] = v141;
      *v140 = 136315138;
      v142 = v138[2].isa;
      v143 = v139;
      v144 = *(v142 + 2);

      v145 = sub_1000842B8();
      v147 = v146;

      v148 = sub_100102F80(v145, v147, v215);

      *(v140 + 4) = v148;
      _os_log_impl(&_mh_execute_header, v126, v143, "[OCM] %s ready", v140, 0xCu);
      sub_10000C304(v141);

      v72 = (*(v209 + 8))(v198, v205);
      goto LABEL_25;
    }

LABEL_24:

    v72 = (*(v209 + 8))(v124, v205);
    goto LABEL_25;
  }

  v124 = v199;
  static Log.network.getter();
  v125 = v211;

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v126, v127))
  {
    goto LABEL_24;
  }

  v128 = swift_slowAlloc();
  v129 = swift_slowAlloc();
  v215[0] = v129;
  *v128 = 136315138;
  v130 = v125[2].isa;
  v131 = v127;
  v132 = *(v130 + 2);

  v133 = sub_1000842B8();
  v135 = v134;

  v136 = sub_100102F80(v133, v135, v215);

  *(v128 + 4) = v136;
  _os_log_impl(&_mh_execute_header, v126, v131, "[OCM] %s preparing", v128, 0xCu);
  sub_10000C304(v129);

  v72 = (*(v209 + 8))(v199, v205);
LABEL_25:
  result = sub_100074AFC(v72);
  if (!result)
  {
    return result;
  }

  v150 = result;
  v151 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
  v152 = (v213 + 56);
  v153 = (v213 + 32);
  v154 = (v213 + 48);
  for (i = (v213 + 8); ; (*i)(v9, v6))
  {
    v156 = v214;
    swift_beginAccess();
    if (*(*(v156 + v151) + 24) < 1)
    {
      v162 = 1;
      goto LABEL_36;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000BA8C();
    }

    v157 = *(v214 + v151);
    result = (*(v213 + 32))(v5, &v157[((*(v213 + 80) + 40) & ~*(v213 + 80)) + *(v213 + 72) * *(v157 + 4)], v6);
    v158 = *(v157 + 4);
    v159 = __OFADD__(v158, 1);
    v160 = v158 + 1;
    if (v159)
    {
      break;
    }

    v161 = *(v157 + 3);
    if (v160 >= *(v157 + 2))
    {
      v160 = 0;
    }

    *(v157 + 4) = v160;
    if (__OFSUB__(v161, 1))
    {
      goto LABEL_49;
    }

    v162 = 0;
    *(v157 + 3) = v161 - 1;
LABEL_36:
    (*v152)(v5, v162, 1, v6);
    swift_endAccess();
    if ((*v154)(v5, 1, v6) == 1)
    {

      return sub_10000C460(v5, &qword_10012AC50, &qword_100109B08);
    }

    (*v153)(v9, v5, v6);
    v215[0] = v150;

    CheckedContinuation.resume(returning:)();
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1000786D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10007A988(&qword_10012A1F8, &type metadata accessor for UUID);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_10007A988(&qword_10012A660, &type metadata accessor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000675F8();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_100078D4C(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_100078980(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_100078B68(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  v10 = *(v3 + 40);
  Hasher.init(_seed:)();
  v11 = *(a1 + 16);
  v12 = *(v11 + 16);

  v13 = NWConnection.identifier.getter();

  Hasher._combine(_:)(v13);
  v14 = Hasher._finalize()();
  v15 = -1 << *(v3 + 32);
  v16 = v14 & ~v15;
  if (((*(v3 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
    return 0;
  }

  v17 = ~v15;
  while (1)
  {
    v18 = *(*(*(*(v3 + 48) + 8 * v16) + 16) + 16);

    v19 = NWConnection.identifier.getter();

    v20 = *(v11 + 16);

    v21 = NWConnection.identifier.getter();

    if (v19 == v21)
    {
      break;
    }

    v16 = (v16 + 1) & v17;
    if (((*(v3 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }
  }

  v22 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v9;
  v26 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100067998();
    v24 = v26;
  }

  v25 = *(*(v24 + 48) + 8 * v16);
  sub_100079054(v16);
  result = v25;
  *v9 = v26;
  return result;
}