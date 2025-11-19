uint64_t sub_10031048C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&unk_10050AA60, &qword_1004151F8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 2 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 2 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10031072C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_100502C10, &unk_100409CD0);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

char *sub_1003109EC()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v33);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&unk_10050AA38, &qword_1004151D8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v35;
        v21 = *(v35 + 72) * v19;
        v23 = v32;
        v22 = v33;
        (*(v35 + 16))(v32, *(v4 + 48) + v21, v33);
        v19 *= 24;
        v24 = *(v4 + 56) + v19;
        v36 = *v24;
        v25 = *(v24 + 16);
        v26 = v34;
        result = (*(v20 + 32))(*(v34 + 48) + v21, v23, v22);
        v27 = *(v26 + 56) + v19;
        *v27 = v36;
        *(v27 + 16) = v25;
        v14 = v37;
      }

      while (v37);
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

        v1 = v28;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v29 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_100310CB8()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_10050AA50, &qword_1004151E8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_100310F28()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_10050AA58, &qword_1004151F0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 2 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 2 * v19) = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1003111C0()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AA30, &qword_1004151D0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10031130C()
{
  v1 = v0;
  sub_100068FC4(&unk_100504000, &unk_10040B350);
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
        v22 = 32 * v17;
        sub_1000754F0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100075D50(v25, (*(v4 + 56) + v22));
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

void *sub_1003114D8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(_BYTE *, unint64_t))
{
  v5 = v3;
  sub_100068FC4(a1, a2);
  v6 = *v3;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        sub_1000BC094(*(v6 + 56) + 40 * v21, v23);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = a3(v23, *(v8 + 56) + 40 * v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        goto LABEL_21;
      }

      v20 = *(v6 + 64 + 8 * v12);
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
    *v5 = v8;
  }

  return result;
}

void *sub_100311678(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        v21 = *(*(v4 + 48) + 16 * v19);
        *(*(v6 + 48) + 16 * v19) = v21;
        *(*(v6 + 56) + 8 * v19) = v20;
        sub_100069E2C(v21, *(&v21 + 1));
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_1003117D8()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AAE8, &qword_100415240);
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
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        sub_1000BC094(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        sub_1000BC104(v25, *(v4 + 56) + v22);
        result = sub_100069E2C(v20, v21);
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

void *sub_100311984()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AAE0, &qword_100409D10);
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
        v18 = 16 * v17;
        v17 *= 24;
        v19 = *(v2 + 56) + v17;
        v20 = *v19;
        v21 = *(*(v2 + 48) + v18);
        v23 = *(v19 + 8);
        *(*(v4 + 48) + v18) = v21;
        v22 = *(v4 + 56) + v17;
        *v22 = v20;
        *(v22 + 8) = v23;
        sub_100069E2C(v21, *(&v21 + 1));
        result = sub_100069E2C(v20, v23);
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

void *sub_100311B20()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AAD8, &qword_100415238);
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
        v18 = *(v2 + 56) + 32 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
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

