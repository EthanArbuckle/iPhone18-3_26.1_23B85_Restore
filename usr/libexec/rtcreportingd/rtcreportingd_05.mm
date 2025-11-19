uint64_t sub_10005FA40()
{
  sub_100002624();
  v1 = v0[22];

  v2 = v0[25];
  v3 = v0[23];
  v5 = v0[10];
  v4 = v0[11];

  *(v5 + v4) = 0;
  sub_100001D4C();

  return v6();
}

uint64_t sub_10005FABC()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SessionUser(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionUser(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SessionUser(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10005FC2C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005FC48(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

uint64_t sub_10005FC78()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_10005FD18(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_10005FD40(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1000047D8(a3, result);
  }

  return result;
}

uint64_t sub_10005FD98(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_100061548();
  if (v9 < v8 || (v10 = (a4)(0), result = sub_100003C44(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    sub_100002684();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_100002684();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10005FE74(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1000047D8(a3, result);
  }

  return result;
}

char *sub_10005FE9C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1000047D8(a3, result);
  }

  return result;
}

uint64_t sub_10005FEBC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1000228D4(&qword_10008EE10, &qword_10006E8B8), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1000228D4(&qword_10008EE10, &qword_10006E8B8);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_10005FFC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000228D4(&unk_10008FDF0, &qword_10006E8E0);
  sub_100002684();
  v40 = a2;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v5 + 16))
  {
LABEL_30:

LABEL_31:
    *v3 = v7;
    return;
  }

  v39 = v3;
  v8 = 0;
  v10 = (v5 + 64);
  v9 = *(v5 + 64);
  v11 = *(v5 + 32);
  sub_10006152C();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v17 = v7 + 64;
  if ((v13 & v12) == 0)
  {
LABEL_6:
    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v16)
      {
        break;
      }

      v20 = v10[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_11;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_31;
    }

    sub_100061684();
    v3 = v39;
    if (v37 != v38)
    {
      *v10 = -1 << v36;
    }

    else
    {
      sub_100019D90(0, (v36 + 63) >> 6, v5 + 64);
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v21 = v18 | (v8 << 6);
    v22 = *(*(v5 + 48) + v21);
    v23 = *(*(v5 + 56) + 8 * v21);
    if ((v40 & 1) == 0)
    {
    }

    v24 = *(v7 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v22 + 1);
    Hasher._finalize()();
    v25 = *(v7 + 32);
    sub_1000616AC();
    if (((v28 << v27) & ~*(v17 + 8 * v26)) == 0)
    {
      break;
    }

    sub_10000CDBC();
LABEL_22:
    sub_100009B9C();
    *(v17 + v33) |= v34;
    *(*(v7 + 48) + v35) = v22;
    *(*(v7 + 56) + 8 * v35) = v23;
    ++*(v7 + 16);
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  sub_100007030();
  while (++v29 != v31 || (v30 & 1) == 0)
  {
    v32 = v29 == v31;
    if (v29 == v31)
    {
      v29 = 0;
    }

    v30 |= v32;
    if (*(v17 + 8 * v29) != -1)
    {
      sub_100003E1C();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1000601E8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for EventValue();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  __chkstk_darwin(v6 - 8);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1000228D4(&unk_10008FD60, &qword_100070060);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (!*(v9 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v12;
    return result;
  }

  v40 = v3;
  v41 = v9;
  v13 = 0;
  v14 = (v9 + 64);
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v9 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = result + 64;
  if (!v17)
  {
LABEL_9:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      sub_100019D90(0, (v39 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v39;
    }

    *(v9 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_14:
    v23 = *(v9 + 56);
    v24 = (*(v9 + 48) + 16 * (v20 | (v13 << 6)));
    v25 = *v24;
    v26 = v24[1];
    v27 = *(v42 + 72);
    if (v43)
    {
      sub_100006F04();
    }

    else
    {
      sub_100006EAC();
    }

    v28 = *(v12 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v29 = -1 << *(v12 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v19 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v12 + 48) + 16 * v32);
    *v37 = v25;
    v37[1] = v26;
    v38 = *(v12 + 56) + v27 * v32;
    result = sub_100006F04();
    ++*(v12 + 16);
    v9 = v41;
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v19 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_10006055C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CachedSession(0);
  v7 = sub_10000392C(v6);
  v52 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_1000228D4(&qword_10008EE20, &qword_10006E8C0);
  sub_100002684();
  v53 = a2;
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v12 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v14;
    return;
  }

  v50 = v3;
  v51 = v12;
  v15 = 0;
  v17 = (v12 + 64);
  v16 = *(v12 + 64);
  v18 = *(v12 + 32);
  sub_10006152C();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v24 = v14 + 64;
  if ((v20 & v19) == 0)
  {
LABEL_6:
    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v15 >= v23)
      {
        break;
      }

      v27 = v17[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_11;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_32;
    }

    sub_100061684();
    v3 = v50;
    if (v48 != v49)
    {
      *v17 = -1 << v47;
    }

    else
    {
      sub_100019D90(0, (v47 + 63) >> 6, v17);
    }

    *(v12 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_11:
    v28 = *(v12 + 56);
    v29 = (*(v12 + 48) + 16 * (v25 | (v15 << 6)));
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v52 + 72);
    if (v53)
    {
      sub_100006F04();
    }

    else
    {
      sub_100006EAC();
    }

    v33 = *(v14 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    v34 = *(v14 + 32);
    sub_1000616AC();
    if (((v37 << v36) & ~*(v24 + 8 * v35)) == 0)
    {
      break;
    }

    sub_10000CDBC();
LABEL_23:
    sub_100009B9C();
    *(v24 + v42) |= v43;
    v45 = (*(v14 + 48) + 16 * v44);
    *v45 = v30;
    v45[1] = v31;
    v46 = *(v14 + 56);
    sub_10000CDE8();
    sub_100006F04();
    ++*(v14 + 16);
    v12 = v51;
    if (!v21)
    {
      goto LABEL_6;
    }
  }

  sub_100007030();
  while (++v38 != v40 || (v39 & 1) == 0)
  {
    v41 = v38 == v40;
    if (v38 == v40)
    {
      v38 = 0;
    }

    v39 |= v41;
    if (*(v24 + 8 * v38) != -1)
    {
      sub_100003E1C();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_100060854(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_100061548();
  v9 = type metadata accessor for EventValue();
  v10 = sub_10000392C(v9);
  v60 = v11;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v10);
  v51 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v18 = sub_1000228D4(&unk_10008FD50, &unk_100070050);
  v19 = sub_100001D80(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v49 - v22);
  v24 = sub_100003B18();
  sub_100007064(v24, v25, a3, v26);
  v52 = v56;
  v53 = v57;
  v54 = v58;
  v55 = v59;
  v50 = v5;

  v49 = a3;

  while (1)
  {
    sub_100007C94(v23);
    v27 = sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
    if (sub_100002694(v23, 1, v27) == 1)
    {
      sub_100008104();
    }

    v28 = *(v27 + 48);
    v30 = *v23;
    v29 = v23[1];
    sub_100002808();
    sub_100006F04();
    v31 = *a5;
    v33 = sub_100003BC0();
    v34 = *(v31 + 16);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (*(v31 + 24) >= v36)
    {
      if ((a4 & 1) == 0)
      {
        sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      sub_1000601E8(v36, a4 & 1);
      v38 = *a5;
      v39 = sub_100003BC0();
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_16;
      }

      v33 = v39;
    }

    v41 = *a5;
    if (v37)
    {
      v42 = v51;
      sub_100006EAC();
      sub_10000A864(v17, type metadata accessor for EventValue);

      sub_1000616E0();
      sub_100020548(v42, v43);
      a4 = 1;
    }

    else
    {
      *(v41 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      v44 = (*(v41 + 48) + 16 * v33);
      *v44 = v30;
      v44[1] = v29;
      sub_1000616E0();
      sub_100002808();
      sub_100006F04();
      v45 = *(v41 + 16);
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_15;
      }

      *(v41 + 16) = v47;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

size_t sub_100060BA4(size_t a1, int64_t a2, char a3)
{
  result = sub_100060CE4(a1, a2, a3, *v3, &unk_10008FDC0, &unk_1000700C0, type metadata accessor for EventValue, type metadata accessor for EventValue);
  *v3 = result;
  return result;
}

size_t sub_100060BFC()
{
  v1 = *v0;
  sub_10001C1A0();
  result = sub_100060CE4(v2, v3, v4, v5, v6, v7, v8, &type metadata accessor for URL);
  *v0 = result;
  return result;
}

char *sub_100060C44(char *a1, int64_t a2, char a3)
{
  result = sub_100060EA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100060C64(void *a1, int64_t a2, char a3)
{
  result = sub_100019510(a1, a2, a3, *v3, &qword_10008FDB8, &qword_1000700B8, &qword_10008E780, &unk_10006FFD0);
  *v3 = result;
  return result;
}

char *sub_100060CA4(char *a1, int64_t a2, char a3)
{
  result = sub_100060FAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100060CC4(size_t a1, int64_t a2, char a3)
{
  result = sub_1000610AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100060CE4(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000228D4(a5, a6);
  v16 = a7(0);
  sub_10000392C(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = j__malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_10005FD98(a4 + v24, v14, v21 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

char *sub_100060EA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000228D4(&unk_10008FD90, &qword_10006CC48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100060FAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000228D4(&qword_10008E1F8, &qword_10006CC58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

size_t sub_1000610AC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000228D4(&unk_10008FDD0, &unk_1000700D0);
  v10 = *(sub_1000228D4(&qword_10008EE10, &qword_10006E8B8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000228D4(&qword_10008EE10, &qword_10006E8B8) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10005FEBC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100061278()
{
  sub_100002618();
  sub_100005BD0();
  swift_task_alloc();
  sub_100008D5C();
  *(v0 + 16) = v1;
  *v1 = v2;
  sub_1000091A0(v1);
  sub_100008E44();

  return sub_10005E714(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_100061318()
{
  result = qword_10008FDA0;
  if (!qword_10008FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FDA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100061450()
{
  result = qword_10008FDE8;
  if (!qword_10008FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FDE8);
  }

  return result;
}

uint64_t sub_1000614AC()
{

  return swift_arrayDestroy();
}

uint64_t sub_1000614F4()
{

  return swift_slowAlloc();
}

void sub_100061510()
{
  v3 = *(*(v1 + 128) + v2);
  *(v1 + 48) = v0;
  v4 = *(v0 + 24);
}

uint64_t sub_100061564()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void sub_10006158C()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
}

uint64_t sub_1000615D8(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v4 = a1;
  v6 = *(v3 + 112);
  v7 = *(v3 + 120);

  return sub_1000053A0(v6, v7, va);
}

uint64_t sub_1000615F4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100061618()
{
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
}

uint64_t sub_100061634()
{
  *(v1 + 120) = *v0;
  *(v1 + 128) = v0[1];
}

void sub_100061698(uint64_t a1@<X8>)
{
  v2 = v1[76];
  v3 = v1[69];
  v4 = v1[79] + a1;
}

uint64_t sub_1000616C0()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(result + 240);
  return result;
}

uint64_t sub_1000616D4()
{
  v2 = v0[8];
  result = v0[9];
  v3 = v0[6];
  return result;
}

void sub_1000616F4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t sub_100061714(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_100060854(v5, a2, 0, a4, va);
}

uint64_t sub_100061734()
{

  return dispatch thunk of Actor.unownedExecutor.getter();
}

uint64_t sub_10006174C()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100061764(uint64_t a1)
{

  return sub_100005000(a1, v1, v2);
}

uint64_t sub_10006177C()
{
  v2 = *(v0 + 552);
}

uint64_t sub_100061794()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008FE00);
  sub_1000050E4(v0, qword_10008FE00);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10006180C(char a1)
{
  v2 = v1;
  v33 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = sub_100001EDC(v33);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100001EAC();
  v10 = v9 - v8;
  v32 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = sub_100001EDC(v32);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100001EAC();
  v31 = v17 - v16;
  v18 = type metadata accessor for OS_dispatch_queue.Attributes();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  sub_100001EAC();
  v20 = type metadata accessor for DispatchQoS();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  sub_100001EAC();
  sub_10002E894();
  static DispatchQoS.default.getter();
  sub_100062594();
  sub_1000228D4(&qword_10008E8B8, &qword_10006E190);
  sub_10002E8D8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v13 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v32);
  (*(v5 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v33);
  static OS_dispatch_queue.global(qos:)();
  (*(v5 + 8))(v10, v33);
  v1[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[3] = 0;
  sub_1000228D4(&qword_10008FED8, &qword_100070268);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v1[4] = v22;
  if (sub_100059CF8(_swiftEmptyArrayStorage))
  {
    sub_100067D28(_swiftEmptyArrayStorage);
    v24 = v23;
  }

  else
  {
    v24 = &_swiftEmptySetSingleton;
  }

  sub_1000228D4(&qword_10008FEE0, &unk_100070270);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = v24;
  *(v2 + 40) = v25;
  *(v2 + 48) = a1 & 1;
  v26 = *(v2 + 16);
  type metadata accessor for XPCConnection();
  swift_allocObject();
  v27 = v26;

  v28 = XPCConnection.init(machService:targetQ:listen:delegate:)(0xD000000000000017, 0x8000000100071660, v27, 1, v2, &off_100088838);
  v29 = *(v2 + 24);
  *(v2 + 24) = v28;

  return v2;
}

void sub_100061BB8(void *a1)
{
  xpc_copy_description(a1);
  v1 = String.init(cString:)();
  v3 = v2;
  _StringGuts.grow(_:)(36);

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100061C60(_xpc_connection_s *a1)
{
  v3 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for XPCObject();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v35 - v19;
  swift_unknownObjectRetain();
  XPCIncomingConnection.entitlementValue(forKey:)(v20);
  sub_100019DF4(v20, v18);
  if (sub_100002694(v18, 1, v7) == 1)
  {
    sub_100062450(v18);
LABEL_14:
    pid = xpc_connection_get_pid(a1);
    if (qword_10008DDF0 != -1)
    {
      sub_1000020B8();
    }

    v28 = type metadata accessor for Logger();
    sub_1000050E4(v28, qword_10008FE00);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67240192;
      *(v31 + 4) = pid;
      _os_log_impl(&_mh_execute_header, v29, v30, "connection attempted by unentitled process %{public}d", v31, 8u);
    }

    xpc_connection_cancel(a1);
    swift_unknownObjectRelease();
    return sub_100062450(v20);
  }

  sub_100004254(v18, v13);
  sub_10004AC88(v13, v11);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10002E5EC(v13);
    v26 = v11;
LABEL_13:
    sub_10002E5EC(v26);
    goto LABEL_14;
  }

  if ((*v11 & 1) == 0)
  {
    v26 = v13;
    goto LABEL_13;
  }

  if (*(v1 + 48))
  {
    v21 = xpc_connection_get_pid(a1);
    if (qword_10008DDF0 != -1)
    {
      sub_1000020B8();
    }

    v22 = type metadata accessor for Logger();
    sub_1000050E4(v22, qword_10008FE00);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67240192;
      *(v25 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v23, v24, "rejecting connection from %{public}d while reporting is disabled", v25, 8u);
    }

    xpc_connection_cancel(a1);
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = type metadata accessor for TaskPriority();
    sub_1000026BC(v6, 1, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v1;
    v34[5] = a1;
    swift_unknownObjectRetain();

    sub_10002D48C(0, 0, v6, &unk_100070260, v34);
    swift_unknownObjectRelease();
  }

  sub_10002E5EC(v13);
  return sub_100062450(v20);
}

uint64_t sub_1000620B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for Client();
  swift_allocObject();

  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_10006218C;

  return sub_10002CB0C();
}

uint64_t sub_10006218C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10006228C, 0, 0);
}

uint64_t sub_10006228C()
{
  v1 = v0[4];
  v2 = *(v0[2] + 40);

  os_unfair_lock_lock(v2 + 6);
  sub_100062578(&v2[4]);
  v3 = v0[4];
  os_unfair_lock_unlock(v2 + 6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006235C(uint64_t a1, uint64_t a2)
{

  sub_10004E348(&v4, a2);
}

uint64_t sub_1000623AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t sub_1000623E4()
{
  sub_1000623AC();

  return _swift_deallocClassInstance(v0, 49, 7);
}

uint64_t sub_100062450(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000624B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BF00;

  return sub_1000620B4(a1, v4, v5, v7);
}

unint64_t sub_100062594()
{
  result = qword_10008E8B0;
  if (!qword_10008E8B0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E8B0);
  }

  return result;
}

uint64_t sub_1000625EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006262C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006267C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6775138 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10006274C(char a1)
{
  if (a1)
  {
    return 0x727574616E676973;
  }

  else
  {
    return 6775138;
  }
}

uint64_t sub_100062780(uint64_t *a1)
{
  v3 = sub_1000228D4(&qword_10008FEE8, &qword_100070408);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100008DE4(a1, a1[3]);
  sub_100062A3C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100005284(a1);
  return v8;
}

uint64_t sub_10006296C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006267C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100062994(uint64_t a1)
{
  v2 = sub_100062A3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000629D0(uint64_t a1)
{
  v2 = sub_100062A3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100062A0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100062780(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_100062A3C()
{
  result = qword_10008FEF0;
  if (!qword_10008FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FEF0);
  }

  return result;
}

uint64_t sub_100062A90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_100062ADC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RawStorebag._EncodedRawStorebag.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100062C1C()
{
  result = qword_10008FEF8;
  if (!qword_10008FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FEF8);
  }

  return result;
}

unint64_t sub_100062C74()
{
  result = qword_10008FF00;
  if (!qword_10008FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FF00);
  }

  return result;
}

unint64_t sub_100062CCC()
{
  result = qword_10008FF08;
  if (!qword_10008FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FF08);
  }

  return result;
}

uint64_t sub_100062D20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100062D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100062DC0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100086130, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100062E38@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100062DC0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100062E68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100020094(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100062E94@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100062E0C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100062EC8(uint64_t a1)
{
  v2 = sub_10001FFD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100062F04(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100056AB4(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100062FC4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100056A9C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10006307C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1937335659 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7365756C6176 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1000631D4(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      result = 1937335659;
      break;
    case 2:
      result = 0x7365756C6176;
      break;
    case 3:
      result = 0x6F697469646E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100063248@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000228D4(&qword_10008FFC0, &qword_100070830);
  v6 = sub_100001EDC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = a1[4];
  sub_100008DE4(a1, a1[3]);
  sub_100063A84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005284(a1);
  }

  LOBYTE(v16) = 0;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v10;
  sub_1000228D4(&qword_10008E4E8, &qword_10006D370);
  sub_10001E418(&qword_10008F4A8, &qword_10008E4E8, &qword_10006D370);
  sub_100002A18();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100002A18();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000228D4(&qword_10008FFD0, &qword_100070838);
  sub_100063AD8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v11 = sub_10000524C();
  v12(v11);
  result = sub_100005284(a1);
  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v16;
  a2[4] = v16;
  return result;
}

uint64_t sub_100063520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006307C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100063548(uint64_t a1)
{
  v2 = sub_100063A84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063584(uint64_t a1)
{
  v2 = sub_100063A84();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000635C0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100063248(a1, v6);
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

uint64_t sub_100063628(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100063694(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1000637B8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_100063980()
{
  result = qword_10008FFA8;
  if (!qword_10008FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFA8);
  }

  return result;
}

unint64_t sub_1000639D8()
{
  result = qword_10008FFB0;
  if (!qword_10008FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFB0);
  }

  return result;
}

unint64_t sub_100063A30()
{
  result = qword_10008FFB8;
  if (!qword_10008FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFB8);
  }

  return result;
}

unint64_t sub_100063A84()
{
  result = qword_10008FFC8;
  if (!qword_10008FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFC8);
  }

  return result;
}

unint64_t sub_100063AD8()
{
  result = qword_10008FFD8;
  if (!qword_10008FFD8)
  {
    sub_100025D78(&qword_10008FFD0, &qword_100070838);
    sub_100020424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFD8);
  }

  return result;
}

uint64_t sub_100063B5C(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008FFE0, &qword_100070840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for StorebagSectionCondition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100063CA4()
{
  result = qword_10008FFE8;
  if (!qword_10008FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFE8);
  }

  return result;
}

unint64_t sub_100063CFC()
{
  result = qword_10008FFF0;
  if (!qword_10008FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFF0);
  }

  return result;
}

unint64_t sub_100063D54()
{
  result = qword_10008FFF8;
  if (!qword_10008FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFF8);
  }

  return result;
}

void sub_100063DAC()
{
  sub_100004DA4();
  v3 = v2;
  v4 = type metadata accessor for CocoaError();
  v5 = sub_100001EDC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v10 = sub_100003E88();
  v11 = sub_100001EDC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100009BD4();
  (*(v7 + 16))(v1, v3, v4);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.fault.getter();
  if (sub_1000054E8(v17))
  {
    sub_100004D20();
    sub_1000050C4();
    *v10 = 136446210;
    sub_1000047FC();
    sub_10006801C(v18, v19);
    sub_10001676C();
    v20 = sub_10001A4EC();
    v21(v20);
    sub_10000CEBC();
    sub_10000B7F4();
    *(v10 + 4) = v0;
    sub_100003FD4(&_mh_execute_header, v22, v23, "unable to write storebag cache (OOS): %{public}s");
    sub_10001179C();
    sub_10000C704();

    (*(v13 + 8))(v0);
  }

  else
  {

    (*(v7 + 8))(v1, v4);
    (*(v13 + 8))(v0, v10);
  }

  _StringGuts.grow(_:)(40);

  sub_1000047FC();
  sub_10006801C(v24, v25);
  v26._countAndFlagsBits = sub_100008DC8();
  sub_100019D78(v26);

  sub_100004FE0();
  __break(1u);
}

void sub_10006403C()
{
  sub_100004DA4();
  v3 = v2;
  v4 = type metadata accessor for CocoaError();
  v5 = sub_100001EDC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v10 = sub_100003E88();
  v11 = sub_100001EDC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100009BD4();
  (*(v7 + 16))(v1, v3, v4);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.fault.getter();
  if (sub_1000054E8(v17))
  {
    sub_100004D20();
    sub_1000050C4();
    *v10 = 136446210;
    sub_1000047FC();
    sub_10006801C(v18, v19);
    sub_10001676C();
    v20 = sub_10001A4EC();
    v21(v20);
    sub_10000CEBC();
    sub_10000B7F4();
    *(v10 + 4) = v0;
    sub_100003FD4(&_mh_execute_header, v22, v23, "unable to access storebag cache (PERM): %{public}s");
    sub_10001179C();
    sub_10000C704();

    (*(v13 + 8))(v0);
  }

  else
  {

    (*(v7 + 8))(v1, v4);
    (*(v13 + 8))(v0, v10);
  }

  _StringGuts.grow(_:)(42);

  sub_1000047FC();
  sub_10006801C(v24, v25);
  v26._countAndFlagsBits = sub_100008DC8();
  sub_100019D78(v26);

  sub_100004FE0();
  __break(1u);
}

void sub_1000642CC()
{
  sub_100004DA4();
  v3 = v2;
  v4 = type metadata accessor for CocoaError();
  v5 = sub_100001EDC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v10 = sub_100003E88();
  v11 = sub_100001EDC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100009BD4();
  (*(v7 + 16))(v1, v3, v4);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.fault.getter();
  if (sub_1000054E8(v17))
  {
    sub_100004D20();
    sub_1000050C4();
    *v10 = 136446210;
    sub_1000047FC();
    sub_10006801C(v18, v19);
    sub_10001676C();
    v20 = sub_10001A4EC();
    v21(v20);
    sub_10000CEBC();
    sub_10000B7F4();
    *(v10 + 4) = v0;
    sub_100003FD4(&_mh_execute_header, v22, v23, "unable to access storebag cache (WRITE-UNKNOWN): %{public}s");
    sub_10001179C();
    sub_10000C704();

    (*(v13 + 8))(v0);
  }

  else
  {

    (*(v7 + 8))(v1, v4);
    (*(v13 + 8))(v0, v10);
  }

  _StringGuts.grow(_:)(51);
  v24._object = 0x8000000100073230;
  v24._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v24);
  sub_1000047FC();
  sub_10006801C(v25, v26);
  v27._countAndFlagsBits = sub_100008DC8();
  sub_100019D78(v27);

  sub_100004FE0();
  __break(1u);
}

void sub_10006455C()
{
  sub_100004DA4();
  v0 = type metadata accessor for Logger();
  v1 = sub_100001EDC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100001EAC();
  v8 = v7 - v6;
  Logger.init()();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100004D20();
    v12 = sub_100004F18();
    v16 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000053A0(v13, v14, &v16);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "unable to access storebag cache (UNKNOWN): %{public}s", v11, 0xCu);
    sub_100005284(v12);
    sub_10000C704();
    sub_100001D1C();
  }

  (*(v3 + 8))(v8, v0);
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v16 = 0xD00000000000002BLL;
  v17 = 0x8000000100073270;
  swift_getErrorValue();
  v18._countAndFlagsBits = Error.localizedDescription.getter();
  sub_100019D78(v18);

  sub_100004FE0();
  __break(1u);
}

uint64_t sub_100064768()
{
  sub_100004DA4();
  v108 = v1;
  v109 = v2;
  v4 = v3;
  v97 = type metadata accessor for CocoaError.Code();
  v5 = sub_100001EDC(v97);
  v99 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000286C();
  v96 = v9 - v10;
  sub_1000029A4();
  __chkstk_darwin(v11);
  v95 = &v92 - v12;
  v101 = type metadata accessor for CocoaError();
  v13 = sub_100001EDC(v101);
  v94 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_10000286C();
  v92 = (v17 - v18);
  sub_1000029A4();
  __chkstk_darwin(v19);
  v93 = &v92 - v20;
  sub_1000029A4();
  __chkstk_darwin(v21);
  v98 = &v92 - v22;
  sub_1000029A4();
  __chkstk_darwin(v23);
  v100 = &v92 - v24;
  v25 = type metadata accessor for URLResourceValues();
  v26 = sub_100001EDC(v25);
  v103 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_100001EAC();
  v102 = v31 - v30;
  v32 = sub_1000228D4(&qword_10008E758, &qword_10006DC38);
  sub_100001D80(v32);
  v34 = *(v33 + 64);
  sub_100003EC8();
  __chkstk_darwin(v35);
  v37 = &v92 - v36;
  v38 = type metadata accessor for URL();
  v39 = sub_100001EDC(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  __chkstk_darwin(v39);
  sub_100001EAC();
  v44 = type metadata accessor for StorebagCache.Location(0);
  v45 = sub_100001D80(v44);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  sub_10000286C();
  v50 = v48 - v49;
  __chkstk_darwin(v51);
  v53 = &v92 - v52;
  v104 = v0;
  v54 = sub_100005394();
  sub_10001B9E0(v54, v55, v56);
  if (sub_100002694(v53, 1, v38) == 1)
  {
    v57 = NSHomeDirectory();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:isDirectory:)();

    URL.appendingPathComponent(_:isDirectory:)();
    v58 = sub_10000B798();
    v59(v58, v38);
  }

  else
  {
    (*(v41 + 32))(v4, v53, v38);
  }

  sub_1000228D4(&qword_10008E760, &qword_10006DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v61 = NSURLIsDirectoryKey;
  sub_100019E64(inited);
  URL.resourceValues(forKeys:)();

  sub_1000026BC(v37, 0, 1, v25);
  v62 = URLResourceValues.isDirectory.getter();
  result = (*(v103 + 8))(v37, v25);
  if (v62 == 2 || (v62 & 1) == 0)
  {
    v64 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v65);
    v67 = v66;
    v107 = 0;
    v68 = [v64 createDirectoryAtURL:v66 withIntermediateDirectories:1 attributes:0 error:&v107];

    v69 = v107;
    if (!v68)
    {
      v74 = v107;
      v75 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v107 = v75;
      swift_errorRetain();
      sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
      if (swift_dynamicCast())
      {
        v76 = *(v94 + 16);
        v76(v98, v100, v101);
        sub_1000047FC();
        sub_10006801C(v77, v78);
        v79 = v95;
        _BridgedStoredNSError.code.getter();
        v80 = v96;
        static CocoaError.fileWriteNoPermission.getter();
        sub_10006801C(&unk_10008E6F0, &type metadata accessor for CocoaError.Code);
        v81 = v97;
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v82 = v99 + 8;
        v83 = *(v99 + 8);
        v84 = sub_1000680A8();
        v83(v84);
        v99 = v82;
        (v83)(v79, v81);
        if (v106 == v105)
        {
          sub_10006403C();
        }

        v85 = v101;
        v104 = *(v94 + 8);
        v104(v98, v101);
        v76(v93, v100, v85);
        sub_100012814();
        _BridgedStoredNSError.code.getter();
        v86 = v96;
        static CocoaError.fileWriteOutOfSpace.getter();
        v87 = v97;
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        (v83)(v86, v87);
        v88 = sub_1000132F8();
        v83(v88);
        if (v106 == v105)
        {
          sub_100063DAC();
        }

        v89 = v101;
        v104(v93, v101);
        (*(v94 + 32))(v92, v100, v89);
        sub_100012814();
        _BridgedStoredNSError.code.getter();
        v90 = v96;
        static CocoaError.fileWriteUnknown.getter();
        v91 = v97;
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        (v83)(v90, v91);
        (v83)(v80, v91);
        if (v106 == v105)
        {
          sub_1000642CC();
        }

        v104(v92, v101);
      }

      sub_10006455C();
    }

    sub_10001B9E0(v104, v50, type metadata accessor for StorebagCache.Location);
    v70 = sub_100002694(v50, 1, v38);
    v71 = v69;
    result = sub_10001BA40(v50, type metadata accessor for StorebagCache.Location);
    if (v70 == 1)
    {
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL.setResourceValues(_:)();
      v72 = sub_1000680FC();
      return v73(v72);
    }
  }

  return result;
}

uint64_t sub_1000650A0()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095B38);
  sub_1000050E4(v0, qword_100095B38);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100065124()
{
  sub_100004680();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for URL();
  v1[4] = v3;
  sub_10000392C(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_100003D60();

  return _swift_task_switch(sub_1000651D0, 0, 0);
}

uint64_t sub_1000651D0()
{
  sub_100004F30();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC13rtcreportingd13StorebagCache_cache;
  type metadata accessor for CachedStorebag(0);
  *(v4 + v6) = Dictionary.init(dictionaryLiteral:)();
  *(v4 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask) = 0;
  *(v4 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction) = 0;
  sub_100064768();
  (*(v2 + 32))(v4 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_location, v1, v3);

  return _swift_task_switch(sub_1000652C8, v4, 0);
}

uint64_t sub_1000652C8()
{
  sub_100004680();
  v1 = v0[6];
  sub_10001BA40(v0[2], type metadata accessor for StorebagCache.Location);

  v2 = v0[1];
  v3 = v0[3];

  return v2(v3);
}

uint64_t sub_100065348()
{
  sub_100004F30();
  v2 = *v1;
  v3 = *v1;
  sub_100001D58();
  *v4 = v3;
  v5 = *(v2 + 416);
  *v4 = *v1;
  *(v3 + 424) = v0;

  v6 = *(v2 + 272);
  sub_100005284((v3 + 96));
  if (v0)
  {
    v7 = sub_100065FA4;
  }

  else
  {
    v7 = sub_1000654AC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000654AC()
{
  v92 = v0;
  v5 = *(v0 + 424);
  v6 = *(v0 + 368);
  v7 = *(v0 + 304);
  sub_1000228D4(&qword_10008E760, &qword_10006DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 32) = NSURLContentModificationDateKey;
  v9 = NSURLContentModificationDateKey;
  sub_100019E64(inited);
  URL.resourceValues(forKeys:)();
  if (v5)
  {
    v10 = sub_100004D10();
    v11(v10);

LABEL_5:
    v23 = *(v0 + 400);
    v22 = *(v0 + 408);
    sub_100004518();
    v24 = *(v0 + 280);

    sub_100001D4C();
    goto LABEL_6;
  }

  sub_100068150();
  URLResourceValues.contentModificationDate.getter();
  v12 = sub_10000B798();
  v13(v12, v1);
  result = sub_100002694(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_100012360();
    v16(v15);
    v17 = Data.init(contentsOf:options:)();
    v19 = v18;
    v20 = sub_10001A058();
    sub_100006F6C(v20);
    sub_100011D18(v21);
    static Date.now.getter();
    sub_10000534C();
    static Date.< infix(_:_:)();
    v27 = sub_100008FBC();
    v3(v27);
    if ((v17 & 1) == 0)
    {
      v89 = v1;
      v90 = v3;
      v50 = *(v0 + 392);
      v49 = *(v0 + 400);
      v51 = *(v0 + 376);
      v53 = *(v0 + 264);
      v52 = *(v0 + 272);
      v83 = *(v0 + 256);
      v54 = *(v0 + 56);
      v55 = *(v0 + 80);
      v88 = *(v0 + 72);
      v56 = *(v0 + 88);
      (*(*(v0 + 320) + 16))(v49 + *(v50 + 20), *(v0 + 336), *(v0 + 312));
      v57 = *(v0 + 88);
      v58 = *(v0 + 72);
      *v49 = *(v0 + 56);
      *(v49 + 16) = v58;
      *(v49 + 32) = v57;
      sub_10000525C();
      sub_10001B9E0(v49, v51, v59);
      sub_1000026BC(v51, 0, 1, v50);
      sub_10000277C();

      v85 = v54;

      v87 = v55;

      v86 = v56;

      sub_10001F3E0();
      swift_endAccess();
      if (qword_10008DDF8 != -1)
      {
        sub_1000020EC();
      }

      v60 = *(v0 + 264);
      v61 = type metadata accessor for Logger();
      sub_1000050E4(v61, qword_100095B38);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();

      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 400);
      v66 = *(v0 + 360);
      v67 = *(v0 + 368);
      v69 = *(v0 + 344);
      v68 = *(v0 + 352);
      v84 = *(v0 + 336);
      v70 = *(v0 + 312);
      if (v64)
      {
        v82 = *(v0 + 368);
        v80 = *(v0 + 400);
        v71 = *(v0 + 256);
        v72 = *(v0 + 264);
        v81 = *(v0 + 352);
        v73 = sub_100004D20();
        v74 = sub_100004F18();
        sub_1000680F0(v74);
        *v73 = 136446210;
        *(v73 + 4) = sub_1000053A0(v71, v72, &v91);
        _os_log_impl(&_mh_execute_header, v62, v63, "storing storebag %{public}s in cache", v73, 0xCu);
        sub_10000393C();
        sub_100001D1C();

        sub_1000099D0();
        sub_10001BA40(v80, v75);
        v90(v84, v70);
        v90(v69, v70);
        (*(v66 + 8))(v82, v81);
      }

      else
      {

        sub_1000099D0();
        sub_10001BA40(v65, v77);
        v90(v84, v70);
        v78 = sub_1000132F8();
        (v90)(v78);
        (*(v66 + 8))(v67, v68);
      }

      sub_1000171A4();
      v79 = *(v0 + 248);

      *v79 = v85;
      *(v79 + 8) = v89;
      *(v79 + 16) = v88;
      *(v79 + 24) = v87;
      *(v79 + 32) = v86;
      sub_100001D4C();
LABEL_6:
      sub_100017624();

      __asm { BRAA            X1, X16 }
    }

    *(v0 + 216) = *(v0 + 56);
    sub_100005000(v0 + 216, &unk_100090270, &qword_10006D778);
    *(v0 + 200) = *(v0 + 72);
    sub_10000D9BC(v0 + 200);
    *(v0 + 224) = *(v0 + 88);
    sub_100005000(v0 + 224, &qword_10008E568, &qword_10006D770);
    if (qword_10008DDF8 != -1)
    {
      sub_1000020EC();
    }

    v28 = *(v0 + 264);
    v29 = type metadata accessor for Logger();
    sub_1000050E4(v29, qword_100095B38);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v19 = *(v0 + 256);
      v32 = *(v0 + 264);
      v33 = sub_100004D20();
      v34 = sub_100004F18();
      sub_1000680F0(v34);
      *v33 = 136446210;
      v35 = sub_100005394();
      *(v33 + 4) = sub_1000053A0(v35, v36, v37);
      sub_100038750(&_mh_execute_header, v38, v39, "removing expired storebag %{public}s");
      sub_10000393C();
      sub_100001D1C();
    }

    v40 = *(v0 + 368);
    v41 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v42);
    v44 = v43;
    *(v0 + 240) = 0;
    v45 = [v41 removeItemAtURL:v43 error:v0 + 240];

    if (!v45)
    {
      v76 = sub_100005328();
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (v3)(v19, v4);
      (v3)(v2, v4);
      v41[1]();
      goto LABEL_5;
    }

    v46 = *(v0 + 240);
    v47 = swift_task_alloc();
    *(v0 + 448) = v47;
    *v47 = v0;
    sub_100002A38(v47);
    sub_100017624();

    return sub_10001ADD8();
  }

  return result;
}

uint64_t sub_100065CEC()
{
  sub_100002624();
  v2 = *v1;
  sub_100001D58();
  *v4 = v3;
  v5 = *(v2 + 448);
  *v4 = *v1;
  *(v3 + 456) = v0;

  v6 = *(v2 + 272);
  if (v0)
  {
    v7 = sub_1000660B8;
  }

  else
  {
    v7 = sub_100065E3C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100065E3C()
{
  v7 = sub_1000091D0();
  v5(v7);
  (v5)(v2, v4);
  (*(v6 + 8))(v1, v0);
  v14 = *(v3 + 32);
  v13 = *(v3 + 24);
  v12 = *(v3 + 16);
  sub_1000171A4();
  v8 = *(v3 + 248);
  v11 = *(v3 + 40);

  *v8 = v12;
  *(v8 + 8) = v13;
  *(v8 + 16) = v14;
  *(v8 + 24) = v11;
  sub_100001D4C();

  return v9();
}

uint64_t sub_100065FA4()
{
  v1 = sub_100004D10();
  v2(v1);
  v8 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  sub_100004518();
  v5 = v0[35];

  sub_100001D4C();

  return v6();
}

uint64_t sub_1000660B8()
{
  v7 = sub_1000091D0();
  v5(v7);
  (v5)(v2, v4);
  (*(v6 + 8))(v1, v0);
  v13 = v3[57];
  v9 = v3[50];
  v8 = v3[51];
  sub_100004518();
  v10 = v3[35];

  sub_100001D4C();

  return v11();
}

uint64_t sub_1000661E8()
{
  sub_100004680();
  *(v1 + 65) = v2;
  *(v1 + 88) = v3;
  *(v1 + 96) = v0;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  *(v1 + 104) = *v0;
  v6 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  sub_100001D80(v6);
  v8 = *(v7 + 64);
  *(v1 + 112) = sub_100003D60();

  return _swift_task_switch(sub_1000662A4, v0, 0);
}

uint64_t sub_1000662A4()
{
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask;
  v0[15] = OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask;
  v3 = *(v1 + v2);
  v0[16] = v3;
  if (v3)
  {
    v4 = async function pointer to Task.result.getter[1];

    v5 = swift_task_alloc();
    v0[17] = v5;
    sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
    sub_100068124();
    *v5 = v6;
    sub_100007044();
    sub_100003BB0();
    sub_100008E44();

    return Task.result.getter();
  }

  else
  {
    sub_100005908();
    v8 = os_transaction_create();
    v9 = *(v1 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction);
    *(v1 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction) = v8;
    swift_unknownObjectRelease();
    v10 = type metadata accessor for TaskPriority();
    sub_1000680B4(v10);
    sub_100007C7C();
    sub_10006801C(v11, v12);
    v13 = swift_allocObject();
    sub_100010634(v13);

    v14 = sub_100001E68();
    sub_100068130(v14);

    v15 = async function pointer to Task.value.getter[1];
    v16 = swift_task_alloc();
    v0[19] = v16;
    sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
    sub_100068124();
    *v16 = v17;
    sub_10000CE00();
    sub_100003BB0();
    sub_100008E44();

    return Task.value.getter();
  }
}

uint64_t sub_10006648C()
{
  sub_100002624();
  v1 = *v0;
  v2 = *v0;
  sub_100001D58();
  *v3 = v2;
  v4 = v1[17];
  v5 = v1[12];
  *v3 = *v0;

  sub_100067B44(v1[7], *(v2 + 64));

  return _swift_task_switch(sub_1000665B8, v5, 0);
}

uint64_t sub_1000665B8()
{
  v1 = v0[16];

  v2 = v0[12];
  v3 = *(v2 + v0[15]);
  v0[16] = v3;
  if (v3)
  {
    v4 = async function pointer to Task.result.getter[1];

    v5 = swift_task_alloc();
    v0[17] = v5;
    sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
    sub_100068124();
    *v5 = v6;
    sub_100007044();
    sub_100003BB0();
    sub_100008E44();

    return Task.result.getter();
  }

  else
  {
    sub_100005908();
    v8 = os_transaction_create();
    v9 = *(v2 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction);
    *(v2 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction) = v8;
    swift_unknownObjectRelease();
    v10 = type metadata accessor for TaskPriority();
    sub_1000680B4(v10);
    sub_100007C7C();
    sub_10006801C(v11, v12);
    v13 = swift_allocObject();
    sub_100010634(v13);

    v14 = sub_100001E68();
    sub_100068130(v14);

    v15 = async function pointer to Task.value.getter[1];
    v16 = swift_task_alloc();
    v0[19] = v16;
    sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
    sub_100068124();
    *v16 = v17;
    sub_10000CE00();
    sub_100003BB0();
    sub_100008E44();

    return Task.value.getter();
  }
}

uint64_t sub_1000667A0()
{
  sub_100002624();
  v2 = *v1;
  sub_100001D58();
  *v4 = v3;
  v5 = *(v2 + 152);
  *v4 = *v1;
  *(v3 + 160) = v0;

  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_10006692C;
  }

  else
  {
    v7 = sub_1000668C4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000668C4()
{
  sub_100004680();
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);

  sub_100001D4C();

  return v3();
}

uint64_t sub_10006692C()
{
  sub_100004680();
  v1 = v0[18];
  v2 = v0[14];

  sub_100001D4C();
  v4 = v0[20];

  return v3();
}

uint64_t sub_100066994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 176) = a7;
  *(v7 + 64) = a6;
  *(v7 + 72) = v14;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  v9 = type metadata accessor for URL();
  *(v7 + 80) = v9;
  v10 = *(v9 - 8);
  *(v7 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100066A8C, a4, 0);
}

uint64_t sub_100066A8C()
{
  sub_100004F30();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = sub_10001A058();
  sub_10002451C(v7, v1);
  URL.appendingPathComponent(_:)();
  v0[16] = *(v4 + 8);
  v0[17] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = sub_10000534C();
  v9(v8);
  v10 = [objc_opt_self() ephemeralSessionConfiguration];
  v0[18] = [objc_opt_self() sessionWithConfiguration:v10];

  v11 = async function pointer to NSURLSession.download(from:delegate:)[1];
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_100066BDC;
  v13 = v0[15];
  v14 = v0[13];

  return NSURLSession.download(from:delegate:)(v14, v13, 0);
}

uint64_t sub_100066BDC()
{
  sub_100002624();
  v2 = *v1;
  sub_100001D58();
  *v4 = v3;
  v5 = *(v2 + 152);
  v6 = *v1;
  sub_100001D58();
  *v7 = v6;
  *(v9 + 160) = v8;
  *(v9 + 168) = v0;

  v10 = *(v2 + 48);
  if (v0)
  {
    v11 = sub_1000672B0;
  }

  else
  {
    v11 = sub_100066D04;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100066D04()
{
  v1 = *(v0 + 160);
  objc_opt_self();
  sub_100003F24();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 160);
    v5 = [v3 statusCode];
    v6 = *(v0 + 160);
    if (v5 != 200)
    {
      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      v14 = *(v0 + 128);
      v15 = *(v0 + 104);
      v16 = *(v0 + 72);
      v17 = *(v0 + 80);
      v87 = *(v0 + 120);
      v18 = *(v0 + 48);
      v19 = [v3 statusCode];
      sub_1000264A0();
      swift_allocError();
      *v20 = v19;
      *(v20 + 8) = 0;
      swift_willThrow();

      sub_10006738C();
      v21 = sub_1000680A8();
      v14(v21);
      [v12 finishTasksAndInvalidate];

      (v14)(v87, v17);
LABEL_14:
      v45 = *(v18 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask);
      *(v18 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask) = 0;

      v46 = *(v18 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction);
      *(v18 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction) = 0;
      swift_unknownObjectRelease();
      v48 = *(v0 + 112);
      v47 = *(v0 + 120);
      v50 = *(v0 + 96);
      v49 = *(v0 + 104);

      sub_100001D4C();
      goto LABEL_15;
    }
  }

  v7 = *(v0 + 168);
  v8 = *(v0 + 104);
  Data.init(contentsOf:options:)();
  if (v7)
  {
LABEL_13:
    v37 = *(v0 + 160);
    v39 = *(v0 + 136);
    v38 = *(v0 + 144);
    v40 = *(v0 + 120);
    v41 = *(v0 + 128);
    v42 = *(v0 + 104);
    v43 = *(v0 + 72);
    v44 = *(v0 + 80);
    v18 = *(v0 + 48);
    sub_10006738C();

    v41(v42, v44);
    [v38 finishTasksAndInvalidate];

    v41(v40, v44);
    goto LABEL_14;
  }

  v9 = type metadata accessor for PropertyListDecoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100067B50();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:format:)();
  v22 = *(v0 + 16);
  v23 = *(v0 + 24);
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);
  v88 = Data.init(base64Encoded:options:)();
  v27 = v26;
  v28 = Data.init(base64Encoded:options:)();
  v30 = v29;

  if (v27 >> 60 == 15 || v30 >> 60 == 15)
  {
    sub_1000264A0();
    swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 1;
    swift_willThrow();

    v33 = sub_1000680A8();
    sub_100022E50(v33, v34);
    sub_100022E50(v88, v27);
    v35 = sub_100005BF0();
    sub_100005954(v35, v36);
    goto LABEL_13;
  }

  v53 = *(v0 + 176);

  v54 = sub_100005BF0();
  sub_100005954(v54, v55);
  if ((v53 & 1) == 0)
  {
    sub_100015054();
    if (!sub_100067F50())
    {
      v71 = *(v0 + 144);
      v80 = *(v0 + 160);
      v82 = *(v0 + 128);
      v84 = *(v0 + 136);
      v86 = *(v0 + 120);
      v72 = *(v0 + 104);
      v73 = *(v0 + 80);
      v78 = *(v0 + 72);
      v18 = *(v0 + 48);
      sub_1000264A0();
      swift_allocError();
      *v74 = 1;
      *(v74 + 8) = 1;
      swift_willThrow();
      v75 = sub_100015054();
      sub_100005954(v75, v76);
      sub_100005954(v28, v30);
      sub_10006738C();

      v82(v72, v73);
      [v71 finishTasksAndInvalidate];

      v82(v86, v73);
      goto LABEL_14;
    }
  }

  v56 = *(v0 + 96);
  v57 = *(v0 + 56);
  v58 = *(v0 + 64);
  v59 = *(v0 + 48);
  sub_10000F2FC();
  Data.write(to:options:)();
  v60 = *(v0 + 160);
  v61 = *(v0 + 136);
  v79 = v60;
  v81 = *(v0 + 128);
  v83 = *(v0 + 120);
  v85 = *(v0 + 144);
  v62 = *(v0 + 104);
  v77 = *(v0 + 112);
  v63 = *(v0 + 96);
  v65 = *(v0 + 72);
  v64 = *(v0 + 80);
  v66 = *(v0 + 48);
  v67 = sub_100015054();
  sub_100005954(v67, v68);
  sub_100005954(v28, v30);
  v81(v63, v64);
  sub_10006738C();

  v81(v62, v64);
  [v85 finishTasksAndInvalidate];

  v81(v83, v64);
  v69 = *(v66 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask);
  *(v66 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask) = 0;

  v70 = *(v66 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction);
  *(v66 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction) = 0;
  swift_unknownObjectRelease();

  sub_100001D4C();
LABEL_15:

  return v51();
}

uint64_t sub_1000672B0()
{
  sub_100004F30();
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[10];
  v5 = v0[6];
  [v1 finishTasksAndInvalidate];

  v6 = sub_10000534C();
  v3(v6);
  v7 = *(v5 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask);
  *(v5 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask) = 0;

  v8 = *(v5 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction);
  *(v5 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction) = 0;
  swift_unknownObjectRelease();
  v9 = v0[21];
  v11 = v0[14];
  v10 = v0[15];
  v13 = v0[12];
  v12 = v0[13];

  sub_100001D4C();

  return v14();
}

void sub_10006738C()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v16 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v16];

  v5 = v16;
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10008DDF8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000050E4(v8, qword_100095B38);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000053A0(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "failed to remove temporary storebag download: %{public}s", v11, 0xCu);
      sub_100005284(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_100067604(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000228D4(&unk_10008F390, &qword_10006EED0);
  sub_100001D80(v4);
  v6 = *(v5 + 64);
  sub_100003EC8();
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  if (qword_10008DDF8 != -1)
  {
    sub_1000020EC();
  }

  v10 = type metadata accessor for Logger();
  sub_1000050E4(v10, qword_100095B38);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_100004D20();
    v14 = sub_100004F18();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000053A0(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "evicting storebag %{public}s from cache", v13, 0xCu);
    sub_100005284(v14);
    sub_10000C704();
    sub_100001D1C();
  }

  sub_10000277C();
  sub_100045688();
  sub_100005000(v9, &unk_10008F390, &qword_10006EED0);
  return swift_endAccess();
}

uint64_t sub_1000677B0()
{
  v1 = OBJC_IVAR____TtC13rtcreportingd13StorebagCache_location;
  v2 = type metadata accessor for URL();
  sub_100003C44(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_cache);

  v5 = *(v0 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask);

  v6 = *(v0 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100067840()
{
  sub_1000677B0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100067894()
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

uint64_t sub_100067948()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_1000679C4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

unint64_t sub_100067A3C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100067A60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 104);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1000478A8;
  sub_100008E44();

  return sub_100066994(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100067B44(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100067B50()
{
  result = qword_100090250;
  if (!qword_100090250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090250);
  }

  return result;
}

void sub_100067BA4(uint64_t a1)
{
  if (*(a1 + 16) && (sub_1000228D4(&qword_10008F8C0, &qword_10006FBD0), sub_100003F24(), v2 = static _SetStorage.allocate(capacity:)(), v3 = v2, (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(a1 + 16))
    {
      v7 = (a1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      v10 = v3[5];
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._finalize()();
      sub_100005B84();
      v13 = ~v12;
      while (1)
      {
        v14 = v11 & v13;
        v15 = (v11 & v13) >> 6;
        v16 = *(v6 + 8 * v15);
        v17 = 1 << (v11 & v13);
        if ((v17 & v16) == 0)
        {
          break;
        }

        v18 = (v3[6] + 16 * v14);
        v19 = *v18 == v9 && v18[1] == v8;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_16;
        }

        v11 = v14 + 1;
      }

      *(v6 + 8 * v15) = v17 | v16;
      v20 = (v3[6] + 16 * v14);
      *v20 = v9;
      v20[1] = v8;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_19;
      }

      v3[2] = v23;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

void sub_100067D28(unint64_t a1)
{
  v1 = a1;
  if (sub_100059CFC(a1))
  {
    sub_1000228D4(&unk_100090290, &qword_10006FBC0);
    sub_100003F24();
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v26 = sub_100059CF8(v1);
  if (v26)
  {
    v3 = 0;
    v4 = v2 + 7;
    v24 = v1;
    v25 = v1 & 0xC000000000000001;
    v23 = v1 + 32;
    while (1)
    {
      sub_100067A3C(v3, v25 == 0, v1);
      if (v25)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v23 + 8 * v3);
      }

      v6 = __OFADD__(v3, 1);
      v7 = v3 + 1;
      if (v6)
      {
        break;
      }

      v27 = v7;
      v8 = v2[5];
      type metadata accessor for Client();
      sub_100003A18();
      sub_10006801C(&qword_10008E898, v9);
      sub_100005BF0();
      dispatch thunk of Hashable._rawHashValue(seed:)();
      sub_100005B84();
      v12 = ~v11;
      while (1)
      {
        v13 = v10 & v12;
        v14 = (v10 & v12) >> 6;
        v15 = v4[v14];
        v16 = 1 << (v10 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        v17 = *(v2[6] + 8 * v13);
        sub_100003A18();
        sub_10006801C(&unk_1000902A0, v18);

        v19 = Identifiable<>.id.getter();
        v20 = Identifiable<>.id.getter();

        if (v19 == v20)
        {

          goto LABEL_17;
        }

        v10 = v13 + 1;
      }

      v4[v14] = v16 | v15;
      *(v2[6] + 8 * v13) = v5;
      v21 = v2[2];
      v6 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v6)
      {
        goto LABEL_20;
      }

      v2[2] = v22;
LABEL_17:
      v3 = v27;
      v1 = v24;
      if (v27 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

BOOL sub_100067F50()
{
  if (qword_10008DD20 != -1)
  {
    swift_once();
  }

  v0 = qword_10008E4B8;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = Data._bridgeToObjectiveC()().super.isa;
  v3 = SecKeyVerifySignature(v0, kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA1, isa, v2, 0);

  return v3 != 0;
}

uint64_t sub_10006801C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100003F24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000680B4(uint64_t a1)
{
  sub_1000026BC(v1, 1, 1, a1);

  return sub_100009658(v3, v2 + 16);
}

void sub_100068110()
{
  v1 = v0[29];
  v2 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[39];
  v7 = v0[40];
}

uint64_t sub_100068130(uint64_t a1)
{
  *(v2 + 144) = a1;
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100068150()
{
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
}

uint64_t XPCObject.obj.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = sub_100001EDC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100001EAC();
  v10 = v9 - v8;
  v11 = type metadata accessor for XPCObject();
  v12 = sub_100003C44(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100001EAC();
  v17 = (v16 - v15);
  v18 = sub_100007C1C();
  sub_10004AC88(v18, v19);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v20 = xpc_BOOL_create(*v17);
      goto LABEL_13;
    case 3u:
      v20 = xpc_int64_create(*v17);
      goto LABEL_13;
    case 4u:
      v20 = xpc_uint64_create(*v17);
      goto LABEL_13;
    case 5u:
      v20 = xpc_double_create(*v17);
      goto LABEL_13;
    case 6u:
      v20 = xpc_date_create(*v17);
      goto LABEL_13;
    case 7u:
      v29 = *v17;
      v28 = v17[1];
      switch(v28 >> 62)
      {
        case 1uLL:
          v36 = v29 >> 32;
          if (v29 >> 32 < v29)
          {
            __break(1u);
          }

          v35 = v29;
          goto LABEL_20;
        case 2uLL:
          v35 = *(v29 + 16);
          v36 = *(v29 + 24);
LABEL_20:
          sub_100068F08(v35, v36);
          goto LABEL_21;
        case 3uLL:
          memset(uuid, 0, 14);
          v30 = 0;
          goto LABEL_17;
        default:
          *uuid = *v17;
          *&uuid[8] = v28;
          uuid[10] = BYTE2(v28);
          uuid[11] = BYTE3(v28);
          uuid[12] = BYTE4(v28);
          v30 = BYTE6(v28);
          uuid[13] = BYTE5(v28);
LABEL_17:
          xpc_data_create(uuid, v30);
LABEL_21:
          v37 = sub_100003EB0();
          sub_100005954(v37, v28);
          break;
      }

      return v1;
    case 8u:
      v31 = *v17;
      v32 = v17[1];
      v33 = String.utf8CString.getter();

      xpc_string_create((v33 + 32));
      sub_100003EB0();

      return v1;
    case 9u:
      (*(v5 + 32))(v10, v17, v2);
      *uuid = UUID.uuid.getter();
      *&uuid[8] = v21;
      uuid[10] = v22;
      uuid[11] = v23;
      uuid[12] = v24;
      uuid[13] = v25;
      uuid[14] = v26;
      uuid[15] = v27;
      v1 = xpc_uuid_create(uuid);
      (*(v5 + 8))(v10, v2);
      return v1;
    case 0xDu:
      v20 = xpc_null_create();
LABEL_13:
      v1 = v20;
      break;
    default:
      v1 = *v17;
      break;
  }

  return v1;
}

BOOL static XPCObject.== infix(_:_:)()
{
  v0 = XPCObject.obj.getter();
  v1 = XPCObject.obj.getter();
  v2 = xpc_equal(v0, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

xpc_object_t RTCXPCDictionary.init(dictionaryLiteral:)(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v3 = sub_100001D80(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000286C();
  v53 = v6 - v7;
  __chkstk_darwin(v8);
  v56 = v46 - v9;
  v10 = sub_1000228D4(&qword_100090378, &unk_100070A28);
  v11 = sub_100001EDC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000286C();
  v52 = v16 - v17;
  v19 = __chkstk_darwin(v18);
  v21 = (v46 - v20);
  v22 = __chkstk_darwin(v19);
  v24 = (v46 - v23);
  __chkstk_darwin(v22);
  v51 = (v46 - v25);
  empty = xpc_dictionary_create_empty();
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = v10[12];
    v28 = *(v13 + 80);
    v46[1] = a1;
    v47 = v24;
    v29 = a1 + ((v28 + 32) & ~v28);
    v48 = *(v13 + 72);
    v49 = v27;
    v50 = v21;
    do
    {
      v55 = v26;
      v30 = v51;
      sub_100068F90(v29, v51, &qword_100090378, &unk_100070A28);
      v31 = v30[1];
      v32 = v10[12];
      *v24 = *v30;
      v24[1] = v31;
      sub_100004254(v30 + v49, v24 + v32);
      sub_100068F90(v24, v21, &qword_100090378, &unk_100070A28);
      v34 = *v21;
      v33 = v21[1];
      v35 = v52;
      sub_100068F90(v24, v52, &qword_100090378, &unk_100070A28);
      v36 = *(v35 + 8);

      v37 = v56;
      v38 = v10;
      sub_100004254(v35 + v10[12], v56);
      type metadata accessor for XPCObject();
      v39 = sub_100003EB0();
      sub_1000026BC(v39, 0, 1, v10);
      v40 = v37;
      v41 = v53;
      sub_100068F90(v40, v53, &qword_10008F360, &qword_100070A20);
      if (sub_100002694(v41, 1, v10) == 1)
      {
        sub_100005000(v41, &qword_10008F360, &qword_100070A20);
        v10 = 0;
      }

      else
      {
        XPCObject.obj.getter();
        v42 = sub_100003EB0();
        sub_10002E5EC(v42);
      }

      v43 = v38[12];
      v44 = String.utf8CString.getter();

      xpc_dictionary_set_value(empty, (v44 + 32), v10);
      v10 = v38;
      swift_unknownObjectRelease();
      sub_100005000(v56, &qword_10008F360, &qword_100070A20);
      v24 = v47;
      sub_100005000(v47, &qword_100090378, &unk_100070A28);

      v21 = v50;
      sub_10002E5EC(v50 + v43);
      v29 += v48;
      v26 = v55 - 1;
    }

    while (v55 != 1);
  }

  return empty;
}

uint64_t RTCXPCDictionary.subscript.setter(uint64_t a1)
{
  v3 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v4 = sub_100001D80(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *v1;
  sub_100068F90(a1, &v14 - v7, &qword_10008F360, &qword_100070A20);
  v10 = type metadata accessor for XPCObject();
  if (sub_100002694(v8, 1, v10) == 1)
  {
    sub_100005000(v8, &qword_10008F360, &qword_100070A20);
    v11 = 0;
  }

  else
  {
    v11 = XPCObject.obj.getter();
    sub_10002E5EC(v8);
  }

  sub_100007C1C();
  v12 = String.utf8CString.getter();

  xpc_dictionary_set_value(v9, (v12 + 32), v11);
  swift_unknownObjectRelease();
  sub_100005000(a1, &qword_10008F360, &qword_100070A20);
}

uint64_t RTCXPCDictionary.keys.getter(void *a1)
{
  count = xpc_dictionary_get_count(a1);
  v3 = _swiftEmptyArrayStorage;
  if (!swift_isUniquelyReferenced_nonNull_native() || count > _swiftEmptyArrayStorage[3] >> 1)
  {
    if (_swiftEmptyArrayStorage[2] > count)
    {
      v4 = _swiftEmptyArrayStorage[2];
    }

    sub_100020328();
    v3 = v5;
  }

  v13 = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100068FF0;
  *(v7 + 24) = v6;
  aBlock[4] = sub_10000B070;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A6E8;
  aBlock[3] = &unk_100088D28;
  v8 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t sub_100068BC0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = String.init(cString:)();
  v6 = v5;
  sub_100069138();
  v7 = *(*a3 + 16);
  sub_100069184(v7);
  v8 = *a3;
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  return 1;
}

void (*RTCXPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = sub_100038588(0x28uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  sub_100001D80(v8);
  v10 = *(v9 + 64);
  v7[3] = sub_100038588(v10);
  v11 = sub_100038588(v10);
  v7[4] = v11;
  v12 = *v3;
  sub_100007C1C();
  v13 = String.utf8CString.getter();
  v14 = xpc_dictionary_get_value(v12, (v13 + 32));

  XPCObject.init(_:)(v14, v11);
  return sub_100068D14;
}

void sub_100068D14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v8 = sub_100007C1C();
    sub_100068F90(v8, v9, &qword_10008F360, &qword_100070A20);

    RTCXPCDictionary.subscript.setter(v3);
    sub_100005000(v4, &qword_10008F360, &qword_100070A20);
  }

  else
  {
    v10 = (*a1)[1];

    RTCXPCDictionary.subscript.setter(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Bool __swiftcall RTCXPCDictionary.contains(key:)(Swift::String key)
{
  v2 = v1;
  v3 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v4 = sub_100001D80(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = String.utf8CString.getter();
  v10 = xpc_dictionary_get_value(v2, (v9 + 32));

  XPCObject.init(_:)(v10, v8);
  v11 = type metadata accessor for XPCObject();
  LOBYTE(v10) = sub_100002694(v8, 1, v11) != 1;
  sub_100005000(v8, &qword_10008F360, &qword_100070A20);
  return v10;
}

xpc_object_t sub_100068EE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = RTCXPCDictionary.init(dictionaryLiteral:)(a1);
  *a2 = result;
  return result;
}

char *sub_100068F08(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  v5 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = __DataStorage._length.getter();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v5)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return xpc_data_create(v5, v10);
}

uint64_t sub_100068F90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000228D4(a3, a4);
  sub_100003C44(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100068FF8()
{
  v0 = sub_1000690CC();
  if (v1 <= 0x3F)
  {
    v2 = type metadata accessor for UUID();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v0;
}

unint64_t sub_1000690CC()
{
  result = qword_100090400;
  if (!qword_100090400)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100090400);
  }

  return result;
}

void sub_100069138()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_100020328();
    *v0 = v4;
  }
}

void sub_100069184(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_100020328();
    *v1 = v2;
  }
}

uint64_t XPCError.errorDescription.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return String.init(cString:)();
  }

  else
  {
    return sub_100004814();
  }
}

unsigned __int8 *XPCIncomingConnection.entitlementValue(forKey:)@<X0>(uint64_t a1@<X8>)
{
  String.utf8CString.getter();
  v2 = xpc_connection_copy_entitlement_value();

  return XPCObject.init(_:)(v2, a1);
}

uint64_t XPCIncomingConnection.makeConnection(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3, _xpc_connection_s *a4)
{
  type metadata accessor for XPCConnection();
  v8 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  XPCConnection.init(conn:targetQ:delegate:)(a4, a1, a2, a3);
  return v8;
}

uint64_t XPCConnection.__allocating_init(conn:targetQ:delegate:)(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_100005274();
  v8 = swift_allocObject();
  XPCConnection.init(conn:targetQ:delegate:)(a1, a2, a3, a4);
  return v8;
}

uint64_t XPCConnection.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}

uint64_t XPCConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*XPCConnection.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_100038588(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1000695CC;
}

void sub_1000695CC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

uint64_t XPCConnection.__allocating_init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  sub_100005274();
  v12 = swift_allocObject();
  XPCConnection.init(machService:targetQ:listen:delegate:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *XPCConnection.init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v6[4] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = String.utf8CString.getter();
  v12 = a3;

  mach_service = xpc_connection_create_mach_service((v11 + 32), v12, v10);

  sub_100004530();
  v6[4] = a6;
  swift_unknownObjectWeakAssign();
  v6[2] = mach_service;
  v6[5] = v12;
  v14 = swift_unknownObjectRetain();
  xpc_connection_set_target_queue(v14, v12);
  sub_100009A00();
  sub_100002120();
  v19 = v15;
  v20 = &unk_100088D98;
  v16 = _Block_copy(aBlock);

  xpc_connection_set_event_handler(mach_service, v16);
  _Block_release(v16);
  xpc_connection_activate(mach_service);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

void *XPCConnection.init(conn:targetQ:delegate:)(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = 0;
  swift_unknownObjectWeakInit();
  v4[2] = a1;
  sub_100004530();
  v4[4] = a4;
  swift_unknownObjectWeakAssign();
  v4[5] = a2;
  swift_unknownObjectRetain();
  v8 = a2;
  xpc_connection_set_target_queue(a1, v8);
  sub_100009A00();
  sub_100002120();
  v13 = v9;
  v14 = &unk_100088DC0;
  v10 = _Block_copy(aBlock);

  xpc_connection_set_event_handler(a1, v10);
  _Block_release(v10);
  xpc_connection_activate(a1);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v4;
}

uint64_t XPCConnection.sendWithReply(_:)(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return _swift_task_switch(sub_100069980, 0, 0);
}

uint64_t sub_100069980()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v2 + 16);
  v5 = *(v2 + 40);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_100069A94;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000011, 0x80000001000732C0, sub_100069DF0, v6, &type metadata for RTCXPCDictionary);
}

uint64_t sub_100069A94()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_100069BCC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_100069BB0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100069BCC()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_100069C30(uint64_t a1, _xpc_connection_s *a2, void *a3, uint64_t a4, NSObject *a5)
{
  v9 = sub_1000228D4(&unk_1000904F0, &qword_100070D40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = sub_100069FC4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100001658;
  aBlock[3] = &unk_100088E60;
  v16 = _Block_copy(aBlock);

  xpc_connection_send_message_with_reply(a2, a3, a5, v16);
  _Block_release(v16);
}

uint64_t sub_100069E00(void *a1)
{
  if (xpc_get_type(a1) == &_xpc_type_error)
  {
    sub_100069F50();
    swift_allocError();
    *v3 = a1;
    swift_unknownObjectRetain();
    sub_1000228D4(&unk_1000904F0, &qword_100070D40);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1000228D4(&unk_1000904F0, &qword_100070D40);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t XPCConnection.auditToken.getter()
{
  v1 = *(v0 + 16);
  xpc_connection_get_audit_token();
  return 0;
}

unint64_t sub_100069F50()
{
  result = qword_100090430;
  if (!qword_100090430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090430);
  }

  return result;
}

uint64_t sub_100069FC4(void *a1)
{
  v2 = *(*(sub_1000228D4(&unk_1000904F0, &qword_100070D40) - 8) + 80);

  return sub_100069E00(a1);
}

Swift::Int sub_10006A054(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10006A0D4(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

RTCUtility::XPCMessage::MessageType_optional sub_10006A118@<W0>(Swift::Int64 *a1@<X0>, RTCUtility::XPCMessage::MessageType_optional *a2@<X8>)
{
  result.value = XPCMessage.MessageType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void *XPCMessage.init(ty:payload:)(unsigned __int8 a1, void *a2)
{
  v4 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = xpc_int64_create(a1);
  XPCObject.init(_:)(v11, v10);
  sub_100019DF4(v10, v8);
  v12 = type metadata accessor for XPCObject();
  if (sub_100002694(v8, 1, v12) == 1)
  {
    sub_100062450(v8);
    v13 = 0;
  }

  else
  {
    v13 = XPCObject.obj.getter();
    sub_10002E5EC(v8);
  }

  v14 = String.utf8CString.getter();
  xpc_dictionary_set_value(a2, (v14 + 32), v13);
  swift_unknownObjectRelease();
  sub_100062450(v10);

  return a2;
}

uint64_t XPCMessage.description.getter(void *a1, char a2)
{
  v47 = type metadata accessor for XPCObject();
  v45 = *(v47 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v47);
  isUniquelyReferenced_nonNull_native = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v44 - v9;
  v52 = 0;
  v53 = 0xE000000000000000;
  LOBYTE(v51) = a2;
  _print_unlocked<A, B>(_:_:)();
  v11._countAndFlagsBits = 2683;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v46 = a1;
  v12 = RTCXPCDictionary.keys.getter(a1);
  v13 = 0;
  v48 = *(v12 + 16);
  v14 = &_swiftEmptyDictionarySingleton;
  v49 = v12;
  v15 = (v12 + 40);
  while (1)
  {
    if (v48 == v13)
    {

      v38 = Dictionary.description.getter();
      v40 = v39;

      v41._countAndFlagsBits = v38;
      v41._object = v40;
      String.append(_:)(v41);

      v42._countAndFlagsBits = 125;
      v42._object = 0xE100000000000000;
      String.append(_:)(v42);
      return v52;
    }

    if (v13 >= *(v49 + 16))
    {
      break;
    }

    v50 = v13;
    v16 = *(v15 - 1);
    v17 = *v15;
    v18 = v15;
    v19 = String.utf8CString.getter();

    v20 = xpc_dictionary_get_value(v46, (v19 + 32));

    XPCObject.init(_:)(v20, v10);
    if (sub_100002694(v10, 1, v47) == 1)
    {
      goto LABEL_18;
    }

    sub_100004254(v10, isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v14;
    v21 = sub_100003BC0();
    v23 = v14[2];
    v24 = (v22 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_16;
    }

    v26 = v21;
    v27 = v22;
    sub_1000228D4(&qword_100090500, &qword_100070D50);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
    {
      v28 = sub_100003BC0();
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v26 = v28;
    }

    if (v27)
    {

      v14 = v51;
      v30 = sub_100009A24();
      sub_10006A630(v30, v31);
    }

    else
    {
      v14 = v51;
      v51[(v26 >> 6) + 8] |= 1 << v26;
      v32 = (v14[6] + 16 * v26);
      *v32 = v16;
      v32[1] = v17;
      v33 = sub_100009A24();
      sub_100004254(v33, v34);
      v35 = v14[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_17;
      }

      v14[2] = v37;
    }

    v15 = v18 + 2;
    v13 = v50 + 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10006A630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006A698()
{
  result = qword_100090508;
  if (!qword_100090508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090508);
  }

  return result;
}

uint64_t sub_10006A6EC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006A72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XPCMessage.MessageType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
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

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
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

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t dispatch thunk of SingleValueDecodingContainer.decode(_:)()
{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

uint64_t dispatch thunk of SingleValueEncodingContainer.encode(_:)()
{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}