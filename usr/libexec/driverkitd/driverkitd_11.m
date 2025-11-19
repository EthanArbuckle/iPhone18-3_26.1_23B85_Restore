uint64_t sub_1000E3554()
{
  v2 = *sub_100003C4C((v0 + 16), *(v0 + 40));
  sub_1000E0280(v27);
  v4 = v28;
  v3 = v29;
  sub_100003C4C(v27, v28);
  v5 = (*(*(v3 + 8) + 8))(v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  sub_100003C90(v27);
  v9 = 0;
  v10 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (v9 << 9) | (8 * v12);
    if ((*(*(v5 + 56) + v13) & 2) != 0)
    {
      v14 = *(*(v5 + 48) + v13);
      v15 = *sub_100003C4C((v23 + 16), *(v23 + 40));
      v1 = sub_100003CDC(&qword_100133C70, &qword_100101860);
      swift_beginAccess();
      v16 = *(v15 + 16);
      if (*(v16 + 16) && (v17 = sub_100061698(v1), (v18 & 1) != 0))
      {
        sub_10000B430(*(v16 + 56) + 32 * v17, v26);
      }

      else
      {
        memset(v26, 0, sizeof(v26));
      }

      sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
      if (!swift_dynamicCast())
      {
        goto LABEL_18;
      }

      sub_100009F34(v24, v27);
      v1 = v28;
      v19 = v29;
      sub_100003C4C(v27, v28);
      (*(*(v19 + 8) + 16))(v14, v1);
      sub_100003C90(v27);
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v9;
    if (v8)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_18:
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_10000A184(v24, &qword_100139368, &qword_100101868);
  *&v24[0] = 0;
  *(&v24[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v24[0] = 0xD000000000000016;
  *(&v24[0] + 1) = 0x800000010010C820;
  *&v26[0] = v1;
  sub_100003CDC(&qword_100139370, &unk_100101870);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v21);

  v22._object = 0x800000010010C840;
  v22._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v22);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E3948()
{
  sub_100003C90((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  v6 = *(v0 + 112);

  return v0;
}

uint64_t sub_1000E39A8()
{
  sub_1000E3948();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E3A08()
{
  v1 = *(v0 + 64);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

void *sub_1000E3A84(uint64_t a1, uint64_t a2)
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

  sub_100003CDC(&qword_100139348, &qword_100101848);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1000E3AF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000E3BC4(v11, 0, 0, 1, a1, a2);
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
    sub_10000B430(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003C90(v11);
  return v7;
}

unint64_t sub_1000E3BC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000E3CD0(a5, a6);
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

char *sub_1000E3CD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000E3D1C(a1, a2);
  sub_1000E3E4C(&off_100125F30);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000E3D1C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000E3A84(v5, 0);
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
        v7 = sub_1000E3A84(v10, 0);
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

uint64_t sub_1000E3E4C(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000E3F38(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1000E3F38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_100139348, &qword_100101848);
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

uint64_t sub_1000E402C(void *a1, uint64_t a2)
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

      type metadata accessor for StateManagerWrapper();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_1000E62F0(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_1000E6604(v19 + 1);
    }

    sub_1000E76C4(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a2 + 16));
  v11 = Hasher._finalize()();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    sub_1000E7BB8(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(*(v6 + 48) + 8 * v13) + 16) != *(a2 + 16))
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_1000E4238(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL);
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
      sub_1000EB8E8(&qword_1001342B8, &type metadata accessor for URL);
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
    sub_1000E7D30(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1000E4518(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v52 = *v42;
    sub_1000146C4(a2, a3);
    sub_1000E7FD4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v42 = *v52;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v50 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v47 = v16;
  v46 = a3;
  v48 = v12;
  v49 = BYTE6(a3);
  v44 = v6 + 56;
  v45 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v50) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_65;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_66;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v49;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v47)
          {
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
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v52 = v19;
        *&v52[8] = v18;
        v52[10] = BYTE2(v18);
        v52[11] = BYTE3(v18);
        v52[12] = BYTE4(v18);
        v52[13] = BYTE5(v18);
        sub_1000146C4(v19, v18);
        v12 = v48;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_67;
      }

      sub_1000146C4(v19, v18);
      v33 = __DataStorage._bytes.getter();
      if (v33)
      {
        v35 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_70;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_1000146C4(v19, v18);
    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v34 = __DataStorage._offset.getter();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_69;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v46;
    sub_100045F4C(v33, a2, v46, v52);
    sub_1000128D8(v19, v18);
    v9 = v44;
    v6 = v45;
    v12 = v48;
    if (v52[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v52[6] = 0;
  *v52 = 0;
  sub_1000146C4(v19, v18);
LABEL_60:
  sub_100045F4C(v52, a2, a3, &v51);
  sub_1000128D8(v19, v18);
  if (!v51)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_1000128D8(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_1000146C4(v41, *(&v41 + 1));
  return 0;
}

uint64_t sub_1000E49A0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_1000E844C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000E4AF0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v68 = v2;
    v16 = v9;
    v17 = *(v12 + 40);
    Hasher.init(_seed:)();
    sub_1000D7374();
    String.hash(into:)();

    sub_1000D7614();
    if (v18)
    {
      v19 = String._bridgeToObjectiveC()();

      v20 = OSKextParseVersionCFString();
    }

    else
    {
      v20 = 0;
    }

    Hasher._combine(_:)(v20);
    sub_1000138F8(a2 + 24, v75);
    v69 = a1;
    if (v76)
    {
      if (v76 == 1)
      {
        v24 = *&v75[0];
        sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        Hasher._combine(_:)(*(v24 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
      }
    }

    else
    {
      sub_100009F34(v75, v72);
      v25 = v73;
      v26 = v74;
      sub_100003C4C(v72, v73);
      (*(v26 + 64))(v25, v26);
      sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*(v7 + 8))(v11, v16);
      sub_100003C90(v72);
    }

    v27 = Hasher._finalize()();
    v28 = -1 << *(v12 + 32);
    v29 = v27 & ~v28;
    v71 = v12 + 56;
    if (((*(v12 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
LABEL_61:
      v63 = v68;
      v64 = *v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77[0] = *v63;

      sub_1000E85CC(v66, v29, isUniquelyReferenced_nonNull_native);
      *v63 = v77[0];
      *v69 = a2;
      return 1;
    }

    v70 = ~v28;
    while (1)
    {
      v30 = *(*(v12 + 48) + 8 * v29);
      v31 = *(v30 + 16);
      v32 = qword_100133A50;

      if (v32 != -1)
      {
        swift_once();
      }

      v34 = qword_10014E8C0;
      v33 = *algn_10014E8C8;
      if (*(v31 + 16) && (v35 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v36 & 1) != 0) && (sub_10000B430(*(v31 + 56) + 32 * v35, v77), (swift_dynamicCast() & 1) != 0))
      {
        v37 = *(&v75[0] + 1);
        v38 = *&v75[0];
      }

      else
      {
        v38 = 0xD000000000000014;
        v37 = 0x8000000100104280;
      }

      v39 = *(a2 + 16);
      if (*(v39 + 16) && (v40 = sub_100061588(v34, v33), (v41 & 1) != 0) && (sub_10000B430(*(v39 + 56) + 32 * v40, v77), (swift_dynamicCast() & 1) != 0))
      {
        v42 = *(&v75[0] + 1);
        if (v38 != *&v75[0])
        {
          goto LABEL_38;
        }
      }

      else
      {
        v42 = 0x8000000100104280;
        if (v38 != 0xD000000000000014)
        {
          goto LABEL_38;
        }
      }

      if (v37 == v42)
      {

        goto LABEL_39;
      }

LABEL_38:
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_39:
      v44 = *(v30 + 16);
      if (*(v44 + 16) && (v45 = sub_100061588(v34, v33), (v46 & 1) != 0) && (sub_10000B430(*(v44 + 56) + 32 * v45, v77), (swift_dynamicCast() & 1) != 0))
      {
        v48 = *(&v75[0] + 1);
        v47 = *&v75[0];
      }

      else
      {
        v47 = 0xD000000000000014;
        v48 = 0x8000000100104280;
      }

      if (v47 == 0xD000000000000014 && 0x8000000100104280 == v48)
      {

        goto LABEL_22;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v49)
      {
LABEL_21:

        goto LABEL_22;
      }

      v50 = *(v30 + 16);
      if (qword_100133A70 != -1)
      {
        swift_once();
      }

      v51 = qword_10014E900;
      v52 = *algn_10014E908;
      if (*(v50 + 16) && (v53 = sub_100061588(qword_10014E900, *algn_10014E908), (v54 & 1) != 0) && (sub_10000B430(*(v50 + 56) + 32 * v53, v77), swift_dynamicCast()))
      {
        v55 = String._bridgeToObjectiveC()();

        v56 = OSKextParseVersionCFString();
      }

      else
      {
        v56 = 0;
      }

      v57 = *(a2 + 16);
      if (*(v57 + 16) && (v58 = sub_100061588(v51, v52), (v59 & 1) != 0) && (sub_10000B430(*(v57 + 56) + 32 * v58, v77), swift_dynamicCast()))
      {
        v60 = String._bridgeToObjectiveC()();

        v61 = OSKextParseVersionCFString();

        if (v56 != v61)
        {
          goto LABEL_21;
        }
      }

      else if (v56)
      {
        goto LABEL_21;
      }

      v62 = sub_1000DCBA8(v30 + 24, a2 + 24);

      if (v62)
      {

        *v69 = *(*(v12 + 48) + 8 * v29);

        return 0;
      }

LABEL_22:
      v29 = (v29 + 1) & v70;
      if (((*(v71 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_61;
      }
    }
  }

  if (v12 < 0)
  {
    v13 = *v2;
  }

  else
  {
    v13 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  v14 = __CocoaSet.member(for:)();

  if (v14)
  {

    *&v75[0] = v14;
    type metadata accessor for OSExtension(0);
    swift_dynamicCast();
    result = 0;
    *a1 = v77[0];
    return result;
  }

  result = __CocoaSet.count.getter();
  if (!__OFADD__(result, 1))
  {
    v21 = sub_1000E64F0(v13, result + 1);
    v77[0] = v21;
    v22 = v21[2];
    if (v21[3] <= v22)
    {
      sub_1000E7070(v22 + 1);
      v21 = v77[0];
    }

    sub_1000E7768(v23, v21);

    *v3 = v21;
    *a1 = a2;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E5304(uint64_t a1, uint64_t a2)
{
  v71 = *v2;
  v4 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v5 = *a2;
  v6 = *(a2 + 8);
  String.hash(into:)();
  v7 = *(a2 + 16);
  String.hash(into:)();

  v66 = *(a2 + 32) >> 60;
  v67 = *(a2 + 32);
  v68 = *(a2 + 24);
  v63 = v2;
  if (v66 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v71 + 32);
  v10 = v8 & ~v9;
  if (((*(v71 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_110:
    v51 = *v63;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = *v63;
    sub_1000EB9C8(a2, v73);
    sub_1000E8D3C(a2, v10, isUniquelyReferenced_nonNull_native);
    *v63 = v72;
    v53 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v53;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  v69 = v5;
  v70 = ~v9;
  if (v68)
  {
    v11 = 0;
  }

  else
  {
    v11 = v67 == 0xC000000000000000;
  }

  v12 = !v11;
  v62 = v12;
  v64 = v67 >> 62;
  v13 = __OFSUB__(HIDWORD(v68), v68);
  v61 = v13;
  while (1)
  {
    v18 = *(v71 + 48) + 40 * v10;
    v19 = *(v18 + 16);
    v21 = *(v18 + 24);
    v20 = *(v18 + 32);
    if (*v18 != v5 || *(v18 + 8) != v6)
    {
      v23 = *(v18 + 8);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v25 = 0xE200000000000000;
        v24 = 20805;
        if (v7 <= 2)
        {
          goto LABEL_30;
        }
      }

      else if (v19 == 4)
      {
        v25 = 0xE200000000000000;
        v24 = 21575;
        if (v7 <= 2)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v25 = 0xE200000000000000;
        v24 = 17735;
        if (v7 <= 2)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v19)
    {
      if (v19 == 1)
      {
        v24 = 21580;
      }

      else
      {
        v24 = 17740;
      }

      v25 = 0xE200000000000000;
      if (v7 <= 2)
      {
LABEL_30:
        if (v7)
        {
          if (v7 == 1)
          {
            v26 = 21580;
          }

          else
          {
            v26 = 17740;
          }

          v27 = 0xE200000000000000;
        }

        else
        {
          v27 = 0xE300000000000000;
          v26 = 7958081;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v25 = 0xE300000000000000;
      v24 = 7958081;
      if (v7 <= 2)
      {
        goto LABEL_30;
      }
    }

    v28 = 21575;
    if (v7 != 4)
    {
      v28 = 17735;
    }

    v26 = v7 == 3 ? 20805 : v28;
    v27 = 0xE200000000000000;
LABEL_47:
    v29 = v6;
    if (v24 == v26 && v25 == v27)
    {

      sub_1000146B0(v21, v20);
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000146B0(v21, v20);

      if ((v30 & 1) == 0)
      {

        sub_100014528(v21, v20);
        v5 = v69;
        goto LABEL_55;
      }
    }

    if (v20 >> 60 == 15)
    {
      sub_1000146B0(v21, v20);
      v15 = v67;
      v14 = v68;
      sub_1000146B0(v68, v67);

      sub_100014528(v21, v20);
      v5 = v69;
      v6 = v29;
      if (v66 <= 0xE)
      {
LABEL_16:
        sub_100014528(v21, v20);
        v16 = v14;
        v17 = v15;
LABEL_17:
        sub_100014528(v16, v17);
        goto LABEL_18;
      }

      sub_1000EBA24(a2);
LABEL_113:
      sub_100014528(v21, v20);
      v55 = a1;
      goto LABEL_115;
    }

    if (v66 > 0xE)
    {
      sub_1000146B0(v21, v20);
      v15 = v67;
      v14 = v68;
      sub_1000146B0(v68, v67);

      sub_100014528(v21, v20);
      v5 = v69;
      v6 = v29;
      goto LABEL_16;
    }

    v31 = v20 >> 62;
    v5 = v69;
    v6 = v29;
    if (v20 >> 62 == 3)
    {
      break;
    }

    if (v31 > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_82;
      }

      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      v38 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v38)
      {
        goto LABEL_119;
      }

      if (v64 <= 1)
      {
        goto LABEL_79;
      }
    }

    else if (v31)
    {
      LODWORD(v35) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_118;
      }

      v35 = v35;
      if (v64 <= 1)
      {
LABEL_79:
        v39 = BYTE6(v67);
        if (v64)
        {
          v39 = HIDWORD(v68) - v68;
          if (v61)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_85;
      }
    }

    else
    {
      v35 = BYTE6(v20);
      if (v64 <= 1)
      {
        goto LABEL_79;
      }
    }

LABEL_83:
    if (v64 != 2)
    {
      if (v35)
      {
LABEL_91:
        sub_1000146B0(v21, v20);
        sub_1000146B0(v68, v67);
        sub_100014528(v68, v67);

        sub_100014528(v21, v20);
        v16 = v21;
        v17 = v20;
        goto LABEL_17;
      }

LABEL_112:
      sub_1000146B0(v21, v20);
      sub_1000146B0(v68, v67);
      sub_1000EBA24(a2);
      sub_100014528(v68, v67);

      sub_100014528(v21, v20);
      goto LABEL_113;
    }

    v41 = *(v68 + 16);
    v40 = *(v68 + 24);
    v38 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (v38)
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
    }

LABEL_85:
    if (v35 != v39)
    {
      goto LABEL_91;
    }

    if (v35 < 1)
    {
      goto LABEL_112;
    }

    if (v31 <= 1)
    {
      if (!v31)
      {
        *v73 = v21;
        *&v73[8] = v20;
        v73[10] = BYTE2(v20);
        v73[11] = BYTE3(v20);
        v73[12] = BYTE4(v20);
        v73[13] = BYTE5(v20);
        sub_1000146B0(v21, v20);
        sub_1000146B0(v68, v67);
        sub_1000146B0(v68, v67);
        sub_100045F4C(v73, v68, v67, &v72);
        sub_100014528(v68, v67);

        sub_100014528(v21, v20);
        v42 = v68;
        v43 = v67;
        goto LABEL_108;
      }

      if (v21 >> 32 < v21)
      {
        goto LABEL_120;
      }

      sub_1000146B0(v21, v20);
      sub_1000146B0(v68, v67);
      sub_1000146B0(v68, v67);
      v46 = __DataStorage._bytes.getter();
      if (v46)
      {
        v48 = __DataStorage._offset.getter();
        if (__OFSUB__(v21, v48))
        {
          goto LABEL_123;
        }

        v46 += v21 - v48;
      }

LABEL_105:
      __DataStorage._length.getter();
      sub_100045F4C(v46, v68, v67, v73);
      sub_100014528(v68, v67);

      sub_100014528(v21, v20);
      sub_100014528(v68, v67);
      v49 = v73[0];
      sub_100014528(v21, v20);
      v55 = a1;
      v5 = v69;
      if (v49)
      {
        goto LABEL_114;
      }

LABEL_55:
      v6 = v29;
      goto LABEL_18;
    }

    if (v31 == 2)
    {
      v45 = *(v21 + 16);
      v44 = *(v21 + 24);
      sub_1000146B0(v21, v20);
      sub_1000146B0(v68, v67);
      sub_1000146B0(v68, v67);
      v46 = __DataStorage._bytes.getter();
      if (v46)
      {
        v47 = __DataStorage._offset.getter();
        if (__OFSUB__(v45, v47))
        {
          goto LABEL_122;
        }

        v46 += v45 - v47;
      }

      if (__OFSUB__(v44, v45))
      {
        goto LABEL_121;
      }

      goto LABEL_105;
    }

    *&v73[6] = 0;
    *v73 = 0;
    sub_1000146B0(v21, v20);
    sub_1000146B0(v68, v67);
    sub_1000146B0(v68, v67);
    sub_100045F4C(v73, v68, v67, &v72);
    sub_100014528(v68, v67);

    sub_100014528(v21, v20);
    v42 = v68;
    v43 = v67;
LABEL_108:
    sub_100014528(v42, v43);
    v50 = v72;
    sub_100014528(v21, v20);
    v55 = a1;
    if (v50)
    {
      goto LABEL_114;
    }

LABEL_18:
    v10 = (v10 + 1) & v70;
    if (((*(v71 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_110;
    }
  }

  if (v21)
  {
    v32 = 0;
  }

  else
  {
    v32 = v20 == 0xC000000000000000;
  }

  v34 = !v32 || v67 >> 62 != 3;
  if ((v34 | v62))
  {
LABEL_82:
    v35 = 0;
    if (v64 <= 1)
    {
      goto LABEL_79;
    }

    goto LABEL_83;
  }

  sub_1000146B0(0, 0xC000000000000000);
  sub_1000146B0(0, 0xC000000000000000);
  sub_100014528(0, 0xC000000000000000);

  sub_100014528(0, 0xC000000000000000);
  sub_100014528(0, 0xC000000000000000);
  v55 = a1;
LABEL_114:
  sub_1000EBA24(a2);
LABEL_115:
  v56 = *(v71 + 48) + 40 * v10;
  v57 = *(v56 + 8);
  v58 = *(v56 + 16);
  v59 = *(v56 + 24);
  v60 = *(v56 + 32);
  *v55 = *v56;
  *(v55 + 8) = v57;
  *(v55 + 16) = v58;
  *(v55 + 24) = v59;
  *(v55 + 32) = v60;

  sub_1000146B0(v59, v60);
  return 0;
}

uint64_t sub_1000E5D04(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  ApprovalSettingsStateEntry.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = *a2;
    v11 = *(a2 + 8);
    while (1)
    {
      v12 = *(v4 + 48) + 72 * v8;
      v62 = *v12;
      v14 = *(v12 + 32);
      v13 = *(v12 + 48);
      v15 = *(v12 + 64);
      v63 = *(v12 + 16);
      v64 = v14;
      v66 = v15;
      v65 = v13;
      if (v62 != __PAIR128__(v11, v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v16 = *(a2 + 24);
      if (*(&v63 + 1))
      {
        if (!v16 || v63 != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v16)
      {
        goto LABEL_4;
      }

      v17 = *(a2 + 40);
      if (*(&v64 + 1))
      {
        if (!v17 || v64 != *(a2 + 32) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v17)
      {
        goto LABEL_4;
      }

      v18 = *(a2 + 56);
      if (*(&v65 + 1) >> 60 == 15)
      {
        if (v18 >> 60 != 15)
        {
          goto LABEL_4;
        }

        goto LABEL_19;
      }

      if (v18 >> 60 == 15)
      {
        goto LABEL_4;
      }

      v19 = *(a2 + 48);
      v20 = *(&v65 + 1) >> 62;
      v21 = v18 >> 62;
      if (*(&v65 + 1) >> 62 == 3)
      {
        break;
      }

      if (v20 <= 1)
      {
        if (!v20)
        {
          v22 = BYTE14(v65);
          if (v21 > 1)
          {
            goto LABEL_44;
          }

          goto LABEL_39;
        }

        LODWORD(v22) = DWORD1(v65) - v65;
        if (__OFSUB__(DWORD1(v65), v65))
        {
          goto LABEL_75;
        }

        v22 = v22;
        goto LABEL_38;
      }

      if (v20 == 2)
      {
        v24 = *(v65 + 16);
        v23 = *(v65 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_74;
        }

        goto LABEL_38;
      }

      v22 = 0;
      if (v21 > 1)
      {
LABEL_44:
        if (v21 != 2)
        {
          if (v22)
          {
            goto LABEL_4;
          }

          goto LABEL_19;
        }

        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        v25 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v25)
        {
          goto LABEL_73;
        }

        goto LABEL_46;
      }

LABEL_39:
      if (v21)
      {
        LODWORD(v26) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
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
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
        }

        v26 = v26;
      }

      else
      {
        v26 = BYTE6(v18);
      }

LABEL_46:
      if (v22 != v26)
      {
        goto LABEL_4;
      }

      if (v22 < 1)
      {
        goto LABEL_19;
      }

      v56 = *(a2 + 56);
      if (v20 > 1)
      {
        v55 = *(a2 + 48);
        if (v20 != 2)
        {
          *(v59 + 6) = 0;
          v59[0] = 0;
          sub_1000681CC(&v62, v60);
          v30 = v55;
LABEL_62:
          sub_100045F4C(v59, v30, v56, v60);
          sub_100068204(&v62);
          if ((v60[0] & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_19;
        }

        v51 = *(v65 + 24);
        v54 = *(v65 + 16);
        sub_1000681CC(&v62, v60);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v48 = v31;
          v32 = __DataStorage._offset.getter();
          v33 = v54;
          if (__OFSUB__(v54, v32))
          {
            goto LABEL_78;
          }

          v49 = v54 - v32 + v48;
        }

        else
        {
          v49 = 0;
          v33 = v54;
        }

        if (__OFSUB__(v51, v33))
        {
          goto LABEL_77;
        }

        __DataStorage._length.getter();
        v36 = v49;
      }

      else
      {
        if (!v20)
        {
          LODWORD(v59[0]) = v65;
          WORD2(v59[0]) = WORD2(v65);
          *(v59 + 6) = *(&v65 + 6);
          v29 = v19;
          sub_1000681CC(&v62, v60);
          v30 = v29;
          goto LABEL_62;
        }

        v52 = v65;
        v55 = *(a2 + 48);
        if (v65 >> 32 < v65)
        {
          goto LABEL_76;
        }

        sub_1000681CC(&v62, v60);
        v34 = __DataStorage._bytes.getter();
        if (v34)
        {
          v50 = v34;
          v35 = __DataStorage._offset.getter();
          if (__OFSUB__(v52, v35))
          {
            goto LABEL_79;
          }

          v53 = v52 - v35 + v50;
        }

        else
        {
          v53 = 0;
        }

        __DataStorage._length.getter();
        v36 = v53;
      }

      sub_100045F4C(v36, v55, v56, v60);
      sub_100068204(&v62);
      if ((v60[0] & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_19:
      if (v66 == *(a2 + 64))
      {
        sub_100068204(a2);
        v41 = *(v4 + 48) + 72 * v8;
        v43 = *(v41 + 16);
        v42 = *(v41 + 32);
        v44 = *(v41 + 64);
        v60[3] = *(v41 + 48);
        v61 = v44;
        v60[0] = *v41;
        v60[1] = v43;
        v60[2] = v42;
        v45 = *(v41 + 48);
        *(a1 + 32) = *(v41 + 32);
        *(a1 + 48) = v45;
        *(a1 + 64) = *(v41 + 64);
        v46 = *(v41 + 16);
        *a1 = *v41;
        *(a1 + 16) = v46;
        sub_1000681CC(v60, v59);
        return 0;
      }

LABEL_4:
      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v22 = 0;
    if (v65 == __PAIR128__(0xC000000000000000, 0) && v18 >> 62 == 3)
    {
      v22 = 0;
      if (!v19 && v18 == 0xC000000000000000)
      {
        goto LABEL_19;
      }
    }

LABEL_38:
    if (v21 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_71:
  v37 = *v57;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v60[0] = *v57;
  sub_1000681CC(a2, &v62);
  sub_1000E9674(a2, v8, isUniquelyReferenced_nonNull_native);
  *v57 = *&v60[0];
  v39 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v39;
  *(a1 + 64) = *(a2 + 64);
  v40 = *(a2 + 16);
  result = 1;
  *a1 = *a2;
  *(a1 + 16) = v40;
  return result;
}

Swift::Int sub_1000E62F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003CDC(&qword_100139388, &unk_100101898);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for StateManagerWrapper();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1000E6604(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(*(v15 + 16));
        result = Hasher._finalize()();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
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

void *sub_1000E64F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003CDC(&qword_1001393E8, &unk_100101920);
    v2 = static _SetStorage.convert(_:capacity:)();
    v6 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for OSExtension(0);
      do
      {
        swift_dynamicCast();
        v3 = *(v2 + 16);
        if (*(v2 + 24) <= v3)
        {
          sub_1000E7070(v3 + 1);
        }

        v2 = v6;
        sub_1000E7768(v5, v6);
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

uint64_t sub_1000E6604(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003CDC(&qword_100139388, &unk_100101898);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      Hasher._combine(_:)(*(v18 + 16));
      result = Hasher._finalize()();
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1000E6854(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for URL();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100003CDC(&qword_1001357D8, &unk_1000F56D0);
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
      sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL);
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

uint64_t sub_1000E6BB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003CDC(&qword_100139440, &unk_100101990);
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
      Data.hash(into:)();
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

uint64_t sub_1000E6E10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003CDC(&qword_1001393A0, &qword_1001018B8);
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

unint64_t sub_1000E7070(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003CDC(&qword_1001393E8, &unk_100101920);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1000E7768(*(*(v3 + 48) + 8 * (v13 | (v7 << 6))), v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      ;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      bzero((v3 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_1000E71D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003CDC(&qword_100139400, &unk_100101940);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = *(v3 + 48) + 40 * (v12 | (v6 << 6));
      v16 = *(v15 + 16);
      v18[0] = *v15;
      v18[1] = v16;
      v19 = *(v15 + 32);
      sub_1000E7A34(v18, v5);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      bzero((v3 + 56), ((v17 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v17;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t sub_1000E7358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003CDC(&qword_100139358, &qword_100101850);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v1;
    v38 = v3;
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
    v39 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v40 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 72 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v42 = *(v19 + 32);
      v43 = *(v19 + 40);
      v24 = *(v19 + 56);
      v41 = *(v19 + 48);
      v25 = *(v19 + 64);
      v26 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      if (v23)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (v43)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (v24 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        Data.hash(into:)();
      }

      Hasher._combine(_:)(v25);
      result = Hasher._finalize()();
      v6 = v39;
      v27 = -1 << *(v39 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v39 + 48) + 72 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      *(v15 + 32) = v42;
      *(v15 + 40) = v43;
      *(v15 + 48) = v41;
      *(v15 + 56) = v24;
      *(v15 + 64) = v25;
      ++*(v39 + 16);
      v3 = v38;
      v11 = v40;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_41;
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
        v40 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      v35 = v6;
      bzero(v8, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v6 = v35;
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v37;
    *(v3 + 16) = 0;
  }

  v36 = v6;

  *v2 = v36;
  return result;
}

unint64_t sub_1000E76C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a1 + 16));
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1000E7768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 40);
  Hasher.init(_seed:)();
  sub_1000D7374();
  String.hash(into:)();

  sub_1000D7614();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();

    v12 = OSKextParseVersionCFString();
  }

  else
  {
    v12 = 0;
  }

  Hasher._combine(_:)(v12);
  sub_1000138F8(a1 + 24, v21);
  if (v22)
  {
    if (v22 == 1)
    {
      v13 = *&v21[0];
      sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v13 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(v21, v18);
    v14 = v19;
    v15 = v20;
    sub_100003C4C(v18, v19);
    (*(v15 + 64))(v14, v15);
    sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
    sub_100003C90(v18);
  }

  Hasher._finalize()();
  v16 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

__n128 sub_1000E7A34(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = *a1;
  v6 = a1[1];
  String.hash(into:)();
  *(a1 + 16);
  *(a1 + 16);
  String.hash(into:)();

  if (a1[4] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v7 = a1[3];
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  Hasher._finalize()();
  v8 = -1 << *(a2 + 32);
  v9 = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
  v10 = *(a2 + 48) + 40 * v9;
  result = *a1;
  v12 = *(a1 + 1);
  *v10 = *a1;
  *(v10 + 16) = v12;
  *(v10 + 32) = a1[4];
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_1000E7BB8(Swift::Int result, unint64_t a2, char a3)
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
    sub_1000E6604(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1000EA168(&qword_100139388, &unk_100101898);
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000EA5BC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v4 + 16));
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = result & ~v10;
    result = type metadata accessor for StateManagerWrapper();
    a2 = v12;
    while (*(*(*(v8 + 48) + 8 * a2) + 16) != *(v4 + 16))
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
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E7D30(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for URL();
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
    sub_1000E6854(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1000E9C78();
      goto LABEL_12;
    }

    sub_1000EA7E4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL);
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
      sub_1000EB8E8(&qword_1001342B8, &type metadata accessor for URL);
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

Swift::Int sub_1000E7FD4(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1000E6BB0(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_1000E9EB0();
        goto LABEL_68;
      }

      sub_1000EAB00(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    Hasher.init(_seed:)();
    Data.hash(into:)();
    result = Hasher._finalize()();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v49 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(v7), v7);
      v46 = v18;
      v45 = HIDWORD(v7) - v7;
      v47 = v14;
      v48 = BYTE6(a2);
      v42 = v7;
      v43 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(v7 + 16);
          v28 = *(v7 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v48;
          if (v17)
          {
            v27 = v45;
            if (v46)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_1000146C4(v21, v20);
              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v51[6] = 0;
            *v51 = 0;
            sub_1000146C4(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_1000146C4(v21, v20);
              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v37 = __DataStorage._offset.getter();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              __DataStorage._length.getter();
              v7 = v42;
              a2 = v43;
              sub_100045F4C(v35, v42, v43, v51);
              result = sub_1000128D8(v21, v20);
              v12 = v10 + 56;
              v14 = v47;
              if (v51[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v51 = v21;
            *&v51[8] = v20;
            v51[10] = BYTE2(v20);
            v51[11] = BYTE3(v20);
            v51[12] = BYTE4(v20);
            v51[13] = BYTE5(v20);
            sub_1000146C4(v21, v20);
            v14 = v47;
          }

          sub_100045F4C(v51, v7, a2, &v50);
          result = sub_1000128D8(v21, v20);
          if (v50)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v49) & 1) == 0)
      {
LABEL_67:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v44;
  *(*v44 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = v7;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
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
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
  return result;
}

Swift::Int sub_1000E844C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1000E6E10(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000EA00C();
      goto LABEL_16;
    }

    sub_1000EAD3C(v8 + 1);
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

uint64_t sub_1000E85CC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  v64 = v4;
  if (v15 <= v14 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v16 = result;
      sub_1000E7070(v14 + 1);
    }

    else
    {
      if (v15 > v14)
      {
        result = sub_1000EA168(&qword_1001393E8, &unk_100101920);
        goto LABEL_58;
      }

      v16 = result;
      sub_1000EAF74(v14 + 1);
    }

    v66 = *v4;
    v17 = *(v66 + 40);
    Hasher.init(_seed:)();
    sub_1000D7374();
    String.hash(into:)();

    sub_1000D7614();
    if (v18)
    {
      v19 = String._bridgeToObjectiveC()();

      v20 = OSKextParseVersionCFString();
    }

    else
    {
      v20 = 0;
    }

    Hasher._combine(_:)(v20);
    sub_1000138F8(a1 + 24, v70);
    if (v71)
    {
      if (v71 == 1)
      {
        v21 = *&v70[0];
        sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        Hasher._combine(_:)(*(v21 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
      }
    }

    else
    {
      sub_100009F34(v70, v67);
      v22 = v68;
      v23 = v69;
      sub_100003C4C(v67, v68);
      (*(v23 + 64))(v22, v23);
      sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*(v9 + 8))(v13, v16);
      sub_100003C90(v67);
    }

    result = Hasher._finalize()();
    v24 = v66 + 56;
    v25 = -1 << *(v66 + 32);
    a2 = result & ~v25;
    if ((*(v66 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v65 = ~v25;
      v63[1] = type metadata accessor for OSExtension(0);
      do
      {
        v26 = *(*(v66 + 48) + 8 * a2);
        v27 = *(v26 + 16);
        v28 = qword_100133A50;

        if (v28 != -1)
        {
          swift_once();
        }

        v29 = qword_10014E8C0;
        v30 = *algn_10014E8C8;
        if (*(v27 + 16) && (v31 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v32 & 1) != 0) && (sub_10000B430(*(v27 + 56) + 32 * v31, v72), (swift_dynamicCast() & 1) != 0))
        {
          v34 = *(&v70[0] + 1);
          v33 = *&v70[0];
        }

        else
        {
          v33 = 0xD000000000000014;
          v34 = 0x8000000100104280;
        }

        v35 = *(a1 + 16);
        if (*(v35 + 16) && (v36 = sub_100061588(v29, v30), (v37 & 1) != 0) && (sub_10000B430(*(v35 + 56) + 32 * v36, v72), (swift_dynamicCast() & 1) != 0))
        {
          v38 = *(&v70[0] + 1);
          if (v33 != *&v70[0])
          {
            goto LABEL_35;
          }
        }

        else
        {
          v38 = 0x8000000100104280;
          if (v33 != 0xD000000000000014)
          {
            goto LABEL_35;
          }
        }

        if (v34 == v38)
        {

          goto LABEL_36;
        }

LABEL_35:
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v39 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_36:
        v40 = *(v26 + 16);
        if (*(v40 + 16) && (v41 = sub_100061588(v29, v30), (v42 & 1) != 0) && (sub_10000B430(*(v40 + 56) + 32 * v41, v72), (swift_dynamicCast() & 1) != 0))
        {
          v44 = *(&v70[0] + 1);
          v43 = *&v70[0];
        }

        else
        {
          v43 = 0xD000000000000014;
          v44 = 0x8000000100104280;
        }

        if (v43 == 0xD000000000000014 && 0x8000000100104280 == v44)
        {

          goto LABEL_19;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v45)
        {
LABEL_18:

          goto LABEL_19;
        }

        v46 = *(v26 + 16);
        if (qword_100133A70 != -1)
        {
          swift_once();
        }

        v47 = qword_10014E900;
        v48 = *algn_10014E908;
        if (*(v46 + 16) && (v49 = sub_100061588(qword_10014E900, *algn_10014E908), (v50 & 1) != 0) && (sub_10000B430(*(v46 + 56) + 32 * v49, v72), swift_dynamicCast()))
        {
          v51 = String._bridgeToObjectiveC()();

          v52 = OSKextParseVersionCFString();
        }

        else
        {
          v52 = 0;
        }

        v53 = *(a1 + 16);
        if (*(v53 + 16) && (v54 = sub_100061588(v47, v48), (v55 & 1) != 0) && (sub_10000B430(*(v53 + 56) + 32 * v54, v72), swift_dynamicCast()))
        {
          v56 = String._bridgeToObjectiveC()();

          v57 = OSKextParseVersionCFString();

          if (v52 != v57)
          {
            goto LABEL_18;
          }
        }

        else if (v52)
        {
          goto LABEL_18;
        }

        v58 = sub_1000DCBA8(v26 + 24, a1 + 24);

        if (v58)
        {
          goto LABEL_61;
        }

LABEL_19:
        a2 = (a2 + 1) & v65;
      }

      while (((*(v24 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_58:
  v59 = *v64;
  *(v59 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v59 + 48) + 8 * a2) = a1;
  v60 = *(v59 + 16);
  v61 = __OFADD__(v60, 1);
  v62 = v60 + 1;
  if (v61)
  {
    __break(1u);
LABEL_61:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v59 + 16) = v62;
  }

  return result;
}

Swift::Int sub_1000E8D3C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v61 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_120;
  }

  if (a3)
  {
    sub_1000E71D4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1000EA2A8();
      goto LABEL_120;
    }

    sub_1000EB0A0(v6 + 1);
  }

  v66 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v9 = *(v5 + 8);
  v67 = *v5;
  String.hash(into:)();
  v10 = *(v5 + 16);
  String.hash(into:)();

  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v62 = v12 >> 60;
  if (v12 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  result = Hasher._finalize()();
  v13 = -1 << *(v66 + 32);
  a2 = result & ~v13;
  if ((*(v66 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v64 = v9;
    v65 = ~v13;
    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12 == 0xC000000000000000;
    }

    v15 = !v14;
    v59 = v15;
    v16 = v12 >> 62;
    v17 = __OFSUB__(HIDWORD(v11), v11);
    v57 = v17;
    v56 = HIDWORD(v11) - v11;
    v58 = BYTE6(v12);
    v63 = v11;
    while (1)
    {
      v18 = v16;
      v19 = *(v66 + 48) + 40 * a2;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      if (*v19 == v67 && *(v19 + 8) == v9)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v16 = v18;
LABEL_23:
      a2 = (a2 + 1) & v65;
      if (((*(v66 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_120;
      }
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v25 = 0xE200000000000000;
        v24 = 20805;
        if (v10 > 2)
        {
          goto LABEL_45;
        }
      }

      else if (v20 == 4)
      {
        v25 = 0xE200000000000000;
        v24 = 21575;
        if (v10 > 2)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v25 = 0xE200000000000000;
        v24 = 17735;
        if (v10 > 2)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      if (v20)
      {
        if (v20 == 1)
        {
          v24 = 21580;
        }

        else
        {
          v24 = 17740;
        }

        v25 = 0xE200000000000000;
        if (v10 <= 2)
        {
          goto LABEL_35;
        }

LABEL_45:
        v28 = 21575;
        if (v10 != 4)
        {
          v28 = 17735;
        }

        if (v10 == 3)
        {
          v26 = 20805;
        }

        else
        {
          v26 = v28;
        }

        v27 = 0xE200000000000000;
LABEL_52:
        v29 = v12;
        if (v24 == v26 && v25 == v27)
        {

          sub_1000146B0(v21, v22);
        }

        else
        {
          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_1000146B0(v21, v22);

          if ((v30 & 1) == 0)
          {

            result = sub_100014528(v21, v22);
            v12 = v29;
            goto LABEL_64;
          }
        }

        v16 = v18;
        if (v22 >> 60 == 15)
        {
          sub_1000146B0(v21, v22);
          v12 = v29;
          sub_1000146B0(v63, v29);

          sub_100014528(v21, v22);
          if (v62 > 0xE)
          {
            goto LABEL_133;
          }

          goto LABEL_61;
        }

        v12 = v29;
        if (v62 > 0xE)
        {
          sub_1000146B0(v21, v22);
          sub_1000146B0(v63, v29);

          sub_100014528(v21, v22);
LABEL_61:
          sub_100014528(v21, v22);
          v31 = v63;
          v32 = v12;
LABEL_62:
          result = sub_100014528(v31, v32);
LABEL_65:
          v9 = v64;
          goto LABEL_23;
        }

        v33 = v22 >> 62;
        if (v22 >> 62 == 3)
        {
          v34 = 0;
          if (v21)
          {
            v35 = 0;
          }

          else
          {
            v35 = v22 == 0xC000000000000000;
          }

          v37 = !v35 || v18 < 3;
          if (((v37 | v59) & 1) == 0)
          {
            v22 = 0xC000000000000000;
            v29 = 0xC000000000000000;
            v21 = 0;
            v63 = 0;
LABEL_132:
            sub_1000146B0(v21, v22);
            sub_1000146B0(v63, v29);
            sub_100014528(v63, v29);

            sub_100014528(v21, v22);
LABEL_133:
            sub_100014528(v21, v22);
LABEL_134:
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }
        }

        else if (v33 > 1)
        {
          if (v33 == 2)
          {
            v43 = *(v21 + 16);
            v42 = *(v21 + 24);
            v41 = __OFSUB__(v42, v43);
            v34 = v42 - v43;
            if (v41)
            {
              goto LABEL_126;
            }
          }

          else
          {
            v34 = 0;
          }
        }

        else if (v33)
        {
          LODWORD(v34) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_125;
          }

          v34 = v34;
        }

        else
        {
          v34 = BYTE6(v22);
        }

        if (v18 > 1)
        {
          if (v18 != 2)
          {
            if (!v34)
            {
              goto LABEL_132;
            }

            goto LABEL_100;
          }

          v40 = *(v63 + 16);
          v39 = *(v63 + 24);
          v41 = __OFSUB__(v39, v40);
          v38 = v39 - v40;
          if (v41)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v38 = v58;
          if (v18)
          {
            v38 = v56;
            if (v57)
            {
              goto LABEL_123;
            }
          }
        }

        if (v34 == v38)
        {
          if (v34 < 1)
          {
            goto LABEL_132;
          }

          if (v33 > 1)
          {
            if (v33 != 2)
            {
              *&v69[6] = 0;
              *v69 = 0;
              sub_1000146B0(v21, v22);
              sub_1000146B0(v63, v29);
              sub_1000146B0(v63, v29);
LABEL_118:
              sub_100045F4C(v69, v63, v29, &v68);
              sub_100014528(v63, v29);

              sub_100014528(v21, v22);
              sub_100014528(v63, v29);
              v49 = v68;
              result = sub_100014528(v21, v22);
              if (v49)
              {
                goto LABEL_134;
              }

              goto LABEL_65;
            }

            v44 = *(v21 + 16);
            v55 = *(v21 + 24);
            sub_1000146B0(v21, v22);
            sub_1000146B0(v63, v29);
            sub_1000146B0(v63, v29);
            v45 = __DataStorage._bytes.getter();
            if (v45)
            {
              v46 = __DataStorage._offset.getter();
              if (__OFSUB__(v44, v46))
              {
                goto LABEL_129;
              }

              v45 += v44 - v46;
            }

            if (__OFSUB__(v55, v44))
            {
              goto LABEL_128;
            }
          }

          else
          {
            if (!v33)
            {
              *v69 = v21;
              *&v69[8] = v22;
              v69[10] = BYTE2(v22);
              v69[11] = BYTE3(v22);
              v69[12] = BYTE4(v22);
              v69[13] = BYTE5(v22);
              sub_1000146B0(v21, v22);
              sub_1000146B0(v63, v29);
              sub_1000146B0(v63, v29);
              v16 = v18;
              goto LABEL_118;
            }

            if (v21 >> 32 < v21)
            {
              goto LABEL_127;
            }

            sub_1000146B0(v21, v22);
            sub_1000146B0(v63, v29);
            sub_1000146B0(v63, v29);
            v45 = __DataStorage._bytes.getter();
            if (v45)
            {
              v47 = __DataStorage._offset.getter();
              if (__OFSUB__(v21, v47))
              {
                goto LABEL_130;
              }

              v45 += v21 - v47;
            }
          }

          __DataStorage._length.getter();
          v12 = v29;
          sub_100045F4C(v45, v63, v29, v69);
          sub_100014528(v63, v29);

          sub_100014528(v21, v22);
          sub_100014528(v63, v29);
          v48 = v69[0];
          result = sub_100014528(v21, v22);
          if (v48)
          {
            goto LABEL_134;
          }

LABEL_64:
          v16 = v18;
          goto LABEL_65;
        }

LABEL_100:
        sub_1000146B0(v21, v22);
        sub_1000146B0(v63, v29);
        sub_100014528(v63, v29);

        sub_100014528(v21, v22);
        v31 = v21;
        v32 = v22;
        goto LABEL_62;
      }

      v25 = 0xE300000000000000;
      v24 = 7958081;
      if (v10 > 2)
      {
        goto LABEL_45;
      }
    }

LABEL_35:
    if (v10)
    {
      if (v10 == 1)
      {
        v26 = 21580;
      }

      else
      {
        v26 = 17740;
      }

      v27 = 0xE200000000000000;
    }

    else
    {
      v27 = 0xE300000000000000;
      v26 = 7958081;
    }

    goto LABEL_52;
  }

LABEL_120:
  v50 = *v60;
  *(*v60 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v51 = *(v50 + 48) + 40 * a2;
  v52 = *(v61 + 16);
  *v51 = *v61;
  *(v51 + 16) = v52;
  *(v51 + 32) = *(v61 + 32);
  v53 = *(v50 + 16);
  v41 = __OFADD__(v53, 1);
  v54 = v53 + 1;
  if (v41)
  {
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }

  *(v50 + 16) = v54;
  return result;
}

Swift::Int sub_1000E9674(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_82;
  }

  if (a3)
  {
    sub_1000E7358(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1000EA42C();
      goto LABEL_82;
    }

    sub_1000EB1F4(v6 + 1);
  }

  v54 = v3;
  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  ApprovalSettingsStateEntry.hash(into:)();
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = *v5;
    v13 = *(v5 + 8);
    while (1)
    {
      v14 = *(v8 + 48) + 72 * a2;
      v57 = *v14;
      v16 = *(v14 + 32);
      v15 = *(v14 + 48);
      v17 = *(v14 + 64);
      v58 = *(v14 + 16);
      v59 = v16;
      v61 = v17;
      v60 = v15;
      result = v57;
      if (v57 != __PAIR128__(v13, v12))
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v18 = *(v5 + 24);
      if (*(&v58 + 1))
      {
        if (!v18)
        {
          goto LABEL_11;
        }

        result = v58;
        if (v58 != *(v5 + 16))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v18)
      {
        goto LABEL_11;
      }

      v19 = *(v5 + 40);
      if (*(&v59 + 1))
      {
        if (!v19)
        {
          goto LABEL_11;
        }

        result = v59;
        if (v59 != *(v5 + 32))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v19)
      {
        goto LABEL_11;
      }

      v20 = *(v5 + 56);
      if (*(&v60 + 1) >> 60 == 15)
      {
        if (v20 >> 60 != 15)
        {
          goto LABEL_11;
        }

        goto LABEL_26;
      }

      if (v20 >> 60 == 15)
      {
        goto LABEL_11;
      }

      v21 = *(v5 + 48);
      v22 = *(&v60 + 1) >> 62;
      v23 = v20 >> 62;
      if (*(&v60 + 1) >> 62 == 3)
      {
        break;
      }

      if (v22 <= 1)
      {
        if (!v22)
        {
          v24 = BYTE14(v60);
          if (v23 > 1)
          {
            goto LABEL_38;
          }

          goto LABEL_51;
        }

        LODWORD(v24) = DWORD1(v60) - v60;
        if (__OFSUB__(DWORD1(v60), v60))
        {
          goto LABEL_87;
        }

        v24 = v24;
        goto LABEL_50;
      }

      if (v22 == 2)
      {
        v30 = *(v60 + 16);
        v29 = *(v60 + 24);
        v27 = __OFSUB__(v29, v30);
        v24 = v29 - v30;
        if (v27)
        {
          goto LABEL_88;
        }

        goto LABEL_50;
      }

      v24 = 0;
      if (v23 > 1)
      {
LABEL_38:
        if (v23 != 2)
        {
          if (v24)
          {
            goto LABEL_11;
          }

          goto LABEL_26;
        }

        v26 = *(v21 + 16);
        v25 = *(v21 + 24);
        v27 = __OFSUB__(v25, v26);
        v28 = v25 - v26;
        if (v27)
        {
          goto LABEL_85;
        }

        goto LABEL_53;
      }

LABEL_51:
      if (!v23)
      {
        v28 = BYTE6(v20);
LABEL_53:
        if (v24 != v28)
        {
          goto LABEL_11;
        }

        goto LABEL_54;
      }

      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_86;
      }

      if (v24 != HIDWORD(v21) - v21)
      {
        goto LABEL_11;
      }

LABEL_54:
      if (v24 >= 1)
      {
        if (v22 > 1)
        {
          v53 = *(v5 + 48);
          if (v22 == 2)
          {
            v49 = *(v60 + 24);
            v52 = *(v60 + 16);
            sub_1000681CC(&v57, v56);
            v33 = __DataStorage._bytes.getter();
            if (v33)
            {
              v46 = v33;
              v34 = __DataStorage._offset.getter();
              v35 = v52;
              if (__OFSUB__(v52, v34))
              {
                goto LABEL_91;
              }

              v47 = v52 - v34 + v46;
            }

            else
            {
              v47 = 0;
              v35 = v52;
            }

            if (__OFSUB__(v49, v35))
            {
              goto LABEL_90;
            }

            __DataStorage._length.getter();
            v39 = v47;
            goto LABEL_79;
          }

          memset(v55, 0, 14);
          sub_1000681CC(&v57, v56);
          v32 = v53;
LABEL_73:
          sub_100045F4C(v55, v32, v20, v56);
          result = sub_100068204(&v57);
          v38 = v56[0];
        }

        else
        {
          if (!v22)
          {
            v55[0] = v60;
            LOWORD(v55[1]) = WORD4(v60);
            *(&v55[1] + 2) = *(&v60 + 10);
            v31 = v21;
            sub_1000681CC(&v57, v56);
            v3 = v54;
            v32 = v31;
            goto LABEL_73;
          }

          v50 = v60;
          v53 = *(v5 + 48);
          if (v60 >> 32 < v60)
          {
            goto LABEL_89;
          }

          sub_1000681CC(&v57, v56);
          v36 = __DataStorage._bytes.getter();
          if (v36)
          {
            v48 = v36;
            v37 = __DataStorage._offset.getter();
            if (__OFSUB__(v50, v37))
            {
              goto LABEL_92;
            }

            v51 = v50 - v37 + v48;
          }

          else
          {
            v51 = 0;
          }

          __DataStorage._length.getter();
          v39 = v51;
LABEL_79:
          sub_100045F4C(v39, v53, v20, v56);
          result = sub_100068204(&v57);
          v38 = v56[0];
          v3 = v54;
        }

        if (!v38)
        {
          goto LABEL_11;
        }
      }

LABEL_26:
      if (v61 == *(v5 + 64))
      {
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_11:
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_82;
      }
    }

    v24 = 0;
    if (v60 == __PAIR128__(0xC000000000000000, 0) && v20 >> 62 == 3)
    {
      v24 = 0;
      if (!v21 && v20 == 0xC000000000000000)
      {
        goto LABEL_26;
      }
    }

LABEL_50:
    if (v23 > 1)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_82:
  v40 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v41 = *(v40 + 48) + 72 * a2;
  *(v41 + 64) = *(v5 + 64);
  v42 = *(v5 + 48);
  *(v41 + 32) = *(v5 + 32);
  *(v41 + 48) = v42;
  v43 = *(v5 + 16);
  *v41 = *v5;
  *(v41 + 16) = v43;
  v44 = *(v40 + 16);
  v27 = __OFADD__(v44, 1);
  v45 = v44 + 1;
  if (v27)
  {
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
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  *(v40 + 16) = v45;
  return result;
}

void *sub_1000E9C78()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CDC(&qword_1001357D8, &unk_1000F56D0);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1000E9EB0()
{
  v1 = v0;
  sub_100003CDC(&qword_100139440, &unk_100101990);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1000146C4(v18, *(&v18 + 1));
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

void *sub_1000EA00C()
{
  v1 = v0;
  sub_100003CDC(&qword_1001393A0, &qword_1001018B8);
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

void *sub_1000EA168(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100003CDC(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1000EA2A8()
{
  v1 = v0;
  sub_100003CDC(&qword_100139400, &unk_100101940);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = *v18;
        *(v23 + 8) = v19;
        *(v23 + 16) = v20;
        *(v23 + 24) = v21;
        *(v23 + 32) = v22;

        result = sub_1000146B0(v21, v22);
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

void *sub_1000EA42C()
{
  v1 = v0;
  sub_100003CDC(&qword_100139358, &qword_100101850);
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
        v17 = 72 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        v24 = *(v18 + 64);
        v23[3] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x41uLL);
        result = sub_1000681CC(v23, v22);
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

uint64_t sub_1000EA5BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003CDC(&qword_100139388, &unk_100101898);
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v17 + 16));
      result = Hasher._finalize()();
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

uint64_t sub_1000EA7E4(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for URL();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100003CDC(&qword_1001357D8, &unk_1000F56D0);
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
      sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL);
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

uint64_t sub_1000EAB00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003CDC(&qword_100139440, &unk_100101990);
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
      sub_1000146C4(v19, v20);
      Data.hash(into:)();
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

uint64_t sub_1000EAD3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003CDC(&qword_1001393A0, &qword_1001018B8);
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

unint64_t sub_1000EAF74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003CDC(&qword_1001393E8, &unk_100101920);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1000E7768(v16, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = *(*(v3 + 48) + 8 * (v12 | (v7 << 6)));
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

void sub_1000EB0A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003CDC(&qword_100139400, &unk_100101940);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = *(v3 + 48) + 40 * (v11 | (v6 << 6));
      v15 = *(v14 + 32);
      v16 = *(v14 + 16);
      v18[0] = *v14;
      v18[1] = v16;
      v19 = v15;
      sub_1000EB9C8(v18, v17);
      sub_1000E7A34(v18, v5);
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_15;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v5;
  }
}

uint64_t sub_1000EB1F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003CDC(&qword_100139358, &qword_100101850);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_36:
    *v2 = v6;
    return result;
  }

  v33 = v2;
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
    v18 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v21 = *(v3 + 48) + 72 * (v18 | (v7 << 6));
    v23 = *(v21 + 32);
    v22 = *(v21 + 48);
    v24 = *(v21 + 16);
    LOBYTE(v39) = *(v21 + 64);
    v37 = v23;
    v38 = v22;
    v35 = *v21;
    v36 = v24;
    v25 = *(v6 + 40);
    Hasher.init(_seed:)();
    sub_1000681CC(&v35, v34);
    String.hash(into:)();
    if (*(&v36 + 1))
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (*(&v37 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (*(&v37 + 1))
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_22;
      }
    }

    Hasher._combine(_:)(0);
LABEL_22:
    if (*(&v38 + 1) >> 60 == 15)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1uLL);
      Data.hash(into:)();
    }

    Hasher._combine(_:)(v39);
    result = Hasher._finalize()();
    v26 = -1 << *(v6 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
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
        v32 = *(v12 + 8 * v28);
        if (v32 != -1)
        {
          v13 = __clz(__rbit64(~v32)) + (v28 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_38;
    }

    v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v6 + 48) + 72 * v13;
    v15 = v36;
    v16 = v37;
    v17 = v38;
    *(v14 + 64) = v39;
    *(v14 + 32) = v16;
    *(v14 + 48) = v17;
    *(v14 + 16) = v15;
    *v14 = v35;
    ++*(v6 + 16);
  }

  v19 = v7;
  while (1)
  {
    v7 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v7 >= v11)
    {

      v2 = v33;
      goto LABEL_36;
    }

    v20 = *(v3 + 56 + 8 * v7);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v10 = (v20 - 1) & v20;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000EB530(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL);
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
      sub_1000E4238(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_1000EB6CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000EBA78();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_1000146C4(v6, *v4);
      sub_1000E4518(v7, v6, v5);
      sub_1000128D8(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000EB768(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000EB894();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 48);
      v12[2] = *(v4 + 32);
      v12[3] = v5;
      v13 = *(v4 + 64);
      v6 = *(v4 + 16);
      v12[0] = *v4;
      v12[1] = v6;
      sub_1000681CC(v12, v9);
      sub_1000E5D04(v7, v12);
      v9[2] = v7[2];
      v9[3] = v7[3];
      v10 = v8;
      v9[0] = v7[0];
      v9[1] = v7[1];
      sub_100068204(v9);
      v4 += 72;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1000EB838(uint64_t a1)
{
  v2 = type metadata accessor for DriverBinEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EB894()
{
  result = qword_100139350;
  if (!qword_100139350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139350);
  }

  return result;
}

uint64_t sub_1000EB8E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000EB930(uint64_t a1)
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

      sub_1000E49A0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1000EBA78()
{
  result = qword_100139438;
  if (!qword_100139438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139438);
  }

  return result;
}

uint64_t sub_1000EBACC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003C4C(a1, a1[3]);
  v6 = *v4;
  v5 = v4[1];
  v7 = String.utf8CString.getter();
  v8 = IORegistryEntryFromPath(kIOMainPortDefault, (v7 + 32));

  if (!v8)
  {
    _StringGuts.grow(_:)(45);

    *&v36 = 0xD00000000000002BLL;
    *(&v36 + 1) = 0x800000010010C950;
    v19 = sub_100003C4C(a1, a1[3]);
    v21 = *v19;
    v20 = v19[1];

    v22._countAndFlagsBits = v21;
    v22._object = v20;
    String.append(_:)(v22);

    sub_10001449C();
    swift_allocError();
    *v23 = v36;
    *(v23 + 16) = v36;
    *(v23 + 32) = v38;
    *(v23 + 48) = v39;
    *(v23 + 64) = v40;
    *(v23 + 72) = 10;
    return swift_willThrow();
  }

  v9 = sub_100003C4C(a1, a1[3]);
  v10 = v9[2];
  v11 = v9[3];

  v12 = String._bridgeToObjectiveC()();

  CFProperty = IORegistryEntryCreateCFProperty(v8, v12, kCFAllocatorDefault, 0);

  if (CFProperty)
  {
    v14 = CFGetTypeID(CFProperty);
    if (CFStringGetTypeID() == v14)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
        swift_unknownObjectRelease_n();
        v18 = &type metadata for String;
LABEL_15:
        *a2 = v15;
        *(a2 + 8) = v17;
        *(a2 + 24) = v18;
        return IOObjectRelease(v8);
      }
    }

    else
    {
      if (CFNumberGetTypeID() == v14)
      {
        swift_unknownObjectRetain();
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          static Int._conditionallyBridgeFromObjectiveC(_:result:)();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return IOObjectRelease(v8);
      }

      if (CFDataGetTypeID() != v14)
      {
        *a2 = 0u;
        *(a2 + 16) = 0u;
        swift_unknownObjectRelease();
        return IOObjectRelease(v8);
      }

      swift_unknownObjectRetain();
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v35;
        swift_unknownObjectRelease_n();
        v18 = &type metadata for Data;
        goto LABEL_15;
      }
    }

    swift_unknownObjectRelease_n();
    v15 = 0;
    v17 = 0;
    v18 = 0;
    *(a2 + 16) = 0;
    goto LABEL_15;
  }

  _StringGuts.grow(_:)(32);

  *&v37 = 0xD000000000000018;
  *(&v37 + 1) = 0x800000010010C930;
  v25 = sub_100003C4C(a1, a1[3]);
  v26 = v25[2];
  v27 = v25[3];

  v28._countAndFlagsBits = v26;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 544106784;
  v29._object = 0xE400000000000000;
  String.append(_:)(v29);
  v30 = sub_100003C4C(a1, a1[3]);
  v31 = *v30;
  v32 = v30[1];

  v33._countAndFlagsBits = v31;
  v33._object = v32;
  String.append(_:)(v33);

  sub_10001449C();
  swift_allocError();
  *v34 = v37;
  *(v34 + 16) = v37;
  *(v34 + 32) = v38;
  *(v34 + 48) = v39;
  *(v34 + 64) = v40;
  *(v34 + 72) = 10;
  swift_willThrow();
  return IOObjectRelease(v8);
}

uint64_t sub_1000EBF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v18[1] = a1;
  v19 = String.data(using:allowLossyConversion:)();
  v14 = v13;
  result = (*(v9 + 8))(v12, v8);
  if (v14 >> 60 != 15)
  {
    v20[0] = v19;
    v20[1] = v14;
    v16 = *(a4 + 56);
    v17 = sub_1000EDBD4();
    v16(v20, &type metadata for Data, v17, a3, a4);
    return sub_100014988();
  }

  return result;
}

uint64_t protocol witness for TextOutputStream.write(_:) in conformance NSFileHandle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000EBF18(a1, a2, a3, WitnessTable);
}

uint64_t sub_1000EC2E8(uint64_t a1)
{
  result = sub_1000EDB28(&qword_100139510);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EC334@<X0>(const char *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = swift_slowAlloc();
  v5 = String.utf8CString.getter();
  v6 = getxattr(a1, (v5 + 32), v4, 0x20uLL, 0, 0);

  *a2 = v6 > 0;
  return result;
}

uint64_t sub_1000EC3E4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  v5 = Data.init(contentsOf:options:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

void *sub_1000EC520(uint64_t a1, Class isa, uint64_t a3)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v8 = v7;
  if (isa)
  {
    type metadata accessor for URLResourceKey(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v14 = 0;
  v9 = [v4 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:isa options:a3 error:&v14];

  v10 = v14;
  if (v9)
  {
    type metadata accessor for URL();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v12 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

id sub_1000EC65C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, Class a5)
{
  v8 = *v5;
  v9 = String._bridgeToObjectiveC()();
  if (a4 >> 60 == 15)
  {
    isa = 0;
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  if (a5)
  {
LABEL_5:
    type metadata accessor for FileAttributeKey(0);
    sub_1000EDB7C();
    a5 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_6:
  v11 = [v8 createFileAtPath:v9 contents:isa attributes:a5];

  return v11;
}

id sub_1000EC750(uint64_t a1, char a2, Class isa)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v8 = v7;
  if (isa)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1000EDB7C();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v12 = 0;
  v9 = [v4 createDirectoryAtURL:v8 withIntermediateDirectories:a2 & 1 attributes:isa error:&v12];

  if (v9)
  {
    return v12;
  }

  v11 = v12;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1000EC888()
{
  v2 = String._bridgeToObjectiveC()();
  v8 = 0;
  v3 = [v0 attributesOfItemAtPath:v2 error:&v8];

  v4 = v8;
  if (v3)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1000EDB7C();
    v1 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

id sub_1000EC9A8(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v12 = v11;
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  v19 = 0;
  v16 = [v7 replaceItemAtURL:v12 withItemAtURL:v15 backupItemName:a4 options:a5 resultingItemURL:a6 error:&v19];

  if (v16)
  {
    return v19;
  }

  v18 = v19;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_1000ECAF4()
{
  v1 = v0;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v6 = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v2 error:&v6];

  if (v1)
  {
    return v6;
  }

  v5 = v6;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1000ECBB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  v7 = Data.init(contentsOf:options:)();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  a1[3] = &type metadata for Data;
  a1[4] = &off_10012DA28;
  *a1 = v7;
  a1[1] = v9;
  return result;
}

id sub_1000ECD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 fileExistsAtPath:v6 isDirectory:a3];

  return v7;
}

uint64_t sub_1000ECD6C()
{
  v0 = type metadata accessor for POSIXError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = String.utf8CString.getter();
  v6 = realpath_DARWIN_EXTSN((v5 + 32), 0);

  if (v6)
  {
    v7 = String.init(utf8String:)();
    free(v6);
    return v7;
  }

  else
  {
    sub_1000AC134(v4);
    POSIXError._nsError.getter();
    (*(v1 + 8))(v4, v0);
    return swift_willThrow();
  }
}

uint64_t sub_1000ECEA4@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() fileHandleForWritingAtPath:v2];

  if (v3)
  {
    v4 = sub_100009FEC(0, &qword_100139518, NSFileHandle_ptr);
    result = sub_1000EDB28(&qword_100139520);
  }

  else
  {
    v4 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = result;
  return result;
}

uint64_t *sub_1000ECF58@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for URLResourceValues();
  a1[4] = &off_10012E2F8;
  sub_1000193A4(a1);
  result = URL.resourceValues(forKeys:)();
  if (v1)
  {
    return sub_10006C7C4(a1);
  }

  return result;
}

uint64_t sub_1000ECFE8()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    URL.withUnsafeFileSystemRepresentation<A>(_:)();
    return v1;
  }

  return result;
}

uint64_t sub_1000ED090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, copyfile_flags_t a5)
{
  v16 = type metadata accessor for POSIXError();
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = copyfile_state_alloc();
  copyfile_state_set(v10, 6u, sub_1000EC32C);
  v11 = String.utf8CString.getter();
  v12 = String.utf8CString.getter();
  v13 = copyfile((v11 + 32), (v12 + 32), v10, a5);

  if (v13)
  {
    sub_1000AC134(v9);
    POSIXError._nsError.getter();
    (*(v6 + 8))(v9, v16);
    swift_willThrow();
  }

  return copyfile_state_free(v10);
}

char *sub_1000ED208()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v41 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for NSFastEnumerationIterator();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() defaultManager];
  v15 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (v15)
  {
    NSEnumerator.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (*(&v38 + 1))
    {
      v32 = v3;
      v34 = (v3 + 4);
      v16 = _swiftEmptyArrayStorage;
      do
      {
        while (1)
        {
          v17 = swift_dynamicCast();
          v18 = v3[7];
          if (v17)
          {
            break;
          }

          v18(v9, 1, 1, v2);
          sub_10007B024(v9);
          NSFastEnumerationIterator.next()();
          if (!*(&v38 + 1))
          {
            goto LABEL_15;
          }
        }

        v18(v9, 0, 1, v2);
        v19 = *v34;
        (*v34)(v41, v9, v2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v1;
        v31 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_100031468(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        if (v22 >= v21 >> 1)
        {
          v16 = sub_100031468(v21 > 1, v22 + 1, 1, v16);
        }

        *(v16 + 2) = v22 + 1;
        v31(&v16[((*(v32 + 80) + 32) & ~*(v32 + 80)) + v32[9] * v22], v41, v2);
        NSFastEnumerationIterator.next()();
        v1 = v33;
      }

      while (*(&v38 + 1));
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
    }

LABEL_15:
    (*(v35 + 8))(v13, v36);
  }

  else
  {
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    *&v37 = 0xD000000000000020;
    *(&v37 + 1) = 0x800000010010CA10;
    v23._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v23);

    v24 = *(&v37 + 1);
    v16 = v37;
    sub_10001449C();
    swift_allocError();
    *v25 = v16;
    *(v25 + 8) = v24;
    v26 = v40;
    v27 = v39;
    v28 = v38;
    *(v25 + 16) = v37;
    *(v25 + 32) = v28;
    *(v25 + 48) = v27;
    *(v25 + 64) = v26;
    *(v25 + 72) = 19;
    swift_willThrow();
  }

  return v16;
}

BOOL sub_1000ED64C(uint64_t a1, uint64_t a2)
{
  v4 = String.utf8CString.getter();
  v5 = openat_authenticated_np(-2, (v4 + 32), 0, -1);

  if (v5 == -1)
  {
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000F3C80;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_100003D24();
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;

    v7 = errno.getter();
    *(v6 + 96) = &type metadata for Int32;
    *(v6 + 104) = &protocol witness table for Int32;
    *(v6 + 72) = v7;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else if ((v5 & 0x80000000) == 0)
  {
    close(v5);
  }

  return v5 != -1;
}

uint64_t sub_1000ED79C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for POSIXError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v18, 0x878uLL);
  if ((a1 != 47 || a2 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v9 = sub_1000C8014(a1, a2);
    if (v10)
    {
      if (v9 == 47 && v10 == 0xE100000000000000)
      {

LABEL_9:

        sub_1000CB108(1);
        v17 = v12;

        static String._fromSubstring(_:)();

        goto LABEL_11;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v11)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_11:
  v13 = String.utf8CString.getter();

  v14 = statfs((v13 + 32), &v18);

  if (v14)
  {
    sub_1000AC134(v8);
    POSIXError._nsError.getter();
    (*(v5 + 8))(v8, v4);
    swift_willThrow();
  }

  else if (String.init(cString:)() == 47 && v15 == 0xE100000000000000)
  {

    LOBYTE(v4) = 1;
  }

  else
  {
    LOBYTE(v4) = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

BOOL sub_1000EDA48(int a1, copyfile_state_t s)
{
  if (a1 != 5)
  {
    return 0;
  }

  v6 = 0;
  if (copyfile_state_get(s, 9u, &v6))
  {
    return 0;
  }

  result = v6;
  if (v6)
  {
    if (String.init(cString:)() == 0xD000000000000012 && 0x800000010010C9F0 == v3)
    {

      return 1;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v5 & 1) != 0;
  }

  return result;
}

uint64_t sub_1000EDB28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100009FEC(255, &qword_100139518, NSFileHandle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000EDB7C()
{
  result = qword_100133D78;
  if (!qword_100133D78)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D78);
  }

  return result;
}

unint64_t sub_1000EDBD4()
{
  result = qword_100139528;
  if (!qword_100139528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139528);
  }

  return result;
}

uint64_t sub_1000EDC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000010010CC60 == a2)
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

uint64_t sub_1000EDCD8(uint64_t a1)
{
  v2 = sub_1000EEE58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EDD14(uint64_t a1)
{
  v2 = sub_1000EEE58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EDD50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100003CDC(&qword_100139710, &qword_100101C68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_1000EEE58();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C90(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_100003C90(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1000EDECC(void *a1)
{
  v3 = sub_100003CDC(&qword_100139720, &qword_100101C70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_1000EEE58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000EE008()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v41[-v7];
  sub_10000A114(v0 + 16, &v44);
  if (!*(&v45 + 1))
  {
    sub_1000EED8C(&v44);
    static os_log_type_t.error.getter();
    sub_10001491C();
    v28 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  sub_100041D5C(&v44, v51);
  URL.init(fileURLWithPath:isDirectory:)();
  URL.appendingPathComponent(_:)();
  v9 = *(v2 + 8);
  v9(v6, v1);
  v10 = URL.path.getter();
  v12 = v11;
  v9(v8, v1);
  v42 = 0;
  v13 = *sub_100003C4C(v51, v52);
  sub_1000DF9D4(&v44);
  v14 = *(&v45 + 1);
  v15 = v46;
  sub_100003C4C(&v44, *(&v45 + 1));
  LOBYTE(v13) = (*(v15 + 136))(v10, v12, &v42, v14, v15);
  sub_100003C90(&v44);
  if ((v13 & 1) == 0)
  {
    static os_log_type_t.debug.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000F3160;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100003D24();
    *(v29 + 32) = v10;
    *(v29 + 40) = v12;
    sub_10001491C();
    v30 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100003C90(v51);
    return 0;
  }

  v16 = *sub_100003C4C(v51, v52);
  sub_1000DF9D4(&v48);
  v17 = v49;
  v18 = v50;
  sub_100003C4C(&v48, v49);
  (*(v18 + 16))(v10, v12, 0, v17, v18);
  if (v19 >> 60 == 15)
  {
    sub_100003C90(&v48);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    *&v44 = 0xD000000000000015;
    *(&v44 + 1) = 0x800000010010CBD0;
    v20._countAndFlagsBits = v10;
    v20._object = v12;
    String.append(_:)(v20);
    v22 = *(&v44 + 1);
    v21 = v44;
    sub_10001449C();
    v23 = swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v22;
    v25 = v47;
    v27 = v45;
    v26 = v46;
    *(v24 + 16) = v44;
    *(v24 + 32) = v27;
    *(v24 + 48) = v26;
    *(v24 + 64) = v25;
    *(v24 + 72) = 10;
    swift_willThrow();
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1000F3C80;
    *(v35 + 56) = &type metadata for String;
    v36 = sub_100003D24();
    *(v35 + 64) = v36;
    *(v35 + 32) = v10;
    *(v35 + 40) = v12;
    *&v44 = v23;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    v37 = String.init<A>(describing:)();
    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v36;
    *(v35 + 72) = v37;
    *(v35 + 80) = v38;
    sub_10001491C();
    v39 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v40 = 0;
  }

  else
  {
    sub_100003C90(&v48);
    v32 = type metadata accessor for PropertyListDecoder();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000EEDF4();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100014988();
    v40 = v48;
    sub_10000A990(v51, &v44);
    sub_100041D5C(&v44, v43);

    sub_100003C90(v43);
  }

  sub_100003C90(v51);
  return v40;
}

uint64_t sub_1000EE5D8()
{
  sub_1000EED8C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000EE658()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v41[-v7];
  swift_beginAccess();
  sub_10000A114(v0 + 16, &v44);
  if (!*(&v45 + 1))
  {
    sub_1000EED8C(&v44);
    static os_log_type_t.error.getter();
    sub_10001491C();
    v28 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  sub_100041D5C(&v44, v51);
  URL.init(fileURLWithPath:isDirectory:)();
  URL.appendingPathComponent(_:)();
  v9 = *(v2 + 8);
  v9(v6, v1);
  v10 = URL.path.getter();
  v12 = v11;
  v9(v8, v1);
  v42[0] = 0;
  v13 = *sub_100003C4C(v51, v52);
  sub_1000DF9D4(&v44);
  v14 = *(&v45 + 1);
  v15 = v46;
  sub_100003C4C(&v44, *(&v45 + 1));
  LOBYTE(v13) = (*(v15 + 136))(v10, v12, v42, v14, v15);
  sub_100003C90(&v44);
  if ((v13 & 1) == 0)
  {
    static os_log_type_t.debug.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000F3160;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100003D24();
    *(v29 + 32) = v10;
    *(v29 + 40) = v12;
    sub_10001491C();
    v30 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100003C90(v51);
    return 0;
  }

  v16 = *sub_100003C4C(v51, v52);
  sub_1000DF9D4(v48);
  v17 = v49;
  v18 = v50;
  sub_100003C4C(v48, v49);
  (*(v18 + 16))(v10, v12, 0, v17, v18);
  if (v19 >> 60 == 15)
  {
    sub_100003C90(v48);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    *&v44 = 0xD000000000000015;
    *(&v44 + 1) = 0x800000010010CBD0;
    v20._countAndFlagsBits = v10;
    v20._object = v12;
    String.append(_:)(v20);
    v22 = *(&v44 + 1);
    v21 = v44;
    sub_10001449C();
    v23 = swift_allocError();
    *v24 = __PAIR128__(v22, v21);
    v25 = v47;
    v26 = v46;
    v27 = v45;
    *(v24 + 16) = v44;
    *(v24 + 32) = v27;
    *(v24 + 48) = v26;
    *(v24 + 64) = v25;
    *(v24 + 72) = 10;
    swift_willThrow();
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1000F3C80;
    *(v35 + 56) = &type metadata for String;
    v36 = sub_100003D24();
    *(v35 + 64) = v36;
    *(v35 + 32) = v10;
    *(v35 + 40) = v12;
    *&v44 = v23;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    v37 = String.init<A>(describing:)();
    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v36;
    *(v35 + 72) = v37;
    *(v35 + 80) = v38;
    sub_10001491C();
    v39 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v40 = 0;
  }

  else
  {
    sub_100003C90(v48);
    v32 = type metadata accessor for PropertyListDecoder();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000EEDF4();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100014988();
    v40 = v48[0];
    sub_10000A990(v51, &v44);
    sub_100041D5C(&v44, v43);

    sub_100003C90(v43);
  }

  sub_100003C90(v51);
  return v40;
}

uint64_t sub_1000EECB0()
{
  static os_log_type_t.error.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000F3160;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_100003D24();
  *(v0 + 32) = 0xD000000000000015;
  *(v0 + 40) = 0x800000010010CC40;
  sub_10001491C();
  v1 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  return 0;
}

uint64_t sub_1000EED8C(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_100133CC0, &qword_1000F32F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EEDF4()
{
  result = qword_100139708;
  if (!qword_100139708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139708);
  }

  return result;
}

unint64_t sub_1000EEE58()
{
  result = qword_100139718;
  if (!qword_100139718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139718);
  }

  return result;
}

unint64_t sub_1000EEEC0()
{
  result = qword_100139728;
  if (!qword_100139728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139728);
  }

  return result;
}

unint64_t sub_1000EEF18()
{
  result = qword_100139730;
  if (!qword_100139730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139730);
  }

  return result;
}

unint64_t sub_1000EEF70()
{
  result = qword_100139738;
  if (!qword_100139738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139738);
  }

  return result;
}

uint64_t sub_1000EEFD0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000EF0FC(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, a3 + 88) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

double Img4DecodeInitPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    *&v5 = a1;
    *(&v5 + 1) = a2;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 448) = 0;
    if (!DERImg4DecodePayload(&v5, a3 + 88))
    {
      result = *&v5;
      *(a3 + 8) = v5;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  memset(v12, 170, sizeof(v12));
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

_DWORD *DEREncoderCreate(int a1)
{
  result = calloc(1uLL, 0x10uLL);
  if (result)
  {
    result[3] = a1;
  }

  return result;
}

void DEREncoderDestroy(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      do
      {
        v3 = *v2;
        sub_1000F0344(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

uint64_t DEREncoderAddData(uint64_t *a1, unsigned int a2, unsigned int a3, const void *a4, unsigned int a5, int a6)
{
  v7 = sub_1000EFCE4(a2, a3, a4, a5, a6, 3);

  return sub_1000EFB70(a1, v7);
}

uint64_t sub_1000EFB70(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v22 = 1;
    if (!a2)
    {
      return v22;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return 2;
  }

  v4 = *(a1 + 2);
  v5 = a2;
  do
  {
    v6 = *(v5 + 20);
    v7 = __CFADD__(v4, v6);
    v8 = v4 + v6;
    if (v7 || (v9 = *(v5 + 24), v4 = v8 + v9, __CFADD__(v8, v9)))
    {
      v22 = 2;
      do
      {
LABEL_30:
        v23 = *v2;
        sub_1000F0344(v2);
        v2 = v23;
      }

      while (v23);
      return v22;
    }

    v5 = *v5;
  }

  while (v5);
  v10 = *a1;
  v11 = a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  v12 = *(a1 + 3);
  v11 = a1;
  while (2)
  {
    v13 = v11;
    v11 = v10;
    if (!v12)
    {
      goto LABEL_20;
    }

    v14 = bswap64(*(v2 + 28));
    v15 = bswap64(*(v11 + 28));
    if (v14 != v15 || (v14 = bswap64(*(v2 + 36)), v15 = bswap64(*(v11 + 36)), v14 != v15))
    {
      if (v14 < v15)
      {
        v16 = -1;
      }

      else
      {
        v16 = 1;
      }

LABEL_19:
      if (v16 < 0)
      {
        break;
      }

      goto LABEL_20;
    }

    v17 = *(v2 + 24);
    v18 = *(v11 + 6);
    if (v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v16 = memcmp(*(v2 + 8), v11[1], v19);
    if (v16)
    {
      goto LABEL_19;
    }

    if (v17 >= v18)
    {
LABEL_20:
      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  v20 = v2;
  do
  {
    v21 = v20;
    v20 = *v20;
  }

  while (v20);
  *v21 = v11;
  v11 = v13;
LABEL_26:
  v22 = 0;
  *v11 = v2;
  *(a1 + 2) = v4;
  return v22;
}

char *sub_1000EFCE4(unsigned int a1, unsigned int a2, const void *a3, unsigned int a4, int a5, int a6)
{
  if (!a3 && a4 && a6)
  {
    return 0;
  }

  v12 = calloc(1uLL, 0x38uLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 4) = 1;
    v14 = v12 + 28;
    if (a1 == 259)
    {
      v15 = 0;
    }

    else
    {
      if (a1 > 3)
      {
        goto LABEL_41;
      }

      if (a2 > 0x1E)
      {
        v17 = 0;
        v28 = 0;
        do
        {
          *(&v28 + v17++) = a2 & 0x7F;
          v18 = a2 > 0x7F;
          a2 >>= 7;
        }

        while (v18);
        v19 = v17 - 1;
        v16 = v13 + 28;
        if ((v17 - 1) <= 0xE)
        {
          v13[28] = (a1 << 6) | (32 * (a5 != 0)) | 0x1F;
          v20 = v13 + 29;
          if (v17 != 1)
          {
            do
            {
              *v20++ = *(&v28 + v19--) | 0x80;
            }

            while (v19);
          }

          *v20 = v28;
          v16 = v20 + 1;
        }
      }

      else
      {
        v13[28] = (a1 << 6) | (32 * (a5 != 0)) | a2;
        v16 = v13 + 29;
      }

      v21 = v16 - v14;
      if (!v21)
      {
        goto LABEL_41;
      }

      v22 = &v14[v21];
      if (a4 > 0x7F)
      {
        v24 = 0;
        v28 = 0;
        v25 = a4;
        do
        {
          *(&v28 + v24++) = v25;
          v18 = v25 > 0xFF;
          v25 >>= 8;
        }

        while (v18);
        if (16 - v21 <= v24)
        {
          LODWORD(v23) = v14 + v21;
        }

        else
        {
          *v22 = v24 | 0x80;
          v23 = v22 + 1;
          do
          {
            *v23++ = *(&v28 + --v24);
          }

          while (v24);
        }
      }

      else
      {
        LODWORD(v23) = v14 + v21;
        if (v21 != 16)
        {
          *v22 = a4;
          LODWORD(v23) = v22 + 1;
        }
      }

      v26 = v23 - v22;
      if (v23 == v22)
      {
        goto LABEL_41;
      }

      v14 = &v22[v26];
      v15 = v21 + v26;
    }

    *(v13 + 5) = v15;
    if (a6 <= 1)
    {
      if (!a6)
      {
        *(v13 + 1) = 0;
        *(v13 + 6) = 0;
        *(v13 + 6) = 0;
        return v13;
      }

      *(v13 + 1) = a3;
      *(v13 + 6) = 0;
LABEL_16:
      *(v13 + 6) = a4;
      return v13;
    }

    if (a6 == 2)
    {
      *(v13 + 1) = a3;
      *(v13 + 6) = v13;
      goto LABEL_16;
    }

    if (v13 + 56 - v14 >= a4)
    {
      *(v13 + 1) = v14;
      *(v13 + 6) = a4;
    }

    else
    {
      v14 = malloc(a4);
      *(v13 + 1) = v14;
      *(v13 + 6) = v13;
      *(v13 + 6) = a4;
      if (!v14)
      {
LABEL_41:
        free(v13);
        return 0;
      }
    }

    memcpy(v14, a3, a4);
  }

  return v13;
}

uint64_t DEREncoderAddDataNoCopy(uint64_t *a1, unsigned int a2, unsigned int a3, const void *a4, unsigned int a5, int a6)
{
  v7 = sub_1000EFCE4(a2, a3, a4, a5, a6, 1);

  return sub_1000EFB70(a1, v7);
}

uint64_t DEREncoderCreateEncodedBuffer(uint64_t **a1, void *a2, unsigned int *a3)
{
  if (!a1)
  {
    return 1;
  }

  v6 = *(a1 + 2);
  v7 = malloc(v6);
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  v9 = *a1;
  if (*a1)
  {
    v10 = v7;
    do
    {
      memcpy(v10, v9 + 28, *(v9 + 5));
      v11 = &v10[*(v9 + 5)];
      memcpy(v11, v9[1], *(v9 + 6));
      v10 = &v11[*(v9 + 6)];
      v9 = *v9;
    }

    while (v9);
  }

  if (a3)
  {
    *a3 = v6;
  }

  if (a2)
  {
    result = 0;
    *a2 = v8;
  }

  else
  {
    free(v8);
    return 0;
  }

  return result;
}

uint64_t sub_1000F00A0(uint64_t **a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v13 = 0;
  v12 = 0;
  v9 = DEREncoderCreateEncodedBuffer(a1, &v12, &v13);
  if (!v9)
  {
    v9 = 2;
    v10 = sub_1000EFCE4(a3, a4, v12, v13, a5, 2);
    if (v10)
    {
      v12 = 0;
      v9 = sub_1000EFB70(a2, v10);
    }
  }

  if (v12)
  {
    free(v12);
  }

  return v9;
}

uint64_t DEREncoderAddDataFromEncoderNoCopy(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  result = 1;
  if (a1 && a2)
  {
    if (*(a2 + 12))
    {

      return sub_1000F00A0(a1, a2, a3, a4, a5);
    }

    else
    {
      v8 = sub_1000EFCE4(a3, a4, 0, *(a1 + 8), 1, 0);
      if (v8)
      {
        v9 = v8;
        v10 = *a1;
        v21 = 0;
        v11 = &v21;
        while (v10)
        {
          v12 = malloc(0x38uLL);
          if (!v12)
          {
            v17 = v21;
            if (v21)
            {
              do
              {
                v18 = *v17;
                sub_1000F0344(v17);
                v17 = v18;
              }

              while (v18);
            }

            *v9 = 0;
            goto LABEL_22;
          }

          v13 = v10[6];
          v15 = *(v10 + 1);
          v14 = *(v10 + 2);
          *v12 = *v10;
          v12[1] = v15;
          *(v12 + 6) = v13;
          v12[2] = v14;
          *v12 = 0;
          *(v12 + 4) = 1;
          v16 = v10[1];
          if (v10 + 28 > v16 || v16 >= (v10 + 7))
          {
            if (v13)
            {
              ++*(v13 + 16);
            }
          }

          else
          {
            *(v12 + 1) = v12 + v16 - v10;
          }

          *v11 = v12;
          v10 = *v10;
          v11 = v12;
        }

        v19 = v21;
        *v9 = v21;
        if (v19)
        {
          goto LABEL_26;
        }

LABEL_22:
        if (*a1)
        {
          do
          {
            v20 = *v9;
            sub_1000F0344(v9);
            v9 = v20;
          }

          while (v20);
          return 2;
        }

LABEL_26:

        return sub_1000EFB70(a2, v9);
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

void sub_1000F0344(uint64_t a1)
{
  v2 = *(a1 + 16) - 1;
  *(a1 + 16) = v2;
  if (!v2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = v4 >= a1 + 56 || a1 + 28 > v4;
      if (v6 && v5 != 0)
      {
        if (v5 == a1)
        {
          free(v4);
        }

        else
        {
          sub_1000F0344(*(a1 + 48));
        }
      }
    }

    free(a1);
  }
}

uint64_t Img4EncodeCreatePayload(const char *a1, const char *a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, void *a7, unsigned int *a8)
{
  v8 = 0;
  v9 = 101;
  if (!a1 || !a2)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
  if (a3)
  {
    if (strlen(a1) != 4)
    {
      v8 = 0;
      v12 = 0;
      goto LABEL_16;
    }

    v8 = DEREncoderCreate(0);
    if (v8)
    {
      v12 = DEREncoderCreate(0);
      if (v12)
      {
        v18 = DEREncoderAddData(v8, 0, 0x16u, "IM4P", 4u, 0);
        if (v18 || (v18 = DEREncoderAddData(v8, 0, 0x16u, a1, 4u, 0), v18) || (v19 = strlen(a2), v18 = DEREncoderAddData(v8, 0, 0x16u, a2, v19, 0), v18) || (v18 = DEREncoderAddDataNoCopy(v8, 0, 4u, a3, a4, 0), v18) || a5 && (v18 = DEREncoderAddDataNoCopy(v8, 0, 4u, a5, a6, 0), v18) || (v18 = DEREncoderAddDataFromEncoderNoCopy(v8, v12, 0, 0x10u, 1), v18))
        {
          v9 = v18;
        }

        else
        {
          EncodedBuffer = DEREncoderCreateEncodedBuffer(v12, a7, a8);
          if (EncodedBuffer)
          {
            v9 = EncodedBuffer;
          }

          else
          {
            v9 = 100;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
    }

    v9 = 2;
  }

LABEL_16:
  DEREncoderDestroy(v8);
  DEREncoderDestroy(v12);
  return v9;
}

void sub_1000F0594(void *a1)
{
  v1[0] = 67109120;
  v1[1] = [a1 state];
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Job submitted but not running: %d", v1, 8u);
}

void sub_1000F0618(void *a1)
{
  v1 = [a1 localizedFailureReason];
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to submit job: %{public}@", &v2, 0xCu);
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      sub_1000EF1AC();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!*(a2 + 80) || (sub_1000EF1C0(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = *(a2 + 96);
          v5 = a2 + 96;
          if (!v6)
          {
            return 0;
          }

          sub_1000EF1C0();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_1000EF1AC();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 80);
          v5 = a2 + 80;
          if (!v6)
          {
            return 0;
          }

          sub_1000EF1C0();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      *(a2 + 16) = v7;
      v8 = v11[3];
      *(a2 + 32) = v11[2];
      *(a2 + 48) = v8;
      v9 = v11[5];
      *(a2 + 64) = v11[4];
      *(a2 + 80) = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_1000EF1AC();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}