void *sub_100311CA0()
{
  v1 = v0;
  sub_100068FC4(&qword_100502C50, &qword_100409D18);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_100069E2C(v19, *(&v19 + 1));
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

char *sub_100311E08()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_10050AA48, &qword_1004151E0);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = (v26 + 16 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = (*(v31 + 56) + v27);
        v6 = v37;
        *v32 = v29;
        v32[1] = v30;
        result = sub_100069E2C(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_100312094()
{
  v1 = v0;
  sub_100068FC4(&qword_1005092B0, qword_100413D00);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1003121E0()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AAD0, &qword_100415230);
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
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v20 = *(v4 + 56) + 16 * v17;
        *v20 = v19;
        *(v20 + 8) = v18;
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

id sub_100312350()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AB98, &qword_100415270);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_100069E2C(v19, *(&v19 + 1));
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

void *sub_1003124BC()
{
  v1 = v0;
  sub_100068FC4(&unk_10050AB60, &qword_100415248);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

id sub_100312654()
{
  v1 = v0;
  sub_100068FC4(&qword_100504758, &qword_10040BB08);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_1003127B4()
{
  v1 = v0;
  sub_100068FC4(&unk_10050AAB0, &qword_100415218);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

void *sub_100312924()
{
  v1 = v0;
  sub_100068FC4(&unk_10050AC10, &qword_100415290);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        sub_100092ECC(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void *sub_100312AD8()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AB78, &qword_100415250);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
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

char *sub_100312C4C()
{
  v1 = v0;
  v36 = type metadata accessor for Date();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_100502D00, &qword_100409DD8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_100312EE0()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&unk_10050ABD0, &unk_100413B50);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1003131B8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        v21 = *(*(v4 + 48) + 16 * v19);
        *(*(v6 + 48) + 16 * v19) = v21;
        *(*(v6 + 56) + 8 * v19) = v20;
        sub_100069E2C(v21, *(&v21 + 1));
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_100313318()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AAC0, &qword_100415220);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void *sub_10031347C()
{
  v1 = v0;
  sub_100068FC4(&qword_100502C40, &unk_100409D00);
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
        sub_100092ECC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1000754F0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100075D50(v22, (*(v4 + 56) + v17));
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

char *sub_100313620()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_10050AB88, &qword_100415260);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1003138B4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_100313A2C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_100313B8C()
{
  v1 = v0;
  sub_100068FC4(&qword_100502C78, &qword_100409D58);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100313CD8()
{
  v1 = v0;
  sub_100068FC4(&unk_10050AAF0, &qword_100409D50);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_100069E2C(v18, *(&v18 + 1));
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

id sub_100313E40(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_100313FC4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v37);
  v36 = &v31 - v8;
  sub_100068FC4(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v21 = v11;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v25 = v22 | (v15 << 6);
        v26 = v39;
        v27 = *(v39 + 72) * v25;
        v29 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v27, v37);
        v30 = *(*(v9 + 56) + 8 * v25);
        result = (*(v26 + 32))(*(v21 + 48) + v27, v29, v28);
        *(*(v21 + 56) + 8 * v25) = v30;
        v19 = v40;
      }

      while (v40);
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v24 = *(v33 + v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v40 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_100314238()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AB90, &qword_100415268);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1003143A8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 4 * v19) = *(*(v4 + 48) + 4 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

id sub_1003144F4()
{
  v1 = v0;
  sub_100068FC4(&qword_100502C80, &qword_100409D60);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1000754F0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100075D50(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_100314674()
{
  v1 = v0;
  sub_100068FC4(&unk_10050AA60, &qword_1004151F8);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOWORD(v18) = *(*(v2 + 56) + 2 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 2 * v17) = v18;
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

void *sub_1003147DC()
{
  v1 = v0;
  sub_100068FC4(&qword_100502C10, &unk_100409CD0);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_100314954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v28 = a1;
  v29 = a2;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_10008C808(a4);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  result = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 >= result && (a5 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v22 >= result && (a5 & 1) == 0)
  {
    result = sub_1003109EC();
    goto LABEL_9;
  }

  sub_100309B08(result, a5 & 1);
  v23 = *v6;
  result = sub_10008C808(a4);
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = result;
LABEL_9:
  v25 = v29;
  v26 = *v6;
  if (v21)
  {
    v27 = (v26[7] + 24 * v17);
    *v27 = v28;
    v27[1] = v25;
    v27[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v14, a4, v10);
    return sub_100317538(v17, v14, v28, v25, a3, v26);
  }

  return result;
}

uint64_t sub_100314B38(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10008C8DC(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_10030D60C(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_10008C8DC(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_100311678(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;

  return sub_100069E2C(a2, a3);
}

uint64_t sub_100314CF0(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10008C808(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_100310CB8();
    goto LABEL_7;
  }

  sub_100309F28(result, a3 & 1);
  v22 = *v4;
  result = sub_10008C808(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_100317610(v15, v12, a1, v21);
}

uint64_t sub_100314E8C(__int16 a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10008C808(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + 2 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_100310F28();
    goto LABEL_7;
  }

  sub_10030A2E8(result, a3 & 1);
  v22 = *v4;
  result = sub_10008C808(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1003176C8(v15, v12, a1, v21);
}

unint64_t sub_100315054(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10008C9C8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1003111C0();
    result = v17;
    goto LABEL_8;
  }

  sub_10030A6A8(v14, a3 & 1);
  v18 = *v4;
  result = sub_10008C9C8(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_OWORD *sub_100315178(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C908(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10031130C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10030A928(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10008C908(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_1000752F4(v23);

    return sub_100075D50(a1, v23);
  }

  else
  {
    sub_100317780(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1003152F4(uint64_t a1, Swift::UInt a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t, _BYTE *), uint64_t (*a7)(uint64_t, uint64_t *))
{
  v11 = v7;
  v15 = *v7;
  v16 = sub_10008C9C8(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      sub_1003114D8(a4, a5, a6);
      v16 = v24;
      goto LABEL_8;
    }

    sub_10030ABE0(v21, a3 & 1, a4, a5, a6);
    v25 = *v11;
    v16 = sub_10008C9C8(a2);
    if ((v22 & 1) != (v26 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if ((v22 & 1) == 0)
  {
    return sub_1003177EC(v16, a2, a1, v27, a6);
  }

  v28 = (v27[7] + 40 * v16);
  sub_1000752F4(v28);

  return a7(a1, v28);
}

uint64_t sub_100315484(__int128 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C8DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1003117D8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10030AEA0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10008C8DC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    sub_1000752F4(v23);

    return sub_1000BC104(a1, v23);
  }

  else
  {
    sub_1003178A4(v11, a2, a3, a1, v22);

    return sub_100069E2C(a2, a3);
  }
}

uint64_t sub_1003155DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_10008C8DC(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_10030B160(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_10008C8DC(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_100311984();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v28 = *v27;
    v29 = v27[1];
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;

    return sub_10006A178(v28, v29);
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v31 = (v26[6] + 16 * v15);
  *v31 = a4;
  v31[1] = a5;
  v32 = (v26[7] + 24 * v15);
  *v32 = a1;
  v32[1] = a2;
  v32[2] = a3;
  v33 = v26[2];
  v19 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v34;

  return sub_100069E2C(a4, a5);
}

unint64_t sub_100315784(uint64_t a1, uint64_t a2, char a3, uint64_t a4, Swift::UInt a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_10008C9C8(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_10030B430(v20, a6 & 1);
      v24 = *v7;
      result = sub_10008C9C8(a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_100311B20();
      result = v23;
    }
  }

  v26 = *v7;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + 8 * result) = a5;
    v30 = v26[7] + 32 * result;
    *v30 = a1;
    *(v30 + 8) = a2;
    *(v30 + 16) = a3;
    *(v30 + 24) = a4;
    v31 = v26[2];
    v19 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v19)
    {
      v26[2] = v32;
      return result;
    }

    goto LABEL_15;
  }

  v27 = v26[7] + 32 * result;
  v28 = *(v27 + 8);
  v29 = *(v27 + 24);
  *v27 = a1;
  *(v27 + 8) = a2;
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
}

unint64_t sub_100315914(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10008C8DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10030B6F4(v16, a4 & 1);
      v20 = *v5;
      result = sub_10008C8DC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100311CA0();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;

  return sub_100069E2C(a2, a3);
}

uint64_t sub_100315A7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v32 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_10008C808(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_100311E08();
      goto LABEL_9;
    }

    sub_10030B994(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_10008C808(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v32;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = *v27;
    v29 = v27[1];
    *v27 = v32;
    v27[1] = a2;

    return sub_10006A178(v28, v29);
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_100317914(v16, v13, v25, a2, v26);
  }
}

unint64_t sub_100315C58(uint64_t a1, char a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10008C9C8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10030BFE4(v16, a4 & 1);
      v20 = *v5;
      result = sub_10008C9C8(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1003121E0();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = v22[7] + 16 * result;
    *v25 = a1;
    *(v25 + 8) = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = v22[7] + 16 * result;
  v24 = *v23;
  *v23 = a1;
  *(v23 + 8) = a2;
}

void sub_100315DC0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C8DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10030C288(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10008C8DC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100312350();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;

  sub_100069E2C(a2, a3);
}

uint64_t sub_100315F3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C908(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10030C52C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10008C908(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1003124BC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void sub_1003160B8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10008CB58(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10030C7FC(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10008CB58(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_10009393C(0, &qword_100504760, RBSAssertion_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_100312654();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  v24 = a2;
}

unint64_t sub_100316230(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10008CBA8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10030CA64(v14, a3 & 1);
      v18 = *v4;
      result = sub_10008CBA8(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1003127B4();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 4 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_100316390(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C908(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10030CCEC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10008C908(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100312924();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_10018DC34(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

uint64_t sub_100316520(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C908(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10030CFBC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10008C908(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100312AD8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_10031669C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10008C908(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100312C4C();
      goto LABEL_7;
    }

    sub_10030D264(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_10008C908(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1003179D8(v12, a2, a3, a1, v18);
}

uint64_t sub_100316830(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C8DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10030E074(v16, a4 & 1, &qword_10050AC20, &qword_100415298);
      v20 = *v5;
      v11 = sub_10008C8DC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1003131B8(&qword_10050AC20, &qword_100415298);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;

  return sub_100069E2C(a2, a3);
}

_OWORD *sub_1003169D4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10008CA7C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10031347C();
      goto LABEL_7;
    }

    sub_10030E588(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_10008CA7C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100092ECC(a2, v22);
      return sub_100317ACC(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1000752F4(v17);

  return sub_100075D50(a1, v17);
}

uint64_t sub_100316B20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10008C808(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100313620();
      goto LABEL_7;
    }

    sub_10030E840(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_10008C808(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100317B48(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

unint64_t sub_100316CEC(char a1, unsigned __int16 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10008CA34(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100313B8C();
    result = v17;
    goto LABEL_8;
  }

  sub_10030F184(v14, a3 & 1);
  v18 = *v4;
  result = sub_10008CA34(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 2 * result) = a2;
    *(v20[7] + result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100316E10(uint64_t a1, uint64_t a2, unsigned __int16 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10008CA34(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10030F3EC(v16, a4 & 1);
      v20 = *v5;
      result = sub_10008CA34(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100313CD8();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 2 * result) = a3;
    v26 = (v22[7] + 16 * result);
    *v26 = a1;
    v26[1] = a2;
    v27 = v22[2];
    v15 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v15)
    {
      v22[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = *v23;
  v25 = v23[1];
  *v23 = a1;
  v23[1] = a2;

  return sub_10006A178(v24, v25);
}

void sub_100316F84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10008C908(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_10030F668(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_10008C908(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_100313E40(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

unint64_t sub_100317120(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10008D218(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_10030FCC4(v14, a2 & 1);
      v18 = *v4;
      result = sub_10008D218(a3);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100314238();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a3;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_100317288(uint64_t a1, int a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  result = sub_10008CBA8(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_10030FF40(v18, a3 & 1, a4, a5);
      v22 = *v8;
      result = sub_10008CBA8(a2);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1003143A8(a4, a5);
      result = v21;
    }
  }

  v24 = *v8;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 4 * result) = a2;
    *(v24[7] + 8 * result) = a1;
    v27 = v24[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v24[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  v25 = v24[7];
  v26 = *(v25 + 8 * result);
  *(v25 + 8 * result) = a1;
}

_OWORD *sub_1003173F8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10008CC58(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1003144F4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1003101AC(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_10008CC58(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_1000752F4(v20);

    return sub_100075D50(a1, v20);
  }

  else
  {
    sub_100317C44(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_100317538(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = type metadata accessor for UUID();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_100317610(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1003176C8(unint64_t a1, uint64_t a2, __int16 a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 2 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_100317780(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100075D50(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1003177EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = a5(a3, a4[7] + 40 * a1);
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_10031785C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1003178A4(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000BC104(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_100317914(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1003179D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_100317A88(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_100317ACC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100075D50(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_100317B48(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_100317C00(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_100317C44(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100075D50(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_100317CAC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100317CFC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_100317D60(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    type metadata accessor for CredentialInternal();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

void SECServer.listCredentialsInternal(reply:)(void (*a1)(void, uint64_t), uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-v6];
  v8 = [objc_opt_self() currentConnection];
  if (v8)
  {
    v9 = v8;
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 valueForEntitlement:v10];

    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (*(&v22 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v20[15] == 1)
      {
        v12 = type metadata accessor for TaskPriority();
        (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
        v13 = swift_allocObject();
        v13[2] = 0;
        v13[3] = 0;
        v13[4] = a1;
        v13[5] = a2;

        sub_1001F9BE8(0, 0, v7, &unk_1004152B0, v13);

        return;
      }
    }

    else
    {

      sub_100075768(v23, &qword_100502420, &qword_10040F310);
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000958E4(v14, qword_10051B2C8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "listCredentialsInternal: Client not entitled", v17, 2u);
  }

  sub_10009591C();
  v18 = swift_allocError();
  *v19 = 15;
  a1(0, v18);
}

uint64_t sub_100318110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return _swift_task_switch(sub_100318130, 0, 0);
}

uint64_t sub_100318130()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 64) = qword_10051B858;

  return _swift_task_switch(sub_1003181C8, v1, 0);
}

uint64_t sub_1003181C8()
{
  v1 = v0[8];
  v0[9] = sub_100362B68(0, 0);
  v0[10] = 0;

  return _swift_task_switch(sub_10031825C, 0, 0);
}

uint64_t sub_10031825C()
{
  v0[5] = v0[9];
  v1 = swift_allocObject();
  v0[11] = v1;
  v1[2] = v0 + 5;
  v1[3] = 0xD000000000000019;
  v1[4] = 0x800000010046E720;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1002FE82C;

  return sub_1001FBFAC(0xD000000000000019, 0x800000010046E720, &unk_1004152F8, v1);
}

void SECServer.deleteCredential(uuid:reply:)(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - v11;
  v13 = [objc_opt_self() currentConnection];
  if (v13)
  {
    v14 = v13;
    v27 = a1;
    v15 = a2;
    v16 = String._bridgeToObjectiveC()();
    v17 = [v14 valueForEntitlement:v16];

    if (v17)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
    }

    v31[0] = v29;
    v31[1] = v30;
    a2 = v15;
    if (*(&v30 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v28 == 1)
      {
        v18 = type metadata accessor for TaskPriority();
        (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
        (*(v7 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v6);
        v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        (*(v7 + 32))(v20 + v19, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v21 = a2;
        v21[1] = a3;

        sub_1001F9BE8(0, 0, v12, &unk_1004152C0, v20);

        return;
      }
    }

    else
    {

      sub_100075768(v31, &qword_100502420, &qword_10040F310);
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000958E4(v22, qword_10051B2C8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "deleteCredential: Client not entitled", v25, 2u);
  }

  sub_10009591C();
  swift_allocError();
  *v26 = 15;
  a2();
}

void SECServer.deleteApplication(identifier:reply:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23[-v10];
  v12 = [objc_opt_self() currentConnection];
  if (v12)
  {
    v13 = v12;
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 valueForEntitlement:v14];

    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26[0] = v24;
    v26[1] = v25;
    if (*(&v25 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v23[15] == 1)
      {
        v16 = type metadata accessor for TaskPriority();
        (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
        v17 = swift_allocObject();
        v17[2] = 0;
        v17[3] = 0;
        v17[4] = a1;
        v17[5] = a2;
        v17[6] = a3;
        v17[7] = a4;

        sub_1001F9BE8(0, 0, v11, &unk_1004152D0, v17);

        return;
      }
    }

    else
    {

      sub_100075768(v26, &qword_100502420, &qword_10040F310);
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000958E4(v18, qword_10051B2C8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "deleteCredential: Client not entitled", v21, 2u);
  }

  sub_10009591C();
  swift_allocError();
  *v22 = 15;
  a3();
}

uint64_t sub_100318CA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_100318110(a1, v4, v5, v7, v6);
}

uint64_t sub_100318D68(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10012E598;

  return sub_1002FEFCC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100318E98(uint64_t a1)
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
  v10[1] = sub_10012E598;

  return sub_1002FF6D4(a1, v4, v5, v6, v7, v9, v8);
}

void sub_100318F6C(void (**a1)(void, void, void))
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = objc_opt_self();
  _Block_copy(a1);
  v8 = [v7 currentConnection];
  if (v8)
  {
    v9 = v8;
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 valueForEntitlement:v10];

    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (*(&v22 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v20[15])
      {
        v12 = type metadata accessor for TaskPriority();
        (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
        v13 = swift_allocObject();
        v13[2] = 0;
        v13[3] = 0;
        v13[4] = sub_10021BE6C;
        v13[5] = v6;

        sub_1001F9BE8(0, 0, v5, &unk_1004152E8, v13);

        return;
      }
    }

    else
    {

      sub_100075768(v23, &qword_100502420, &qword_10040F310);
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000958E4(v14, qword_10051B2C8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "listCredentialsInternal: Client not entitled", v17, 2u);
  }

  sub_10009591C();
  swift_allocError();
  *v18 = 15;
  v19 = _convertErrorToNSError(_:)();
  (a1)[2](a1, 0, v19);
}

void sub_1003192DC(uint64_t a1, void (**a2)(void, void))
{
  v26 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v11 = objc_opt_self();
  _Block_copy(a2);
  v12 = [v11 currentConnection];
  if (v12)
  {
    v13 = v12;
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 valueForEntitlement:v14];

    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30[0] = v28;
    v30[1] = v29;
    if (*(&v29 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v27)
      {
        v16 = type metadata accessor for TaskPriority();
        (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
        (*(v4 + 16))(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v3);
        v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        (*(v4 + 32))(v18 + v17, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
        v19 = (v18 + ((v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v19 = sub_10012E5A0;
        v19[1] = v10;

        sub_1001F9BE8(0, 0, v9, &unk_1004152E0, v18);

        return;
      }
    }

    else
    {

      sub_100075768(v30, &qword_100502420, &qword_10040F310);
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000958E4(v20, qword_10051B2C8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "deleteCredential: Client not entitled", v23, 2u);
  }

  sub_10009591C();
  swift_allocError();
  *v24 = 15;
  v25 = _convertErrorToNSError(_:)();
  (a2)[2](a2, v25);
}

void sub_10031972C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24[-v8];
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = objc_opt_self();
  _Block_copy(a3);
  v12 = [v11 currentConnection];
  if (v12)
  {
    v13 = v12;
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 valueForEntitlement:v14];

    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27[0] = v25;
    v27[1] = v26;
    if (*(&v26 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v24[15])
      {
        v16 = type metadata accessor for TaskPriority();
        (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
        v17 = swift_allocObject();
        v17[2] = 0;
        v17[3] = 0;
        v17[4] = a1;
        v17[5] = a2;
        v17[6] = sub_10012DE64;
        v17[7] = v10;

        sub_1001F9BE8(0, 0, v9, &unk_1004152D8, v17);

        return;
      }
    }

    else
    {

      sub_100075768(v27, &qword_100502420, &qword_10040F310);
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000958E4(v18, qword_10051B2C8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "deleteCredential: Client not entitled", v21, 2u);
  }

  sub_10009591C();
  swift_allocError();
  *v22 = 15;
  v23 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v23);
}

uint64_t sub_100319AB4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100319AF4(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000C288C;

  return sub_1002FEFCC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100319C24()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100319C5C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000C288C;

  return sub_100204558(a1, a2, v6, v7, v8);
}

uint64_t sub_100319D60()
{
  v0 = type metadata accessor for Schema.Version();
  sub_1000B6A94(v0, qword_10051B7C0);
  sub_1000958E4(v0, qword_10051B7C0);
  return Schema.Version.init(_:_:_:)();
}

uint64_t sub_100319DC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  sub_10031CA68(&qword_10050AF08, &qword_10050AF10);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_100319F0C()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  sub_10031CA68(&qword_10050AF08, &qword_10050AF10);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10031A04C()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  sub_10031CA68(&qword_10050AEF0, &qword_10050AF00);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10031A130@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10031A238(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10031A30C()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10031A408()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10031A4B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  sub_10025CC88(&qword_100508150);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10031A5EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10031A6B0()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  sub_10025CC88(&qword_100508150);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10031A7DC()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  sub_10025CC88(&qword_100508158);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10031A8AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v5;
  return result;
}

uint64_t sub_10031A9B8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10031AA88()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_10031AB8C()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10031AC34(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  sub_10031C94C(&qword_10050AEE8, &qword_100506270);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_10031AD74(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10[-v6];
  sub_1002863E4(a1, &v10[-v6]);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10031C8E4(v7);
}

uint64_t sub_10031AEA4()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  sub_10031C94C(&qword_10050AEE8, &qword_100506270);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_10031AFE4()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  sub_10031C94C(&qword_10050AEE0, &qword_1005062A0);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10031B0C4(uint64_t a1)
{
  v2 = v1;
  v26 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v4 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v6 = &v25 - v5;
  v7 = type metadata accessor for SEStorageMockPassSchemaV1.PassEntry();
  *(v2 + 48) = sub_100068FC4(&qword_10050AF18, &qword_100415638);
  v8 = sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  v27 = v7;
  v28 = v7;
  v29 = v8;
  v30 = v8;
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000B9634((v2 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v2 + 16) = 1;
  ObservationRegistrar.init()();
  v9 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
  v11 = v10;
  v12 = *(v2 + 56);
  sub_1000752B0((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v27 = v9;
  v28 = v11;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v13 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.appletTypes.getter();
  v14 = *(v2 + 56);
  sub_1000752B0((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v27 = v13;
  sub_100068FC4(&qword_10050AEF8, &qword_100415630);
  sub_10031CA68(&qword_10050AEF0, &qword_10050AF00);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v15 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.title.getter();
  v17 = v16;
  v18 = *(v2 + 56);
  sub_1000752B0((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v27 = v15;
  v28 = v17;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  SEStorageManagementViewModel.WalletUsageGroup.PassEntry.lastUsedDate.getter();
  v19 = *(v2 + 56);
  sub_1000752B0((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_10031C94C(&qword_10050AEE0, &qword_1005062A0);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10031C8E4(v6);
  *(v2 + 16) = 0;
  v20 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.instanceAIDs.getter();
  v21 = *(v2 + 56);
  sub_1000752B0((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v27 = v20;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10025CC88(&qword_100508158);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  LOBYTE(v15) = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.isDeletable.getter();
  v22 = *(v2 + 56);
  sub_1000752B0((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  LOBYTE(v27) = v15 & 1;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v23 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  (*(*(v23 - 8) + 8))(a1, v23);
  return v2;
}

uint64_t sub_10031B580@<X0>(uint64_t a1@<X8>)
{
  v6[5] = a1;
  v2 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v6[4] = v6 - v4;
  v7 = v1;
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  PersistentModel.getValue<A>(forKey:)();

  v6[2] = v8;
  v6[3] = v7;
  v7 = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10025CC88(&qword_100508150);
  PersistentModel.getValue<A>(forKey:)();

  v6[1] = v7;
  v7 = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CA68(&qword_10050AF08, &qword_10050AF10);
  PersistentModel.getValue<A>(forKey:)();

  v6[0] = v7;
  v7 = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v7 = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v7 = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031C94C(&qword_10050AEE8, &qword_100506270);
  PersistentModel.getValue<A>(forKey:)();

  return SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(passUniqueID:instanceAIDs:appletTypes:title:usage:isDeletable:lastUsedDate:)();
}

uint64_t sub_10031B9A4(__int128 *a1)
{
  type metadata accessor for SEStorageMockPassSchemaV1.PassEntry();
  *(v1 + 48) = sub_100068FC4(&qword_10050AF18, &qword_100415638);
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000B9634((v1 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v1 + 16) = 1;
  ObservationRegistrar.init()();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_1000752F4((v1 + 24));
  sub_1000BC104(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10031BAD8()
{
  sub_1000752F4(v0 + 3);
  v1 = OBJC_IVAR____TtCO10seserviced25SEStorageMockPassSchemaV19PassEntry___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SEStorageMockPassSchemaV1.PassEntry()
{
  result = qword_10050AC60;
  if (!qword_10050AC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10031BBD0()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10031BCB0()
{
  sub_100068FC4(&qword_1005081B8, &qword_100410800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004098F0;
  v1 = type metadata accessor for SEStorageMockPassSchemaV1.PassEntry();
  v2 = sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_10031BD44@<X0>(uint64_t a1@<X8>)
{
  if (qword_100501D58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema.Version();
  v3 = sub_1000958E4(v2, qword_10051B7C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10031BDEC(__int128 *a1)
{
  v2 = type metadata accessor for SEStorageMockPassSchemaV1.PassEntry();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_10031B9A4(a1);
  return v5;
}

uint64_t sub_10031BE78(__int128 *a1)
{
  swift_beginAccess();
  sub_1000752F4((v1 + 24));
  sub_1000BC104(a1, v1 + 24);
  return swift_endAccess();
}

void (*sub_10031BED0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1000BC094(v1 + 24, v4);
  return sub_10031BF60;
}

void sub_10031BF60(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1000BC094(*a1, v2 + 40);
    swift_beginAccess();
    sub_1000752F4((v3 + 24));
    sub_1000BC104((v2 + 40), v3 + 24);
    swift_endAccess();
    sub_1000752F4(v2);
  }

  else
  {
    swift_beginAccess();
    sub_1000752F4((v3 + 24));
    sub_1000BC104(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

Swift::Int sub_10031C01C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for SEStorageMockPassSchemaV1.PassEntry();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10031C0A8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return PersistentModel.hash(into:)();
}

Swift::Int sub_10031C100()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10031C168()
{
  v1 = *v0;
  type metadata accessor for SEStorageMockPassSchemaV1.PassEntry();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  return PersistentModel.id.getter();
}

uint64_t sub_10031C1E4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static PersistentModel.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_10031C400()
{
  sub_100068FC4(&qword_10050AEC8, &qword_100415530);
  v0 = *(type metadata accessor for Schema.PropertyMetadata() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10040A530;
  swift_getKeyPath();
  sub_100068FC4(&qword_10050AED0, &qword_100415560);
  v4 = *(type metadata accessor for Schema.Attribute.Option() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1004098F0;
  static Schema.Attribute.Option.unique.getter();
  v7 = type metadata accessor for Schema.Attribute();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  Schema.Attribute.init(_:originalName:hashModifier:)();
  sub_10031CB04(&qword_10050AED8, &type metadata accessor for Schema.Attribute);
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v3;
}

uint64_t sub_10031C8C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10031AFE4();
}

uint64_t sub_10031C8E4(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10031C94C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_1005031F0, &unk_10040C4C0);
    sub_10031CB04(a2, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10031C9E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10031AB8C();
}

uint64_t sub_10031CA08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10031A7DC();
}

uint64_t sub_10031CA24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_10031A408();
}

uint64_t sub_10031CA4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10031A04C();
}

uint64_t sub_10031CA68(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_10050AEF8, &qword_100415630);
    sub_10031CB04(a2, &type metadata accessor for CredentialType);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10031CB04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10031CB4C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_10031A408();
}

id sub_10031CB74(uint64_t a1, char a2)
{
  sub_100195868(a1);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = 0;
  v12 = 0;
  v5 = [v2 copyItemData:isa outData:&v12 updateToApplePayView:a2 & 1 error:&v11];

  v6 = v12;
  v7 = v11;
  if (v5)
  {
    if (v6)
    {
      v8 = v6;
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  else
  {
    v9 = v7;
    v6 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_10031CCB0()
{
  result = [objc_allocWithZone(type metadata accessor for SEFidoKeyManager()) init];
  qword_10051B7D8 = result;
  return result;
}

id sub_10031CD40(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8)
{
  v166._object = a8;
  v166._countAndFlagsBits = a7;
  v174 = a4;
  v168 = a3;
  v167 = a2;
  v169 = a1;
  v171 = type metadata accessor for SHA256();
  v175 = *(v171 - 8);
  v10 = v175[8];
  __chkstk_darwin(v171);
  v170 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for SHA256Digest();
  v176 = *(v173 - 1);
  v12 = *(v176 + 64);
  __chkstk_darwin(v173);
  v172 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Creating FiDO Attestation", v16, 2u);
  }

  v178 = Data.base64EncodedString(options:)(0);
  v185 = 47;
  v186 = 0xE100000000000000;
  v183 = 95;
  v184 = 0xE100000000000000;
  v17 = sub_10012512C();
  v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v20 = v19;

  v178._countAndFlagsBits = v18;
  v178._object = v20;
  v185 = 43;
  v186 = 0xE100000000000000;
  v183 = 45;
  v184 = 0xE100000000000000;
  v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v23 = v22;

  v178._countAndFlagsBits = v21;
  v178._object = v23;
  v185 = 61;
  v186 = 0xE100000000000000;
  v183 = 0;
  v184 = 0xE000000000000000;
  v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v26 = v25;

  v178._countAndFlagsBits = 0x6E68747561626577;
  v178._object = 0xEF6574616572632ELL;
  v179 = v24;
  v180 = v26;
  v181 = a5;
  v182 = a6;
  v27 = a6;
  v28 = type metadata accessor for JSONEncoder();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();

  v31 = JSONEncoder.init()();
  sub_1003225E8();
  v32 = v177;
  v33 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v32)
  {
  }

  else
  {
    v35 = v33;
    v36 = v34;
    v156 = v17;
    v157 = v28;

    v37 = sub_1003234F8(&qword_100503000, &type metadata accessor for SHA256);
    v165 = a5;
    v39 = v170;
    v38 = v171;
    dispatch thunk of HashFunction.init()();
    sub_100069E2C(v35, v36);
    sub_100357FC4(v35, v36);
    v177 = 0;
    sub_10006A178(v35, v36);
    v40 = v172;
    v164 = v37;
    dispatch thunk of HashFunction.finalize()();
    v41 = v175[1];
    ++v175;
    v161 = v41;
    v41(v39, v38);
    v42 = v173;
    v180 = v173;
    v43 = sub_1003234F8(&qword_100503008, &type metadata accessor for SHA256Digest);
    v181 = v43;
    v44 = sub_1000B9634(&v178._countAndFlagsBits);
    v45 = v176;
    v46 = *(v176 + 16);
    v160 = v176 + 16;
    v159 = v46;
    v46(v44, v40, v42);
    sub_1000752B0(&v178, v180);
    v47 = v177;
    v162 = v43;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v31 = v47;
    v48 = *(v45 + 8);
    v176 = v45 + 8;
    v158 = v48;
    v48(v40, v42);
    v49 = v186;
    v177 = v185;
    sub_1000752F4(&v178._countAndFlagsBits);
    v50 = v35;
    v51 = [v174 key];
    v52 = [v51 publicKey];

    v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v163 = v27;
    v56 = sub_100322E3C(v165, v27, v53, v55, 1);
    if (v47)
    {
      sub_10006A178(v53, v55);
      sub_10006A178(v177, v49);
      sub_10006A178(v50, v36);
    }

    else
    {
      v59 = v57;
      v154 = v50;
      v155 = v36;
      v60 = v56;
      sub_10006A178(v53, v55);
      v185 = v60;
      v186 = v59;
      v180 = &type metadata for Data;
      v181 = &protocol witness table for Data;
      v61 = v177;
      v178._countAndFlagsBits = v177;
      v178._object = v49;
      v62 = sub_1000752B0(&v178, &type metadata for Data);
      v63 = v59;
      v64 = *v62;
      v65 = v62[1];
      v151 = v60;
      v152 = v63;
      sub_100069E2C(v60, v63);
      v153 = v49;
      sub_100069E2C(v61, v49);
      sub_10008E4C8(v64, v65);
      sub_1000752F4(&v178._countAndFlagsBits);
      v66 = v185;
      v67 = v186;
      v68 = v171;
      dispatch thunk of HashFunction.init()();
      sub_100069E2C(v66, v67);
      sub_100357FC4(v66, v67);
      sub_10006A178(v66, v67);
      v69 = v172;
      dispatch thunk of HashFunction.finalize()();
      v161(v39, v68);
      v70 = v173;
      v180 = v173;
      v181 = v162;
      v71 = sub_1000B9634(&v178._countAndFlagsBits);
      v159(v71, v69, v70);
      sub_1000752B0(&v178, v180);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      v158(v69, v70);
      v72 = v183;
      v73 = v184;
      sub_1000752F4(&v178._countAndFlagsBits);
      sub_10006A178(v66, v67);
      v178 = v166;

      v74._countAndFlagsBits = 47;
      v74._object = 0xE100000000000000;
      String.append(_:)(v74);

      v75._countAndFlagsBits = v165;
      v75._object = v163;
      String.append(_:)(v75);

      sub_10028C190(32);

      static String._fromSubstring(_:)();

      isa = Data._bridgeToObjectiveC()().super.isa;
      v77 = String._bridgeToObjectiveC()();

      v78 = Data._bridgeToObjectiveC()().super.isa;
      v178._countAndFlagsBits = 0;
      v79 = v169;
      v80 = sub_100032E80(v169, isa, v174, v77, 0, v78, 1, &v178);

      countAndFlagsBits = v178._countAndFlagsBits;
      if (v80)
      {
        v172 = 0;
        v175 = v178._countAndFlagsBits;
        v82 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v83;

        v85 = [objc_opt_self() sharedManager];
        v86 = v82;
        v173 = v84;
        v87 = Data._bridgeToObjectiveC()().super.isa;
        v89 = sub_1003AF3C4(v79, v88);
        v90 = [v89 casdCertificate];

        v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v73;
        v94 = v93;

        v95 = Data._bridgeToObjectiveC()().super.isa;
        sub_10006A178(v91, v94);
        v96 = Data._bridgeToObjectiveC()().super.isa;
        sub_100068FC4(&unk_100504720, &qword_100414C40);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_1004098F0;
        *(v97 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v97 + 40) = v98;
        v99 = Array._bridgeToObjectiveC()().super.isa;

        v178._countAndFlagsBits = 0;
        v100 = [v85 PerformSEABAAWithAttestation:v87 casdCertificate:v95 nonce:v96 OIDs:v99 validityInterval:0 error:&v178];
        swift_unknownObjectRelease();

        v101 = v178._countAndFlagsBits;
        if (v100)
        {
          v176 = v72;
          v171 = v92;
          sub_100068FC4(&qword_1005025E0, &unk_10040F430);
          v102 = swift_allocObject();
          *(v102 + 1) = xmmword_100409900;
          v103 = v101;
          v104 = sub_1003AAA78(v100);
          v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v107 = v106;

          v102[4] = v105;
          v102[5] = v107;
          v108 = sub_1003AAA6C(v100);
          v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v111 = v110;

          v102[6] = v109;
          v102[7] = v111;

          sub_10006A178(v86, v173);
          v112 = [v174 key];
          v113 = [v112 publicKey];

          v114 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          sub_10006A178(v114, v115);

          v178._countAndFlagsBits = 0x656C707061;
          v178._object = 0xE500000000000000;
          v179 = -7;
          v180 = v102;
          v116 = v151;
          v117 = v152;
          v181 = v151;
          v182 = v152;
          v118 = type metadata accessor for CBOREncoder();
          v119 = *(v118 + 48);
          v120 = *(v118 + 52);
          swift_allocObject();
          sub_100069E2C(v116, v117);
          v31 = CBOREncoder.init()();
          sub_100323450();
          v121 = v172;
          v122 = dispatch thunk of CBOREncoder.encode<A>(_:)();
          if (v121)
          {
            sub_10006A178(v116, v117);
            sub_10006A178(v176, v171);
            sub_10006A178(v154, v155);
            sub_10006A178(v177, v153);

            sub_10006A178(v116, v117);
          }

          else
          {
            v174 = v122;
            v175 = v123;

            sub_10006A178(v116, v117);

            v178 = Data.base64EncodedString(options:)(0);
            v185 = 47;
            v186 = 0xE100000000000000;
            v183 = 95;
            v184 = 0xE100000000000000;
            v126 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v128 = v127;

            v178._countAndFlagsBits = v126;
            v178._object = v128;
            v185 = 43;
            v186 = 0xE100000000000000;
            v183 = 45;
            v184 = 0xE100000000000000;
            v129 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v131 = v130;

            v178._countAndFlagsBits = v129;
            v178._object = v131;
            v185 = 61;
            v186 = 0xE100000000000000;
            v183 = 0;
            v184 = 0xE000000000000000;
            v132 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v172 = v133;
            v173 = v132;

            v178 = Data.base64EncodedString(options:)(0);
            v185 = 47;
            v186 = 0xE100000000000000;
            v183 = 95;
            v184 = 0xE100000000000000;
            v134 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v136 = v135;

            v178._countAndFlagsBits = v134;
            v178._object = v136;
            v185 = 43;
            v186 = 0xE100000000000000;
            v183 = 45;
            v184 = 0xE100000000000000;
            v137 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v139 = v138;

            v178._countAndFlagsBits = v137;
            v178._object = v139;
            v185 = 61;
            v186 = 0xE100000000000000;
            v183 = 0;
            v184 = 0xE000000000000000;
            v140 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v142 = v141;
            v143 = v172;

            v178._countAndFlagsBits = v173;
            v178._object = v143;
            v179 = v140;
            v180 = v142;
            v144 = *(v157 + 48);
            v145 = *(v157 + 52);
            swift_allocObject();
            JSONEncoder.init()();
            sub_1003234A4();
            v31 = dispatch thunk of JSONEncoder.encode<A>(_:)();
            sub_10006A178(v176, v171);
            sub_10006A178(v154, v155);
            sub_10006A178(v174, v175);
            sub_10006A178(v177, v153);
            sub_10006A178(v116, v117);
          }
        }

        else
        {
          v31 = v178._countAndFlagsBits;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_10006A178(v72, v92);
          sub_10006A178(v154, v155);
          sub_10006A178(v177, v153);
          sub_10006A178(v151, v152);
          sub_10006A178(v86, v173);
        }
      }

      else
      {
        v176 = v72;
        if (v178._countAndFlagsBits)
        {
          v124 = [v178._countAndFlagsBits code];
          v125 = countAndFlagsBits;
        }

        else
        {
          v125 = 0;
          v124 = 0;
        }

        v146 = v153;
        v147 = v177;
        v148 = sub_10009393C(0, &qword_10050AA20, NSError_ptr);
        v149 = countAndFlagsBits;
        v150 = v124;
        v31 = v148;
        sub_10030990C(v150, 0, 0xD000000000000015, 0x800000010046ECB0, v125);
        swift_willThrow();
        sub_10006A178(v176, v73);
        sub_10006A178(v154, v155);
        sub_10006A178(v147, v146);
        sub_10006A178(v151, v152);
      }
    }
  }

  return v31;
}

void *sub_10031E3AC(uint64_t a1, unint64_t a2)
{
  v79 = a1;
  v80 = a2;
  v72 = type metadata accessor for P256.Signing.ECDSASignature();
  v71 = *(v72 - 8);
  v3 = *(v71 + 64);
  __chkstk_darwin(v72);
  v73 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for P256.Signing.PublicKey();
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  __chkstk_darwin(v5);
  v93 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SHA256();
  v76 = *(v8 - 8);
  v9 = *(v76 + 64);
  __chkstk_darwin(v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v78 = *(v12 - 1);
  v13 = *(v78 + 64);
  __chkstk_darwin(v12);
  v77 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Performing FIDO verification", v17, 2u);
  }

  v18 = type metadata accessor for JSONDecoder();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  isa = JSONDecoder.init()();
  sub_100322594();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {
  }

  else
  {

    v66 = v89;
    v70 = v90;
    v68 = v91;
    v69 = v92;
    v85 = v87;
    v86 = v88;
    v67 = v88;
    v83 = 95;
    v84 = 0xE100000000000000;
    v81 = 47;
    v82 = 0xE100000000000000;
    sub_10012512C();
    v85 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v86 = v22;
    v83 = 45;
    v84 = 0xE100000000000000;
    v81 = 43;
    v82 = 0xE100000000000000;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v25 = v24;

    v87 = v23;
    v88 = v25;

    v26 = String.count.getter();

    if ((v26 & 3) != 0)
    {
      v27 = String.count.getter();
      v28 = v27 & 3;
      if (v27 <= 0)
      {
        v28 = -(-v27 & 3);
      }

      v29._countAndFlagsBits = 61;
      v29._object = 0xE100000000000000;
      v30 = String.init(repeating:count:)(v29, 4 - v28);
      String.append(_:)(v30);
    }

    v31 = Data.init(base64Encoded:options:)();
    v33 = v32;
    sub_10006A2BC(v31, v32);

    if (v33 >> 60 == 15)
    {
      isa = sub_10009393C(0, &qword_10050AA20, NSError_ptr);
      sub_10030990C(0, 1, 0xD00000000000001CLL, 0x800000010046EC60, 0);
      swift_willThrow();
    }

    else
    {
      v64 = v31;
      v65 = v33;
      sub_10006A2D0(v31, v33);
      v85 = v66;
      v86 = v70;
      v83 = 95;
      v84 = 0xE100000000000000;
      v81 = 47;
      v82 = 0xE100000000000000;
      v85 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v86 = v34;
      v83 = 45;
      v84 = 0xE100000000000000;
      v81 = 43;
      v82 = 0xE100000000000000;
      v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v37 = v36;

      v87 = v35;
      v88 = v37;

      v38 = String.count.getter();

      if ((v38 & 3) != 0)
      {
        v39 = String.count.getter();
        v40 = v39 & 3;
        if (v39 <= 0)
        {
          v40 = -(-v39 & 3);
        }

        v41._countAndFlagsBits = 61;
        v41._object = 0xE100000000000000;
        v42 = String.init(repeating:count:)(v41, 4 - v40);
        String.append(_:)(v42);
      }

      v43 = Data.init(base64Encoded:options:)();
      v45 = v44;
      sub_10006A2BC(v43, v44);

      if (v45 >> 60 == 15)
      {
        isa = sub_10009393C(0, &qword_10050AA20, NSError_ptr);
        sub_10030990C(0, 1, 0xD000000000000023, 0x800000010046EC80, 0);
        swift_willThrow();
      }

      else
      {
        sub_10006A2D0(v43, v45);
        sub_1003234F8(&qword_100503000, &type metadata accessor for SHA256);
        dispatch thunk of HashFunction.init()();
        v46 = v64;
        v47 = v65;
        sub_100069E2C(v64, v65);
        sub_100357FC4(v46, v47);
        v66 = 0;
        sub_10006A2D0(v46, v47);
        v48 = v77;
        dispatch thunk of HashFunction.finalize()();
        (*(v76 + 8))(v11, v8);
        v90 = v12;
        v91 = sub_1003234F8(&qword_100503008, &type metadata accessor for SHA256Digest);
        v49 = sub_1000B9634(&v87);
        v50 = v78;
        (*(v78 + 16))(v49, v48, v12);
        sub_1000752B0(&v87, v90);
        v51 = v66;
        dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
        (*(v50 + 8))(v48, v12);
        v52 = v85;
        v53 = v86;
        sub_1000752F4(&v87);
        v85 = v43;
        v86 = v45;
        isa = &type metadata for Data;
        v90 = &type metadata for Data;
        v91 = &protocol witness table for Data;
        v87 = v52;
        v88 = v53;
        v54 = sub_1000752B0(&v87, &type metadata for Data);
        v55 = *v54;
        v56 = v54[1];
        sub_10006A2BC(v43, v45);
        sub_100069E2C(v52, v53);
        sub_10008E4C8(v55, v56);
        sub_10006A178(v52, v53);
        sub_1000752F4(&v87);
        v58 = v85;
        v57 = v86;
        v87 = v79;
        v88 = v80;
        sub_100069E2C(v79, v80);
        P256.Signing.PublicKey.init<A>(x963Representation:)();
        if (!v51)
        {
          v60 = v68;
          v61 = v69;
          v87 = v68;
          v88 = v69;
          sub_100069E2C(v68, v69);
          sub_1000937E0();
          v62 = v73;
          P256.Signing.ECDSASignature.init<A>(derRepresentation:)();
          v87 = v58;
          v88 = v57;
          v63 = P256.Signing.PublicKey.isValidSignature<A>(_:for:)();
          sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v63 & 1).super.super.isa;
          sub_10006A178(v58, v57);
          sub_10006A2D0(v64, v65);

          sub_10006A178(v60, v61);
          sub_10006A2D0(v43, v45);
          (*(v71 + 8))(v62, v72);
          (*(v74 + 8))(v93, v75);
          return isa;
        }

        sub_10006A178(v58, v57);
        sub_10006A2D0(v43, v45);
      }

      sub_10006A2D0(v64, v65);
    }

    sub_10006A178(v68, v69);
  }

  return isa;
}

void sub_10031EFE8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, char *a7)
{
  v56._countAndFlagsBits = a1;
  v56._object = a2;

  v11._countAndFlagsBits = 58;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);

  v47 = a3;
  v12._countAndFlagsBits = a3;
  v49 = a4;
  v12._object = a4;
  String.append(_:)(v12);

  v13 = v56;
  sub_100068FC4(&qword_100507158, &qword_10040F440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004099F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v15;
  *(inited + 72) = kSecAttrAccount;
  *(inited + 80) = v13;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccessGroup;
  v16 = *(v7 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup + 8);
  *(inited + 120) = *(v7 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup);
  *(inited + 128) = v16;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrSynchronizable;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = 1;
  v17 = kSecClass;
  v18 = kSecClassGenericPassword;
  v19 = kSecAttrAccount;
  v20 = kSecAttrAccessGroup;

  v21 = kSecAttrSynchronizable;
  v22 = sub_1000918D4(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C88, &qword_100409D68);
  swift_arrayDestroy();
  if (a6 >> 60 != 15)
  {
    sub_100069E2C(a5, a6);
    *(&v57 + 1) = &type metadata for String;
    v56 = Data.base64EncodedString(options:)(0);
    sub_100075D50(&v56, v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v22;
    sub_1003173F8(v54, kSecAttrService, isUniquelyReferenced_nonNull_native);
    sub_10006A2D0(a5, a6);
  }

  v24 = *(v7 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainWrapper);
  swift_getObjectType();
  sub_100195868(v22);

  v25 = v60;
  v26 = sub_100262F9C();

  if (!v25)
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v56._countAndFlagsBits = swift_slowAlloc();
      *v29 = 134218498;
      *(v29 + 4) = v26[2];

      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1002FFA0C(a1, a2, &v56._countAndFlagsBits);
      *(v29 + 22) = 2080;
      *(v29 + 24) = sub_1002FFA0C(a3, v49, &v56._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v27, v28, "Found %ld candidate keys for %s : %s", v29, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v30 = v26;
    v60 = v26[2];
    if (v60)
    {
      v31 = 0;
      v32 = v26 + 5;
      v51 = v30;
      while (v31 < v30[2])
      {
        v33 = *(v32 - 1);
        v34 = *v32;
        v35 = type metadata accessor for PropertyListDecoder();
        v36 = *(v35 + 48);
        v37 = *(v35 + 52);
        swift_allocObject();
        sub_100069E2C(v33, v34);
        PropertyListDecoder.init()();
        sub_100322540();
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

        v54[0] = v56;
        v54[1] = v57;
        v54[2] = v58;
        v55 = v59;
        if (qword_100501A08 != -1)
        {
          swift_once();
        }

        v38 = v55;
        sub_1001625A8(v55, *(&v55 + 1), a7);
        v40 = v39;
        v41 = [v39 BOOLValue];
        sub_10006A178(v33, v34);

        if (v41)
        {

          sub_100069E2C(v38, *(&v38 + 1));
          sub_100322510(v54);
          return;
        }

        sub_100322510(v54);
        v30 = v51;
        ++v31;
        v32 += 2;
        if (v60 == v31)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_15:

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v56._countAndFlagsBits = swift_slowAlloc();
        *v44 = 134218498;
        v45 = v30[2];

        *(v44 + 4) = v45;

        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_1002FFA0C(a1, a2, &v56._countAndFlagsBits);
        *(v44 + 22) = 2080;
        *(v44 + 24) = sub_1002FFA0C(v47, v49, &v56._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v42, v43, "No matches found out of %ld candidate keys for %s : %s", v44, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }
  }
}

BOOL sub_10031F8AC()
{
  sub_100068FC4(&qword_100507158, &qword_10040F440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v3;
  *(inited + 72) = kSecAttrAccessGroup;
  v4 = *(v0 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup + 8);
  *(inited + 80) = *(v0 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup);
  *(inited + 88) = v4;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrSynchronizable;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 120) = 1;
  v5 = kSecClass;
  v6 = kSecClassGenericPassword;
  v7 = kSecAttrAccessGroup;

  v8 = kSecAttrSynchronizable;
  v9 = sub_1000918D4(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C88, &qword_100409D68);
  swift_arrayDestroy();
  v10 = *(v0 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainWrapper);
  swift_getObjectType();
  sub_100195868(v9);

  v11 = sub_100262F9C();

  if (!v1)
  {
    v13 = v11[2];

    return v13 != 0;
  }

  return v12;
}

uint64_t sub_10031FC68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v44[0] = a1;
  v44[1] = a2;
  v44[2] = a3;
  v44[3] = a4;
  v44[4] = a5;
  v44[5] = a6;
  v44[6] = a7;
  v44[7] = a8;
  *&v43 = a1;
  *(&v43 + 1) = a2;
  swift_bridgeObjectRetain_n();

  sub_100069E2C(a5, a6);
  sub_100069E2C(a7, a8);
  v14._countAndFlagsBits = 58;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);

  v15._countAndFlagsBits = a3;
  v15._object = a4;
  String.append(_:)(v15);

  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10040F420;
  type metadata accessor for CFString(0);
  v18 = v17;
  *(v16 + 32) = kSecClass;
  *(v16 + 88) = v17;
  *(v16 + 96) = kSecAttrAccessible;
  *(v16 + 56) = v17;
  *(v16 + 64) = kSecClassGenericPassword;
  *(v16 + 152) = v17;
  *(v16 + 160) = kSecAttrAccount;
  *(v16 + 120) = v17;
  *(v16 + 128) = kSecAttrAccessibleAfterFirstUnlock;
  *(v16 + 216) = &type metadata for String;
  *(v16 + 184) = v17;
  *(v16 + 192) = v43;
  *(v16 + 224) = kSecAttrService;
  *(v16 + 248) = v17;
  v19 = kSecClass;
  v20 = kSecClassGenericPassword;
  v21 = kSecAttrAccessible;
  v22 = kSecAttrAccessibleAfterFirstUnlock;
  v23 = kSecAttrAccount;

  v24 = kSecAttrService;
  *(v16 + 256) = Data.base64EncodedString(options:)(0);
  *(v16 + 280) = &type metadata for String;
  *(v16 + 288) = kSecAttrAccessGroup;
  v25 = *(v41 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup);
  v26 = *(v41 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup + 8);
  *(v16 + 312) = v18;
  *(v16 + 320) = v25;
  *(v16 + 328) = v26;
  *(v16 + 376) = v18;
  *(v16 + 344) = &type metadata for String;
  *(v16 + 352) = kSecAttrSynchronizable;
  *(v16 + 384) = 1;
  *(v16 + 440) = v18;
  *(v16 + 408) = &type metadata for Bool;
  *(v16 + 416) = kSecValueData;
  v27 = type metadata accessor for PropertyListEncoder();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = kSecAttrAccessGroup;

  v31 = kSecAttrSynchronizable;
  v32 = kSecValueData;
  PropertyListEncoder.init()();
  sub_1003224BC();
  v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v35 = v34;

  if (v42)
  {

    sub_100322510(v44);
    sub_1000752F4((v16 + 416));
    sub_100075768(v16 + 352, &qword_10050AF70, &unk_100415690);
    sub_100075768(v16 + 288, &qword_10050AF70, &unk_100415690);
    sub_100075768(v16 + 224, &qword_10050AF70, &unk_100415690);
    sub_100075768(v16 + 160, &qword_10050AF70, &unk_100415690);
    sub_100075768(v16 + 96, &qword_10050AF70, &unk_100415690);
    sub_100075768(v16 + 32, &qword_10050AF70, &unk_100415690);
    *(v16 + 16) = 0;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  result = sub_10009393C(0, &qword_100507150, NSData_ptr);
  *(v16 + 472) = result;
  *(v16 + 448) = isa;
  if (!kSecAttrSyncViewHint)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v16 + 504) = v18;
  *(v16 + 480) = kSecAttrSyncViewHint;
  if (!kSecAttrViewHintApplePay)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v38 = kSecAttrViewHintApplePay;
  v39 = kSecAttrSyncViewHint;
  sub_10006A178(v33, v35);
  *(v16 + 536) = v18;
  *(v16 + 512) = v38;
  sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  NSDictionary.init(dictionaryLiteral:)();
  v40 = *(v41 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainWrapper);
  result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
LABEL_8:
  __break(1u);
  return result;
}

void sub_1003203A4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v51 = a1;
  v52 = a2;

  v8._countAndFlagsBits = 58;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v47 = a3;
  v9._countAndFlagsBits = a3;
  v9._object = a4;
  String.append(_:)(v9);

  v10 = v51;
  v11 = v52;
  sub_100068FC4(&qword_100507158, &qword_10040F440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040AA50;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v13;
  *(inited + 72) = kSecAttrAccount;
  *(inited + 80) = v10;
  *(inited + 88) = v11;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrService;
  v14 = kSecClass;
  v15 = a4;
  v16 = kSecClassGenericPassword;
  v17 = kSecAttrAccount;
  v18 = kSecAttrService;
  *(inited + 120) = Data.base64EncodedString(options:)(0);
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrAccessGroup;
  v19 = *(v44 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup + 8);
  *(inited + 160) = *(v44 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup);
  *(inited + 168) = v19;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 200) = 1;
  v20 = kSecAttrAccessGroup;

  v21 = kSecAttrSynchronizable;
  v22 = sub_1000918D4(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C88, &qword_100409D68);
  swift_arrayDestroy();
  v23 = *(v44 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainWrapper);
  sub_100195868(v22);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = [v23 deleteItem:isa];

  sub_100069E2C(a5, a6);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  sub_10006A178(a5, a6);
  if (!os_log_type_enabled(v26, v27))
  {

    if (!v25)
    {
      return;
    }

    goto LABEL_5;
  }

  v45 = v25;
  v28 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  *v28 = 136315906;
  *(v28 + 4) = sub_1002FFA0C(a1, a2, &v51);
  *(v28 + 12) = 2080;
  *(v28 + 14) = sub_1002FFA0C(v47, v15, &v51);
  *(v28 + 22) = 2080;
  v53 = sub_100288788(a5, a6);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  v32 = sub_1002FFA0C(v29, v31, &v51);

  *(v28 + 24) = v32;
  *(v28 + 32) = 1024;
  *(v28 + 34) = v45;
  _os_log_impl(&_mh_execute_header, v26, v27, "Key for RP %s RPAH %s KH %s deleted with status %d", v28, 0x26u);
  swift_arrayDestroy();

  v25 = v45;
  if (v45)
  {
LABEL_5:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v33._object = 0x800000010046EC40;
    v33._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v33);
    v34._countAndFlagsBits = a1;
    v34._object = a2;
    String.append(_:)(v34);
    v35._countAndFlagsBits = 0x204841505220;
    v35._object = 0xE600000000000000;
    String.append(_:)(v35);
    v36._countAndFlagsBits = v47;
    v36._object = v15;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 541608736;
    v37._object = 0xE400000000000000;
    String.append(_:)(v37);
    v53 = sub_100288788(a5, a6);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v38 = BidirectionalCollection<>.joined(separator:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 0x2073757461747320;
    v42._object = 0xE800000000000000;
    String.append(_:)(v42);
    LODWORD(v53) = v25;
    v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v43);

    sub_10030990C(0, 1, v51, v52, 0);
    swift_willThrow();
  }
}

uint64_t sub_100320AB8(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_10050AFB8, &qword_100415BD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_100324664();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + 2);
    v19 = *(v3 + 2);
    v18 = 2;
    sub_1001F6C50(&v21, v17);
    sub_1000B8890();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v19, *(&v19 + 1));
    v19 = *(v3 + 3);
    v20 = v19;
    v18 = 3;
    sub_1001F6C50(&v20, v17);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v19, *(&v19 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100320CD0()
{
  v1 = 0x50676E69796C6572;
  v2 = 0x4879654B6F646966;
  if (*v0 != 2)
  {
    v2 = 0x74614479654B7470;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100320D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003246B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100320D8C(uint64_t a1)
{
  v2 = sub_100324664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100320DC8(uint64_t a1)
{
  v2 = sub_100324664();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100320E04@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100324834(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_100320E48(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_100320AB8(a1);
}

id sub_100320F48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEFidoKeyManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SEFidoKeyManager()
{
  result = qword_10050AF58;
  if (!qword_10050AF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100321064()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100321108(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_10050AFE0, &qword_100415BF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1003252E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1003212A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100068FC4(&qword_10050B008, &qword_100415C00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1003253E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10032143C(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_10050B018, &qword_100415C08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_100325294();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + 2);
    v19 = v18;
    v17[23] = 2;
    sub_1001F6C50(&v19, v17);
    sub_1000B8890();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v18, *(&v18 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100321634()
{
  v1 = 0x676E656C6C616863;
  if (*v0 != 1)
  {
    v1 = 0x6E696769726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100321688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100324BD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003216B0(uint64_t a1)
{
  v2 = sub_1003252E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003216EC(uint64_t a1)
{
  v2 = sub_1003252E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100321740(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100321838()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6144746E65696C63;
  }

  *v0;
  return result;
}

uint64_t sub_100321884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6144746E65696C63 && a2 == 0xEE004E4F534A6174;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010046EDE0 == a2)
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

uint64_t sub_100321970(uint64_t a1)
{
  v2 = sub_1003253E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003219AC(uint64_t a1)
{
  v2 = sub_1003253E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003219E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100324CEC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100321A38(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_100321ADC()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x727574616E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6144746E65696C63;
  }
}

uint64_t sub_100321B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100324ED0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100321B74(uint64_t a1)
{
  v2 = sub_100325294();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100321BB0(uint64_t a1)
{
  v2 = sub_100325294();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100321BEC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100325000(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100321C48(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_10008FB4C(v3, v5, v8, v9);
}

uint64_t sub_100321D24(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_10050B0B0, &unk_100416208);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_100326070();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13[1] = a3;
    v14 = 1;
    sub_100068FC4(&qword_100502458, &qword_10040C1F0);
    sub_1003260C4(&qword_100506988, sub_1000B8890);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100321EEC()
{
  if (*v0)
  {
    return 6501752;
  }

  else
  {
    return 6777953;
  }
}

uint64_t sub_100321F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6777953 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6501752 && a2 == 0xE300000000000000)
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

uint64_t sub_100321FEC(uint64_t a1)
{
  v2 = sub_100326070();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100322028(uint64_t a1)
{
  v2 = sub_100326070();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100322064@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100325438(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1003220AC(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_10008C180(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003220D0(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_10050AFF0, &qword_100415BF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_10032533C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = *(v3 + 1);
    v15[0] = 1;
    sub_100325390();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + 2);
    v17 = v16;
    v15[23] = 2;
    sub_1001F6C50(&v17, v15);
    sub_1000B8890();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v16, *(&v16 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1003222A4()
{
  v1 = 0x746D7453747461;
  if (*v0 != 1)
  {
    v1 = 0x6174614468747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7630182;
  }
}

uint64_t sub_1003222F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10032563C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100322320(uint64_t a1)
{
  v2 = sub_10032533C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032235C(uint64_t a1)
{
  v2 = sub_10032533C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100322398@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100325754(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1003223F4(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v2 != v7 || (sub_10008C180(v4, v6) & 1) == 0)
  {
    return 0;
  }

  return sub_10008FB4C(v3, v5, v8, v9);
}

unint64_t sub_1003224BC()
{
  result = qword_10050AF68;
  if (!qword_10050AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AF68);
  }

  return result;
}

unint64_t sub_100322540()
{
  result = qword_10050AF78;
  if (!qword_10050AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AF78);
  }

  return result;
}

unint64_t sub_100322594()
{
  result = qword_10050AF80;
  if (!qword_10050AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AF80);
  }

  return result;
}

unint64_t sub_1003225E8()
{
  result = qword_10050AF88;
  if (!qword_10050AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AF88);
  }

  return result;
}

uint64_t sub_10032263C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100068FC4(&qword_10050AFA0, &qword_1004156A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v64 = &v57 - v6;
  v7 = type metadata accessor for COSEKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SHA256();
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  __chkstk_darwin(v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SHA256Digest();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v21 != 2)
    {
      goto LABEL_12;
    }

    v23 = *(a1 + 16);
    v22 = *(a1 + 24);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if (!v24)
    {
      if (v25 == 65)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v21)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 65)
      {
        goto LABEL_8;
      }

LABEL_12:
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v66 = 0xD00000000000001BLL;
      v67 = 0x800000010046ED00;
      if (v21 <= 1)
      {
        if (!v21)
        {
          v42 = BYTE6(a2);
LABEL_24:
          sub_10009393C(0, &qword_10050AA20, NSError_ptr);
          v70 = v42;
          v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v54);

          sub_10030990C(0, 1, v66, v67, 0);
          return swift_willThrow();
        }

        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v42 = HIDWORD(a1) - a1;
          goto LABEL_24;
        }

LABEL_28:
        __break(1u);
      }

      v42 = 0;
      if (v21 != 2)
      {
        goto LABEL_24;
      }

      v44 = *(a1 + 16);
      v43 = *(a1 + 24);
      v42 = v43 - v44;
      if (!__OFSUB__(v43, v44))
      {
        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (BYTE6(a2) != 65)
  {
    goto LABEL_12;
  }

LABEL_8:
  v26 = v18;
  v27 = type metadata accessor for __DataStorage();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v59 = v8;
  v30 = __DataStorage.init(capacity:)();
  v70 = 0;
  v71 = v30 | 0x4000000000000000;
  v57 = sub_1002B3B94(&off_1004C4FD0);
  v58 = v31;
  Data.append(_:)();
  LOWORD(v65[0]) = 4096;
  v68 = &type metadata for UnsafeRawBufferPointer;
  v69 = &protocol witness table for UnsafeRawBufferPointer;
  v66 = v65;
  v67 = v65 + 2;
  v32 = sub_1000752B0(&v66, &type metadata for UnsafeRawBufferPointer);
  v34 = *v32;
  v33 = v32[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v66);
  sub_1003234F8(&qword_100503000, &type metadata accessor for SHA256);
  v60 = v7;
  dispatch thunk of HashFunction.init()();
  sub_100069E2C(a1, a2);
  v35 = v63;
  sub_100357FC4(a1, a2);
  v63 = v35;
  sub_10006A178(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  (*(v62 + 8))(v14, v11);
  v68 = v26;
  v69 = sub_1003234F8(&qword_100503008, &type metadata accessor for SHA256Digest);
  v36 = sub_1000B9634(&v66);
  (*(v16 + 16))(v36, v20, v26);
  sub_1000752B0(&v66, v68);
  v37 = v63;
  v7 = v60;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v11 = v37;
  (*(v16 + 8))(v20, v26);
  v38 = v65[0];
  v39 = v65[1];
  sub_1000752F4(&v66);
  sub_100288640(16, v38, v39, &v66);
  v40 = v66;
  v41 = v67;
  Data.append(_:)();
  sub_10006A178(v40, v41);
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  v21 = v64;
  v16 = v59;
  COSEKey.init(ec2CurveIdentifier:x:y:d:algorithm:keyOperations:keyIdentifier:)();
  if ((*(v16 + 48))(v21, 1, v7) == 1)
  {
    sub_100075768(v21, &qword_10050AFA0, &qword_1004156A0);
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    sub_10030990C(0, 1, 0xD000000000000028, 0x800000010046ED20, 0);
    swift_willThrow();
    sub_10006A178(v57, v58);
    return sub_10006A178(v70, v71);
  }

LABEL_19:
  v45 = v57;
  v46 = v61;
  (*(v16 + 32))(v61, v21, v7);
  v47 = type metadata accessor for CBOREncoder();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = v16;
  CBOREncoder.init()();
  sub_1003234F8(&qword_10050AFA8, &type metadata accessor for COSEKey);
  v51 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (v11)
  {

    sub_10006A178(v45, v58);
    (*(v16 + 8))(v46, v7);
    return sub_10006A178(v70, v71);
  }

  v55 = v51;
  v56 = v52;

  Data.append(_:)();
  sub_10006A178(v55, v56);
  sub_10006A178(v45, v58);
  (*(v50 + 8))(v46, v7);
  return v70;
}

uint64_t sub_100322E3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v55 = a1;
  v56 = a2;
  v9 = type metadata accessor for SHA256();
  v48 = *(v9 - 8);
  v10 = *(v48 + 64);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SHA256Digest();
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  __chkstk_darwin(v13);
  v49 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.Encoding();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a5;
  if ((a5 & 1) == 0)
  {
    v23 = 0;
    v25 = 0;
    v22 = 0xC000000000000000;
    goto LABEL_7;
  }

  result = sub_10032263C(a3, a4);
  if (v5)
  {
    return result;
  }

  v23 = result;
  v24 = v22 >> 62;
  if ((v22 >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = BYTE6(v22);
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if (v24 != 2)
  {
    v25 = 0;
    goto LABEL_7;
  }

  v45 = *(result + 16);
  v44 = *(result + 24);
  v46 = __OFSUB__(v44, v45);
  v25 = v44 - v45;
  if (v46)
  {
    __break(1u);
LABEL_21:
    LODWORD(v25) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      goto LABEL_25;
    }

    v25 = v25;
  }

LABEL_7:
  if (__OFADD__(v25, 37))
  {
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v53 = v22;
  v54 = v23;
  v61 = sub_1001303A8(v25 + 37);
  v62 = v26;
  static String.Encoding.utf8.getter();
  v27 = String.data(using:allowLossyConversion:)();
  v29 = v28;
  (*(v17 + 8))(v20, v16);
  if (v29 >> 60 == 15)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    sub_10030990C(0, 1, 0xD000000000000027, 0x800000010046ECD0, 0);
    swift_willThrow();
    sub_10006A178(v54, v53);
    return sub_10006A178(v61, v62);
  }

  else
  {
    sub_1003234F8(&qword_100503000, &type metadata accessor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_100069E2C(v27, v29);
    sub_100357FC4(v27, v29);
    sub_10006A2D0(v27, v29);
    v30 = v49;
    dispatch thunk of HashFunction.finalize()();
    (*(v48 + 8))(v12, v9);
    v31 = v51;
    v59 = v51;
    v60 = sub_1003234F8(&qword_100503008, &type metadata accessor for SHA256Digest);
    v32 = sub_1000B9634(v58);
    v33 = v50;
    (*(v50 + 16))(v32, v30, v31);
    sub_1000752B0(v58, v59);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v33 + 8))(v30, v31);
    v34 = v57[0];
    v35 = v57[1];
    sub_1000752F4(v58);
    Data.append(_:)();
    sub_10006A178(v34, v35);
    if (v52)
    {
      v36 = 93;
    }

    else
    {
      v36 = 29;
    }

    if (v62 >> 62 == 2)
    {
      v37 = *(v61 + 24);
    }

    v38 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v59 = v38;
    v60 = sub_100075C60(&qword_100502610, &qword_100502608, &qword_100409A28);
    LOBYTE(v58[0]) = v36;
    LOBYTE(v57[0]) = *sub_1000752B0(v58, v38);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(v58);
    LODWORD(v57[0]) = 0;
    v59 = &type metadata for UnsafeRawBufferPointer;
    v60 = &protocol witness table for UnsafeRawBufferPointer;
    v58[0] = v57;
    v58[1] = v57 + 4;
    v39 = sub_1000752B0(v58, &type metadata for UnsafeRawBufferPointer);
    v41 = *v39;
    v40 = v39[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(v58);
    v43 = v53;
    v42 = v54;
    Data.append(_:)();
    sub_10006A2D0(v27, v29);
    sub_10006A178(v42, v43);
    return v61;
  }
}

unint64_t sub_100323450()
{
  result = qword_10050AF90;
  if (!qword_10050AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AF90);
  }

  return result;
}

unint64_t sub_1003234A4()
{
  result = qword_10050AF98;
  if (!qword_10050AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AF98);
  }

  return result;
}

uint64_t sub_1003234F8(unint64_t *a1, void (*a2)(uint64_t))
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

unsigned int *sub_100323540(void *a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  v138 = a5;
  v134 = a4;
  v128 = a3;
  v127 = a2;
  v129 = a1;
  v131 = type metadata accessor for SHA256();
  v135 = *(v131 - 8);
  v8 = v135[8];
  __chkstk_darwin(v131);
  v130 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for SHA256Digest();
  v136 = *(v133 - 1);
  v10 = *(v136 + 64);
  __chkstk_darwin(v133);
  v132 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v6;
  v125 = OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_logger;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Performing FiDO signature", v14, 2u);
  }

  v141 = Data.base64EncodedString(options:)(0);
  v146 = 47;
  v147 = 0xE100000000000000;
  v139 = 95;
  v140 = 0xE100000000000000;
  sub_10012512C();
  v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v17 = v16;

  v141._countAndFlagsBits = v15;
  v141._object = v17;
  v146 = 43;
  v147 = 0xE100000000000000;
  v139 = 45;
  v140 = 0xE100000000000000;
  v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v20 = v19;

  v141._countAndFlagsBits = v18;
  v141._object = v20;
  v146 = 61;
  v147 = 0xE100000000000000;
  v139 = 0;
  v140 = 0xE000000000000000;
  v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v23 = v22;

  strcpy(&v141, "webauthn.get");
  BYTE5(v141._object) = 0;
  HIWORD(v141._object) = -5120;
  v142 = v21;
  v143 = v23;
  v144 = v138;
  v145 = a6;
  v24 = type metadata accessor for JSONEncoder();
  v25 = v24[12];
  v26 = *(v24 + 26);
  swift_allocObject();

  JSONEncoder.init()();
  sub_1003225E8();
  v27 = v137;
  v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v27)
  {

    return v24;
  }

  v30 = v28;
  v31 = v29;
  v116 = v24;

  v32 = sub_1003234F8(&qword_100503000, &type metadata accessor for SHA256);
  v123 = a6;
  v34 = v130;
  v33 = v131;
  dispatch thunk of HashFunction.init()();
  sub_100069E2C(v30, v31);
  sub_100357FC4(v30, v31);
  v137 = 0;
  sub_10006A178(v30, v31);
  v35 = v132;
  v122 = v32;
  dispatch thunk of HashFunction.finalize()();
  v36 = v135[1];
  ++v135;
  v120 = v36;
  v36(v34, v33);
  v37 = v133;
  v143 = v133;
  v38 = sub_1003234F8(&qword_100503008, &type metadata accessor for SHA256Digest);
  v144 = v38;
  v39 = sub_1000B9634(&v141._countAndFlagsBits);
  v40 = v136;
  v41 = *(v136 + 16);
  v119 = v136 + 16;
  v118 = v41;
  v41(v39, v35, v37);
  sub_1000752B0(&v141, v143);
  v42 = v137;
  v121 = v38;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v43 = *(v40 + 8);
  v136 = v40 + 8;
  v117 = v43;
  v43(v35, v37);
  v124 = v146;
  v137 = v147;
  sub_1000752F4(&v141._countAndFlagsBits);
  v44 = [v134 key];
  v45 = [v44 publicKey];

  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v31;
  v48 = v47;

  v49 = sub_100322E3C(v138, v123, v46, v48, 0);
  v51 = v50;
  sub_10006A178(v46, v48);
  if (v42)
  {
    sub_10006A178(v124, v137);
    v52 = v30;
    v53 = v24;
LABEL_7:
    sub_10006A178(v52, v53);
    return v24;
  }

  v123 = v30;
  v138 = v24;
  v146 = v49;
  v147 = v51;
  v143 = &type metadata for Data;
  v144 = &protocol witness table for Data;
  v55 = v124;
  v56 = v137;
  v141._countAndFlagsBits = v124;
  v141._object = v137;
  v57 = sub_1000752B0(&v141, &type metadata for Data);
  v58 = v49;
  v59 = *v57;
  v60 = v57[1];
  v115 = v58;
  sub_100069E2C(v58, v51);
  sub_100069E2C(v55, v56);
  sub_10008E4C8(v59, v60);
  sub_1000752F4(&v141._countAndFlagsBits);
  v61 = v146;
  v62 = v147;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v63.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v128 = v51;
  v113 = v63.super.isa;
  v65 = v130;
  v64 = v131;
  dispatch thunk of HashFunction.init()();
  sub_100069E2C(v61, v62);
  sub_100357FC4(v61, v62);
  v127 = v61;
  sub_10006A178(v61, v62);
  v66 = v132;
  dispatch thunk of HashFunction.finalize()();
  v120(v65, v64);
  v67 = v133;
  v143 = v133;
  v144 = v121;
  v68 = sub_1000B9634(&v141._countAndFlagsBits);
  v118(v68, v66, v67);
  sub_1000752B0(&v141, v143);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v135 = 0;
  v117(v66, v67);
  v69 = v146;
  v70 = v147;
  sub_1000752F4(&v141._countAndFlagsBits);
  v71 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v69, v70);
  v141._countAndFlagsBits = 0;
  v72 = isa;
  v73 = v113;
  v74 = sub_100030BD0(v129, isa, v113, v134, v71, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, &v141);

  countAndFlagsBits = v141._countAndFlagsBits;
  if (!v74)
  {
    v100 = v128;
    v101 = v141._countAndFlagsBits;
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v136 = v62;
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v141._countAndFlagsBits = v105;
      *v104 = 136315138;
      v135 = v101;
      if (v101)
      {
        v106 = [v101 localizedDescription];
        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v108;
      }

      else
      {
        v109 = 0xE300000000000000;
        v107 = 7104878;
      }

      v110 = v100;
      v112 = sub_1002FFA0C(v107, v109, &v141._countAndFlagsBits);

      *(v104 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v102, v103, "Failed to sign challenge %s", v104, 0xCu);
      sub_1000752F4(v105);

      v111 = v115;
      v101 = v135;
      v62 = v136;
    }

    else
    {

      v110 = v100;
      v111 = v115;
    }

    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v24 = v101;
    sub_10030990C(0, 1, 0xD000000000000010, 0x800000010046ED80, countAndFlagsBits);
    swift_willThrow();

    sub_10006A178(v127, v62);
    sub_10006A178(v111, v110);
    sub_10006A178(v124, v137);
    v52 = v123;
    v53 = v138;
    goto LABEL_7;
  }

  v136 = v62;
  v134 = v141._countAndFlagsBits;
  v132 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v133 = v76;

  v141 = Data.base64EncodedString(options:)(0);
  v146 = 47;
  v147 = 0xE100000000000000;
  v139 = 95;
  v140 = 0xE100000000000000;
  v77 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v79 = v78;

  v141._countAndFlagsBits = v77;
  v141._object = v79;
  v146 = 43;
  v147 = 0xE100000000000000;
  v139 = 45;
  v140 = 0xE100000000000000;
  v80 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v82 = v81;

  v141._countAndFlagsBits = v80;
  v141._object = v82;
  v146 = 61;
  v147 = 0xE100000000000000;
  v139 = 0;
  v140 = 0xE000000000000000;
  v83 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v85 = v84;

  v141 = Data.base64EncodedString(options:)(0);
  v146 = 47;
  v147 = 0xE100000000000000;
  v139 = 95;
  v140 = 0xE100000000000000;
  v86 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v24 = v87;

  v141._countAndFlagsBits = v86;
  v141._object = v24;
  v146 = 43;
  v147 = 0xE100000000000000;
  v139 = 45;
  v140 = 0xE100000000000000;
  v88 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v90 = v89;

  v141._countAndFlagsBits = v88;
  v141._object = v90;
  v146 = 61;
  v147 = 0xE100000000000000;
  v139 = 0;
  v140 = 0xE000000000000000;
  v91 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v93 = v92;
  v94 = v132;

  v141._countAndFlagsBits = v83;
  v141._object = v85;
  v142 = v91;
  v143 = v93;
  v95 = v133;
  v144 = v94;
  v145 = v133;
  v96 = v116[12];
  v97 = *(v116 + 26);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100324404();
  v98 = v135;
  v99 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v98)
  {
    v24 = v99;
  }

  sub_10006A178(v127, v136);
  sub_10006A178(v123, v138);
  sub_10006A178(v124, v137);
  sub_10006A178(v115, v128);

  sub_10006A178(v94, v95);

  return v24;
}