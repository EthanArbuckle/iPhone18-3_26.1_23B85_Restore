char *sub_100018590(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003998(&qword_1000DC538, &qword_1000AAF80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_10001868C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v6 = &v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_10008BE9C(0, v5, v6);
    v7 = sub_100018DE4(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_100018F70(v9, v5, sub_10001B884);
  }

  return v7;
}

uint64_t sub_10001882C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003998(&qword_1000DC448, &qword_1000AAEE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_10008BE9C(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100018A88(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Sport();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100003998(&qword_1000DC4F0, &qword_1000AAF38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

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
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_10008BE9C(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10001BA4C(&qword_1000DC4E0, 255, &type metadata accessor for Sport);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100018DE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v25 = *(a3 + 16);
  v23 = result;
  v24 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v22 = v5;
LABEL_3:
    if (v6 == v25)
    {
      goto LABEL_19;
    }

    if (v6 >= v25)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v24 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v26 = v6 + 1;
    v11 = *(a4 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = ~(-1 << *(a4 + 32));
    do
    {
      v14 = v12 & v13;
      v15 = (v12 & v13) >> 6;
      v16 = 1 << (v12 & v13);
      if ((v16 & *(v7 + 8 * v15)) == 0)
      {

        v6 = v26;
        goto LABEL_3;
      }

      v17 = (*(a4 + 48) + 16 * v14);
      if (*v17 == v10 && v17[1] == v9)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v14 + 1;
    }

    while ((v19 & 1) == 0);

    v20 = v23[v15];
    v23[v15] = v20 | v16;
    v6 = v26;
    if ((v20 & v16) != 0)
    {
      goto LABEL_3;
    }

    v5 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_19:

      return sub_100018FEC(v23, a2, v22, a4);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_100018F70(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_100018FEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100003998(&qword_1000DC448, &qword_1000AAEE0);
  sub_10001C418();
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_100019204(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v3;

  v19 = sub_10001BF24();
  sub_10001A000(v19, v20, v21, isUniquelyReferenced_nonNull_native);
  *v3 = v23;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_100019348(char *a1, char *a2)
{
  v25 = a1;
  v4 = type metadata accessor for Sport();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10001BA4C(&qword_1000DC4E0, 255, &type metadata accessor for Sport);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_10001A168(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10001BA4C(&qword_1000DC4E8, 255, &type metadata accessor for Sport);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_100019618(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10001ACD8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_100019744()
{
  sub_10000AE68();
  v2 = v1;
  if (*(v1 + 16))
  {
    v43[0] = v0;
    v3 = *(v0 + 16);
    v41 = v0 + 32;
    v4 = v1 + 56;
    v5 = 0;

    v40 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v41 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      v9 = *(v2 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();
      v11 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = 1 << (v10 & v11);
        if ((v14 & *(v4 + 8 * v13)) == 0)
        {

          v3 = v40;
          goto LABEL_3;
        }

        v15 = (*(v2 + 48) + 16 * v12);
        v16 = *v15 == v8 && v15[1] == v7;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v10 = v12 + 1;
      }

      v17 = v5;
      v43[1] = v5;

      v19 = *(v2 + 32);
      v20 = ((1 << v19) + 63) >> 6;
      v21 = 8 * v20;
      if ((v19 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v35 = swift_slowAlloc();
          sub_10001B220(v35, v20, (v2 + 56), v20, v2, v12, v43);
          sub_10001C1DC();

          sub_10000B008();

          goto LABEL_35;
        }
      }

      v36[0] = v20;
      v36[1] = v36;
      __chkstk_darwin(v18);
      v22 = v36 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v22, (v2 + 56), v21);
      v23 = *&v22[8 * v13] & ~v14;
      v38 = v22;
      *&v22[8 * v13] = v23;
      v24 = *(v2 + 16) - 1;
      v12 = v42;
      v40 = *(v42 + 16);
      v20 = v17;
      while (1)
      {
        v37 = v24;
        v39 = v17;
LABEL_16:
        while (2)
        {
          if (v20 == v40)
          {
            sub_100018FEC(v38, v36[0], v37, v2);
            goto LABEL_33;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v20 >= *(v12 + 16))
          {
            goto LABEL_37;
          }

          v25 = (v41 + 16 * v20);
          v14 = *v25;
          v13 = v25[1];
          ++v20;
          v26 = *(v2 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v27 = Hasher._finalize()();
          v21 = ~(-1 << *(v2 + 32));
          do
          {
            v28 = v27 & v21;
            v29 = (v27 & v21) >> 6;
            v30 = 1 << (v27 & v21);
            if ((v30 & *(v4 + 8 * v29)) == 0)
            {

              v12 = v42;
              v17 = v39;
              goto LABEL_16;
            }

            v31 = (*(v2 + 48) + 16 * v28);
            if (*v31 == v14 && v31[1] == v13)
            {
              break;
            }

            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v27 = v28 + 1;
          }

          while ((v33 & 1) == 0);

          v34 = v38[v29];
          v38[v29] = v34 & ~v30;
          v16 = (v34 & v30) == 0;
          v12 = v42;
          v17 = v39;
          if (v16)
          {
            continue;
          }

          break;
        }

        v24 = v37 - 1;
        if (__OFSUB__(v37, 1))
        {
          break;
        }

        v17 = v20;
        if (v37 == 1)
        {

          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {
  }

LABEL_35:
  sub_10000AE50();
}

void *sub_100019B28(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v49 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v51 = v12;
    v52 = v7;
    v53 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = v5[5];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v21 = Hasher._finalize()();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v23 = (v5[6] + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v55 = v49;
            v56 = v16;
            v57 = v11;
            v3 = v52;
            v12 = v53;
            v54[0] = v53;
            v54[1] = v52;

            v26 = *(v5 + 32);
            v46 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v46;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v47 = &v45;
              __chkstk_darwin(v25);
              v7 = &v45 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = v5[2];
              v50 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v51;
              while (1)
              {
                v48 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = v5[5];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v36 = Hasher._finalize()();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v52;
                    v12 = v53;
                    v30 = v51;
                    goto LABEL_24;
                  }

                  v38 = (v5[6] + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v50[v7];
                v50[v7] = v41 & ~v8;
                v3 = v52;
                v12 = v53;
                v30 = v51;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v48 - 1;
                if (__OFSUB__(v48, 1))
                {
                  __break(1u);
                }

                if (v48 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_100018FEC(v50, v46, v48, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v43 = swift_slowAlloc();
            v44 = sub_10001B198(v43, v46, v5 + 7, v46, v5, v7, v54);

            v49 = v55;
            v5 = v44;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v52;
        v14 = v53;
        v12 = v51;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_10001B8A0();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

Swift::Int sub_10001A000(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10001882C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10001A788(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_10001A3FC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_10001A168(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = type metadata accessor for Sport();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100018A88(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_10001A9BC(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_10001BA4C(&qword_1000DC4E0, 255, &type metadata accessor for Sport);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_10001BA4C(&qword_1000DC4E8, 255, &type metadata accessor for Sport);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_10001A554();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6, v9);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *sub_10001A3FC()
{
  v1 = v0;
  sub_100003998(&qword_1000DC448, &qword_1000AAEE0);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

void *sub_10001A554()
{
  v1 = v0;
  v2 = type metadata accessor for Sport();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DC4F0, &qword_1000AAF38);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
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
LABEL_17:
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
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_10001A788(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003998(&qword_1000DC448, &qword_1000AAEE0);
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10001A9BC(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Sport();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100003998(&qword_1000DC4F0, &qword_1000AAF38);
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
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_10001BA4C(&qword_1000DC4E0, 255, &type metadata accessor for Sport);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10001ACD8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10001A3FC();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_10001B2A8(v9);
  *v2 = v19;
  return v16;
}

unint64_t *sub_10001AE00(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v26 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v27 = a5;
  while (1)
  {
    v25 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_100018FEC(v26, a2, v25, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    v14 = *(a3 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v15 = Hasher._finalize()();
    v16 = ~(-1 << *(a3 + 32));
    do
    {
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = 1 << (v15 & v16);
      if ((v19 & *(v8 + 8 * v18)) == 0)
      {

        a5 = v27;
        goto LABEL_3;
      }

      v20 = (*(a3 + 48) + 16 * v17);
      if (*v20 == v13 && v20[1] == v12)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v15 = v17 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = v26[v18];
    v26[v18] = v23 & ~v19;
    a5 = v27;
    if ((v23 & v19) == 0)
    {
      goto LABEL_3;
    }

    v7 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_20;
    }

    if (v25 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *sub_10001AFAC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_100018FEC(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_10001B198(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_10001AFAC(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t *sub_10001B220(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_10001AE00(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t sub_10001B2A8(unint64_t result)
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
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10001B478(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10001B4E4(uint64_t a1, void *a2, SEL *a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a3];
}

uint64_t sub_10001B558(void *a1)
{
  v2 = [a1 enabledTopics];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10001B5BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_10001BDC0(0, &qword_1000DC438, PKPublicChannel_ptr);
  Array._bridgeToObjectiveC()();
  sub_10001C61C();

  sub_10001C400();
  v8 = String._bridgeToObjectiveC()();
  [a4 *a5];
}

void sub_10001B668(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  [a4 subscribeToChannel:a1 forTopic:v6];
}

void sub_10001B6D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  [a4 unsubscribeFromChannel:a1 forTopic:v6];
}

void sub_10001B738(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  [a4 getRegisteredChannelsForTopic:v6 withCompletion:a3];
}

uint64_t sub_10001B798(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001B7F8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_10001C53C();
}

uint64_t sub_10001B854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_100018DE4(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_10001B8B4()
{
  swift_unknownObjectWeakDestroy();
  sub_10001C594();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10001B8E8()
{
  v1 = sub_100003998(&qword_1000DC458, &qword_1000AAEF0);
  sub_10000AC48(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10001B9AC()
{
  v1 = sub_100003998(&qword_1000DC458, &qword_1000AAEF0);
  sub_10001C3C4(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = sub_10000AF64();

  return sub_100013840(v5, v6, v7);
}

uint64_t sub_10001BA34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001BA4C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001BB44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003998(a2, a3);
  sub_10001C2AC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10001BB9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001BBE4()
{
  sub_10001C524();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100011504;
  sub_10001C2BC();
  sub_10001C74C();

  return sub_10001010C(v7, v8, v9, v10, v11);
}

uint64_t sub_10001BC94()
{
  sub_10001C594();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10001BCD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001BD10()
{
  sub_10001BF48();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100011504;

  return sub_100010658(v3, v4, v5, v6);
}

uint64_t sub_10001BDC0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10001BE00(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_10001BE28()
{

  return swift_once();
}

uint64_t sub_10001BE84()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10001BEDC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_10001BEF8()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
}

uint64_t sub_10001BF80()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_10001BF90(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_10001BFD4(unint64_t *a1)
{

  return sub_10000A6FC(a1, v2, v1);
}

uint64_t sub_10001C010()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10001C088()
{

  return swift_once();
}

uint64_t sub_10001C0A8()
{

  return swift_once();
}

void sub_10001C0C8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v2 + 16);
  v2 += 16;
  v4 = a1 + ((*(v2 + 64) + 32) & ~*(v2 + 64));
  v5 = *(v2 + 56);
}

uint64_t sub_10001C0FC(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 48);
  return result;
}

char *sub_10001C10C(uint64_t a1)
{

  return sub_100017B68(0, a1 & ~(a1 >> 63), 0);
}

id sub_10001C144()
{
  v5 = (*(v0 + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v3)))));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v1 + 176);

  return objc_allocWithZone(v8);
}

uint64_t sub_10001C17C()
{
}

uint64_t sub_10001C198(int a1)
{
  sub_100008E2C(v1, a1 ^ 1u, 1, v2);

  return sub_10003F3A8(v1);
}

uint64_t sub_10001C1E8()
{
  *(v1 + 16) = v0;
  v3 = *(v1 + 48);
}

void sub_10001C230()
{
  *(v4 + 16) = v0;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t sub_10001C24C()
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 120);
  v5 = *v2;
  return v0;
}

uint64_t sub_10001C268@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_100016F80(v2 + a2, v4, v3 + a2, a1);
}

void sub_10001C2CC(uint64_t a1@<X8>)
{
  *(a1 + 16) = v1;
  v5 = a1 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

BOOL sub_10001C2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 + 120);

  return sub_100019204(va, 5000257, 0xE300000000000000);
}

uint64_t sub_10001C340()
{
  v1 = v0[12];
  v2 = v0[4];
  v3 = v0[5];
  return v0[10];
}

uint64_t sub_10001C3A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = result;
  return result;
}

void sub_10001C3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(a15 + 16) = v15;
  v19 = a15 + 16 * v18;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
}

char *sub_10001C430()
{
  v2 = *(v0 + 16) + 1;

  return sub_100017B68(0, v2, 1);
}

char *sub_10001C454@<X0>(unint64_t a1@<X8>)
{

  return sub_100017B68((a1 > 1), v1, 1);
}

uint64_t sub_10001C478()
{

  return swift_allocObject();
}

uint64_t sub_10001C490()
{

  return swift_slowAlloc();
}

uint64_t sub_10001C4AC()
{
}

uint64_t sub_10001C4D0()
{

  return swift_slowAlloc();
}

uint64_t sub_10001C4E8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10001C668()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
}

uint64_t sub_10001C674(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = result;
  v4[4] = a2;
  return result;
}

void sub_10001C6D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *sub_10001C6F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100016E48(v5, a2, a3, a4, v4);
}

uint64_t sub_10001C710(uint64_t a1)
{
  *(v1 + 96) = a1;
}

uint64_t sub_10001C728(uint64_t a1)
{
  *(v1 + 72) = a1;
}

void sub_10001C78C(uint64_t a1)
{
  sub_10001D884(319, &qword_1000DC708, type metadata accessor for ApiRequestMetrics);
  if (v2 <= 0x3F)
  {
    type metadata accessor for URLRequest();
    if (v3 <= 0x3F)
    {
      sub_10001D884(319, &qword_1000DC710, sub_10001D4A0);
      if (v4 <= 0x3F)
      {
        sub_10000D988(319, &qword_1000DC720);
        if (v5 <= 0x3F)
        {
          v6 = *(a1 + 16);
          swift_checkMetadataState();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10001C8A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v48 = type metadata accessor for Date();
  v3 = *(v48 - 8);
  v4 = *(v3 + 84);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  v47 = type metadata accessor for URL();
  v6 = *(v47 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v51 = v5;
  if (v5 > v8)
  {
    v8 = v5;
  }

  v49 = v8;
  if (v8 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  v50 = v8;
  v9 = v8 - 1;
  v10 = type metadata accessor for URLRequest();
  result = a2;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3 + 16);
  v16 = *(v15 - 8);
  if (v14 <= *(v16 + 84))
  {
    v17 = *(v16 + 84);
  }

  else
  {
    v17 = v14;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = v17;
  }

  if (v4)
  {
    v19 = *(v3 + 64);
  }

  else
  {
    v19 = *(v3 + 64) + 1;
  }

  v20 = *(v3 + 80);
  v21 = *(v6 + 80);
  if (v7)
  {
    v22 = *(v6 + 64);
  }

  else
  {
    v22 = *(v6 + 64) + 1;
  }

  v23 = *(v12 + 80);
  v24 = *(v16 + 80);
  v25 = *(v16 + 64);
  if (!a2)
  {
    return result;
  }

  v26 = v7;
  v27 = ((((((((((v19 + ((v19 + v20 + ((v19 + v20 + ((v22 + v20 + ((v19 + v21 + ((v20 + 24 + ((((v19 + v20 + ((v19 + v20 + ((v20 + 8 + ((((v19 + 7 + ((v19 + v20) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v20)) & ~v20) + v19) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v21)) & ~v20)) & ~v20)) & ~v20) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v23 + 16;
  v28 = *(*(v10 - 8) + 64) + 7;
  v29 = v24 + 16;
  v30 = a1;
  if (a2 > v18)
  {
    v31 = (v29 + ((((v28 + (v27 & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v24;
    v32 = v31 + v25;
    v33 = 8 * (v31 + v25);
    if ((v31 + v25) > 3)
    {
      goto LABEL_28;
    }

    v35 = ((a2 - v18 + ~(-1 << v33)) >> v33) + 1;
    if (HIWORD(v35))
    {
      v34 = *(a1 + v32);
      if (v34)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v35 <= 0xFF)
      {
        if (v35 < 2)
        {
          goto LABEL_45;
        }

LABEL_28:
        v34 = *(a1 + v32);
        if (!*(a1 + v32))
        {
          goto LABEL_45;
        }

LABEL_35:
        v36 = (v34 - 1) << v33;
        if (v32 > 3)
        {
          v36 = 0;
        }

        if (v32)
        {
          if (v32 <= 3)
          {
            v37 = v32;
          }

          else
          {
            v37 = 4;
          }

          switch(v37)
          {
            case 2:
              v38 = *a1;
              break;
            case 3:
              v38 = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              v38 = *a1;
              break;
            default:
              v38 = *a1;
              break;
          }
        }

        else
        {
          v38 = 0;
        }

        return v18 + (v38 | v36) + 1;
      }

      v34 = *(a1 + v32);
      if (*(a1 + v32))
      {
        goto LABEL_35;
      }
    }
  }

LABEL_45:
  if (v9 == v18)
  {
    if (v51 == v50)
    {
      v39 = v4;
      if (v4 < 2)
      {
        return 0;
      }

      v40 = v48;
    }

    else
    {
      v42 = (((v19 + v20 + ((v19 + v20 + ((v20 + 8 + ((((v19 + 7 + ((a1 + v19 + v20) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v20)) & ~v20) + v19) & 0xFFFFFFFFFFFFFFF8;
      if (v49 <= 0x7FFFFFFE)
      {
        v43 = *(v42 + 16);
        if (v43 >= 0xFFFFFFFF)
        {
          LODWORD(v43) = -1;
        }

        if ((v43 + 1) >= 2)
        {
LABEL_66:
          result = (v43 - 1);
          if (v43 > 1)
          {
            return result;
          }
        }

        return 0;
      }

      if (v26 < 2)
      {
        return 0;
      }

      v30 = (v19 + v21 + ((v20 + 24 + v42) & ~v20)) & ~v21;
      v39 = v26;
      v40 = v47;
    }

    v46 = sub_100008B84(v30, v39, v40);
    if (v46 >= 2)
    {
      LODWORD(v43) = v46 - 1;
      goto LABEL_66;
    }

    return 0;
  }

  v41 = (a1 + v27) & ~v23;
  if (v13 == v18)
  {
    v15 = v10;
LABEL_69:

    return sub_100008B84(v41, v13, v15);
  }

  v44 = ((v28 + v41) & 0xFFFFFFFFFFFFFFF8);
  if (v17 > 0x7FFFFFFE)
  {
    v41 = (v29 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v24;
    v13 = *(v16 + 84);
    goto LABEL_69;
  }

  v45 = *v44;
  if (v45 >= 0xFFFFFFFF)
  {
    LODWORD(v45) = -1;
  }

  if ((v45 + 1) >= 2)
  {
    return v45;
  }

  else
  {
    return 0;
  }
}

void sub_10001CDF8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v50 = type metadata accessor for Date();
  v4 = *(v50 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v47 = type metadata accessor for URL();
  v7 = *(v47 - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v6 > v9)
  {
    v9 = v6;
  }

  v49 = v9;
  if (v9 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  v52 = v9;
  v10 = v9 - 1;
  v11 = type metadata accessor for URLRequest();
  v12 = 0;
  v51 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v48 = *(a4 + 16);
  v16 = *(v48 - 8);
  v17 = *(v16 + 84);
  if (v15 <= v17)
  {
    v18 = *(v16 + 84);
  }

  else
  {
    v18 = v15;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  v53 = v10;
  v20 = *(v4 + 64);
  if (!v5)
  {
    ++v20;
  }

  v21 = *(v4 + 80);
  v22 = v20 + v21;
  v23 = *(v7 + 80);
  if (v8)
  {
    v24 = *(v7 + 64);
  }

  else
  {
    v24 = *(v7 + 64) + 1;
  }

  v25 = ((v22 + ((v22 + ((v24 + v21 + ((v20 + v23 + ((v21 + 24 + ((((v20 + v21 + ((v20 + v21 + ((v21 + 8 + ((((v20 + 7 + ((v20 + v21) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & ~v21)) & ~v21) + v20) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & ~v23)) & ~v21)) & ~v21)) & ~v21) + v20;
  v26 = *(v13 + 80);
  v27 = ((((((((((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v26 + 16;
  v28 = *(v13 + 64) + 7;
  v29 = *(v16 + 80);
  v30 = v29 + 16;
  v31 = ((v29 + 16 + ((((v28 + (v27 & ~v26)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v29) + *(*(v48 - 8) + 64);
  v32 = 8 * v31;
  if (a3 > v19)
  {
    if (v31 <= 3)
    {
      v33 = ((a3 - v19 + ~(-1 << v32)) >> v32) + 1;
      if (HIWORD(v33))
      {
        v12 = 4;
      }

      else
      {
        if (v33 < 0x100)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        if (v33 >= 2)
        {
          v12 = v34;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  v35 = v12;
  v36 = a2;
  if (v19 < a2)
  {
    v37 = ~v19 + a2;
    if (v31 < 4)
    {
      v38 = (v37 >> v32) + 1;
      if (v31)
      {
        v41 = v37 & ~(-1 << v32);
        bzero(a1, v31);
        if (v31 == 3)
        {
          *a1 = v41;
          a1[2] = BYTE2(v41);
        }

        else if (v31 == 2)
        {
          *a1 = v41;
        }

        else
        {
          *a1 = v37;
        }
      }
    }

    else
    {
      bzero(a1, v31);
      *a1 = v37;
      v38 = 1;
    }

    switch(v35)
    {
      case 1:
        a1[v31] = v38;
        return;
      case 2:
        *&a1[v31] = v38;
        return;
      case 3:
        goto LABEL_78;
      case 4:
        *&a1[v31] = v38;
        return;
      default:
        return;
    }
  }

  v39 = ~v21;
  v40 = ~v29;
  switch(v35)
  {
    case 1:
      a1[v31] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    case 2:
      *&a1[v31] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    case 3:
LABEL_78:
      __break(1u);
      JUMPOUT(0x10001D414);
    case 4:
      *&a1[v31] = 0;
      goto LABEL_46;
    default:
LABEL_46:
      if (!a2)
      {
        return;
      }

LABEL_47:
      if (v53 != v19)
      {
        v42 = &a1[v27] & ~v26;
        if (v14 == v19)
        {
          v43 = v51;
        }

        else
        {
          v45 = ((v28 + v42) & 0xFFFFFFFFFFFFFFF8);
          if (v18 <= 0x7FFFFFFE)
          {
            if (a2 > 0x7FFFFFFE)
            {
              *v45 = 0;
              *v45 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v45 = a2;
            }

            return;
          }

          v42 = (v30 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) & v40;
          v14 = v17;
          v43 = v48;
        }

        goto LABEL_71;
      }

      if (a2 < v52)
      {
        if (v6 == v52)
        {
          v36 = a2 + 2;
          v42 = a1;
          v14 = v5;
          v43 = v50;
        }

        else
        {
          v46 = (((v22 + ((v22 + ((v21 + 8 + ((((v20 + 7 + (&a1[v22] & v39)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v39)) & v39)) & v39) + v20) & 0xFFFFFFFFFFFFFFF8;
          if (v49 <= 0x7FFFFFFE)
          {
            if (a2 > 0x7FFFFFFD)
            {
              *(v46 + 8) = 0;
              *(v46 + 16) = 0;
              *(v46 + 8) = a2 - 2147483646;
            }

            else
            {
              *(v46 + 16) = a2 + 1;
            }

            return;
          }

          if (v8 < 2)
          {
            return;
          }

          v42 = (v20 + v23 + ((v21 + 24 + v46) & v39)) & ~v23;
          v36 = a2 + 2;
          v14 = v8;
          v43 = v47;
        }

LABEL_71:

        sub_100008E2C(v42, v36, v14, v43);
        return;
      }

      v44 = (((((((((v25 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8;
      if (v44 != -16)
      {
        bzero(a1, (v44 + 16));
        *a1 = a2 - v52;
      }

      return;
  }
}

uint64_t type metadata accessor for ApiRequestMetrics()
{
  result = qword_1000DC780;
  if (!qword_1000DC780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001D4A0()
{
  result = qword_1000DC718;
  if (!qword_1000DC718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DC718);
  }

  return result;
}

uint64_t sub_10001D4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_100008B84(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
    v8 = a1 + *(a3 + 56);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 48) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_10001D604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 48) + 8) = a2;
      return result;
    }

    v9 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
    v10 = a1 + *(a4 + 56);
  }

  return sub_100008E2C(v10, a2, a2, v9);
}

uint64_t sub_10001D6EC()
{
  sub_10001D884(319, &qword_1000DC790, &type metadata accessor for Date);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_10000D988(319, &qword_1000DC108);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_10001D884(319, &qword_1000DC798, &type metadata accessor for URL);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_10000D988(319, &qword_1000DC100);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_10000D988(319, &unk_1000DC7A0);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_10001D884(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10001D8D8(uint64_t a1, void *a2)
{
  v2 = 0xD000000000000013;
  if (a2)
  {
    _StringGuts.grow(_:)(40);

    v5._countAndFlagsBits = a1;
    v5._object = a2;
    String.append(_:)(v5);
    return 0xD000000000000026;
  }

  return v2;
}

uint64_t sub_10001D984(uint64_t a1, void *a2)
{
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = 23;
  v6 = 1;
  if (!a2)
  {
    v6 = 2;
  }

  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = v6;
  *(inited + 72) = 24;
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x80000001000B13B0;
  *(inited + 112) = 25;
  v7 = sub_10001D8D8(a1, a2);
  v5[18] = &type metadata for String;
  v5[15] = v7;
  v5[16] = v8;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t sub_10001DA90()
{
  result = qword_1000DD740;
  if (!qword_1000DD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD740);
  }

  return result;
}

__n128 sub_10001DAE4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10001DAF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001DB40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10001DB94(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10001DBAC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_10001DBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v125 = a6;
  v114 = a5;
  v9 = type metadata accessor for URLError.Code();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_10000ADA0();
  v121 = v12 - v11;
  sub_10001F268();
  v13 = type metadata accessor for URLError();
  v14 = sub_10000AC48(v13);
  v122 = v15;
  v123 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_10000ADA0();
  v120 = v19 - v18;
  sub_10001F268();
  v20 = type metadata accessor for URLComponents();
  v21 = sub_10000AC48(v20);
  v118 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_10000ADA0();
  v117 = v26 - v25;
  v27 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v124 = &v108 - v29;
  sub_10001F268();
  v30 = type metadata accessor for URL();
  v31 = sub_10000AC48(v30);
  v116 = v32;
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  v113 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v115 = &v108 - v37;
  sub_10001F268();
  v38 = type metadata accessor for URLQueryItem();
  v130 = sub_10000AC48(v38);
  v131 = v39;
  v41 = *(v40 + 64);
  __chkstk_darwin(v130);
  sub_10000ADA0();
  v44 = v43 - v42;
  v45 = sub_100003998(&qword_1000DC830, &qword_1000AB1F0);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v48 = &v108 - v47;
  URL.absoluteString.getter();
  URLComponents.init(string:)();

  if (!sub_100008B84(v48, 1, v20))
  {

    URLComponents.path.setter();
  }

  v49 = v48;
  if (!sub_100008B84(v48, 1, v20))
  {
    v112 = v20;
    if (a4)
    {
      v50 = *(a4 + 16);
      if (v50)
      {
        v109 = v48;
        v110 = v30;
        v111 = v6;
        v135 = _swiftEmptyArrayStorage;
        sub_100017B88();
        v51 = v135;
        v54 = sub_10001F0AC(a4);
        v55 = 0;
        v56 = a4 + 64;
        v128 = a4 + 64;
        v129 = v131 + 32;
        v126 = v52;
        v127 = v50;
        v119 = a4 + 72;
        while ((v54 & 0x8000000000000000) == 0 && v54 < 1 << *(a4 + 32))
        {
          v57 = v54 >> 6;
          if ((*(v56 + 8 * (v54 >> 6)) & (1 << v54)) == 0)
          {
            goto LABEL_41;
          }

          if (*(a4 + 36) != v52)
          {
            goto LABEL_42;
          }

          v133 = v55;
          v134 = v52;
          v132 = v53;
          v58 = (*(a4 + 48) + 16 * v54);
          v59 = v44;
          v60 = *v58;
          v61 = v58[1];
          v62 = (*(a4 + 56) + 16 * v54);
          v63 = a4;
          v64 = *v62;
          v65 = v62[1];

          URLQueryItem.init(name:value:)();

          v135 = v51;
          v66 = v51[2];
          if (v66 >= v51[3] >> 1)
          {
            sub_100017B88();
            v51 = v135;
          }

          v51[2] = v66 + 1;
          (*(v131 + 32))(v51 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v66, v59, v130);
          v67 = 1 << *(v63 + 32);
          if (v54 >= v67)
          {
            goto LABEL_43;
          }

          v44 = v59;
          v56 = v128;
          v68 = *(v128 + 8 * v57);
          if ((v68 & (1 << v54)) == 0)
          {
            goto LABEL_44;
          }

          a4 = v63;
          if (*(v63 + 36) != v134)
          {
            goto LABEL_45;
          }

          v69 = v68 & (-2 << (v54 & 0x3F));
          if (v69)
          {
            v67 = __clz(__rbit64(v69)) | v54 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v70 = v57 << 6;
            v71 = v57 + 1;
            v72 = (v119 + 8 * v57);
            while (v71 < (v67 + 63) >> 6)
            {
              v74 = *v72++;
              v73 = v74;
              v70 += 64;
              ++v71;
              if (v74)
              {
                sub_10001F0EC(v54, v134, v132 & 1);
                v67 = __clz(__rbit64(v73)) + v70;
                goto LABEL_23;
              }
            }

            sub_10001F0EC(v54, v134, v132 & 1);
          }

LABEL_23:
          v53 = 0;
          v55 = v133 + 1;
          v54 = v67;
          v52 = v126;
          if (v133 + 1 == v127)
          {
            v7 = v111;
            v30 = v110;
            v49 = v109;
            goto LABEL_25;
          }
        }

        goto LABEL_40;
      }
    }

LABEL_25:
    URLComponents.queryItems.setter();
    v20 = v112;
  }

  if (sub_100008B84(v49, 1, v20))
  {
    v75 = v124;
    sub_100008E2C(v124, 1, 1, v30);
LABEL_29:
    sub_10001EF70(v75, &unk_1000DD7B0, &qword_1000AC150);
    static URLError.Code.badURL.getter();
    sub_100007E20(_swiftEmptyArrayStorage);
    sub_10001EF18();
    v80 = v120;
    v81 = v123;
    _BridgedStoredNSError.init(_:userInfo:)();
    URLError._nsError.getter();
    (*(v122 + 8))(v80, v81);
    swift_willThrow();
    sub_10001EF70(v49, &qword_1000DC830, &qword_1000AB1F0);
    return;
  }

  v76 = v117;
  v77 = v118;
  (*(v118 + 16))(v117, v49, v20);
  v78 = v124;
  URLComponents.url.getter();
  v79 = v76;
  v75 = v78;
  (*(v77 + 8))(v79, v20);
  if (sub_100008B84(v78, 1, v30) == 1)
  {
    goto LABEL_29;
  }

  v83 = v115;
  v82 = v116;
  (*(v116 + 32))(v115, v75, v30);
  sub_10001EED4();
  v84 = *(v82 + 16);
  v85 = v113;
  v84(v113, v83, v30);
  v86 = sub_100005A5C(v85);
  [v86 setTimeoutInterval:10.0];
  v111 = v7;
  v110 = v30;
  v87 = String._bridgeToObjectiveC()();

  [v86 setHTTPMethod:v87];
  v134 = v86;

  v89 = *(v125 + 64);
  v88 = v125 + 64;
  v90 = *(v125 + 32);
  sub_10001F24C();
  v93 = v92 & v91;
  v95 = (v94 + 63) >> 6;

  v96 = 0;
  if (!v93)
  {
    goto LABEL_32;
  }

  do
  {
    v97 = v49;
    v98 = v96;
LABEL_36:
    v99 = __clz(__rbit64(v93));
    v93 &= v93 - 1;
    v100 = (v98 << 10) | (16 * v99);
    v101 = (*(v125 + 48) + v100);
    v103 = *v101;
    v102 = v101[1];
    v104 = (*(v125 + 56) + v100);
    v105 = *v104;
    v106 = v104[1];

    v107 = String._bridgeToObjectiveC()();
    sub_100008118(v105, v106, v107, v134);

    v49 = v97;
  }

  while (v93);
LABEL_32:
  while (1)
  {
    v98 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      break;
    }

    if (v98 >= v95)
    {

      (*(v116 + 8))(v115, v110);
      sub_10001EF70(v49, &qword_1000DC830, &qword_1000AB1F0);
      return;
    }

    v93 = *(v88 + 8 * v98);
    ++v96;
    if (v93)
    {
      v97 = v49;
      v96 = v98;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_40:
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
}

void sub_10001E55C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = sub_10000AC48(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000ADA0();
  v12 = v11 - v10;
  sub_10001EED4();
  (*(v7 + 16))(v12, a1, v4);
  v13 = sub_100005A5C(v12);
  [v13 setTimeoutInterval:10.0];
  v14 = String._bridgeToObjectiveC()();
  [v13 setHTTPMethod:v14];
  v33 = v13;

  v15 = *(a2 + 64);
  v16 = *(a2 + 32);
  sub_10001F24C();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;

  v22 = 0;
  while (v19)
  {
    v23 = v22;
LABEL_7:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = (v23 << 10) | (16 * v24);
    v26 = (*(a2 + 48) + v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = (*(a2 + 56) + v25);
    v30 = *v29;
    v31 = v29[1];

    v32 = String._bridgeToObjectiveC()();
    sub_100008118(v30, v31, v32, v33);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return;
    }

    v19 = *(a2 + 64 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_10001E778()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10001E7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_10000BC8C(a1, aBlock);
  sub_100003998(&qword_1000DC838, &qword_1000AB1F8);
  v5 = swift_dynamicCast();
  if (v5)
  {
    v6 = v24;
    [v2 setAccount:v24];
  }

  __chkstk_darwin(v5);
  v7 = sub_10002F59C(sub_10001F0F8);
  v8 = v7;
  if (v9)
  {
    sub_10001F118(v7, 1);
    type metadata accessor for ApiAgentError();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v10 = [objc_allocWithZone(AMSMutablePromise) init];
    v11 = sub_10001EFD0(v8);
    if (v12 >> 60 == 15)
    {
      v13 = [v2 requestByEncodingRequest:v8 parameters:0];
      [v10 finishWithPromise:v13];
    }

    else
    {
      v14 = v11;
      v15 = v12;
      type metadata accessor for MescalSignature();
      v16 = sub_1000836F0();
      v17 = swift_allocObject();
      v17[2] = v8;
      v17[3] = v10;
      v17[4] = v3;
      aBlock[4] = sub_10001F16C;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001EE24;
      aBlock[3] = &unk_1000D0690;
      v18 = _Block_copy(aBlock);
      sub_10001F190(v8, 0);
      v19 = v10;
      v20 = v3;

      [v16 addFinishBlock:v18];
      _Block_release(v18);

      sub_10001F19C(v14, v15);
    }

    v21 = *(sub_100003998(&qword_1000DD780, &qword_1000AB208) + 48);
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001F118(v8, 0);
    *(a2 + v21) = v10;
  }

  sub_100003998(&qword_1000DC840, &qword_1000AB200);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10001EAA0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_100008614(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = v8();
  if (v3)
  {

    *a2 = v3;
  }

  else
  {
    v11 = v9;

    *a3 = v11;
  }

  return result;
}

void sub_10001EB48(void *a1, uint64_t a2, id a3, void *a4, void *a5)
{
  v10 = [a3 mutableCopy];
  if (v10)
  {
    v11 = v10;
    if (a1)
    {
      v12 = a1;
      v13 = [v12 base64EncodedStringWithOptions:0];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = String._bridgeToObjectiveC()();
      sub_10001F034(v14, v16, v17, v11);

      v28 = [a5 requestByEncodingRequest:v11 parameters:0];
      [a4 finishWithPromise:v28];

      return;
    }
  }

  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100007DE8(v18, qword_1000E6D48);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136315138;
    if (a2)
    {
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = v24;
    }

    else
    {
      v25 = 0xE300000000000000;
      v23 = 7104878;
    }

    v26 = sub_1000170D4(v23, v25, &v29);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Failed to sign request, error = %s", v21, 0xCu);
    sub_100008A94(v22);
  }

  v27 = [a5 requestByEncodingRequest:a3 parameters:0];
  [a4 finishWithPromise:v27];
}

void sub_10001EE24(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

unint64_t sub_10001EED4()
{
  result = qword_1000DC828;
  if (!qword_1000DC828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DC828);
  }

  return result;
}

unint64_t sub_10001EF18()
{
  result = qword_1000DBCE8;
  if (!qword_1000DBCE8)
  {
    type metadata accessor for URLError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBCE8);
  }

  return result;
}

uint64_t sub_10001EF70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003998(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10001EFD0(void *a1)
{
  v1 = [a1 HTTPBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10001F034(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 setValue:v6 forHTTPHeaderField:a3];
}

uint64_t sub_10001F0AC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_10001F0EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_10001F118(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10001F124()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10001F190(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10001F19C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008BAC(a1, a2);
  }

  return a1;
}

__n128 sub_10001F1B0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001F1BC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10001F1FC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10001F27C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_10001F2BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10001F338(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v12 = type metadata accessor for Date();
  sub_10000BD44();
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  sub_10000ADA0();
  v20 = v19 - v18;
  a5[3] = &type metadata for SubscriptionUnregisterOperation;
  a5[4] = &off_1000D12D0;
  v21 = swift_allocObject();
  *a5 = v21;
  sub_10000BC8C(v6, (v21 + 2));
  v22 = *(v6 + 40);
  sub_10000BC8C(v6 + 96, (v21 + 8));
  sub_10000BC8C(v6 + 136, (v21 + 13));
  v21[7] = v22;
  v21[18] = a1;
  v21[19] = a2;
  v21[20] = a3;
  v21[21] = a4;

  Date.init()();
  sub_10008C99C();
  v24 = v23;
  (*(v14 + 8))(v20, v12);
  v21[22] = v24;
  v25 = type metadata accessor for ActivityAuthorization();
  v26 = [objc_allocWithZone(v25) init];
  sub_1000499E0();
  v34[3] = v25;
  v34[4] = &off_1000D1900;
  v34[0] = v26;
  type metadata accessor for ActivityCapUtility();
  v27 = swift_allocObject();
  sub_10000B90C(v34, v25);
  sub_10000BD44();
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  sub_10000ADA0();
  v32 = sub_10001FB6C(v31);
  v33(v32);
  sub_10001FB84();
  v21[23] = v27;
}

uint64_t sub_10001F57C()
{
  sub_100008A94(v0 + 2);
  v1 = v0[7];

  sub_100008A94(v0 + 8);
  sub_100008A94(v0 + 13);
  v2 = v0[19];

  v3 = v0[21];

  v4 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10001F5E4(char a1)
{
  if (a1)
  {
    v2 = *(v1 + 176);
    if (sub_100066914())
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

void sub_10001F65C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000BD44();
  v32 = v7;
  v33 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10000ADA0();
  v12 = v11 - v10;
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  sub_10000ADA0();
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  sub_10000ADA0();
  v17 = *(v3 + 40);
  v18 = qword_1000DBA00;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_1000E6D10;
  a3[3] = &type metadata for SubscriptionRefreshStaleActivitiesOperation;
  a3[4] = &off_1000D3DF0;
  v20 = swift_allocObject();
  *a3 = v20;
  v20[8] = type metadata accessor for LiveActivityManager();
  v20[9] = &off_1000D1920;
  v20[10] = &off_1000D1910;
  v20[5] = v19;
  v21 = *(v3 + 48);
  sub_10000BC8C(v3 + 96, (v20 + 12));
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v17;
  v20[11] = v21;
  sub_10001FA6C();

  static DispatchQoS.unspecified.getter();
  v34[0] = &_swiftEmptyArrayStorage;
  sub_10001FAB0();
  sub_100003998(&qword_1000DC850, &qword_1000AB300);
  sub_10001FB08();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v32 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v33);
  v20[17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20[18] = 0x4072C00000000000;
  v22 = type metadata accessor for ActivityAuthorization();
  v23 = [objc_allocWithZone(v22) init];
  sub_1000499E0();
  v34[3] = v22;
  v34[4] = &off_1000D1900;
  v34[0] = v23;
  type metadata accessor for ActivityCapUtility();
  v24 = swift_allocObject();
  sub_10000B90C(v34, v22);
  sub_10000BD44();
  v26 = *(v25 + 64);
  __chkstk_darwin(v27);
  sub_10000ADA0();
  v29 = sub_10001FB6C(v28);
  v30(v29);
  sub_10001FB84();
  v20[19] = v24;
}

uint64_t sub_10001FA04()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_100008A94((v0 + 40));
  v3 = *(v0 + 88);

  sub_100008A94((v0 + 96));

  v4 = *(v0 + 152);

  return _swift_deallocObject(v0, 160, 7);
}

unint64_t sub_10001FA6C()
{
  result = qword_1000DC5D8;
  if (!qword_1000DC5D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DC5D8);
  }

  return result;
}

unint64_t sub_10001FAB0()
{
  result = qword_1000DC848;
  if (!qword_1000DC848)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC848);
  }

  return result;
}

unint64_t sub_10001FB08()
{
  result = qword_1000DC858;
  if (!qword_1000DC858)
  {
    sub_1000089A8(&qword_1000DC850, &qword_1000AB300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC858);
  }

  return result;
}

void sub_10001FB84()
{
  v8 = *v5;
  v4[5] = v0;
  v4[6] = v6;
  v4[2] = v8;
  v4[7] = v2;
  v4[8] = v3;
  sub_100008A94((v7 - 120));
}

uint64_t sub_10001FBBC()
{
  result = sub_10001FBE0();
  static Secrets.tempoAPIKey = result;
  qword_1000E6C10 = v1;
  return result;
}

uint64_t sub_10001FBE0()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v2 + 16) = 64;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  v9 = v2;
  sub_10001FFEC(0xD000000000000016, 0x80000001000B1490, 0xD000000000000016, 0x80000001000B1490, &v9);
  sub_10002011C(&off_1000CEFD8, v9);
  v4 = v3;

  v9 = v4;
  static String.Encoding.utf8.getter();
  sub_100003998(&qword_1000DC860, &qword_1000AB318);
  sub_1000203D0();
  v5 = String.init<A>(bytes:encoding:)();
  v7 = v6;

  if (v7)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t static Secrets.read(key:salt:)(uint64_t a1)
{

  v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v3 = sub_100020454(v2);
  sub_10002047C(v3);

  sub_10002011C(a1, v7);
  v5 = v4;

  return v5;
}

uint64_t *Secrets.tempoAPIKey.unsafeMutableAddressor()
{
  if (qword_1000DB968 != -1)
  {
    sub_100020434();
  }

  return &static Secrets.tempoAPIKey;
}

uint64_t static Secrets.tempoAPIKey.getter()
{
  if (qword_1000DB968 != -1)
  {
    sub_100020434();
  }

  swift_beginAccess();
  v0 = static Secrets.tempoAPIKey;

  return v0;
}

uint64_t static Secrets.tempoAPIKey.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1000DB968 != -1)
  {
    sub_100020434();
  }

  swift_beginAccess();
  static Secrets.tempoAPIKey = a1;
  qword_1000E6C10 = a2;
}

uint64_t (*static Secrets.tempoAPIKey.modify())()
{
  if (qword_1000DB968 != -1)
  {
    sub_100020434();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unsigned __int8 *sub_10001FF54@<X0>(const void *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, unsigned __int8 **a5@<X8>)
{
  if ((a3 & 0x1000000000000000) != 0)
  {
    v10 = String.UTF8View._foreignCount()();
    if (v10 < 0)
    {
      __break(1u);
    }

    v8 = v10;
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
LABEL_6:
      v8 = HIBYTE(a3) & 0xF;
      goto LABEL_7;
    }

    v8 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (HIDWORD(v8))
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  sub_100020244(0);
  result = CC_SHA512(a1, v8, (*a4 + 32));
  *a5 = result;
  return result;
}

unsigned __int8 *sub_10001FFEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {

    return 0;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v13[0] = a1;
    v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((a4 & 0x1000000000000000) != 0)
    {
      v12 = String.UTF8View._foreignCount()();
      if (v12 < 0)
      {
        __break(1u);
      }

      v10 = v12;
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        goto LABEL_12;
      }

      v10 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!HIDWORD(v10))
    {
LABEL_13:
      sub_100020244(0);
      a5 = CC_SHA512(v13, v10, (*a5 + 32));
LABEL_15:

      return a5;
    }

    __break(1u);
LABEL_12:
    v10 = HIBYTE(a4) & 0xF;
    goto LABEL_13;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v9 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v9 = _StringObject.sharedUTF8.getter();
  }

  sub_10001FF54(v9, a3, a4, a5, &v14);
  if (!v5)
  {
    a5 = v14;
    goto LABEL_15;
  }

  return a5;
}

void sub_10002011C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v5 = *(a1 + 16);
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v6 + 16) = v2;
    bzero((v6 + 32), v2);
    if (v2 > *(a2 + 16))
    {
      __break(1u);
    }

    else
    {
      v7 = 32;
      do
      {
        *(v6 + v7) = *(a2 + v7) ^ *(a1 + v7);
        ++v7;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t static Secrets.generate(key:salt:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1000202A8(a1, a2);

  v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v4 = sub_100020454(v3);
  sub_10002047C(v4);

  sub_10002011C(v2, v8);
  v6 = v5;

  return v6;
}

void sub_100020244(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v4 = *(v3 + 16);
    }

    sub_1000165F4();
    v3 = v5;
  }

  *v1 = v3;
}

char *sub_1000202A8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_1000173C4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_1000203D0()
{
  result = qword_1000DC868;
  if (!qword_1000DC868)
  {
    sub_1000089A8(&qword_1000DC860, &qword_1000AB318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC868);
  }

  return result;
}

uint64_t sub_100020434()
{

  return swift_once();
}

uint64_t sub_100020454(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
}

unsigned __int8 *sub_10002047C(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_10001FFEC(v2, v1, v2, v1, va);
}

uint64_t sub_1000204A4()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = sub_10002677C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  type metadata accessor for ContainerConstants();
  static ContainerConstants.defaultSuiteName.getter();
  v6 = objc_allocWithZone(NSUserDefaults);
  v7 = sub_100026868();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 stringForKey:v9];

  if (!v10)
  {

    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10000E304();
  v11 = StringProtocol.trimmingCharacters(in:)();
  v13 = v12;

  v14 = *(v3 + 8);
  v15 = sub_10000AF64();
  v16(v15);

  v17 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v17 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    return 0;
  }

  return v11;
}

uint64_t sub_10002065C()
{
  type metadata accessor for ContainerConstants();
  static ContainerConstants.tempoUrlUserDefaultKey.getter();
  v0 = String._bridgeToObjectiveC()();

  qword_1000E6C18 = v0;
  unk_1000E6C20 = 0xD00000000000001FLL;
  qword_1000E6C28 = 0x80000001000B16A0;
  return result;
}

NSString sub_1000206C4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E6C30 = result;
  unk_1000E6C38 = 0xD000000000000020;
  qword_1000E6C40 = 0x80000001000B1640;
  return result;
}

uint64_t sub_100020714()
{
  v0 = String._bridgeToObjectiveC()();
  sub_100003998(&qword_1000DCA30, &qword_1000AB418);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000AA5B0;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0x427363697274656DLL;
  *(v1 + 40) = 0xEB00000000657361;
  v2 = Dictionary.init(dictionaryLiteral:)();
  *(v1 + 88) = sub_100003998(&qword_1000DC480, &unk_1000AB420);
  *(v1 + 64) = v2;
  sub_10001BDC0(0, &qword_1000DCA18, NSDictionary_ptr);
  result = NSDictionary.init(dictionaryLiteral:)();
  qword_1000E6C48 = v0;
  qword_1000E6C50 = result;
  return result;
}

NSString sub_10002081C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E6C58 = result;
  unk_1000E6C60 = 0x53552D6E65;
  qword_1000E6C68 = 0xE500000000000000;
  return result;
}

uint64_t sub_100020870()
{
  v0 = String._bridgeToObjectiveC()();
  sub_100003998(&qword_1000DC9E0, &qword_1000AB3E8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000AA5B0;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0x53552D6E65;
  *(v1 + 40) = 0xE500000000000000;
  sub_10001BDC0(0, &qword_1000DC9C0, NSArray_ptr);
  result = NSArray.init(arrayLiteral:)();
  qword_1000E6C70 = v0;
  *algn_1000E6C78 = result;
  return result;
}

NSString sub_100020930()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E6C80 = result;
  *algn_1000E6C88 = 5;
  return result;
}

NSString sub_100020970()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E6C90 = result;
  *algn_1000E6C98 = 10;
  return result;
}

NSString sub_1000209B0()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E6CA0 = result;
  *algn_1000E6CA8 = 172800;
  return result;
}

NSString sub_1000209F4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E6CB0 = result;
  byte_1000E6CB8 = 1;
  return result;
}

void *sub_100020A38()
{
  type metadata accessor for BagProvider();
  swift_allocObject();
  result = sub_100020B04();
  qword_1000E6CC0 = result;
  return result;
}

id sub_100020A74()
{
  v0 = String._bridgeToObjectiveC()();

  sub_10000AF64();
  v1 = String._bridgeToObjectiveC()();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

void *sub_100020B04()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100003998(&qword_1000DC558, &unk_1000AAFA0);
  v94 = *(v3 - 8);
  v95 = v3;
  v4 = *(v94 + 64);
  __chkstk_darwin(v3);
  v93 = &v89 - v5;
  v6 = sub_100003998(&qword_1000DC950, &qword_1000AB3A8);
  v91 = *(v6 - 8);
  v92 = v6;
  v7 = *(v91 + 64);
  __chkstk_darwin(v6);
  v90 = &v89 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v89 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003998(&qword_1000DC958, &qword_1000AB3B0);
  v100 = *(v12 - 8);
  v101 = v12;
  v13 = *(v100 + 64);
  __chkstk_darwin(v12);
  v99 = &v89 - v14;
  v15 = sub_100003998(&qword_1000DC960, &qword_1000AB3B8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v89 - v18;
  sub_10001BDC0(0, &qword_1000DC968, AMSBag_ptr);
  v20 = sub_100020A74();
  v0[2] = v20;
  if (qword_1000DB970 != -1)
  {
    swift_once();
    v20 = v0[2];
  }

  v21 = qword_1000E6C18;
  v22 = qword_1000E6C20;
  v23 = qword_1000E6C28;
  v24 = v20;
  v25 = sub_1000217AC(v21, v22, v23, v24);

  v106 = v25;
  v26 = sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
  v98 = v2;
  v27 = v26;
  v103 = sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0);
  Publisher.map<A>(_:)();

  sub_10000A6FC(&qword_1000DC980, &qword_1000DC960, &qword_1000AB3B8);
  v28 = Publisher.eraseToAnyPublisher()();
  v96 = v9;
  v29 = *(v16 + 8);
  v97 = v16 + 8;
  v29(v19, v15);
  v1[3] = v28;
  v30 = v15;
  if (qword_1000DB978 != -1)
  {
    swift_once();
  }

  v31 = qword_1000E6C30;
  v32 = qword_1000E6C38;
  v33 = qword_1000E6C40;
  v34 = v1;
  v35 = v1[2];
  v36 = sub_1000217AC(v31, v32, v33, v35);

  v106 = v36;
  v102 = v27;
  Publisher.map<A>(_:)();

  v37 = Publisher.eraseToAnyPublisher()();
  v29(v19, v30);
  v34[4] = v37;
  if (qword_1000DB980 != -1)
  {
    swift_once();
  }

  v38 = qword_1000E6C48;
  v39 = qword_1000E6C50;
  v40 = v34[2];
  v41 = sub_100021E70(v38, v39, v40);

  v106 = v41;
  sub_100003998(&qword_1000DC988, &qword_1000AB3C8);
  sub_10000A6FC(&qword_1000DC990, &qword_1000DC988, &qword_1000AB3C8);
  v42 = v99;
  Publisher.map<A>(_:)();

  sub_10000A6FC(&qword_1000DC998, &qword_1000DC958, &qword_1000AB3B0);
  v43 = v101;
  v44 = Publisher.eraseToAnyPublisher()();
  (*(v100 + 8))(v42, v43);
  v34[5] = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  v46 = objc_allocWithZone(LSApplicationRecord);
  v47 = sub_100058D5C(0xD000000000000010, 0x80000001000B03C0, 0);
  if (v47)
  {
    sub_10001BDC0(0, &qword_1000DC9B0, NSBundle_ptr);
    v48 = [v47 URL];
    v49 = v89;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = sub_100022430(v49);
    if (v50)
    {
      v51 = v50;
      v52 = [v50 preferredLocalizations];

      v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v53 = 0;
    }

    if (qword_1000DB990 != -1)
    {
      swift_once();
    }

    v54 = qword_1000E6C70;
    v55 = *algn_1000E6C78;
    v56 = v34[2];
    v57 = sub_1000224CC(v54, v55, v56);
    v101 = v57;

    v106 = v57;
    v58 = swift_allocObject();
    *(v58 + 16) = v45;
    *(v58 + 24) = v53;

    sub_100003998(&qword_1000DC9B8, &qword_1000AB3D8);
    sub_10001BDC0(0, &qword_1000DC9C0, NSArray_ptr);
    sub_10000A6FC(&qword_1000DC9C8, &qword_1000DC9B8, &qword_1000AB3D8);
    v59 = v90;
    Publisher.map<A>(_:)();

    (*(v91 + 8))(v59, v92);
  }

  swift_beginAccess();
  v60 = *(v45 + 24);
  if (v60)
  {
    v104 = *(v45 + 16);
    v105 = v60;

    v61 = v93;
    Just.init(_:)();
    sub_10000A6FC(&qword_1000DC578, &qword_1000DC558, &unk_1000AAFA0);
    v62 = v95;
    v63 = Publisher.eraseToAnyPublisher()();
    (*(v94 + 8))(v61, v62);
  }

  else
  {
    if (qword_1000DB988 != -1)
    {
      swift_once();
    }

    v64 = qword_1000E6C58;
    v65 = unk_1000E6C60;
    v66 = qword_1000E6C68;
    v67 = v34[2];
    v68 = sub_1000217AC(v64, v65, v66, v67);

    v104 = v68;
    v63 = Publisher.eraseToAnyPublisher()();
  }

  v34[6] = v63;
  if (qword_1000DB998 != -1)
  {
    swift_once();
  }

  v69 = qword_1000E6C80;
  v70 = *algn_1000E6C88;
  v71 = v34[2];
  v72 = sub_100022830(v69, v70, v71);

  v104 = v72;
  sub_100003998(&qword_1000DC9A0, &qword_1000AB3D0);
  sub_10000A6FC(&qword_1000DC9A8, &qword_1000DC9A0, &qword_1000AB3D0);
  v73 = Publisher.eraseToAnyPublisher()();

  v34[7] = v73;
  if (qword_1000DB9A0 != -1)
  {
    swift_once();
  }

  v74 = qword_1000E6C90;
  v75 = *algn_1000E6C98;
  v76 = v34[2];
  v77 = sub_100022830(v74, v75, v76);

  v104 = v77;
  v78 = Publisher.eraseToAnyPublisher()();

  v34[8] = v78;
  if (qword_1000DB9A8 != -1)
  {
    swift_once();
  }

  v79 = qword_1000E6CA0;
  v80 = *algn_1000E6CA8;
  v81 = v34[2];
  v82 = sub_100022830(v79, v80, v81);

  v104 = v82;
  v83 = Publisher.eraseToAnyPublisher()();

  v34[9] = v83;
  if (qword_1000DB9B0 != -1)
  {
    swift_once();
  }

  v84 = qword_1000E6CB0;
  v85 = byte_1000E6CB8;
  v86 = v34[2];
  v87 = sub_100022CA4(v84, v85, v86);

  v34[10] = v87;

  return v34;
}

uint64_t sub_1000217AC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a2;
  v41 = a4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v42 = sub_100003998(&qword_1000DC558, &unk_1000AAFA0);
  v44 = *(v42 - 8);
  v13 = *(v44 + 64);
  __chkstk_darwin(v42);
  v15 = &v39 - v14;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = sub_1000204A4();
  v17 = v16;

  if (v17)
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100007DE8(v18, qword_1000E6D48);
    v19 = a1;

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v22 = 136315394;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = sub_1000170D4(v23, v24, v45);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = v43;
      *(v22 + 14) = sub_1000170D4(v43, v17, v45);
      _os_log_impl(&_mh_execute_header, v20, v21, "BagProvider: Successfully resolved preferred AMSBag(%s) value: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v26 = v43;
    }

    v45[0] = v26;
    v45[1] = v17;
    Just.init(_:)();
    sub_10000A6FC(&qword_1000DC578, &qword_1000DC558, &unk_1000AAFA0);
    v37 = v42;
    v36 = Publisher.eraseToAnyPublisher()();
    (*(v44 + 8))(v15, v37);
  }

  else
  {
    Date.init()();
    (*(v7 + 16))(v10, v12, v6);
    v27 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v28 = swift_allocObject();
    v29 = v40;
    v30 = v41;
    *(v28 + 2) = v41;
    *(v28 + 3) = a1;
    *(v28 + 4) = v29;
    *(v28 + 5) = a3;
    (*(v7 + 32))(&v28[v27], v10, v6);
    v31 = sub_100003998(&qword_1000DCA38, &qword_1000AB430);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = a1;
    v35 = v30;

    v45[0] = Future.init(_:)();
    sub_10000A6FC(&qword_1000DCA40, &qword_1000DCA38, &qword_1000AB430);
    v36 = Publisher.eraseToAnyPublisher()();

    (*(v7 + 8))(v12, v6);
  }

  return v36;
}

uint64_t sub_100021CC4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v11 = sub_10001C3C4(v10);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  v19 = *a1;
  v20 = a1[1];
  URL.init(string:)();
  v21 = type metadata accessor for URL();
  sub_1000268A0(v18);
  if (!v22)
  {
    return (*(*(v21 - 8) + 32))(a5, v18, v21);
  }

  if (*a2 != -1)
  {
    swift_once();
  }

  v23 = *a3;
  v24 = *a4;
  URL.init(string:)();
  result = sub_1000268A0(v16);
  if (v22)
  {
    __break(1u);
  }

  else
  {
    (*(*(v21 - 8) + 32))(a5, v16, v21);
    result = sub_1000268A0(v18);
    if (!v22)
    {
      return sub_1000261E8(v18, &unk_1000DD7B0, &qword_1000AC150);
    }
  }

  return result;
}

uint64_t sub_100021E70(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v23 - v11;
  Date.init()();
  (*(v7 + 16))(v10, v12, v6);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a1;
  *(v14 + 4) = a2;
  (*(v7 + 32))(&v14[v13], v10, v6);
  v15 = sub_100003998(&qword_1000DCA20, &qword_1000AB410);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = a3;
  v19 = a1;
  v20 = a2;
  v23[1] = Future.init(_:)();
  sub_10000A6FC(&qword_1000DCA28, &qword_1000DCA20, &qword_1000AB410);
  v21 = Publisher.eraseToAnyPublisher()();

  (*(v7 + 8))(v12, v6);
  return v21;
}

void sub_100022090(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (qword_1000DB980 != -1)
  {
    swift_once();
  }

  v4 = qword_1000E6C50;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    goto LABEL_16;
  }

  sub_10001BDC0(0, &qword_1000DCA18, NSDictionary_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v11 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_18;
  }

  v7 = v17;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v17 objectForKey:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {

LABEL_16:
    sub_1000261E8(&v21, &qword_1000DBD08, &qword_1000AA690);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v10 = *(&v17 + 1);
  v11 = v17;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v3 objectForKey:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {

    sub_1000261E8(&v19, &qword_1000DBD08, &qword_1000AA690);
LABEL_27:
    v21 = 0u;
    v22 = 0u;
LABEL_28:
    sub_1000261E8(&v21, &qword_1000DBD08, &qword_1000AA690);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_27;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [v16 objectForKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {

    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v11 = v19;

    v10 = *(&v19 + 1);
  }

LABEL_18:
  *a2 = v11;
  a2[1] = v10;
}

id sub_100022430(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t sub_1000224CC(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v23 - v11;
  Date.init()();
  (*(v7 + 16))(v10, v12, v6);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a1;
  *(v14 + 4) = a2;
  (*(v7 + 32))(&v14[v13], v10, v6);
  v15 = sub_100003998(&qword_1000DC9D0, &qword_1000AB3E0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = a3;
  v19 = a1;
  v20 = a2;
  v23[1] = Future.init(_:)();
  sub_10000A6FC(&qword_1000DC9D8, &qword_1000DC9D0, &qword_1000AB3E0);
  v21 = Publisher.eraseToAnyPublisher()();

  (*(v7 + 8))(v12, v6);
  return v21;
}

id sub_1000226EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = v4;

  return v4;
}

uint64_t sub_100022830(void *a1, uint64_t a2, void *a3)
{
  v39 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v12 = sub_100003998(&qword_1000DC9F8, &qword_1000AB3F8);
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v15 = &v38 - v14;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = sub_100023470();
  v17 = v16;

  if (v17)
  {
    Date.init()();
    (*(v6 + 16))(v9, v11, v5);
    v18 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = a3;
    *(v19 + 3) = a1;
    *(v19 + 4) = v39;
    (*(v6 + 32))(&v19[v18], v9, v5);
    v20 = sub_100003998(&qword_1000DCA00, &unk_1000AB400);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = a1;
    v24 = a3;
    v43 = Future.init(_:)();
    sub_10000A6FC(&qword_1000DCA08, &qword_1000DCA00, &unk_1000AB400);
    v25 = Publisher.eraseToAnyPublisher()();

    (*(v6 + 8))(v11, v5);
  }

  else
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100007DE8(v26, qword_1000E6D48);
    v27 = a1;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v30 = 136315394;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = sub_1000170D4(v32, v33, &v43);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2048;
      v35 = v40;
      *(v30 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v28, v29, "BagProvider: Successfully resolved preferred AMSBag(%s) value: %ld", v30, 0x16u);
      sub_100008A94(v31);
    }

    else
    {

      v35 = v40;
    }

    v43 = v35;
    Just.init(_:)();
    sub_10000A6FC(&qword_1000DCA10, &qword_1000DC9F8, &qword_1000AB3F8);
    v36 = v42;
    v25 = Publisher.eraseToAnyPublisher()();
    (*(v41 + 8))(v15, v36);
  }

  return v25;
}

uint64_t sub_100022CA4(void *a1, char a2, void *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v22 - v11;
  Date.init()();
  (*(v7 + 16))(v10, v12, v6);
  v13 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  (*(v7 + 32))(v14 + v13, v10, v6);
  v15 = sub_100003998(&qword_1000DC9E8, &qword_1000AB3F0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = a3;
  v19 = a1;
  v22[1] = Future.init(_:)();
  sub_10000A6FC(&qword_1000DC9F0, &qword_1000DC9E8, &qword_1000AB3F0);
  v20 = Publisher.eraseToAnyPublisher()();

  (*(v7 + 8))(v12, v6);
  return v20;
}

uint64_t sub_100022EC0()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_100022F08, 0, 0);
}

uint64_t sub_100022F08()
{
  if (qword_1000DB9B0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = qword_1000E6CB0;
  v3 = byte_1000E6CB8;
  v4 = *(v0[2] + 16);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100022FF0;

  return sub_1000230EC(v2, v3, v4);
}

uint64_t sub_100022FF0(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000230EC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 73) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = type metadata accessor for Date();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000231B0, 0, 0);
}

uint64_t sub_1000231B0()
{
  v1 = v0[3].i64[0];
  v2 = v0[4].i8[9];
  v7 = v0[1];
  Date.init()();
  v3 = swift_task_alloc();
  v0[3].i64[1] = v3;
  v3[1] = vextq_s8(v7, v7, 8uLL);
  v3[2].i8[0] = v2;
  v3[2].i64[1] = v1;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[4].i64[0] = v5;
  *v5 = v0;
  v5[1] = sub_1000232D4;

  return withCheckedContinuation<A>(isolation:function:_:)(&v0[4].u64[1], 0, 0, 0xD00000000000001FLL, 0x80000001000B16C0, sub_1000264E0, v3, &type metadata for Bool);
}

uint64_t sub_1000232D4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_1000233EC, 0, 0);
}

uint64_t sub_1000233EC()
{
  v1 = *(v0 + 72);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100023470()
{
  sub_10002680C();
  type metadata accessor for ContainerConstants();
  static ContainerConstants.defaultSuiteName.getter();
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100026868();
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_1000261E8(&v8, &qword_1000DBD08, &qword_1000AA690);
    return 0;
  }

  v2 = v1;
  sub_10000AF64();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_1000235A0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a5;
  v28 = a6;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  v17 = [a3 stringForKey:a4];
  (*(v13 + 16))(v15, a7, v12);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v13 + 32))(v20 + v18, v15, v12);
  v21 = (v20 + v19);
  v22 = v27;
  v23 = v28;
  *v21 = a4;
  v21[1] = v22;
  v21[2] = v23;
  v24 = (v20 + ((v19 + 31) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_100026368;
  v24[1] = v16;
  aBlock[4] = sub_100026448;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026744;
  aBlock[3] = &unk_1000D0BE0;
  v25 = _Block_copy(aBlock);
  v26 = a4;

  [v17 valueWithCompletion:v25];
  _Block_release(v25);
}

uint64_t sub_1000237F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  v44 = a8;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = a1;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v20 = v19;
    (*(v14 + 8))(v17, v13);
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100007DE8(v21, qword_1000E6D48);
    v22 = v18;
    v23 = a5;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v26 = 136315650;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = sub_1000170D4(v27, v28, &v45);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v20;
      *(v26 + 22) = 2080;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = sub_1000170D4(v30, v31, &v45);

      *(v26 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "BagProvider: Successfully resolved AMSBag(%s) value in %f seconds. Value: %s", v26, 0x20u);
      swift_arrayDestroy();
    }

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44(v33);
  }

  else
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100007DE8(v35, qword_1000E6D48);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45 = v39;
      *v38 = 136315138;
      if (a3)
      {
        swift_getErrorValue();
        v40 = Error.localizedDescription.getter();
        v42 = v41;
      }

      else
      {
        v40 = 0;
        v42 = 0xE000000000000000;
      }

      v43 = sub_1000170D4(v40, v42, &v45);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "BagProvider: Unable to load bag. Using hardcoded default value. Error: %s", v38, 0xCu);
      sub_100008A94(v39);
    }

    return (v44)(a6, a7, 0);
  }
}

void sub_100023C1C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  v16 = [a3 integerForKey:a4];
  (*(v12 + 16))(v14, a6, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v17, v14, v11);
  v20 = (v19 + v18);
  v21 = v26;
  *v20 = a4;
  v20[1] = v21;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_100025E24;
  v22[1] = v15;
  aBlock[4] = sub_100025EA8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026744;
  aBlock[3] = &unk_1000D0AA0;
  v23 = _Block_copy(aBlock);
  v24 = a4;

  [v16 valueWithCompletion:v23];
  _Block_release(v23);
}

void sub_100023E60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void (*a7)(id, void))
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = a1;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v19 = v18;
    (*(v13 + 8))(v16, v12);
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100007DE8(v20, qword_1000E6D48);
    v21 = v17;
    v22 = a5;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = v26;
      *v25 = 136315650;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = sub_1000170D4(v27, v28, &v41);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v19;
      *(v25 + 22) = 2048;
      v30 = [v21 integerValue];

      *(v25 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "BagProvider: Successfully resolved AMSBag(%s) value in %f seconds. Value: %ld", v25, 0x20u);
      sub_100008A94(v26);
    }

    else
    {
    }

    a7([v21 integerValue], 0);
  }

  else
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100007DE8(v31, qword_1000E6D48);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v34 = 136315138;
      if (a3)
      {
        swift_getErrorValue();
        v36 = Error.localizedDescription.getter();
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0xE000000000000000;
      }

      v39 = sub_1000170D4(v36, v38, &v41);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "BagProvider: Unable to load bag. Using hardcoded default value. Error: %s", v34, 0xCu);
      sub_100008A94(v35);
    }

    a7(a6, 0);
  }
}

void sub_100024260(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v27 = a5;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  v16 = [a3 dictionaryForKey:a4];
  (*(v12 + 16))(v14, a6, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v17, v14, v11);
  v20 = (v19 + v18);
  v21 = v27;
  *v20 = a4;
  v20[1] = v21;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_100026778;
  v22[1] = v15;
  aBlock[4] = sub_100026748;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026744;
  aBlock[3] = &unk_1000D0B40;
  v23 = _Block_copy(aBlock);
  v24 = a4;
  v25 = v21;

  [v16 valueWithCompletion:v23];
  _Block_release(v23);
}

void sub_1000244A8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v27 = a5;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  v16 = [a3 arrayForKey:a4];
  (*(v12 + 16))(v14, a6, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v17, v14, v11);
  v20 = (v19 + v18);
  v21 = v27;
  *v20 = a4;
  v20[1] = v21;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_100026778;
  v22[1] = v15;
  aBlock[4] = sub_100025AA4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026744;
  aBlock[3] = &unk_1000D0960;
  v23 = _Block_copy(aBlock);
  v24 = a4;
  v25 = v21;

  [v16 valueWithCompletion:v23];
  _Block_release(v23);
}

void sub_1000246F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void (*a7)(void, void), uint64_t a8)
{
  v14 = type metadata accessor for Date();
  v15 = sub_10000AC48(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v22 = a1;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v24 = v23;
    (*(v17 + 8))(v21, v14);
    if (qword_1000DBA20 != -1)
    {
      sub_10001C088();
    }

    v25 = type metadata accessor for Logger();
    sub_100007DE8(v25, qword_1000E6D48);
    v26 = v22;
    v27 = a5;
    v28 = a6;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v31 = 136315650;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = sub_1000170D4(v32, v33, &v54);
      v53 = a8;
      v35 = a7;
      v36 = v34;

      *(v31 + 4) = v36;
      *(v31 + 12) = 2048;
      *(v31 + 14) = v24;
      *(v31 + 22) = 2080;
      v37 = [v26 description];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = v38;
      a7 = v35;
      v42 = sub_1000170D4(v41, v40, &v54);

      *(v31 + 24) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "BagProvider: Successfully resolved AMSBag(%s) value in %f seconds. Value: %s", v31, 0x20u);
      swift_arrayDestroy();
      sub_10000B008();
      sub_10000B008();
    }

    v43 = v26;
    a7(a1, 0);
  }

  else
  {
    if (qword_1000DBA20 != -1)
    {
      sub_10001C088();
    }

    v44 = type metadata accessor for Logger();
    sub_100007DE8(v44, qword_1000E6D48);
    swift_errorRetain();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54 = v48;
      *v47 = 136315138;
      if (a3)
      {
        swift_getErrorValue();
        v49 = Error.localizedDescription.getter();
        v51 = v50;
      }

      else
      {
        v49 = 0;
        v51 = 0xE000000000000000;
      }

      v52 = sub_1000170D4(v49, v51, &v54);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "BagProvider: Unable to load bag. Using hardcoded default value. Error: %s", v47, 0xCu);
      sub_100008A94(v48);
      sub_10000B008();
      sub_10000B008();
    }

    a7(a6, 0);
  }
}

void sub_100024AF0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(a2, a3, a4);
}

void sub_100024B84(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, uint64_t a6)
{
  v23 = a5;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  v15 = [a3 BOOLForKey:a4];
  (*(v12 + 16))(&v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], a6, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v11);
  v18 = v17 + ((v16 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = a4;
  *(v18 + 8) = v23;
  v19 = (v17 + ((v16 + v13 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_100025BE4;
  v19[1] = v14;
  aBlock[4] = sub_100025CB8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026744;
  aBlock[3] = &unk_1000D0A00;
  v20 = _Block_copy(aBlock);
  v21 = a4;

  [v15 valueWithCompletion:v20];
  _Block_release(v20);
}

void sub_100024DCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, void (*a7)(id))
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (a1)
  {
    v17 = a1;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v19 = v18;
    (*(v13 + 8))(v16, v12);
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100007DE8(v20, qword_1000E6D48);
    v21 = v17;
    v22 = a5;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v25 = 136315650;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = sub_1000170D4(v26, v27, v44);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v19;
      *(v25 + 22) = 2080;
      v29 = [v21 description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_1000170D4(v30, v32, v44);

      *(v25 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "BagProvider: Successfully resolved AMSBag(%s) value in %f seconds. Value: %s", v25, 0x20u);
      swift_arrayDestroy();
    }

    a7([v21 BOOLValue]);
  }

  else
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100007DE8(v34, qword_1000E6D48);
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44[0] = v38;
      *v37 = 136315138;
      if (a3)
      {
        swift_getErrorValue();
        v39 = Error.localizedDescription.getter();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0xE000000000000000;
      }

      v42 = sub_1000170D4(v39, v41, v44);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "BagProvider: Unable to load bag. Using hardcoded default value. Error: %s", v37, 0xCu);
      sub_100008A94(v38);
    }

    a7((a6 & 1));
  }
}

void sub_1000251F4(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v27 = a3;
  v28 = a5;
  v31 = a4;
  v29 = a1;
  v7 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  v26 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [a2 BOOLForKey:{a3, __chkstk_darwin(v12).n128_f64[0]}];
  (*(v13 + 16))(v15, v28, v12);
  (*(v8 + 16))(v11, v29, v7);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v8 + 80) + v17 + 9) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v16, v15, v12);
  v20 = v19 + v17;
  v21 = v26;
  v22 = v27;
  *v20 = v27;
  *(v20 + 8) = v31;
  (*(v8 + 32))(v19 + v18, v11, v21);
  aBlock[4] = sub_10002663C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026744;
  aBlock[3] = &unk_1000D0C30;
  v23 = _Block_copy(aBlock);
  v24 = v22;

  v25 = v30;
  [v30 valueWithCompletion:v23];
  _Block_release(v23);
}

void sub_1000254D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = a1;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v17 = v16;
    (*(v11 + 8))(v14, v10);
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100007DE8(v18, qword_1000E6D48);
    v19 = v15;
    v20 = a5;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v23 = 136315650;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = sub_1000170D4(v24, v25, &v42);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v17;
      *(v23 + 22) = 2080;
      v27 = [v19 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_1000170D4(v28, v30, &v42);

      *(v23 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "BagProvider: Successfully resolved AMSBag(%s) value in %f seconds. Value: %s", v23, 0x20u);
      swift_arrayDestroy();
    }

    LOBYTE(v42) = [v19 BOOLValue];
    sub_100003998(&qword_1000DCA48, qword_1000AB448);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100007DE8(v32, qword_1000E6D48);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42 = v36;
      *v35 = 136315138;
      if (a3)
      {
        swift_getErrorValue();
        v37 = Error.localizedDescription.getter();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      v40 = sub_1000170D4(v37, v39, &v42);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "BagProvider: Unable to load bag. Using hardcoded default value. Error: %s", v35, 0xCu);
      sub_100008A94(v36);
    }

    LOBYTE(v42) = a6 & 1;
    sub_100003998(&qword_1000DCA48, qword_1000AB448);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002592C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  return v0;
}

uint64_t sub_10002598C()
{
  sub_10002592C();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_1000259E4()
{
  v1 = *(v0 + 24);

  v2 = sub_100026858();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100025A14()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = sub_100026858();

  return _swift_deallocObject(v3, v4, v5);
}

id sub_100025A4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1000226EC(a1, a2);
}

uint64_t sub_100025A70()
{
  v1 = *(v0 + 24);

  v2 = sub_100026858();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100025AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100025AC0()
{
  v1 = type metadata accessor for Date();
  sub_10002677C(v1);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = sub_1000267FC();
  v7(v6);
  v8 = sub_1000267EC();

  return _swift_deallocObject(v8, v9, v10);
}

void sub_100025B6C()
{
  sub_10002680C();
  v1 = type metadata accessor for Date();
  sub_10001C3C4(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = sub_10000AF64();

  sub_100024B84(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100025BE4(__int16 a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1 & 0x1FF;
  return v2(&v5);
}

uint64_t sub_100025C24()
{
  v1 = type metadata accessor for Date();
  sub_100026794(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3);

  sub_100026888();
  v5 = sub_1000267DC();

  return _swift_deallocObject(v5, v6, v7);
}

void sub_100025CB8()
{
  v1 = sub_1000267BC();
  sub_10000AC84(v1);
  v4 = ((*(v2 + 80) + 16) & ~*(v2 + 80)) + *(v3 + 64);
  v5 = (v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = sub_1000267A8();

  sub_100024DCC(v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_100025D60()
{
  v1 = type metadata accessor for Date();
  sub_10002677C(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = sub_1000267FC();
  v7(v6);
  v8 = sub_1000267EC();

  return _swift_deallocObject(v8, v9, v10);
}

uint64_t sub_100025E28()
{
  v2 = type metadata accessor for Date();
  sub_100026794(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10002681C();
  v8(v7);

  sub_100026888();
  v9 = sub_1000267DC();

  return _swift_deallocObject(v9, v10, v11);
}

void sub_100025EA8()
{
  v1 = sub_1000267BC();
  sub_10000AC84(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  sub_100026838();
  sub_100026848();
  v9 = *(v0 + v8);
  v10 = *(v0 + v8 + 8);
  v11 = sub_1000267A8();

  sub_100023E60(v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_100025F3C()
{
  v1 = type metadata accessor for Date();
  sub_10002677C(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = sub_1000267FC();
  v7(v6);
  v8 = sub_1000267EC();

  return _swift_deallocObject(v8, v9, v10);
}

uint64_t sub_100026008(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_10002680C();
  v4 = type metadata accessor for Date();
  sub_10001C3C4(v4);
  v6 = *(v5 + 80);
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = sub_10000AF64();

  return a3(v10);
}

uint64_t sub_100026094(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_1000260D4()
{
  v2 = type metadata accessor for Date();
  sub_100026794(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10002681C();
  v8(v7);
  v9 = (v0 + v1);

  sub_100026888();
  v10 = sub_1000267DC();

  return _swift_deallocObject(v10, v11, v12);
}

void sub_100026160()
{
  v1 = sub_1000267BC();
  sub_10000AC84(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  sub_100026838();
  sub_100026848();
  v9 = *(v0 + v8);
  v10 = *(v0 + v8 + 8);
  v11 = sub_1000267A8();
  sub_1000246F0(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1000261E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003998(a2, a3);
  sub_100026794(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10002623C()
{
  v1 = type metadata accessor for Date();
  sub_10002677C(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = *(v0 + 40);

  v7 = sub_1000267FC();
  v8(v7);
  v9 = sub_1000267EC();

  return _swift_deallocObject(v9, v10, v11);
}

void sub_1000262F0()
{
  sub_10002680C();
  v1 = type metadata accessor for Date();
  sub_10001C3C4(v1);
  v3 = *(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = sub_10000AF64();

  sub_1000235A0(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_100026368(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

uint64_t sub_1000263A8()
{
  v1 = type metadata accessor for Date();
  sub_100026794(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3);
  v5 = v0 + v4;

  v6 = *(v5 + 16);

  sub_100026888();
  v7 = sub_1000267DC();

  return _swift_deallocObject(v7, v8, v9);
}

uint64_t sub_100026448()
{
  v1 = sub_1000267BC();
  sub_10000AC84(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  sub_100026838();
  sub_100026848();
  v9 = *(v8 + 16);
  v11 = *(v0 + v10);
  v21 = *(v0 + v10 + 8);
  v12 = sub_1000267A8();
  return sub_1000237F0(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1000264F0()
{
  v2 = type metadata accessor for Date();
  sub_10002677C(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 16) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  sub_10000AC48(v9);
  v11 = v10;
  v13 = v12;
  v14 = *(v11 + 80);
  v15 = (v8 + v14 + 9) & ~v14;
  v16 = *(v13 + 64);
  v17 = v5 | v14;
  (*(v4 + 8))(v1 + v6, v0);

  (*(v11 + 8))(v1 + v15, v9);

  return _swift_deallocObject(v1, v15 + v16, v17 | 7);
}

void sub_10002663C()
{
  v4 = sub_1000267BC();
  sub_10000AC84(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  sub_10001C3C4(v9);
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = v1 + ((v8 + *(v10 + 80) + 9) & ~*(v10 + 80));

  sub_1000254D0(v3, v2, v0, v1 + v6, v11, v12);
}

uint64_t sub_1000267BC()
{

  return type metadata accessor for Date();
}

void sub_100026848()
{
  v2 = (v1 + v0);
  v3 = *v2;
  v4 = v2[1];
}

id sub_100026868()
{

  return sub_100058E38(v0, v1);
}

uint64_t sub_100026888()
{
  v3 = *(v0 + v1 + 8);
}

Swift::Int LiveActivityAppIntentServiceError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100026934()
{
  Hasher.init(_seed:)();
  LiveActivityAppIntentServiceError.hash(into:)();
  return Hasher._finalize()();
}

sportsd::LiveActivityAppIntentService::NotificationType_optional __swiftcall LiveActivityAppIntentService.NotificationType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = sportsd_LiveActivityAppIntentService_NotificationType_gameStart;
  }

  else
  {
    v1.value = sportsd_LiveActivityAppIntentService_NotificationType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

sportsd::LiveActivityAppIntentService::NotificationType_optional sub_1000269B4@<W0>(Swift::Int *a1@<X0>, sportsd::LiveActivityAppIntentService::NotificationType_optional *a2@<X8>)
{
  result.value = LiveActivityAppIntentService.NotificationType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1000269E0@<X0>(uint64_t *a1@<X8>)
{
  result = LiveActivityAppIntentService.NotificationType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void *sub_100026A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t LiveActivityAppIntentService.supportsAppIntents()()
{
  sub_10001BEC4();
  v1[2] = v0;
  v2 = type metadata accessor for IntentsServices.MetadataError.Code();
  v1[3] = v2;
  sub_10000AC84(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = sub_100029D20();
  v6 = sub_100003998(&qword_1000DCA50, &qword_1000AB478);
  sub_10001C3C4(v6);
  v8 = *(v7 + 64);
  v1[6] = sub_100029D20();
  v9 = sub_100003998(&qword_1000DCA58, &qword_1000AB480);
  sub_10001C3C4(v9);
  v11 = *(v10 + 64);
  v1[7] = sub_100029D20();
  v12 = sub_100003998(&qword_1000DCA60, &qword_1000AB488);
  sub_10001C3C4(v12);
  v14 = *(v13 + 64);
  v1[8] = sub_100029D20();
  v15 = type metadata accessor for AppIntentSpecification();
  v1[9] = v15;
  sub_10000AC84(v15);
  v1[10] = v16;
  v18 = *(v17 + 64);
  v1[11] = sub_100029D20();
  v19 = sub_100003998(&qword_1000DCA68, &qword_1000AB490);
  v1[12] = v19;
  sub_10000AC84(v19);
  v1[13] = v20;
  v22 = *(v21 + 64);
  v1[14] = sub_100029D20();
  v23 = sub_100029C4C();

  return _swift_task_switch(v23, v24, v25);
}

uint64_t sub_100026BEC()
{
  sub_10001BEC4();
  v1 = *(*(v0 + 16) + 48);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_100026C7C;

  return sub_100022EC0();
}

uint64_t sub_100026C7C()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = v1;
  v3 = *(v1 + 120);
  v9 = *v0;
  *(v2 + 144) = v4;

  v5 = sub_100029C4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100026D6C()
{
  if (*(v0 + 144) == 1)
  {
    v1 = *(v0 + 88);
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = *(v0 + 48);
    v5 = *(v0 + 16);
    v7 = v5[4];
    v6 = v5[5];
    swift_getObjectType();
    v8 = v5[2];
    v9 = v5[3];
    sub_100027344(0, 0xE000000000000000);
    v10 = type metadata accessor for UTType();
    v11 = sub_100029C88(v10);
    sub_100029CEC(v11);
    sub_100029BFC();
    v12 = type metadata accessor for AppIntentPerformOptions();
    sub_100029CCC(v12);
    v13 = async function pointer to AppIntentDispatching.perform(_:options:delegate:)[1];
    swift_task_alloc();
    sub_100029D94();
    *(v0 + 128) = v14;
    *v14 = v15;
    v14[1] = sub_100026EF8;
    v16 = *(v0 + 112);
    v17 = *(v0 + 88);
    v18 = *(v0 + 64);
    sub_100029C5C();

    return AppIntentDispatching.perform(_:options:delegate:)();
  }

  else
  {
    sub_100029D38();

    v19 = sub_100029C3C();

    return v20(v19);
  }
}

uint64_t sub_100026EF8()
{
  sub_10001C50C();
  sub_10001C370();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_10001BE74();
  *v8 = v7;
  v3[17] = v0;

  if (v0)
  {
    v10 = v3[10];
    v9 = v3[11];
    v11 = v3[9];
    sub_100027554(v3[8]);
    v12 = *(v10 + 8);
  }

  else
  {
    v16 = v3[13];
    v15 = v3[14];
    v18 = v3[11];
    v17 = v3[12];
    v19 = v3[9];
    v20 = v3[10];
    sub_100027554(v3[8]);
    v21 = sub_100029D84();
    v22(v21);
    v23 = *(v16 + 8);
  }

  v13 = sub_100029DA0();
  v14(v13);
  sub_10001C740();
  sub_10001C358();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_100027050()
{
  sub_10001C524();
  sub_100029D38();

  sub_100029CC0();

  return v0(1);
}

uint64_t sub_1000270E4()
{
  v1 = v0[17];
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 domain];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == static IntentsServices.MetadataError.errorDomain.getter() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];
  v13 = [v2 code];
  v14 = *(v11 + 104);
  v14(v10, enum case for IntentsServices.MetadataError.Code.unknownAppIntent(_:), v12);
  v15 = IntentsServices.MetadataError.Code.rawValue.getter();
  v16 = *(v11 + 8);
  v17 = sub_100029DA0();
  v16(v17);
  if (v13 == v15 || (v18 = v0[5], v19 = v0[3], v20 = [v2 code], v14(v18, enum case for IntentsServices.MetadataError.Code.unknownApplication(_:), v19), v21 = IntentsServices.MetadataError.Code.rawValue.getter(), v22 = sub_100029DA0(), v16(v22), v20 == v21))
  {
    v23 = v0[17];

    sub_100029D38();

    v24 = sub_100029C3C();
    goto LABEL_12;
  }

LABEL_11:
  v26 = v0[17];
  v27 = v0[14];
  v28 = v0[11];
  v30 = v0[7];
  v29 = v0[8];
  v32 = v0[5];
  v31 = v0[6];
  swift_willThrow();

  sub_100029CC0();
  v33 = v0[17];
  v24 = 0;
LABEL_12:

  return v25(v24);
}

uint64_t sub_100027344(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DCA80, &qword_1000AB4C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for AppIdentifier();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for AppInstanceLocation();
  sub_100008E2C(v7, 1, 1, v10);

  AppIdentifier.init(bundleIdentifier:location:)();
  sub_100003998(&qword_1000DCA88, &qword_1000AB4C8);
  v11 = *(type metadata accessor for NamedProperty() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1000AA5B0;
  v15[0] = a1;
  v15[1] = a2;

  NamedProperty.init<A>(identifier:value:)();
  return AppIntentSpecification.init(app:actionIdentifier:parameters:)();
}

uint64_t sub_100027554(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DCA60, &qword_1000AB488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LiveActivityAppIntentService.startLiveActivity(canonicalID:)()
{
  sub_10001BEC4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_100003998(&qword_1000DCA50, &qword_1000AB478);
  sub_10001C3C4(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_100029D20();
  v7 = sub_100003998(&qword_1000DCA58, &qword_1000AB480);
  sub_10001C3C4(v7);
  v9 = *(v8 + 64);
  v1[6] = sub_100029D20();
  v10 = sub_100003998(&qword_1000DCA60, &qword_1000AB488);
  sub_10001C3C4(v10);
  v12 = *(v11 + 64);
  v1[7] = sub_100029D20();
  v13 = type metadata accessor for AppIntentSpecification();
  v1[8] = v13;
  sub_10000AC84(v13);
  v1[9] = v14;
  v16 = *(v15 + 64);
  v1[10] = sub_100029D20();
  v17 = sub_100003998(&qword_1000DCA68, &qword_1000AB490);
  v1[11] = v17;
  sub_10000AC84(v17);
  v1[12] = v18;
  v20 = *(v19 + 64);
  v1[13] = sub_100029D20();
  v21 = sub_100029C4C();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_100027740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100029DC8();
  sub_100029D58();
  v17 = sub_100029C70();
  sub_100027998(v17, v18);
  v19 = type metadata accessor for UTType();
  v20 = sub_100029C88(v19);
  sub_100029CEC(v20);
  sub_100029BFC();
  v21 = type metadata accessor for AppIntentPerformOptions();
  sub_100029CCC(v21);
  v22 = async function pointer to AppIntentDispatching.perform(_:options:delegate:)[1];
  swift_task_alloc();
  sub_100029D94();
  v16[14] = v23;
  *v23 = v24;
  v23[1] = sub_100027814;
  v25 = v16[13];
  v26 = v16[10];
  v27 = v16[7];
  sub_100029C5C();
  sub_100029DAC();

  return AppIntentDispatching.perform(_:options:delegate:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100027814()
{
  sub_10001C50C();
  sub_10001C370();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[10];
  v8 = v5[9];
  v9 = v5[8];
  v10 = v5[7];
  v11 = *v1;
  sub_10001BE74();
  *v12 = v11;
  v3[15] = v0;

  sub_100027554(v10);
  v13 = sub_100029D84();
  v14(v13);
  if (!v0)
  {
    (*(v3[12] + 8))(v3[13], v3[11]);
  }

  sub_10001C740();
  sub_10001C358();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100027998(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DCA80, &qword_1000AB4C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for AppIdentifier();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for AppInstanceLocation();
  sub_100008E2C(v7, 1, 1, v10);

  AppIdentifier.init(bundleIdentifier:location:)();
  sub_100003998(&qword_1000DCA88, &qword_1000AB4C8);
  v11 = *(type metadata accessor for NamedProperty() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1000AA5B0;
  v15[0] = a1;
  v15[1] = a2;

  NamedProperty.init<A>(identifier:value:)();
  return AppIntentSpecification.init(app:actionIdentifier:parameters:)();
}

uint64_t LiveActivityAppIntentService.endLiveActivity(canonicalID:)()
{
  sub_10001BEC4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_100003998(&qword_1000DCA50, &qword_1000AB478);
  sub_10001C3C4(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_100029D20();
  v7 = sub_100003998(&qword_1000DCA58, &qword_1000AB480);
  sub_10001C3C4(v7);
  v9 = *(v8 + 64);
  v1[6] = sub_100029D20();
  v10 = sub_100003998(&qword_1000DCA60, &qword_1000AB488);
  sub_10001C3C4(v10);
  v12 = *(v11 + 64);
  v1[7] = sub_100029D20();
  v13 = type metadata accessor for AppIntentSpecification();
  v1[8] = v13;
  sub_10000AC84(v13);
  v1[9] = v14;
  v16 = *(v15 + 64);
  v1[10] = sub_100029D20();
  v17 = sub_100003998(&qword_1000DCA68, &qword_1000AB490);
  v1[11] = v17;
  sub_10000AC84(v17);
  v1[12] = v18;
  v20 = *(v19 + 64);
  v1[13] = sub_100029D20();
  v21 = sub_100029C4C();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_100027D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100029DC8();
  sub_100029D58();
  v17 = sub_100029C70();
  sub_100028094(v17, v18);
  v19 = type metadata accessor for UTType();
  v20 = sub_100029C88(v19);
  sub_100029CEC(v20);
  sub_100029BFC();
  v21 = type metadata accessor for AppIntentPerformOptions();
  sub_100029CCC(v21);
  v22 = async function pointer to AppIntentDispatching.perform(_:options:delegate:)[1];
  swift_task_alloc();
  sub_100029D94();
  v16[14] = v23;
  *v23 = v24;
  v23[1] = sub_100027E00;
  v25 = v16[13];
  v26 = v16[10];
  v27 = v16[7];
  sub_100029C5C();
  sub_100029DAC();

  return AppIntentDispatching.perform(_:options:delegate:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100027E00()
{
  sub_10001C50C();
  sub_10001C370();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[10];
  v8 = v5[9];
  v9 = v5[8];
  v10 = v5[7];
  v11 = *v1;
  sub_10001BE74();
  *v12 = v11;
  v3[15] = v0;

  sub_100027554(v10);
  v13 = sub_100029D84();
  v14(v13);
  if (!v0)
  {
    (*(v3[12] + 8))(v3[13], v3[11]);
  }

  sub_10001C740();
  sub_10001C358();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100027F84()
{
  sub_100029DE4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002800C()
{
  sub_100029DE4();

  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1();
}

uint64_t sub_100028094(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DCA80, &qword_1000AB4C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for AppIdentifier();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for AppInstanceLocation();
  sub_100008E2C(v7, 1, 1, v10);

  AppIdentifier.init(bundleIdentifier:location:)();
  sub_100003998(&qword_1000DCA88, &qword_1000AB4C8);
  v11 = *(type metadata accessor for NamedProperty() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1000AA5B0;
  v15[0] = a1;
  v15[1] = a2;

  NamedProperty.init<A>(identifier:value:)();
  return AppIntentSpecification.init(app:actionIdentifier:parameters:)();
}

uint64_t LiveActivityAppIntentService.checkLiveActivity(canonicalID:)()
{
  sub_10001BEC4();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_100003998(&qword_1000DCA70, &qword_1000AB4B0);
  v1[10] = v4;
  sub_10000AC84(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = sub_100029D20();
  v8 = sub_100003998(&qword_1000DCA50, &qword_1000AB478);
  sub_10001C3C4(v8);
  v10 = *(v9 + 64);
  v1[13] = sub_100029D20();
  v11 = sub_100003998(&qword_1000DCA58, &qword_1000AB480);
  sub_10001C3C4(v11);
  v13 = *(v12 + 64);
  v1[14] = sub_100029D20();
  v14 = sub_100003998(&qword_1000DCA60, &qword_1000AB488);
  sub_10001C3C4(v14);
  v16 = *(v15 + 64);
  v1[15] = sub_100029D20();
  v17 = type metadata accessor for AppIntentSpecification();
  v1[16] = v17;
  sub_10000AC84(v17);
  v1[17] = v18;
  v20 = *(v19 + 64);
  v1[18] = sub_100029D20();
  v21 = sub_100003998(&qword_1000DCA68, &qword_1000AB490);
  v1[19] = v21;
  sub_10000AC84(v21);
  v1[20] = v22;
  v24 = *(v23 + 64);
  v1[21] = sub_100029D20();
  v25 = sub_100029C4C();

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_100028480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100029DC8();
  v17 = v16[18];
  v19 = v16[14];
  v18 = v16[15];
  v20 = v16[13];
  v22 = v16[8];
  v21 = v16[9];
  v23 = v16[7];
  v24 = *(v21 + 32);
  v45 = *(v21 + 40);
  swift_getObjectType();
  v25 = sub_100029C70();
  sub_100027344(v25, v26);
  v27 = type metadata accessor for UTType();
  v28 = sub_100029C88(v27);
  sub_100029CEC(v28);
  sub_100029BFC();
  v29 = type metadata accessor for AppIntentPerformOptions();
  sub_100029CCC(v29);
  v30 = async function pointer to AppIntentDispatching.perform(_:options:delegate:)[1];
  swift_task_alloc();
  sub_100029D94();
  v16[22] = v31;
  *v31 = v32;
  v31[1] = sub_100028574;
  v33 = v16[21];
  v34 = v16[18];
  v35 = v16[15];
  sub_100029C5C();
  sub_100029DAC();

  return AppIntentDispatching.perform(_:options:delegate:)(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, v45, a14, a15, a16);
}

uint64_t sub_100028574()
{
  sub_10001C524();
  v2 = *v1;
  sub_10001BE94();
  *v4 = v3;
  v5 = v2[22];
  *v4 = *v1;
  v3[23] = v0;

  v6 = v2[18];
  v7 = v2[17];
  v8 = v2[16];
  sub_100027554(v2[15]);
  (*(v7 + 8))(v6, v8);
  sub_10001C740();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000286F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();
  v11 = *(v10 + 168);
  v12 = *(v10 + 152);
  v14 = *(v10 + 88);
  v13 = *(v10 + 96);
  v15 = *(v10 + 80);
  AppIntentSuccessResult.output.getter();
  IntentOutput.value.getter();
  (*(v14 + 8))(v13, v15);
  v16 = *(v10 + 48);
  if (v16 && (v17 = [*(v10 + 48) value], v16, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), (swift_dynamicCast() & 1) != 0))
  {
    v18 = *(v10 + 144);
    v20 = *(v10 + 112);
    v19 = *(v10 + 120);
    v22 = *(v10 + 96);
    v21 = *(v10 + 104);
    (*(*(v10 + 160) + 8))(*(v10 + 168), *(v10 + 152));
    v23 = *(v10 + 192);

    sub_100029CC0();
  }

  else
  {
    v25 = *(v10 + 160);
    v24 = *(v10 + 168);
    v26 = *(v10 + 152);
    sub_100028980();
    swift_allocError();
    swift_willThrow();
    (*(v25 + 8))(v24, v26);
    v27 = *(v10 + 168);
    v28 = *(v10 + 144);
    v30 = *(v10 + 112);
    v29 = *(v10 + 120);
    v32 = *(v10 + 96);
    v31 = *(v10 + 104);

    sub_100029C3C();
  }

  sub_10001C358();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t sub_1000288E0()
{
  sub_10001C524();
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];

  v8 = sub_100029C3C();

  return v9(v8);
}

unint64_t sub_100028980()
{
  result = qword_1000DCA78;
  if (!qword_1000DCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA78);
  }

  return result;
}

uint64_t LiveActivityAppIntentService.shouldSuppressNotification(canonicalID:type:)()
{
  sub_10001BEC4();
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  *(v1 + 74) = v3;
  *(v1 + 88) = v4;
  v5 = sub_100003998(&qword_1000DCA70, &qword_1000AB4B0);
  *(v1 + 112) = v5;
  sub_10000AC84(v5);
  *(v1 + 120) = v6;
  v8 = *(v7 + 64);
  *(v1 + 128) = sub_100029D20();
  v9 = sub_100003998(&qword_1000DCA50, &qword_1000AB478);
  sub_10001C3C4(v9);
  v11 = *(v10 + 64);
  *(v1 + 136) = sub_100029D20();
  v12 = sub_100003998(&qword_1000DCA58, &qword_1000AB480);
  sub_10001C3C4(v12);
  v14 = *(v13 + 64);
  *(v1 + 144) = sub_100029D20();
  v15 = sub_100003998(&qword_1000DCA60, &qword_1000AB488);
  sub_10001C3C4(v15);
  v17 = *(v16 + 64);
  *(v1 + 152) = sub_100029D20();
  v18 = sub_100003998(&qword_1000DCA80, &qword_1000AB4C0);
  sub_10001C3C4(v18);
  v20 = *(v19 + 64);
  *(v1 + 160) = sub_100029D20();
  v21 = type metadata accessor for AppIdentifier();
  sub_10001C3C4(v21);
  v23 = *(v22 + 64);
  *(v1 + 168) = sub_100029D20();
  v24 = type metadata accessor for AppIntentSpecification();
  *(v1 + 176) = v24;
  sub_10000AC84(v24);
  *(v1 + 184) = v25;
  v27 = *(v26 + 64);
  *(v1 + 192) = sub_100029D20();
  v28 = sub_100003998(&qword_1000DCA68, &qword_1000AB490);
  *(v1 + 200) = v28;
  sub_10000AC84(v28);
  *(v1 + 208) = v29;
  v31 = *(v30 + 64);
  *(v1 + 216) = sub_100029D20();
  v32 = sub_100029C4C();

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_100028C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 + 160);
  v18 = *(v16 + 168);
  v43 = *(v16 + 192);
  v44 = *(v16 + 144);
  v45 = *(v16 + 136);
  v46 = *(v16 + 152);
  v20 = *(v16 + 96);
  v19 = *(v16 + 104);
  v21 = *(v16 + 74);
  v22 = *(v16 + 88);
  v48 = v19[4];
  v49 = v19[5];
  ObjectType = swift_getObjectType();
  v23 = v21 & 1;
  v25 = v19[2];
  v24 = v19[3];
  v26 = type metadata accessor for AppInstanceLocation();
  sub_100008E2C(v17, 1, 1, v26);

  AppIdentifier.init(bundleIdentifier:location:)();
  sub_100003998(&qword_1000DCA88, &qword_1000AB4C8);
  v27 = type metadata accessor for NamedProperty();
  sub_10000AC84(v27);
  v29 = *(v28 + 72);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  *(swift_allocObject() + 16) = xmmword_1000AB460;
  *(v16 + 48) = v22;
  *(v16 + 56) = v20;

  NamedProperty.init<A>(identifier:value:)();
  *(v16 + 64) = v23;
  *(v16 + 72) = 0;
  NamedProperty.init<A>(identifier:value:)();
  AppIntentSpecification.init(app:actionIdentifier:parameters:)();
  v32 = type metadata accessor for UTType();
  sub_100008E2C(v44, 1, 1, v32);
  v33 = type metadata accessor for SnippetEnvironment();
  sub_100008E2C(v45, 1, 1, v33);
  static AppIntentPerformOptions.defaultConnectionOperationTimeout.getter();
  AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:assistantDismissalPolicy:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:snippetEnvironment:)();
  v34 = type metadata accessor for AppIntentPerformOptions();
  sub_100008E2C(v46, 0, 1, v34);
  v35 = async function pointer to AppIntentDispatching.perform(_:options:delegate:)[1];
  swift_task_alloc();
  sub_100029D94();
  *(v16 + 224) = v37;
  *v37 = v38;
  v37[1] = sub_100028F04;
  v39 = *(v16 + 216);
  v40 = *(v16 + 192);
  v41 = *(v16 + 152);

  return AppIntentDispatching.perform(_:options:delegate:)(v39, v40, v41, 0, 0, ObjectType, v49, v36, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100028F04()
{
  sub_10001C524();
  v2 = *v1;
  sub_10001BE94();
  *v4 = v3;
  v5 = v2[28];
  *v4 = *v1;
  v3[29] = v0;

  v6 = v2[24];
  v7 = v2[23];
  v8 = v2[22];
  sub_100027554(v2[19]);
  (*(v7 + 8))(v6, v8);
  sub_10001C740();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100029084()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  AppIntentSuccessResult.output.getter();
  IntentOutput.value.getter();
  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 80);
  if (v6 && (v7 = [*(v0 + 80) value], v6, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), (swift_dynamicCast() & 1) != 0))
  {
    v8 = *(v0 + 192);
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    v15 = *(v0 + 73);

    sub_100029CC0();
    v17 = v15;
  }

  else
  {
    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    v20 = *(v0 + 200);
    sub_100028980();
    swift_allocError();
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
    v21 = *(v0 + 216);
    v22 = *(v0 + 192);
    v24 = *(v0 + 160);
    v23 = *(v0 + 168);
    v26 = *(v0 + 144);
    v25 = *(v0 + 152);
    v28 = *(v0 + 128);
    v27 = *(v0 + 136);

    v17 = sub_100029C3C();
  }

  return v16(v17);
}

uint64_t sub_1000292B4()
{
  sub_10001C370();
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[16];
  v8 = v0[17];

  v10 = sub_100029C3C();

  return v11(v10);
}

void *LiveActivityAppIntentService.deinit()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return v0;
}

uint64_t LiveActivityAppIntentService.__deallocating_deinit()
{
  LiveActivityAppIntentService.deinit();

  return _swift_deallocClassInstance(v0, 56, 7);
}

unint64_t sub_1000293D8()
{
  result = qword_1000DCA90;
  if (!qword_1000DCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA90);
  }

  return result;
}

unint64_t sub_100029430()
{
  result = qword_1000DCA98;
  if (!qword_1000DCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA98);
  }

  return result;
}

uint64_t sub_100029484()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100029BF8;

  return LiveActivityAppIntentService.supportsAppIntents()();
}

uint64_t sub_100029514()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100029BEC;

  return LiveActivityAppIntentService.startLiveActivity(canonicalID:)();
}

uint64_t sub_1000295BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100029664;

  return LiveActivityAppIntentService.endLiveActivity(canonicalID:)();
}

uint64_t sub_100029664()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10001BE74();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_100029748()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000297F0;

  return LiveActivityAppIntentService.checkLiveActivity(canonicalID:)();
}

uint64_t sub_1000297F0()
{
  sub_10001BEC4();
  v3 = v2;
  sub_10001BF54();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_10001BE74();
  *v7 = v6;

  sub_100029CC0();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_1000298E4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100029BF8;

  return LiveActivityAppIntentService.shouldSuppressNotification(canonicalID:type:)();
}

uint64_t getEnumTagSinglePayload for LiveActivityAppIntentServiceError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for LiveActivityAppIntentServiceError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100029A84);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LiveActivityAppIntentService.NotificationType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100029BB4);
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

uint64_t sub_100029BFC()
{

  return AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:assistantDismissalPolicy:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:snippetEnvironment:)();
}

uint64_t sub_100029C70()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return v1;
}

uint64_t sub_100029C88(uint64_t a1)
{
  sub_100008E2C(v1, 1, 1, a1);

  return type metadata accessor for SnippetEnvironment();
}

uint64_t sub_100029CCC(uint64_t a1)
{

  return sub_100008E2C(v1, 0, 1, a1);
}

uint64_t sub_100029CEC(uint64_t a1)
{
  sub_100008E2C(v1, 1, 1, a1);

  return static AppIntentPerformOptions.defaultConnectionOperationTimeout.getter();
}

uint64_t sub_100029D20()
{

  return swift_task_alloc();
}

uint64_t sub_100029D38()
{
  v2 = v0[14];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
}

uint64_t sub_100029D58()
{
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  v9 = *(v5 + 32);
  v11 = *(v5 + 40);

  return swift_getObjectType();
}

uint64_t sub_100029DE4()
{
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
}

id sub_100029E04(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AA5B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v8 = Dictionary.init(dictionaryLiteral:)();
  v9 = objc_allocWithZone(NSError);
  return sub_100029EF8(0xD000000000000017, 0x80000001000B17E0, a1, v8);
}

id sub_100029EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

id sub_100029FA8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_100008614(v3 + 5, v3[8]);
  v9 = *v3;
  v8 = v3[1];
  sub_10002A320();
  sub_10006E404(v10);
  if (v26)
  {
    return sub_10002A20C(v25);
  }

  v11 = [objc_opt_self() sharedScheduler];
  sub_10002A320();
  v12 = String._bridgeToObjectiveC()();
  [v11 deregisterTaskWithIdentifier:v12];

  sub_100008614(v4 + 5, v4[8]);
  v13 = sub_10002A320();
  sub_10006E750(v13, v14, a1, a2);
  if (v4[2])
  {
    sub_10001BDC0(0, &qword_1000DCB68, BGRepeatingSystemTaskRequest_ptr);

    sub_10002A320();
    v15 = sub_10002A198();
    v16 = v4[3];
    result = [v15 setInterval:v16];
    v18 = v4[4];
    v19 = __OFSUB__(v16, v18);
    v20 = v16 - v18;
    if (!v19)
    {
      v21 = &selRef_setMinDurationBetweenInstances_;
LABEL_7:
      [v15 *v21];
      [v15 setShouldWakeDevice:a3 & 1];
      sub_100008614(v4 + 5, v4[8]);
      v24 = v15;
      sub_10006E4E8(v24);

      return sub_10002A20C(v25);
    }

    __break(1u);
  }

  else
  {
    sub_10001BDC0(0, &qword_1000DCB58, BGNonRepeatingSystemTaskRequest_ptr);

    sub_10002A320();
    v15 = sub_10002A198();
    v22 = v4[3];
    result = [v15 setScheduleAfter:v22];
    v23 = v4[4];
    v19 = __OFADD__(v22, v23);
    v20 = v22 + v23;
    if (!v19)
    {
      v21 = &selRef_setTrySchedulingBefore_;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_10002A198()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

uint64_t sub_10002A20C(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DCB60, &qword_1000AB710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002A27C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10002A2BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002A32C(uint64_t a1)
{
  *(v1 + 200) = &_swiftEmptyArrayStorage;
  sub_10000BC30(a1, v1 + 16);
  v8 = &type metadata for TaskRequestProvider;
  v9 = &off_1000D31D8;
  v5[0] = 0xD000000000000026;
  v5[1] = 0x80000001000B1850;
  v6 = 1;
  v7 = vdupq_n_s64(0x12CuLL);
  v3 = swift_allocObject();
  swift_weakInit();

  sub_100029FA8(sub_10002A8AC, v3, 1);

  sub_10000BCF0(a1);
  sub_10002A8B4(v5);

  return v1;
}

uint64_t sub_10002A42C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return a1(1);
  }

  sub_10002A4B0(a1, a2);
}

uint64_t sub_10002A4B0(uint64_t a1, uint64_t a2)
{
  sub_10001F65C(j___s10Foundation4DateVACycfC, 0, v8);
  v4 = v9;
  v5 = v10;
  sub_100008614(v8, v9);
  (*(v5 + 8))(v4, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100008A94(v8);
  swift_beginAccess();
  sub_100003998(&qword_1000DCC28, &qword_1000AB798);
  sub_10000A6FC(&qword_1000DCC30, &qword_1000DCC28, &qword_1000AB798);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_10002A690(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (*a1)
  {
    v3 = *a1;
    swift_errorRetain();
    if (qword_1000DBA10 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100007DE8(v4, qword_1000E6D18);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "LiveActivityRefreshXPCServer: Error refreshing activities: %@", v7, 0xCu);
      sub_10002A948(v8);
    }

    else
    {
    }
  }

  return a2(1);
}

uint64_t sub_10002A810()
{
  sub_10000BCF0(v0 + 16);
  v1 = *(v0 + 200);

  return _swift_deallocClassInstance(v0, 208, 7);
}

uint64_t sub_10002A874()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A908()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A948(uint64_t a1)
{
  v2 = sub_100003998(&unk_1000DD790, &unk_1000AB7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002A9B0()
{
  type metadata accessor for ServicesRepository();
  swift_allocObject();
  result = sub_10002A9EC();
  qword_1000E6CC8 = result;
  return result;
}

uint64_t sub_10002A9EC()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  *(v0 + 288) = &_swiftEmptySetSingleton;
  type metadata accessor for ApsMessageProcessor();
  v4 = sub_1000A56B0();

  v6 = sub_10002BBDC(v5);
  v7 = type metadata accessor for ApsListener();
  *(v1 + 208) = v6;
  *(v1 + 232) = v7;
  *(v1 + 240) = &off_1000D0418;
  memset(v75, 0, 40);
  v72 = v4;
  if (sub_10002F240())
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v8 = qword_1000E6CC0;
  v77 = type metadata accessor for BagProvider();
  v78 = &off_1000D0860;
  v70 = v77;
  *&v76 = v8;

  sub_100002C48();
  if (qword_1000DBA60 != -1)
  {
    swift_once();
  }

  v9 = qword_1000E6DE8;
  sub_10000BC8C(v1 + 208, &v76);
  v10 = v77;
  v11 = sub_10000B90C(&v76, v77);
  v12 = *(v10[-1].Description + 8);
  __chkstk_darwin(v11);
  v14 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  sub_1000097A0(v79, v75);
  v16 = *v14;

  v73 = v9;

  v17 = sub_10002BCFC(0xD000000000000022, 0x80000001000B19A0, v16, v8, v75, v9);
  sub_100008A94(&v76);
  *(v1 + 16) = v17;
  v71 = sub_10002C19C();
  v18 = sub_10002B408();
  *(v1 + 280) = v18;
  [v18 setDelegate:*(v1 + 16)];
  [*(v1 + 280) resume];
  v19 = [objc_opt_self() defaultManager];
  NSFileManager.currentContainerURL.getter();

  v20 = type metadata accessor for PlaysStore();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v74 = PlaysStore.init(storeUrl:)();
  v23 = type metadata accessor for PersistentStore();
  v24 = PersistentStore.__allocating_init()();

  sub_10002B750(v75);
  v25 = v75[3];
  v26 = sub_10000B90C(v75, v75[3]);
  v67 = &v67;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = (&v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v69 = v1 + 208;
  v77 = &type metadata for ImageDownloader;
  v78 = &off_1000D2880;
  v76 = *v29;
  type metadata accessor for LogoRepository();
  v31 = swift_allocObject();
  v32 = sub_10000B90C(&v76, &type metadata for ImageDownloader);
  __chkstk_darwin(v32);
  v34 = (&v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  *(v31 + 40) = &type metadata for ImageDownloader;
  *(v31 + 48) = &off_1000D2880;
  *(v31 + 16) = *v34;
  sub_100008A94(&v76);
  sub_100008A94(v75);
  type metadata accessor for DataRepository();
  v36 = swift_allocObject();
  v36[5] = v23;
  v36[6] = &protocol witness table for PersistentStore;
  v36[2] = v24;
  v36[7] = &_swiftEmptySetSingleton;
  v36[8] = v31;

  sub_10000BC8C(v1 + 208, v75);
  v75[10] = v70;
  v68 = v8;
  v75[7] = v8;
  v75[11] = &off_1000D0860;
  v75[15] = &type metadata for TempoApiAgent;
  v75[16] = &off_1000CFC28;
  v75[12] = swift_allocObject();
  sub_1000097A0(v79, v75[12] + 16);
  v75[20] = type metadata accessor for WatchlistSuppressNotificationsXPCConnectionManager();
  v75[21] = &off_1000D38A0;
  v75[17] = v73;
  v75[5] = v36;
  v75[6] = v74;
  v37 = type metadata accessor for ActivityAuthorization();
  v38 = objc_allocWithZone(v37);

  v39 = [v38 init];
  v40 = sub_1000499E0();
  v42 = v41;
  v77 = v37;
  v78 = &off_1000D1900;
  *&v76 = v39;
  type metadata accessor for ActivityCapUtility();
  v43 = swift_allocObject();
  v44 = sub_10000B90C(&v76, v37);
  v45 = *(*(v37 - 1) + 64);
  __chkstk_darwin(v44);
  v47 = (&v67 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v49 = *v47;
  v43[5] = v37;
  v43[6] = &off_1000D1900;
  v43[7] = v40;
  v43[2] = v49;
  v43[8] = v42;
  sub_100008A94(&v76);

  v75[22] = v43;
  memcpy((v1 + 24), v75, 0xB8uLL);
  sub_10000BC30(v1 + 24, v75);
  v50 = v72;
  swift_beginAccess();
  sub_10002C228(v75, (v50 + 17));
  swift_endAccess();
  sub_10000BC8C(v69, &v76);
  v51 = v77;
  v52 = sub_10000B90C(&v76, v77);
  v53 = *(v51[-1].Description + 8);
  __chkstk_darwin(v52);
  v55 = (&v67 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  sub_1000097A0(v79, v75);
  v57 = *v55;
  v58 = v68;

  v59 = v73;

  v60 = sub_10002C298(0xD00000000000002ALL, 0x80000001000B19F0, v57, v58, v75, v59);
  sub_100008A94(&v76);
  *(v1 + 256) = v60;
  v61 = sub_10002B408();
  *(v1 + 264) = v61;
  [v61 setDelegate:*(v1 + 256)];
  [*(v1 + 264) resume];
  type metadata accessor for UnsubscribeRetryXPCServer();
  if (qword_1000DB9C8 != -1)
  {
    swift_once();
  }

  sub_10000BC8C(qword_1000E6CD0 + 16, &v76);
  v62 = *(v1 + 16);
  sub_10000BC30(v1 + 24, v75);
  v63 = v62;
  v64 = sub_10002D840(&v76, v63, v75);

  sub_10000BCF0(v75);
  sub_100008A94(&v76);
  *(v1 + 248) = v64;
  sub_10000BC30(v1 + 24, v75);
  type metadata accessor for LiveActivityRefreshXPCServer();
  swift_allocObject();
  v65 = sub_10002A32C(v75);

  sub_10002C738(v79);
  *(v1 + 272) = v65;
  return v1;
}

id sub_10002B408()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

uint64_t sub_10002B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10001F338(a1, a2, a3, a4, v12);
  v8 = v13;
  v9 = v14;
  sub_100008614(v12, v13);
  (*(v9 + 8))(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10002C7CC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100008A94(v12);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10002B5E0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  if (!*a1)
  {
    return a2(0);
  }

  v4 = *a1;
  swift_errorRetain();
  a2(v3);
}

uint64_t sub_10002B658()
{
  sub_10000BCF0(v0 + 24);
  sub_100008A94((v0 + 208));
  v1 = *(v0 + 248);

  v2 = *(v0 + 272);

  v3 = *(v0 + 288);

  return v0;
}

uint64_t sub_10002B6B8()
{
  sub_10002B658();

  return _swift_deallocClassInstance(v0, 296, 7);
}

uint64_t sub_10002B710()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10002B750(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedSession];
  v3 = sub_1000499E0();
  v5 = v4;
  v6 = [objc_opt_self() defaultManager];
  v7 = [v2 configuration];
  sub_10002B81C(v3, v5, v7);

  a1[3] = &type metadata for ImageDownloader;
  a1[4] = &off_1000D2880;
  *a1 = v2;
  a1[1] = v6;
}

void sub_10002B81C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 set_sourceApplicationBundleIdentifier:v4];
}

char *sub_10002B880(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v26[3] = type metadata accessor for ApsMessageProcessor();
  v26[4] = &off_1000D4F38;
  v26[0] = a1;
  *&a2[OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection] = 0;
  v9 = &a2[OBJC_IVAR____TtC7sportsd11ApsListener_currentAPSConnectionEnvironment];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  *&a2[OBJC_IVAR____TtC7sportsd11ApsListener_cancellables] = &_swiftEmptySetSingleton;
  v10 = OBJC_IVAR____TtC7sportsd11ApsListener_tokenPublisher;
  v11 = sub_100003998(&qword_1000DC560, &qword_1000AB830);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&a2[v10] = PassthroughSubject.init()();
  v14 = &a2[OBJC_IVAR____TtC7sportsd11ApsListener_pushToken];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&a2[OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor] = 0;
  *&a2[OBJC_IVAR____TtC7sportsd11ApsListener_cloudChannelAuditDebouncer] = 0;
  v15 = OBJC_IVAR____TtC7sportsd11ApsListener_connection;
  sub_100003998(&qword_1000DCD28, &unk_1000AB838);
  v16 = swift_allocObject();
  *(v16 + 28) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 2;
  *&a2[v15] = v16;
  sub_10000BC8C(v26, &a2[OBJC_IVAR____TtC7sportsd11ApsListener_messageProcessing]);
  v25.receiver = a2;
  v25.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v25, "init");
  type metadata accessor for ScoreboardSubscriptionMessageProcessor();
  swift_allocObject();
  v18 = v17;
  v19 = sub_10003DBF0();
  v20 = *&v18[OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor];
  *&v18[OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor] = v19;

  type metadata accessor for SportsEnvironmentPublisher();
  swift_initStaticObject();
  v24 = sub_10000DD68();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100003998(&qword_1000DC240, &qword_1000AAC10);
  sub_10002C7CC(&qword_1000DC248, &qword_1000DC240, &qword_1000AAC10);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10000EA5C();
  v21 = type metadata accessor for TaskPriority();
  sub_100008E2C(v8, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_100032C10(0, 0, v8, &unk_1000AB848, v22);

  sub_100008A94(v26);
  return v18;
}

char *sub_10002BBDC(uint64_t *a1)
{
  v1 = *a1;
  v11[3] = v1;
  v11[4] = &off_1000D4F38;
  v11[0] = a1;
  v2 = objc_allocWithZone(type metadata accessor for ApsListener());
  v3 = sub_10000B90C(v11, v1);
  v4 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v11[-1] - v5);
  (*(v7 + 16))(&v11[-1] - v5);
  v8 = sub_10002B880(*v6, v2);
  sub_100008A94(v11);
  return v8;
}

id sub_10002BCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v10 = type metadata accessor for ApsListener();
  v61[3] = v10;
  v61[4] = &off_1000D0418;
  v61[0] = a3;
  v11 = type metadata accessor for BagProvider();
  v59 = v11;
  v60 = &off_1000D0860;
  v58[0] = a4;
  v56 = &type metadata for TempoApiAgent;
  v57 = &off_1000CFC28;
  v55[0] = swift_allocObject();
  memcpy((v55[0] + 16), a5, 0x60uLL);
  v12 = type metadata accessor for WatchlistSuppressNotificationsXPCConnectionManager();
  v53 = v12;
  v54 = &off_1000D38A0;
  v52[0] = a6;
  v44 = type metadata accessor for SportsKitRequestXPCServer();
  v13 = objc_allocWithZone(v44);
  v14 = sub_10000B90C(v61, v10);
  v15 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = v59;
  v20 = sub_10000B90C(v58, v59);
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = v56;
  v26 = sub_10000B90C(v55, v56);
  v27 = *(v25[-1].Description + 8);
  __chkstk_darwin(v26);
  v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  v31 = v53;
  v32 = sub_10000B90C(v52, v53);
  v33 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = (&v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v17;
  v38 = *v23;
  v39 = *v35;
  v51[3] = v10;
  v51[4] = &off_1000D0418;
  v51[0] = v37;
  v50[3] = v11;
  v50[4] = &off_1000D0860;
  v50[0] = v38;
  v49[3] = &type metadata for TempoApiAgent;
  v49[4] = &off_1000CFC28;
  v49[0] = swift_allocObject();
  memcpy((v49[0] + 16), v29, 0x60uLL);
  v48[3] = v12;
  v48[4] = &off_1000D38A0;
  v48[0] = v39;
  v40 = &v13[OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_entitlement];
  v41 = v46;
  *v40 = v45;
  *(v40 + 1) = v41;
  sub_10000BC8C(v51, &v13[OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_apsListening]);
  sub_10000BC8C(v50, &v13[OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_metadataProvider]);
  sub_10000BC8C(v49, &v13[OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_tempoApiProvider]);
  sub_10000BC8C(v48, &v13[OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_supressionManager]);
  v47.receiver = v13;
  v47.super_class = v44;
  v42 = objc_msgSendSuper2(&v47, "init");
  sub_100008A94(v48);
  sub_100008A94(v49);
  sub_100008A94(v50);
  sub_100008A94(v51);
  sub_100008A94(v52);
  sub_100008A94(v55);
  sub_100008A94(v58);
  sub_100008A94(v61);
  return v42;
}

unint64_t sub_10002C19C()
{
  result = qword_1000DCD18;
  if (!qword_1000DCD18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DCD18);
  }

  return result;
}

uint64_t sub_10002C1E0()
{
  sub_100008A94(v0 + 2);
  v1 = v0[7];

  sub_100008A94(v0 + 9);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10002C228(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DCD20, &unk_1000AB820);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10002C298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v10 = type metadata accessor for ApsListener();
  v61[3] = v10;
  v61[4] = &off_1000D0418;
  v61[0] = a3;
  v11 = type metadata accessor for BagProvider();
  v59 = v11;
  v60 = &off_1000D0860;
  v58[0] = a4;
  v56 = &type metadata for TempoApiAgent;
  v57 = &off_1000CFC28;
  v55[0] = swift_allocObject();
  memcpy((v55[0] + 16), a5, 0x60uLL);
  v12 = type metadata accessor for WatchlistSuppressNotificationsXPCConnectionManager();
  v53 = v12;
  v54 = &off_1000D38A0;
  v52[0] = a6;
  v44 = type metadata accessor for DirectActivityRequestXPCServer();
  v13 = objc_allocWithZone(v44);
  v14 = sub_10000B90C(v61, v10);
  v15 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = v59;
  v20 = sub_10000B90C(v58, v59);
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = v56;
  v26 = sub_10000B90C(v55, v56);
  v27 = *(v25[-1].Description + 8);
  __chkstk_darwin(v26);
  v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  v31 = v53;
  v32 = sub_10000B90C(v52, v53);
  v33 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = (&v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v17;
  v38 = *v23;
  v39 = *v35;
  v51[3] = v10;
  v51[4] = &off_1000D0418;
  v51[0] = v37;
  v50[3] = v11;
  v50[4] = &off_1000D0860;
  v50[0] = v38;
  v49[3] = &type metadata for TempoApiAgent;
  v49[4] = &off_1000CFC28;
  v49[0] = swift_allocObject();
  memcpy((v49[0] + 16), v29, 0x60uLL);
  v48[3] = v12;
  v48[4] = &off_1000D38A0;
  v48[0] = v39;
  v40 = &v13[OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_entitlement];
  v41 = v46;
  *v40 = v45;
  *(v40 + 1) = v41;
  sub_10000BC8C(v51, &v13[OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_apsListening]);
  sub_10000BC8C(v50, &v13[OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_metadataProvider]);
  sub_10000BC8C(v49, &v13[OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_tempoApiProvider]);
  sub_10000BC8C(v48, &v13[OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_supressionManager]);
  v47.receiver = v13;
  v47.super_class = v44;
  v42 = objc_msgSendSuper2(&v47, "init");
  sub_100008A94(v48);
  sub_100008A94(v49);
  sub_100008A94(v50);
  sub_100008A94(v51);
  sub_100008A94(v52);
  sub_100008A94(v55);
  sub_100008A94(v58);
  sub_100008A94(v61);
  return v42;
}

uint64_t sub_10002C78C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C7CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000089A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002C820()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C858()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002C904;

  return sub_10000EC30();
}

uint64_t sub_10002C904()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002C9F8()
{
  v1 = type metadata accessor for PersistentStore();
  v2 = PersistentStore.__allocating_init()();

  sub_10002B750(v21);
  sub_10000B90C(v21, v21[3]);
  sub_10000BD44();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v7 = sub_10002D80C(v6, v18[0]);
  v8(v7);
  v19 = &type metadata for ImageDownloader;
  v20 = &off_1000D2880;
  *v18 = *v0;
  type metadata accessor for LogoRepository();
  v9 = swift_allocObject();
  sub_10000B90C(v18, &type metadata for ImageDownloader);
  sub_10000BD44();
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v14 = sub_10002D80C(v13, v18[0]);
  v15(v14);
  *(v9 + 40) = &type metadata for ImageDownloader;
  *(v9 + 48) = &off_1000D2880;
  *(v9 + 16) = *v0;
  sub_100008A94(v18);
  sub_100008A94(v21);
  type metadata accessor for DataRepository();
  v16 = swift_allocObject();
  v16[5] = v1;
  v16[6] = &protocol witness table for PersistentStore;
  v16[2] = v2;
  v16[7] = &_swiftEmptySetSingleton;
  v16[8] = v9;

  qword_1000E6CD0 = v16;
  return result;
}

uint64_t sub_10002CBC8()
{
  v1 = v0[6];
  sub_100008614(v0 + 2, v0[5]);
  dispatch thunk of PersistentStorable.initializeStoreIfNeeded()();
  v7 = &type metadata for TaskRequestProvider;
  v8 = &off_1000D31D8;
  v4[0] = 0xD00000000000001FLL;
  v4[1] = 0x80000001000B1A90;
  v5 = 0;
  v6 = vdupq_n_s64(0x12CuLL);
  v2 = swift_allocObject();
  swift_weakInit();

  sub_100029FA8(sub_10002D734, v2, 1);

  sub_10002A8B4(v4);
}

uint64_t sub_10002CCC0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a1(1);
  }

  v5 = Strong;
  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v8 = *(qword_1000E6CC0 + 72);
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;

  sub_100003998(&qword_1000DC9A0, &qword_1000AB3D0);
  sub_10002D788();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10002CE38(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a2[6];
  sub_100008614(a2 + 2, a2[5]);
  dispatch thunk of PersistentStorable.cleanUpFileSystem(olderThan:)();
  return a3(1);
}

uint64_t sub_10002D018()
{
  v1 = v0[6];
  sub_100008614(v0 + 2, v0[5]);
  return dispatch thunk of PersistentStorable.writeAPSMessage(_:canonicalId:isConventionalOrUnified:)();
}

uint64_t sub_10002D264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = v6[5];
  v14 = v6[6];
  sub_100008614(v6 + 2, v13);
  return a6(a1, a2, a3, a4, a5, v13, v14);
}

uint64_t sub_10002D48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v28 = a2;
  v6 = type metadata accessor for SportsLogoSize();
  sub_10000BD44();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v4[8];
  v15 = v4[5];
  v30 = v4[6];
  v31 = v14;
  sub_100008614(v4 + 2, v15);
  v16 = *(v8 + 104);
  v16(v13, enum case for SportsLogoSize.default(_:), v6);
  sub_10002D82C();
  v17 = dispatch thunk of PersistentStorable.pathForLogo(_:size:fileExtension:)();
  v29 = v18;
  v30 = v17;
  v19 = *(v8 + 8);
  v19(v13, v6);
  v20 = v4[5];
  v27[1] = v4[6];
  sub_100008614(v4 + 2, v20);
  v16(v13, enum case for SportsLogoSize.small(_:), v6);
  v21 = v28;
  sub_10002D82C();
  v22 = dispatch thunk of PersistentStorable.pathForLogo(_:size:fileExtension:)();
  v24 = v23;
  v19(v13, v6);
  v25 = sub_10009A5F8(a1, v21, v32, v33, v30, v29, v22, v24);

  return v25;
}

uint64_t *sub_10002D674()
{
  sub_100008A94(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t sub_10002D6A4()
{
  sub_10002D674();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_10002D6FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D73C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10002D788()
{
  result = qword_1000DC9A8;
  if (!qword_1000DC9A8)
  {
    sub_1000089A8(&qword_1000DC9A0, &qword_1000AB3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC9A8);
  }

  return result;
}

uint64_t sub_10002D7EC()
{

  return swift_once();
}

uint64_t sub_10002D840(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000BC8C(a1, v9);
  sub_10000BC30(a3, v8);
  v5 = swift_allocObject();
  sub_10002D8B8(v9, a2, v8);
  v6 = a2;
  sub_10002D910();
  return v5;
}

void *sub_10002D8B8(__int128 *a1, uint64_t a2, const void *a3)
{
  v3[31] = &_swiftEmptySetSingleton;
  sub_10000A8F8(a1, (v3 + 2));
  v3[7] = a2;
  memcpy(v3 + 8, a3, 0xB8uLL);
  return v3;
}

void sub_10002D910()
{
  v1 = v0;
  if (qword_1000DBA30 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    v3 = sub_100007DE8(v2, qword_1000E6D78);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = sub_10002F228();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Checking to see if we need to retry unsubscribe for subscriptions...", v6, 2u);
      sub_10002F1FC();
    }

    v7 = *(v1 + 48);
    sub_100008614((v1 + 16), *(v1 + 40));
    v8 = dispatch thunk of PersistentStorable.allEventSubscriptionsToConsumers(isConventionalOrUnified:)();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v9, v10))
    {
      break;
    }

    v12 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v71[0] = v62;
    *v12 = 136315138;
    v13 = *(v8 + 16);
    if (!v13)
    {
LABEL_30:
      sub_100003998(&qword_1000DC5D0, &qword_1000AB010);
      v34 = Array.description.getter();
      v36 = v35;

      v37 = sub_1000170D4(v34, v36, v71);

      *(v12 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v9, v10, "Checking to see if we need to retry unsubscribe for subscriptions %s ...", v12, 0xCu);
      sub_100008A94(v62);
      sub_10002F1FC();

      sub_10002F1FC();

      break;
    }

    v56 = v12;
    HIDWORD(v57) = v10;
    v58 = v9;
    v59 = 0;
    v60 = v3;
    v61 = v1;
    sub_100017B48(0, v13, 0);
    v16 = sub_10001F0A8(v8);
    v1 = 0;
    v17 = v8 + 64;
    v63 = v8 + 72;
    v64 = v13;
    v65 = v8 + 64;
    if ((v16 & 0x8000000000000000) == 0)
    {
      while (v16 < 1 << *(v8 + 32))
      {
        v18 = v16 >> 6;
        if ((*(v17 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
        {
          goto LABEL_38;
        }

        if (*(v8 + 36) != v14)
        {
          goto LABEL_39;
        }

        HIDWORD(v66) = v15;
        v67 = v1;
        v68 = v14;
        v19 = (*(v8 + 48) + 16 * v16);
        v20 = v19[1];
        oslog = *v19;
        v21 = *(*(v8 + 56) + 8 * v16);
        v1 = *(&_swiftEmptyArrayStorage + 2);
        v22 = *(&_swiftEmptyArrayStorage + 3);

        if (v1 >= v22 >> 1)
        {
          sub_100017B48((v22 > 1), v1 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v1 + 1;
        v23 = (&_swiftEmptyArrayStorage + 24 * v1);
        v23[4] = oslog;
        v23[5] = v20;
        v23[6] = v21;
        v24 = 1 << *(v8 + 32);
        if (v16 >= v24)
        {
          goto LABEL_40;
        }

        v17 = v8 + 64;
        v25 = *(v65 + 8 * v18);
        if ((v25 & (1 << v16)) == 0)
        {
          goto LABEL_41;
        }

        if (*(v8 + 36) != v68)
        {
          goto LABEL_42;
        }

        v26 = v25 & (-2 << (v16 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v16 & 0x7FFFFFFFFFFFFFC0;
          v27 = v64;
          v28 = v67;
        }

        else
        {
          v29 = v18 << 6;
          v30 = v18 + 1;
          v27 = v64;
          v31 = (v63 + 8 * v18);
          v28 = v67;
          while (v30 < (v24 + 63) >> 6)
          {
            v33 = *v31++;
            v32 = v33;
            v29 += 64;
            ++v30;
            if (v33)
            {
              sub_10001F0EC(v16, v68, BYTE4(v66) & 1);
              v24 = __clz(__rbit64(v32)) + v29;
              goto LABEL_26;
            }
          }

          sub_10001F0EC(v16, v68, BYTE4(v66) & 1);
        }

LABEL_26:
        v1 = v28 + 1;
        if (v1 == v27)
        {
          LOBYTE(v10) = BYTE4(v57);
          v12 = v56;
          goto LABEL_30;
        }

        v15 = 0;
        v14 = *(v8 + 36);
        v16 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  v38 = sub_10002EDE8(v8);

  v39 = v38[2];

  osloga = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  v41 = os_log_type_enabled(osloga, v40);
  if (v39)
  {
    if (v41)
    {
      *sub_10002F228() = 0;
      sub_10002F208(&_mh_execute_header, v42, v43, "Subscriptions found with empty consumers. Starting XPC task to retry unsubscribe", v44, v45, v46, v47, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, osloga);
      sub_10002F1FC();
    }

    v74 = &type metadata for TaskRequestProvider;
    v75 = &off_1000D31D8;
    v71[0] = 0xD00000000000002ALL;
    v71[1] = 0x80000001000B1B00;
    v72 = 1;
    v73 = xmmword_1000AB880;
    v48 = swift_allocObject();
    swift_weakInit();

    sub_100029FA8(sub_10002EDE0, v48, 1);

    sub_10002A8B4(v71);
  }

  else
  {
    if (v41)
    {
      *sub_10002F228() = 0;
      sub_10002F208(&_mh_execute_header, v49, v50, "No subscriptions with empty consumers found.", v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, osloga);
      sub_10002F1FC();
    }
  }
}