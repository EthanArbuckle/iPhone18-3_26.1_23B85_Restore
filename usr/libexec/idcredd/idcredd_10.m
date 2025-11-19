uint64_t sub_100108DE8(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for AnyCodable();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100004E70(&qword_100203530, &qword_1001ADDA0);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
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
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_10010917C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100004E70(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_10010941C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004E70(&qword_100203630, &qword_1001ADE88);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_100032EBC(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

_OWORD *sub_1001096D8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100009268(a4, (a5[7] + 32 * a1));
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

unint64_t sub_100109748(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void *sub_100109790()
{
  v1 = v0;
  sub_100004E70(&qword_1002034E0, &qword_1001ADD60);
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
        sub_10000B558(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100009268(v25, (*(v4 + 56) + v22));
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

void *sub_100109934()
{
  v1 = v0;
  sub_100004E70(&qword_100203500, &qword_1001ADD70);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_100109AD8()
{
  v1 = v0;
  sub_100004E70(&qword_100203640, &qword_1001ADE98);
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_100009708(v22, *(&v22 + 1));
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

char *sub_100109C70()
{
  v1 = v0;
  v36 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - v3;
  sub_100004E70(&qword_100203518, &qword_1001ADD88);
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

void *sub_100109F0C()
{
  v1 = v0;
  v2 = type metadata accessor for PresentmentProposal();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004E70(&qword_1002035D8, &qword_1001ADE38);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
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
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_100112914(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_100112A2C(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

char *sub_10010A13C()
{
  v1 = v0;
  v36 = type metadata accessor for AnyCodable();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004E70(&qword_100203530, &qword_1001ADDA0);
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

void *sub_10010A3D0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100004E70(a1, a2);
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

void *sub_10010A530()
{
  v1 = v0;
  sub_100004E70(&qword_100203630, &qword_1001ADE88);
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_100032EBC(v22, *(&v22 + 1));
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

char *sub_10010A6B4(char *a1, int64_t a2, char a3)
{
  result = sub_10010AA88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10010A6D4(size_t a1, int64_t a2, char a3)
{
  result = sub_10010B1F8(a1, a2, a3, *v3, &qword_1002035A8, &qword_1001ADE08, &type metadata accessor for ISO18013KnownDocTypes);
  *v3 = result;
  return result;
}

char *sub_10010A718(char *a1, int64_t a2, char a3)
{
  result = sub_10010AB94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10010A738(char *a1, int64_t a2, char a3)
{
  result = sub_10010AC98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10010A758(size_t a1, int64_t a2, char a3)
{
  result = sub_10010ADA8(a1, a2, a3, *v3, &qword_100203410, &qword_1001ADCC0, &qword_1002004D8, &qword_1001ACBF0);
  *v3 = result;
  return result;
}

void *sub_10010A798(void *a1, int64_t a2, char a3)
{
  result = sub_10010B0C4(a1, a2, a3, *v3, &qword_1002035B8, &qword_1001ADE18, &qword_100201548, &qword_1001AB908);
  *v3 = result;
  return result;
}

size_t sub_10010A7D8(size_t a1, int64_t a2, char a3)
{
  result = sub_10010ADA8(a1, a2, a3, *v3, &qword_1002035A0, &qword_1001ADE00, &qword_1002014F8, &qword_1001AB880);
  *v3 = result;
  return result;
}

void *sub_10010A818(void *a1, int64_t a2, char a3)
{
  result = sub_10010B0C4(a1, a2, a3, *v3, &qword_1002035B0, &qword_1001ADE10, &qword_100201580, &qword_1001AB980);
  *v3 = result;
  return result;
}

void *sub_10010A858(void *a1, int64_t a2, char a3)
{
  result = sub_10010B0C4(a1, a2, a3, *v3, &qword_1002035C8, &qword_1001ADE28, &qword_1002035D0, &qword_1001ADE30);
  *v3 = result;
  return result;
}

void *sub_10010A898(void *a1, int64_t a2, char a3)
{
  result = sub_10010B0C4(a1, a2, a3, *v3, &qword_100203650, &qword_1001ADEA8, &qword_1002018D0, &qword_1001AAEA0);
  *v3 = result;
  return result;
}

void *sub_10010A8D8(void *a1, int64_t a2, char a3)
{
  result = sub_10010B0C4(a1, a2, a3, *v3, &qword_100201EC0, &qword_1001ACC48, &qword_100203570, &qword_1001ADDE0);
  *v3 = result;
  return result;
}

size_t sub_10010A918(size_t a1, int64_t a2, char a3)
{
  result = sub_10010B1F8(a1, a2, a3, *v3, &qword_100201EB0, &qword_1001ACC38, &type metadata accessor for DocumentRequest);
  *v3 = result;
  return result;
}

size_t sub_10010A95C(size_t a1, int64_t a2, char a3)
{
  result = sub_10010B1F8(a1, a2, a3, *v3, &qword_100201EB8, &qword_1001ACC40, &type metadata accessor for CredentialPresentmentRequest.UseCase);
  *v3 = result;
  return result;
}

void *sub_10010A9A0(void *a1, int64_t a2, char a3)
{
  result = sub_10010AF90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10010A9C0(size_t a1, int64_t a2, char a3)
{
  result = sub_10010B1F8(a1, a2, a3, *v3, &qword_1002035C0, &qword_1001ADE20, &type metadata accessor for Certificate);
  *v3 = result;
  return result;
}

void *sub_10010AA04(void *a1, int64_t a2, char a3)
{
  result = sub_10010B0C4(a1, a2, a3, *v3, &qword_100203610, &qword_1001ADE68, &qword_100203618, &qword_1001ADE70);
  *v3 = result;
  return result;
}

size_t sub_10010AA44(size_t a1, int64_t a2, char a3)
{
  result = sub_10010B1F8(a1, a2, a3, *v3, &qword_100203608, &qword_1001ADE60, &type metadata accessor for DocumentRequest.DataElement);
  *v3 = result;
  return result;
}

char *sub_10010AA88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10010AB94(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_100203678, &qword_1001ADED0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10010AC98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_1002018A8, &unk_1001ABD40);
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

size_t sub_10010ADA8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004E70(a5, a6);
  v16 = *(sub_100004E70(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100004E70(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_10010AF90(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004E70(&qword_1002034C8, &qword_1001ADD48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004E70(&qword_100200468, &qword_1001AAE98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10010B0C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100004E70(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004E70(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_10010B1F8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004E70(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10010B3D4(uint64_t a1)
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

unint64_t sub_10010B474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for PresentmentProposal();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_10000A0D4(a4, &qword_1002024B8, &qword_1001ACFB0);
  }

  if (v17 < 1)
  {
    return sub_10000A0D4(a4, &qword_1002024B8, &qword_1001ACFB0);
  }

  result = sub_100112914(a4, v15);
  if (v12 >= v17)
  {
    return sub_10000A0D4(a4, &qword_1002024B8, &qword_1001ACFB0);
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_10010B61C(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t))
{
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  for (i = 0; v8; v10 ^= Hasher._finalize()())
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);
    v8 &= v8 - 1;
    v18 = *(a1 + 48);
    v21[2] = *(a1 + 32);
    v21[3] = v18;
    v22 = *(a1 + 64);
    v19 = *(a1 + 16);
    v21[0] = *a1;
    v21[1] = v19;

    String.hash(into:)();

    a3(v21, v17);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      Hasher._combine(_:)(v10);
      return;
    }

    v8 = *(v5 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10010B784(__int128 *a1, uint64_t a2)
{
  v17 = a1[2];
  v18 = a1[3];
  v19 = *(a1 + 8);
  v15 = *a1;
  v16 = a1[1];
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v14)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v14 = Hasher._finalize()();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10010B8E0(__int128 *a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - v7;
  v9 = a1[3];
  v25 = a1[2];
  v26 = v9;
  v27 = *(a1 + 8);
  v11 = *a1;
  v10 = a1[1];
  v22[0] = a1;
  v23 = v11;
  v24 = v10;
  v12 = Hasher._finalize()();
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v12;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v15; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_1001126D8(&qword_100203460, &qword_100203468);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      Hasher._combine(_:)(v17);
      return;
    }

    v15 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v15)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10010BB1C(uint64_t result, uint64_t a2)
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
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
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

uint64_t sub_10010BCD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v46 = &v35 - v11;
  result = __chkstk_darwin(v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_1001126D8(&qword_100203460, &qword_100203468);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_1001126D8(&qword_100203470, &qword_100203478);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
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
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010C0A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000464D0(&qword_100201550, &qword_100201548, &qword_1001AB908);
          for (i = 0; i != v6; ++i)
          {
            sub_100004E70(&qword_100201548, &qword_1001AB908);
            v9 = sub_10011EC60(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SecCertificate(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10010C230(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = (*(a5 + 48) + 16 * a2);
    v9 = *v8;
    v10 = v8[1];
    v11 = type metadata accessor for ISO18013Package.Document();
    (*(*(v11 - 8) + 16))(v6, v7 + *(*(v11 - 8) + 72) * a2, v11);

    return v9;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10010C304(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = (*(a5 + 48) + 16 * a2);
    v9 = *v8;
    v10 = v8[1];
    v11 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
    (*(*(v11 - 8) + 16))(v6, v7 + *(*(v11 - 8) + 72) * a2, v11);

    return v9;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_10010C3E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    Hasher._combine(_:)(v8);
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    do
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      ++v4;
      type metadata accessor for SecCertificate(0);
      sub_100112C20(&qword_100203598, type metadata accessor for SecCertificate);
      _CFObject.hash(into:)();
      swift_unknownObjectRelease();
    }

    while (v3 != v4);
  }

  else
  {
    v5 = (a2 + 32);
    type metadata accessor for SecCertificate(0);
    sub_100112C20(&qword_100203598, type metadata accessor for SecCertificate);
    do
    {
      v6 = *v5++;
      v7 = v6;
      _CFObject.hash(into:)();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10010C574@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_10010C640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
  sub_100100058(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

unint64_t sub_10010C6F8(uint64_t a1)
{
  v2 = sub_100004E70(&unk_100201890, &unk_1001AA550);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004E70(&qword_100201078, &qword_1001AB528);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100046360(v10, v6, &unk_100201890, &unk_1001AA550);
      result = sub_100101AB4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_10001AA08(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10010C8E8(uint64_t a1)
{
  v2 = type metadata accessor for CocoaError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_100112C20(&qword_100203680, &type metadata accessor for CocoaError.Code);
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
      sub_100101F34(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

unint64_t sub_10010CA84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_1002034E0, &qword_1001ADD60);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100046360(v4, &v13, &qword_100200490, &unk_1001AAEE0);
      v5 = v13;
      v6 = v14;
      result = sub_100099644(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100009268(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010CBB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100203560, &qword_1001ADDD0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100099644(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010CCC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100203640, &qword_1001ADE98);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_100009708(v7, v8);
      result = sub_100099644(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010CDF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100203668, &qword_1001ADEC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100099644(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010CEF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100203520, &qword_1001ADD90);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100046360(v4, v13, &qword_100203528, &qword_1001ADD98);
      result = sub_100101B4C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100009268(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010D068(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002035E0, &qword_1001ADE40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004E70(&qword_1002035D8, &qword_1001ADE38);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100046360(v10, v6, &qword_1002035E0, &qword_1001ADE40);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100099644(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for PresentmentProposal();
      result = sub_100112A2C(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010D23C(uint64_t a1)
{
  v2 = sub_100004E70(&qword_100203548, &qword_1001ADDB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004E70(&qword_100203530, &qword_1001ADDA0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100046360(v10, v6, &qword_100203548, &qword_1001ADDB8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100099644(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for AnyCodable();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010D43C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004E70(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100099644(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10010D538(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100004E70(&qword_100203658, &qword_1001ADEB0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_100101BD4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_100101BD4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010D640(uint64_t a1)
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

      sub_100102214(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10010D6D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100004E70(&qword_100201548, &qword_1001AB908);
  sub_100112978();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;

      sub_100102444(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10010D774(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1001127AC();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v2)
  {
    v4 = (a1 + 72);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      v12[0] = *(v4 - 5);
      v12[1] = v5;
      v12[2] = v6;
      v12[3] = v7;
      v12[4] = v8;
      v12[5] = v9;

      sub_10010267C(&v10, v12);

      v4 += 6;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_10010D848(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100112A90();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100009708(v6, *v4);
      sub_10010299C(v7, v6, v5);
      sub_1000092BC(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10010D8E4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_10010D938(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100004E70(&qword_1002034E8, &qword_1001ADD68);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_100112C20(&qword_1002034F0, &type metadata accessor for Calendar.Component);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_100112C20(&qword_1002034F8, &type metadata accessor for Calendar.Component);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10010DC58(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

Swift::Int sub_10010DD18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100203558, &qword_1001ADDC8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_10010DE54(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100004E70(&qword_100203458, &qword_1001ADD08);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1001126D8(&qword_100203460, &qword_100203468);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1001126D8(&qword_100203470, &qword_100203478);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10010E190(void *a1, void (**a2)(char *, void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(uint64_t, uint64_t, uint64_t, uint64_t), unint64_t a8)
{
  v224 = a8;
  v223 = a7;
  v216 = a3;
  v215 = a2;
  v222 = a1;
  v11 = sub_100004E70(&qword_1002033E8, &qword_1001ADC98);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v212 = &v175 - v13;
  v211 = type metadata accessor for IDCSAnalytics.ElementFallbackAlgorithm();
  v176 = *(v211 - 8);
  v14 = *(v176 + 64);
  __chkstk_darwin(v211);
  v210 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004E70(&qword_1002033F0, &qword_1001ADCA0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v175 - v21;
  v221 = sub_100004E70(&qword_1002033F8, &qword_1001ADCA8);
  v213 = *(v221 - 8);
  v23 = *(v213 + 64);
  v24 = __chkstk_darwin(v221);
  v203 = &v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v183 = &v175 - v26;
  v201 = type metadata accessor for ISO18013IssuerSignedItem();
  v27 = *(v201 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v201);
  v200 = &v175 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for IDCSAnalytics.NamespaceElement();
  v177 = *(v220 - 8);
  v30 = *(v177 + 64);
  v31 = __chkstk_darwin(v220);
  v209 = &v175 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v185 = &v175 - v34;
  v35 = __chkstk_darwin(v33);
  v184 = &v175 - v36;
  v37 = __chkstk_darwin(v35);
  v182 = &v175 - v38;
  __chkstk_darwin(v37);
  v181 = &v175 - v39;
  v187 = type metadata accessor for Logger();
  v40 = *(v187 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v187);
  v44 = &v175 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v46 = &v175 - v45;
  v47 = sub_100004E70(&qword_100203400, &qword_1001ADCB0);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  v186 = &v175 - v49;
  v217 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v50 = *(*(v217 - 8) + 64);
  __chkstk_darwin(v217);
  v208 = &v175 - v52;
  if (*(a4 + 16) && (v202 = v51, v53 = sub_100099644(a5, a6), v54 = v202, (v55 & 1) != 0))
  {
    v56 = a5;
    v204 = v22;
    v205 = v20;
    v57 = *(a4 + 56);
    v58 = *(v202 + 16);
    v196 = *(v202 + 72);
    v198 = v202 + 16;
    v197 = v58;
    result = (v58)(v208, v57 + v196 * v53, v217);
    v199 = v222[2];
    if (v199)
    {
      v60 = 0;
      v61 = a4 + 64;
      v195 = v222 + 4;
      v180 = (v54 + 56);
      v179 = (v40 + 8);
      v178 = "s from ISO18013 package";
      v190 = v54 + 8;
      v189 = (v27 + 8);
      v188 = (v177 + 32);
      v62 = _swiftEmptyArrayStorage;
      *(&v63 + 1) = 2;
      v214 = xmmword_1001AA160;
      *&v63 = 136315138;
      v175 = v63;
      v218 = _swiftEmptyArrayStorage;
      v194 = v56;
      v193 = a6;
      v191 = a4;
      v192 = v46;
LABEL_8:
      v222 = v62;
      v66 = &v195[2 * v60];
      v67 = v66[1];
      v219 = *v66;
      v207 = v60 + 1;
      v68 = 1 << *(a4 + 32);
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      else
      {
        v69 = -1;
      }

      v70 = v69 & *(a4 + 64);
      v71 = (v68 + 63) >> 6;

      v72 = a4;

      v73 = 0;
      v74 = _swiftEmptyArrayStorage;
      while (1)
      {
        v75 = v73;
        if (!v70)
        {
          break;
        }

LABEL_16:
        v76 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
        v77 = (*(v72 + 48) + ((v73 << 10) | (16 * v76)));
        v79 = *v77;
        v78 = v77[1];

        (v223)(v79, v78);
        if (v80)
        {
        }

        else
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100100418(0, *(v74 + 2) + 1, 1, v74);
            v74 = result;
          }

          v82 = *(v74 + 2);
          v81 = *(v74 + 3);
          v83 = (v82 + 1);
          if (v82 >= v81 >> 1)
          {
            v206 = (v82 + 1);
            result = sub_100100418((v81 > 1), v82 + 1, 1, v74);
            v83 = v206;
            v74 = result;
          }

          *(v74 + 2) = v83;
          v84 = &v74[16 * v82];
          *(v84 + 4) = v79;
          *(v84 + 5) = v78;
        }
      }

      while (1)
      {
        v73 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          break;
        }

        if (v73 >= v71)
        {
          a4 = v72;

          v226 = v74;
          sub_100004E70(&qword_100201580, &qword_1001AB980);
          sub_1000464D0(&qword_100202448, &qword_100201580, &qword_1001AB980);
          Collection.nilIfEmpty.getter();

          if (v225)
          {
            sub_100004E70(&qword_100203420, &qword_1001ADCD0);
            inited = swift_initStackObject();
            *(inited + 16) = v214;
            *(inited + 32) = v215;
            *(inited + 40) = v216;

            v87 = sub_10010D640(v86);

            *(inited + 48) = v87;
            v206 = sub_10010D43C(inited, &qword_100203480, &qword_1001ADD10);
            swift_setDeallocating();
            sub_10000A0D4(inited + 32, &qword_100203428, &qword_1001ADCD8);
          }

          else
          {
            v206 = sub_10010D43C(_swiftEmptyArrayStorage, &qword_100203480, &qword_1001ADD10);
          }

          v88 = v193;
          v89 = v192;
          v90 = v219;
          (v223)(v219, v67);
          v91 = v194;
          if (v92)
          {
LABEL_30:
            if (v90 == v91 && v67 == v88 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              sub_100004E70(&qword_100203408, &qword_1001ADCB8);
              v97 = swift_initStackObject();
              *(v97 + 16) = v214;
              *(v97 + 32) = v215;
              *(v97 + 40) = v216;
              sub_100004E70(&qword_100203410, &qword_1001ADCC0);
              v98 = v202;
              v99 = (*(v202 + 80) + 32) & ~*(v202 + 80);
              v100 = swift_allocObject();
              *(v100 + 16) = v214;
              v101 = v217;
              v197(v100 + v99, v208, v217);

              v102 = sub_10010DE54(v100);
              swift_setDeallocating();
              (*(v98 + 8))(v100 + v99, v101);
              swift_deallocClassInstance();
              *(v97 + 48) = v102;
              v103 = sub_10010D43C(v97, &qword_100203450, &qword_1001ADD00);
              swift_setDeallocating();
              sub_10000A0D4(v97 + 32, &qword_100203418, &qword_1001ADCC8);

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v104 = v218;
              }

              else
              {
                v104 = sub_100100900(0, *(v218 + 2) + 1, 1, v218);
              }

              v106 = *(v104 + 2);
              v105 = *(v104 + 3);
              a4 = v191;
              v107 = v219;
              if (v106 >= v105 >> 1)
              {
                v104 = sub_100100900((v105 > 1), v106 + 1, 1, v104);
              }

              *(v104 + 2) = v106 + 1;
              v218 = v104;
              v108 = &v104[48 * v106];
              v109 = v216;
              *(v108 + 4) = v215;
              *(v108 + 5) = v109;
              *(v108 + 6) = v107;
              *(v108 + 7) = v67;
              v110 = v206;
              *(v108 + 8) = v103;
              *(v108 + 9) = v110;

              v111 = v184;
              IDCSAnalytics.NamespaceElement.init(namespace:element:)();

              v112 = v200;
              CBOREncodedCBOR.value.getter();
              ISO18013IssuerSignedItem.elementIdentifier.getter();
              (*v189)(v112, v201);
              v113 = v185;
              IDCSAnalytics.NamespaceElement.init(namespace:element:)();
              v114 = *(v221 + 48);
              v115 = *v188;
              v116 = v203;
              v117 = v220;
              (*v188)(v203, v111, v220);
              v115(&v116[v114], v113, v117);
              v62 = v222;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v62 = sub_100100CC0(0, v62[2] + 1, 1, v62, &qword_100203440, &qword_1001ADCF0, &qword_1002033F8, &qword_1001ADCA8);
              }

              v119 = v62[2];
              v118 = v62[3];
              if (v119 >= v118 >> 1)
              {
                v62 = sub_100100CC0(v118 > 1, v119 + 1, 1, v62, &qword_100203440, &qword_1001ADCF0, &qword_1002033F8, &qword_1001ADCA8);
              }

              v62[2] = v119 + 1;
              v64 = v62 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v119;
              v65 = v203;
              goto LABEL_6;
            }

            v62 = v222;
          }

          else
          {
            if (*(a4 + 16))
            {
              v93 = sub_100099644(v90, v67);
              if (v94)
              {
                v95 = v186;
                v96 = v217;
                v197(v186, (*(a4 + 56) + v93 * v196), v217);
                (*v180)(v95, 0, 1, v96);
                sub_10000A0D4(v95, &qword_100203400, &qword_1001ADCB0);
                goto LABEL_30;
              }
            }

            v120 = v186;
            (*v180)(v186, 1, 1, v217);
            sub_10000A0D4(v120, &qword_100203400, &qword_1001ADCB0);
            defaultLogger()();

            v121 = Logger.logObject.getter();
            v122 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v121, v122))
            {
              v123 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              v125 = v90;
              v126 = v124;
              v226 = v124;
              *v123 = v175;
              *(v123 + 4) = sub_10010150C(v125, v67, &v226);
              _os_log_impl(&_mh_execute_header, v121, v122, "Falling back from %s to age_in_years", v123, 0xCu);
              sub_100005090(v126);
            }

            (*v179)(v89, v187);
            v127._object = (v178 | 0x8000000000000000);
            v128._countAndFlagsBits = 0x3738336362613536;
            v128._object = 0xE800000000000000;
            v127._countAndFlagsBits = 0xD000000000000020;
            logMilestone(tag:description:)(v128, v127);
            sub_100004E70(&qword_100203408, &qword_1001ADCB8);
            v129 = swift_initStackObject();
            *(v129 + 16) = v214;
            *(v129 + 32) = v215;
            *(v129 + 40) = v216;
            sub_100004E70(&qword_100203410, &qword_1001ADCC0);
            v130 = v202;
            v131 = (*(v202 + 80) + 32) & ~*(v202 + 80);
            v132 = swift_allocObject();
            *(v132 + 16) = v214;
            v133 = v217;
            v197(v132 + v131, v208, v217);

            v134 = sub_10010DE54(v132);
            swift_setDeallocating();
            (*(v130 + 8))(v132 + v131, v133);
            swift_deallocClassInstance();
            *(v129 + 48) = v134;
            v135 = sub_10010D43C(v129, &qword_100203450, &qword_1001ADD00);
            swift_setDeallocating();
            sub_10000A0D4(v129 + 32, &qword_100203418, &qword_1001ADCC8);

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v136 = v183;
              v137 = v218;
            }

            else
            {
              v137 = sub_100100900(0, *(v218 + 2) + 1, 1, v218);
              v136 = v183;
            }

            v138 = v219;
            v139 = v206;
            v141 = *(v137 + 2);
            v140 = *(v137 + 3);
            a4 = v191;
            if (v141 >= v140 >> 1)
            {
              v137 = sub_100100900((v140 > 1), v141 + 1, 1, v137);
            }

            *(v137 + 2) = v141 + 1;
            v218 = v137;
            v142 = &v137[48 * v141];
            v143 = v216;
            *(v142 + 4) = v215;
            *(v142 + 5) = v143;
            *(v142 + 6) = v138;
            *(v142 + 7) = v67;
            *(v142 + 8) = v135;
            *(v142 + 9) = v139;

            v144 = v181;
            IDCSAnalytics.NamespaceElement.init(namespace:element:)();

            v145 = v200;
            CBOREncodedCBOR.value.getter();
            ISO18013IssuerSignedItem.elementIdentifier.getter();
            (*v189)(v145, v201);
            v146 = v182;
            IDCSAnalytics.NamespaceElement.init(namespace:element:)();
            v147 = *(v221 + 48);
            v148 = *v188;
            v149 = v220;
            (*v188)(v136, v144, v220);
            v148(&v136[v147], v146, v149);
            v62 = v222;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v62 = sub_100100CC0(0, v62[2] + 1, 1, v62, &qword_100203440, &qword_1001ADCF0, &qword_1002033F8, &qword_1001ADCA8);
            }

            v151 = v62[2];
            v150 = v62[3];
            if (v151 >= v150 >> 1)
            {
              v62 = sub_100100CC0(v150 > 1, v151 + 1, 1, v62, &qword_100203440, &qword_1001ADCF0, &qword_1002033F8, &qword_1001ADCA8);
            }

            v62[2] = v151 + 1;
            v64 = v62 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v151;
            v65 = v136;
LABEL_6:
            result = sub_100046524(v65, v64, &qword_1002033F8, &qword_1001ADCA8);
          }

          v60 = v207;
          if (v207 == v199)
          {
            goto LABEL_59;
          }

          goto LABEL_8;
        }

        v70 = *(v61 + 8 * v73);
        ++v75;
        if (v70)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
    }

    else
    {
      v62 = _swiftEmptyArrayStorage;
      v218 = _swiftEmptyArrayStorage;
LABEL_59:
      v155 = 0;
      v223 = (v213 + 56);
      v219 = (v213 + 48);
      v156 = v62[2];
      v216 = v177 + 32;
      v215 = (v176 + 104);
      LODWORD(v214) = enum case for IDCSAnalytics.ElementFallbackAlgorithm.ageOverToAgeInYears(_:);
      v207 = (v177 + 56);
      v206 = (v176 + 8);
      v203 = (v177 + 8);
      v222 = v62;
      v157 = (v177 + 32);
      for (i = v220; ; result = (*v203)(v174, i))
      {
        v159 = v205;
        if (v155 == v156)
        {
          v160 = 1;
          v161 = v156;
          v162 = v204;
          v163 = v221;
        }

        else
        {
          if ((v155 & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }

          v162 = v204;
          v163 = v221;
          if (v155 >= v62[2])
          {
            goto LABEL_70;
          }

          sub_100046360(v62 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v155, v205, &qword_1002033F8, &qword_1001ADCA8);
          v160 = 0;
          v161 = v155 + 1;
        }

        (*v223)(v159, v160, 1, v163);
        sub_100046524(v159, v162, &qword_1002033F0, &qword_1001ADCA0);
        if ((*v219)(v162, 1, v163) == 1)
        {
          break;
        }

        v164 = *(v163 + 48);
        v165 = *v157;
        v166 = v209;
        (*v157)(v209, v162, i);
        type metadata accessor for IDCSAnalytics();
        v167 = *v215;
        v168 = v210;
        v224 = v161;
        v169 = v156;
        v170 = v211;
        v167(v210, v214, v211);
        v171 = v162 + v164;
        v172 = v212;
        v165(v212, v171, i);
        (*v207)(v172, 0, 1, i);
        static IDCSAnalytics.sendElementFallbackTriggeredEvent(algorithm:from:to:)();
        sub_10000A0D4(v172, &qword_1002033E8, &qword_1001ADC98);
        v173 = v170;
        v156 = v169;
        v155 = v224;
        (*v206)(v168, v173);
        v174 = v166;
        v62 = v222;
      }

      (*(v202 + 8))(v208, v217);

      return v218;
    }
  }

  else
  {
    defaultLogger()();
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&_mh_execute_header, v152, v153, "Not checking age over fallbacks because payload does not contain age in years element", v154, 2u);
    }

    (*(v40 + 8))(v44, v187);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10010F9B0(uint64_t a1)
{
  v2 = type metadata accessor for AnyCodable();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ISO18013IssuerSignedItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004E70(&qword_100203498, &qword_1001ADD28);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v37 - v13);
  v15 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  sub_1000FC35C(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v23 = &qword_100203498;
    v24 = &qword_1001ADD28;
    v25 = v14;
LABEL_5:
    sub_10000A0D4(v25, v23, v24);
    return 1;
  }

  sub_100046524(v14, v22, &qword_1002034A0, &unk_1001AE060);
  sub_100046360(v22, v20, &qword_1002034A0, &unk_1001AE060);
  v26 = *(v20 + 1);

  v27 = *(v15 + 48);
  v28 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  CBOREncodedCBOR.value.getter();
  (*(*(v28 - 8) + 8))(&v20[v27], v28);
  if (ISO18013IssuerSignedItem.digestID.getter())
  {
LABEL_4:
    (*(v7 + 8))(v10, v6);
    v23 = &qword_1002034A0;
    v24 = &unk_1001AE060;
    v25 = v22;
    goto LABEL_5;
  }

  result = ISO18013IssuerSignedItem.random.getter();
  v31 = v30 >> 62;
  if (v30 >> 62 != 3)
  {
    if (v31)
    {
      if (v31 == 1)
      {
        if (!__OFSUB__(HIDWORD(result), result))
        {
          v32 = HIDWORD(result) - result;
          goto LABEL_18;
        }

        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v34 = *(result + 16);
      v33 = *(result + 24);
      v32 = v33 - v34;
      if (__OFSUB__(v33, v34))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v32 = BYTE6(v30);
    }

LABEL_18:
    sub_1000092BC(result, v30);
    if (v32)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  if (!result && v30 == 0xC000000000000000)
  {
    result = 0;
    v30 = 0xC000000000000000;
  }

  sub_1000092BC(result, v30);
LABEL_19:
  ISO18013IssuerSignedItem.elementValue.getter();
  if (qword_1001FFFD8 != -1)
  {
    swift_once();
  }

  v35 = v38;
  sub_1000FC128(v38, qword_100205D38);
  v36 = static AnyCodable.== infix(_:_:)();
  (*(v37 + 8))(v5, v35);
  (*(v7 + 8))(v10, v6);
  sub_10000A0D4(v22, &qword_1002034A0, &unk_1001AE060);
  return (v36 & 1) == 0;
}

uint64_t sub_10010FE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(uint64_t, unint64_t), uint64_t a7)
{
  v87 = a6;
  v84 = a5;
  v67 = a4;
  v64 = a3;
  v63 = a2;
  v82 = type metadata accessor for Logger();
  v9 = *(v82 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v82);
  v62 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v62 - v13;
  v80 = type metadata accessor for ISO18013IssuerSignedItem();
  v14 = *(v80 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v80);
  v79 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v17 = *(v78 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v78);
  v76 = &v62 - v19;
  v75 = type metadata accessor for AnyCodable();
  v20 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v74 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 64);
  v27 = (v24 + 63) >> 6;
  v77 = v17;
  v71 = v17 + 8;
  v72 = v17 + 16;
  v69 = (v21 + 8);
  v70 = (v14 + 8);
  v81 = (v9 + 8);

  v29 = 0;
  v65 = 0;
  v30 = _swiftEmptyArrayStorage;
  *&v31 = 136315394;
  v66 = v31;
  v68 = a7;
  v85 = a1;
  v73 = a1 + 64;
  while (v26)
  {
    v86 = v30;
LABEL_10:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = (*(a1 + 48) + ((v29 << 10) | (16 * v33)));
    v35 = *v34;
    v36 = v34[1];

    v87(v35, v36);
    if (v37)
    {
      goto LABEL_30;
    }

    if (!*(a1 + 16) || (v38 = sub_100099644(v35, v36), (v39 & 1) == 0))
    {
      v65 = 1;
LABEL_30:
      v30 = v86;
      goto LABEL_31;
    }

    v40 = v27;
    v41 = v76;
    v42 = v77;
    v43 = v78;
    (*(v77 + 16))(v76, *(a1 + 56) + *(v77 + 72) * v38, v78);
    v44 = v79;
    CBOREncodedCBOR.value.getter();
    (*(v42 + 8))(v41, v43);
    v45 = v74;
    ISO18013IssuerSignedItem.elementValue.getter();
    (*v70)(v44, v80);
    v46 = AnyCodable.BOOLValue.getter();
    (*v69)(v45, v75);
    if (v46 == 2)
    {
      v65 = 1;
      a1 = v85;
      v27 = v40;
      v23 = v73;
      goto LABEL_30;
    }

    v47 = v83;
    defaultLogger()();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v88 = v51;
      *v50 = v66;
      *(v50 + 4) = sub_10010150C(v35, v36, &v88);
      *(v50 + 12) = 1024;
      *(v50 + 14) = v46 & 1;
      _os_log_impl(&_mh_execute_header, v48, v49, "Considering %s : %{BOOL}d", v50, 0x12u);
      sub_100005090(v51);

      (*v81)(v83, v82);
    }

    else
    {

      (*v81)(v47, v82);
    }

    v27 = v40;
    v23 = v73;
    if ((v46 ^ v84))
    {
      a1 = v85;
      goto LABEL_30;
    }

    v52 = (v87)(v35, v36);
    a1 = v85;
    if (v53)
    {
      goto LABEL_30;
    }

    v54 = v52 <= v67;
    if (v84)
    {
      v54 = v52 >= v67;
    }

    v30 = v86;
    if (v54)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v89 = v30;
      if ((result & 1) == 0)
      {
        result = sub_10010A6B4(0, v30[2] + 1, 1);
        v30 = v89;
      }

      v56 = v30[2];
      v55 = v30[3];
      if (v56 >= v55 >> 1)
      {
        result = sub_10010A6B4((v55 > 1), v56 + 1, 1);
        v30 = v89;
      }

      v30[2] = v56 + 1;
      v57 = &v30[2 * v56];
      v57[4] = v35;
      v57[5] = v36;
      a1 = v85;
    }

    else
    {
LABEL_31:
    }
  }

  while (1)
  {
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      return result;
    }

    if (v32 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v32);
    ++v29;
    if (v26)
    {
      v86 = v30;
      v29 = v32;
      goto LABEL_10;
    }
  }

  if (v65)
  {

    v58 = v62;
    defaultLogger()();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Encrypted fallbacks found in payload, passing fallback responsibility to response builder", v61, 2u);
    }

    (*v81)(v58, v82);
    sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
    v30 = swift_allocObject();
    *(v30 + 1) = xmmword_1001AA160;
    v30[4] = v63;
    v30[5] = v64;
  }

  return v30;
}

void *sub_1001105C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t *a10)
{
  v123 = a8;
  v134 = a7;
  v144 = a6;
  v121 = a5;
  v120 = a4;
  v126 = a2;
  v125 = a1;
  v146 = a10;
  *&v147 = a9;
  v129 = type metadata accessor for AnyCodable();
  v128 = *(v129 - 8);
  v11 = v128[8];
  __chkstk_darwin(v129);
  v127 = (&v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = type metadata accessor for ISO18013IssuerSignedItem();
  v13 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131);
  v130 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v118 = *(v119 - 8);
  v15 = *(v118 + 64);
  __chkstk_darwin(v119);
  v132 = &v118 - v16;
  v139 = type metadata accessor for Logger();
  v138 = *(v139 - 8);
  v17 = *(v138 + 64);
  v18 = __chkstk_darwin(v139);
  v122 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v124 = &v118 - v21;
  v22 = __chkstk_darwin(v20);
  v135 = &v118 - v23;
  __chkstk_darwin(v22);
  v133 = &v118 - v24;
  v25 = a3 + 8;
  v26 = 1 << *(a3 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & a3[8];
  v29 = (v26 + 63) >> 6;
  v30 = a3;

  v31 = 0;
  v32 = _swiftEmptyArrayStorage;
  while (1)
  {
    v33 = v31;
    if (!v28)
    {
      break;
    }

LABEL_8:
    v34 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v35 = (v30[6] + ((v31 << 10) | (16 * v34)));
    v37 = *v35;
    v36 = v35[1];

    a3 = v146;
    (v147)(v37, v36);
    if (v38)
    {
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a3 = &v148;
        sub_10010A6B4(0, v32[2] + 1, 1);
        v32 = v148;
      }

      v41 = v32[2];
      v40 = v32[3];
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        a3 = &v148;
        v44 = v41 + 1;
        v145 = v41;
        sub_10010A6B4((v40 > 1), v41 + 1, 1);
        v42 = v44;
        v41 = v145;
        v32 = v148;
      }

      v32[2] = v42;
      v43 = &v32[2 * v41];
      v43[4] = v37;
      v43[5] = v36;
    }
  }

  while (1)
  {
    v31 = (v33 + 1);
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v31 >= v29)
    {
      break;
    }

    v28 = v25[v31];
    v33 = (v33 + 1);
    if (v28)
    {
      goto LABEL_8;
    }
  }

  v145 = v32[2];
  if (!v145)
  {

    v54 = swift_allocObject();
    *(v54 + 16) = _swiftEmptyArrayStorage;
    v58 = v133;
    goto LABEL_47;
  }

  v140 = 0;
  v28 = 0;
  v136 = 0;
  v141 = 0;
  v31 = 0;
  v30 = 0;
  v45 = 0;
  v46 = (v32 + 5);
  v142 = 1;
  v143 = 1;
  do
  {
    if (v45 >= v32[2])
    {
      goto LABEL_68;
    }

    v47 = *(v46 - 1);
    v48 = *v46;

    a3 = v146;
    v49 = (v147)(v47, v48);
    if (v50)
    {
LABEL_17:

      goto LABEL_18;
    }

    if (v49 == v144)
    {

      return _swiftEmptyArrayStorage;
    }

    if (v49 < v144)
    {
      if (v143)
      {
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (v28 < v49)
      {
LABEL_25:
        v28 = v49;

        v143 = 0;
        v31 = v47;
        v30 = v48;
        goto LABEL_18;
      }
    }

    if (v49 <= v144)
    {
      goto LABEL_17;
    }

    if (v142)
    {
      if (v49 == 0x7FFFFFFFFFFFFFFFLL)
      {

        v142 = 1;
        goto LABEL_18;
      }

LABEL_32:
      a3 = v31;
      v51 = v32;
      v52 = v30;
      v53 = v49;

      v142 = 0;
      v140 = v53;
      v30 = v52;
      v32 = v51;
      v31 = a3;
      v136 = v47;
      v141 = v48;
      goto LABEL_18;
    }

    if (v49 < v140)
    {
      goto LABEL_32;
    }

    v142 = 0;
LABEL_18:
    ++v45;
    v46 += 2;
  }

  while (v145 != v45);

  v54 = swift_allocObject();
  v55 = _swiftEmptyArrayStorage;
  *(v54 + 16) = _swiftEmptyArrayStorage;
  if (!v30)
  {
    v58 = v133;
    v59 = v141;
    if (!v141)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  v55 = sub_100100418(0, 1, 1, _swiftEmptyArrayStorage);
  v57 = *(v55 + 2);
  v56 = *(v55 + 3);
  v58 = v133;
  if (v57 >= v56 >> 1)
  {
    v55 = sub_100100418((v56 > 1), v57 + 1, 1, v55);
  }

  v59 = v141;
  *(v55 + 2) = v57 + 1;
  v60 = &v55[16 * v57];
  *(v60 + 4) = v31;
  *(v60 + 5) = v30;
  *(v54 + 16) = v55;
  if (v59)
  {
LABEL_42:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_100100418(0, *(v55 + 2) + 1, 1, v55);
    }

    v63 = *(v55 + 2);
    v62 = *(v55 + 3);
    if (v63 >= v62 >> 1)
    {
      v55 = sub_100100418((v62 > 1), v63 + 1, 1, v55);
    }

    *(v55 + 2) = v63 + 1;
    v64 = &v55[16 * v63];
    *(v64 + 4) = v136;
    *(v64 + 5) = v59;
    *(v54 + 16) = v55;
  }

LABEL_47:
  defaultLogger()();
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v148 = v68;
    *v67 = 136315138;
    swift_beginAccess();
    v69 = *(v54 + 16);

    v70 = v54;
    v71 = v58;
    v72 = Array.description.getter();
    v74 = v73;

    v75 = sub_10010150C(v72, v74, &v148);

    *(v67 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v65, v66, "Discovered closest possible fallbacks are %s", v67, 0xCu);
    sub_100005090(v68);

    v76 = *(v138 + 8);
    v77 = v71;
    v54 = v70;
    v76(v77, v139);
  }

  else
  {

    v76 = *(v138 + 8);
    v76(v58, v139);
  }

  v31 = v137;
  v78 = v134;
  v79 = v135;
  swift_beginAccess();
  v80 = *(v54 + 16);
  v81 = v80[2];
  if (v81)
  {
    if (v81 == 1)
    {
      v82 = v80[4];
      v83 = v80[5];

      defaultLogger()();

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v149 = v87;
        *v86 = 136315138;
        *(v86 + 4) = sub_10010150C(v82, v83, &v149);
        _os_log_impl(&_mh_execute_header, v84, v85, "Encountered one possible fallback, falling back to %s", v86, 0xCu);
        sub_100005090(v87);

        v88 = v135;
      }

      else
      {

        v88 = v79;
      }

      v76(v88, v139);
      v28 = v129;
      a3 = v128;
      v30 = v127;
    }

    else
    {
      v93 = v124;
      defaultLogger()();
      v94 = v123;

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v149 = v98;
        *v97 = 136315138;
        *(v97 + 4) = sub_10010150C(v78, v94, &v149);
        _os_log_impl(&_mh_execute_header, v95, v96, "Encountered multiple possible fallback, falling back to %s", v97, 0xCu);
        sub_100005090(v98);

        v99 = v124;
      }

      else
      {

        v99 = v93;
      }

      v76(v99, v139);
      a3 = v128;
      v30 = v127;

      v28 = v129;
    }

    if (qword_1001FFFD8 == -1)
    {
LABEL_64:
      v100 = sub_1000FC128(v28, qword_100205D38);
      (a3[2])(v30, v100, v28);
      ISO18013IssuerSignedItem.init(digestID:random:elementIdentifier:elementValue:)();
      v101 = type metadata accessor for CBOREncoder();
      v102 = *(v101 + 48);
      v103 = *(v101 + 52);
      swift_allocObject();
      CBOREncoder.init()();
      sub_100112C20(&qword_100202430, &type metadata accessor for ISO18013IssuerSignedItem);
      sub_100112C20(&qword_100202438, &type metadata accessor for ISO18013IssuerSignedItem);
      v104 = v132;
      CBOREncodedCBOR.init(value:tag:encoder:)();
      if (v31)
      {
      }

      sub_100004E70(&qword_100203408, &qword_1001ADCB8);
      inited = swift_initStackObject();
      v147 = xmmword_1001AA160;
      *(inited + 16) = xmmword_1001AA160;
      *(inited + 32) = v125;
      v137 = 0;
      *(inited + 40) = v126;
      sub_100004E70(&qword_100203410, &qword_1001ADCC0);
      v106 = v118;
      v107 = *(v118 + 72);
      v108 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v109 = swift_allocObject();
      *(v109 + 16) = v147;
      v110 = v104;
      v111 = v119;
      (*(v106 + 16))(v109 + v108, v110, v119);

      v112 = sub_10010DE54(v109);
      swift_setDeallocating();
      v113 = *(v106 + 8);
      v113(v109 + v108, v111);
      swift_deallocClassInstance();
      *(inited + 48) = v112;
      v114 = sub_10010D43C(inited, &qword_100203450, &qword_1001ADD00);
      swift_setDeallocating();
      sub_10000A0D4(inited + 32, &qword_100203418, &qword_1001ADCC8);
      v115 = sub_10010D43C(_swiftEmptyArrayStorage, &qword_100203480, &qword_1001ADD10);
      sub_100004E70(&qword_100203448, &qword_1001ADCF8);
      v116 = swift_allocObject();
      *(v116 + 16) = v147;
      *(v116 + 32) = v125;
      v117 = v120;
      *(v116 + 40) = v126;
      *(v116 + 48) = v117;
      *(v116 + 56) = v121;
      *(v116 + 64) = v114;
      *(v116 + 72) = v115;

      v113(v132, v111);

      return v116;
    }

LABEL_69:
    swift_once();
    goto LABEL_64;
  }

  v89 = v122;
  defaultLogger()();
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&_mh_execute_header, v90, v91, "No possible fallbacks, not falling back", v92, 2u);
  }

  v76(v89, v139);

  return _swiftEmptyArrayStorage;
}

char *sub_1001114FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v122 = a4;
  v7 = sub_100004E70(&qword_100203400, &qword_1001ADCB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v119 = &v113 - v9;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v123 = a3;
  v121 = a1;
  v114 = a2 + 64;
  v115 = a2;
  v113 = v14;
  while (1)
  {
    if (!v13)
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_94;
        }

        if (v17 >= v14)
        {
          break;
        }

        v13 = *(v10 + 8 * v17);
        ++v15;
        if (v13)
        {
          v15 = v17;
          goto LABEL_11;
        }
      }

      v40 = v16[2];
      if (v40)
      {
        v41 = 0;
        v118 = v16[2];
        v115 = v40 - 1;
        v116 = v16 + 7;
        v117 = _swiftEmptyArrayStorage;
        v120 = v16;
LABEL_32:
        v42 = &v116[4 * v41];
        v43 = v41;
        while (v43 < v16[2])
        {
          v44 = *(v42 - 3);
          v45 = *(v42 - 2);
          v46 = *(v42 - 1);
          v47 = *v42;
          v41 = v43 + 1;
          v48 = *(a3 + 16);

          if (!v48)
          {
            goto LABEL_41;
          }

          v49 = sub_100099644(v44, v45);
          if ((v50 & 1) == 0)
          {
            goto LABEL_41;
          }

          v51 = *(*(a3 + 56) + 8 * v49);
          if (!*(v51 + 16))
          {
            goto LABEL_41;
          }

          v52 = *(*(a3 + 56) + 8 * v49);

          v53 = sub_100099644(v46, v47);
          if ((v54 & 1) == 0)
          {

LABEL_41:
            v61 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
            v62 = v119;
            (*(*(v61 - 8) + 56))(v119, 1, 1, v61);
            sub_10000A0D4(v62, &qword_100203400, &qword_1001ADCB0);
            v63 = v117;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v125 = v63;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10010A9A0(0, v63[2] + 1, 1);
              v63 = v125;
            }

            v66 = v63[2];
            v65 = v63[3];
            if (v66 >= v65 >> 1)
            {
              sub_10010A9A0((v65 > 1), v66 + 1, 1);
              v63 = v125;
            }

            v63[2] = v66 + 1;
            v117 = v63;
            v67 = &v63[4 * v66];
            v67[4] = v44;
            v67[5] = v45;
            v67[6] = v46;
            v67[7] = v47;
            v16 = v120;
            a1 = v121;
            if (v115 != v43)
            {
              goto LABEL_32;
            }

            goto LABEL_48;
          }

          v55 = v53;
          v56 = *(v51 + 56);
          v57 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
          v58 = *(v57 - 8);
          v59 = v56 + *(v58 + 72) * v55;
          a3 = v123;
          v60 = v119;
          (*(v58 + 16))(v119, v59, v57);

          (*(v58 + 56))(v60, 0, 1, v57);
          sub_10000A0D4(v60, &qword_100203400, &qword_1001ADCB0);

          v42 += 4;
          v43 = v41;
          v16 = v120;
          a1 = v121;
          if (v118 == v41)
          {
            goto LABEL_48;
          }
        }

LABEL_94:
        __break(1u);
      }

      else
      {
        v117 = _swiftEmptyArrayStorage;
LABEL_48:

        v68 = v117;
        v69 = *(v117 + 16);
        if (!v69)
        {
          v72 = _swiftEmptyArrayStorage;
LABEL_69:

          v121 = v72[2];
          if (!v121)
          {
            v118 = _swiftEmptyArrayStorage;
LABEL_92:

            return v118;
          }

          v90 = 0;
          v119 = (v72 + 4);
          v118 = _swiftEmptyArrayStorage;
          v120 = v72;
LABEL_71:
          v91 = v122;
          while (v90 < v72[2])
          {
            v92 = &v119[40 * v90];
            v94 = *v92;
            v93 = v92[1];
            v96 = v92[2];
            v95 = v92[3];
            v97 = v92[4];
            v98 = *(v97 + 16);
            v99 = v97 + 32;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();

            if (v98)
            {
              v100 = 0;
              while (1)
              {
                v124 = *(v99 + 8 * v100);

                sub_1000FF0B4(&v124, v122, v94, v93, v96, v95, v123, &v125);

                v101 = v126;
                sub_100112800(v125, v126);
                if (v101)
                {
                  break;
                }

                if (v98 == ++v100)
                {
                  goto LABEL_79;
                }
              }

              v98 = v100;
LABEL_79:
              v91 = v122;
            }

            ++v90;
            v102 = *(v97 + 16);
            if (v98 != v102)
            {
              if (v98 >= v102)
              {
                goto LABEL_101;
              }

              v124 = *(v99 + 8 * v98);

              sub_1000FF0B4(&v124, v91, v94, v93, v96, v95, v123, &v125);

              v103 = v126;
              if (!v126)
              {
                goto LABEL_102;
              }

              v104 = v128;
              v116 = v125;
              v117 = v127;
              v105 = v129;
              v106 = v130;

              v115 = v103;
              sub_100112800(v116, v103);

              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v118 = sub_100100900(0, *(v118 + 2) + 1, 1, v118);
              }

              v72 = v120;
              v108 = *(v118 + 2);
              v107 = *(v118 + 3);
              if (v108 >= v107 >> 1)
              {
                v118 = sub_100100900((v107 > 1), v108 + 1, 1, v118);
              }

              v109 = v118;
              *(v118 + 2) = v108 + 1;
              v110 = &v109[48 * v108];
              v111 = v115;
              *(v110 + 4) = v116;
              *(v110 + 5) = v111;
              *(v110 + 6) = v117;
              *(v110 + 7) = v104;
              *(v110 + 8) = v105;
              *(v110 + 9) = v106;
              if (v90 != v121)
              {
                goto LABEL_71;
              }

              goto LABEL_92;
            }

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();

            v72 = v120;
            if (v90 == v121)
            {
              goto LABEL_92;
            }
          }

LABEL_96:
          __break(1u);
          break;
        }

        v70 = 0;
        v71 = (v117 + 56);
        v118 = v69 - 1;
        v72 = _swiftEmptyArrayStorage;
        v119 = (v117 + 56);
LABEL_50:
        v120 = v72;
        v73 = &v71[32 * v70];
        v74 = v70;
        while (v74 < *(v68 + 16))
        {
          if (*(a1 + 16))
          {
            v76 = *(v73 - 3);
            v75 = *(v73 - 2);
            v78 = *(v73 - 1);
            v77 = *v73;

            v79 = sub_100099644(v76, v75);
            if (v80)
            {
              v81 = *(*(a1 + 56) + 8 * v79);
              if (*(v81 + 16))
              {
                v82 = *(*(a1 + 56) + 8 * v79);

                v83 = sub_100099644(v78, v77);
                if (v84)
                {
                  v85 = *(*(v81 + 56) + 8 * v83);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v120 = sub_100100A20(0, v120[2] + 1, 1, v120);
                  }

                  v87 = v120[2];
                  v86 = v120[3];
                  if (v87 >= v86 >> 1)
                  {
                    v120 = sub_100100A20((v86 > 1), v87 + 1, 1, v120);
                  }

                  v70 = v74 + 1;
                  v88 = v120;
                  v120[2] = v87 + 1;
                  v89 = &v88[5 * v87];
                  v89[4] = v76;
                  v89[5] = v75;
                  v89[6] = v78;
                  v89[7] = v77;
                  v89[8] = v85;
                  v68 = v117;
                  v72 = v88;
                  a1 = v121;
                  v71 = v119;
                  if (v118 != v74)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_69;
                }
              }

              else
              {
              }

              a1 = v121;
              v68 = v117;
            }

            else
            {
            }
          }

          ++v74;
          v73 += 4;
          if (v69 == v74)
          {
            v72 = v120;
            goto LABEL_69;
          }
        }
      }

      __break(1u);
      goto LABEL_96;
    }

LABEL_11:
    v117 = v13;
    v118 = v15;
    v18 = __clz(__rbit64(v13)) | (v15 << 6);
    v19 = (*(a2 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(*(a2 + 56) + 8 * v18);
    v22 = v21[2];
    v116 = v21;
    if (v22)
    {
      v120 = v16;
      v23 = *v19;
      v125 = _swiftEmptyArrayStorage;

      sub_10010A9A0(0, v22, 0);
      v24 = v125;
      v25 = v21 + 5;
      do
      {
        v26 = *(v25 - 1);
        v27 = *v25;
        v125 = v24;
        v29 = v24[2];
        v28 = v24[3];
        v30 = v29 + 1;

        if (v29 >= v28 >> 1)
        {
          sub_10010A9A0((v28 > 1), v29 + 1, 1);
          v24 = v125;
        }

        v24[2] = v30;
        v31 = &v24[4 * v29];
        v31[4] = v23;
        v31[5] = v20;
        v31[6] = v26;
        v31[7] = v27;
        v25 += 2;
        --v22;
      }

      while (v22);
      v16 = v120;
      v10 = v114;
      a2 = v115;
      v14 = v113;
    }

    else
    {

      v24 = _swiftEmptyArrayStorage;
      v30 = _swiftEmptyArrayStorage[2];
    }

    v32 = v16[2];
    v33 = v32 + v30;
    if (__OFADD__(v32, v30))
    {
      break;
    }

    v34 = swift_isUniquelyReferenced_nonNull_native();
    if (!v34 || (v35 = v16[3] >> 1, v35 < v33))
    {
      if (v32 <= v33)
      {
        v36 = v32 + v30;
      }

      else
      {
        v36 = v32;
      }

      v16 = sub_100100B68(v34, v36, 1, v16);
      v35 = v16[3] >> 1;
    }

    a3 = v123;
    if (v24[2])
    {
      if (v35 - v16[2] < v30)
      {
        goto LABEL_99;
      }

      sub_100004E70(&qword_100200468, &qword_1001AAE98);
      swift_arrayInitWithCopy();

      if (v30)
      {
        v37 = v16[2];
        v38 = __OFADD__(v37, v30);
        v39 = v37 + v30;
        if (v38)
        {
          goto LABEL_100;
        }

        v16[2] = v39;
      }
    }

    else
    {

      if (v30)
      {
        goto LABEL_98;
      }
    }

    v13 = (v117 - 1) & v117;

    a1 = v121;
    v15 = v118;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:

  __break(1u);
  return result;
}

void *sub_100111F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a4;
  v59 = a6;
  v64 = a5;
  v65 = a1;
  v6 = type metadata accessor for ISO23220_1_ElementIdentifier();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  __chkstk_darwin(v6);
  v60 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v63 = *(v9 - 8);
  v10 = *(v63 + 64);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ISO18013KnownNamespaces();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004E70(&qword_100201578, &qword_1001AD1E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v58 - v23;

  ISO18013KnownDocTypes.init(rawValue:)();
  v25 = type metadata accessor for ISO18013KnownDocTypes();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    goto LABEL_2;
  }

  sub_100046360(v24, v22, &qword_100201578, &qword_1001AD1E0);
  v28 = (*(v26 + 88))(v22, v25);
  if (v28 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
  {
    (*(v14 + 104))(v17, enum case for ISO18013KnownNamespaces.iso18013_5_1(_:), v13);
    v29 = ISO18013KnownNamespaces.rawValue.getter();
    v31 = v30;
    (*(v14 + 8))(v17, v13);
    v32 = v63;
    (*(v63 + 104))(v12, enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:), v9);

    v58 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
    v34 = v33;
    (*(v32 + 8))(v12, v9);
    v35 = sub_1000FD8B0;
  }

  else
  {
    if (v28 != enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:) && v28 != enum case for ISO18013KnownDocTypes.photoID(_:))
    {
      (*(v26 + 8))(v22, v25);
LABEL_2:
      sub_10000A0D4(v24, &qword_100201578, &qword_1001AD1E0);
      return &_swiftEmptySetSingleton;
    }

    (*(v14 + 104))(v17, enum case for ISO18013KnownNamespaces.iso23220_1(_:), v13);
    v29 = ISO18013KnownNamespaces.rawValue.getter();
    v31 = v36;
    (*(v14 + 8))(v17, v13);
    v37 = v60;
    v38 = v61;
    v39 = v62;
    (*(v61 + 104))(v60, enum case for ISO23220_1_ElementIdentifier.ageInYears(_:), v62);

    v58 = ISO23220_1_ElementIdentifier.rawValue.getter();
    v34 = v40;
    (*(v38 + 8))(v37, v39);
    v35 = sub_100112C6C;
  }

  v41 = v35;
  sub_10000A0D4(v24, &qword_100201578, &qword_1001AD1E0);
  v43 = v65;
  v42 = v66;
  v44 = v67;
  if (!*(v65 + 16))
  {
    swift_bridgeObjectRelease_n();
LABEL_19:

    v54 = _swiftEmptyArrayStorage;
LABEL_20:
    v55 = sub_1001114FC(v64, v43, v42, v54);

    v68 = v54;
    sub_1000FD078(v55);
    v56 = sub_10010D774(v68);

    return v56;
  }

  v45 = sub_100099644(v29, v31);
  v47 = v46;

  if ((v47 & 1) == 0 || !*(v42 + 16))
  {
LABEL_18:

    goto LABEL_19;
  }

  v48 = *(*(v43 + 56) + 8 * v45);

  v49 = sub_100099644(v29, v31);
  if ((v50 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v51 = *(*(v42 + 56) + 8 * v49);
  if (v59 != 2)
  {
    if (v59 == 1)
    {
      v52 = *(*(v42 + 56) + 8 * v49);

      v53 = sub_10010E190(v48, v29, v31, v51, v58, v34, v41, 0);
LABEL_23:
      v54 = v53;

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v57 = *(*(v42 + 56) + 8 * v49);

  v53 = sub_1000FD8E8(v48, v29, v31, v51, v58, v34, v41, 0);
  if (!v44)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1001126D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100021ED0(&qword_1002004D8, &qword_1001ACBF0);
    sub_100112C20(a2, &type metadata accessor for ISO18013IssuerSignedItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100112774()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1001127AC()
{
  result = qword_1002034A8;
  if (!qword_1002034A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002034A8);
  }

  return result;
}

uint64_t sub_100112800(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100112914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentmentProposal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100112978()
{
  result = qword_100203588;
  if (!qword_100203588)
  {
    sub_100021ED0(&qword_100201548, &qword_1001AB908);
    sub_100112C20(&qword_100200320, type metadata accessor for SecCertificate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100203588);
  }

  return result;
}

uint64_t sub_100112A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentmentProposal();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100112A90()
{
  result = qword_1002035F8;
  if (!qword_1002035F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002035F8);
  }

  return result;
}

Swift::Int sub_100112AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100203648, &qword_1001ADEA0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100112C20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100112C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100099644(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_100112CC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  __chkstk_darwin(v3);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ISO18013CodingKeyFormat();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v35);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ISO18013Package();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v36 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004E70(&qword_100203918, &qword_1001AE0B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v31 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v30 - v18;
  v20 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_decodedPayload;
  swift_beginAccess();
  sub_100046360(v2 + v20, v19, &qword_100203918, &qword_1001AE0B0);
  if ((*(v11 + 48))(v19, 1, v10) == 1)
  {
    sub_10000A0D4(v19, &qword_100203918, &qword_1001AE0B0);
    v21 = type metadata accessor for CBORDecoder();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    CBORDecoder.init()();
    (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat, v35);
    CBORDecoder.codingKeyFormat.setter();
    v24 = *(v2 + 112);
    v25 = *(v2 + 120);
    sub_100009708(v24, v25);
    sub_100120B50(&qword_100203920, &type metadata accessor for ISO18013Package);
    v26 = v36;
    v27 = v38;
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();
    if (v27)
    {
      sub_1000092BC(v24, v25);

      (*(v32 + 104))(v34, enum case for DIPError.Code.idcsInvalidPayload(_:), v33);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    sub_1000092BC(v24, v25);

    v29 = v31;
    (*(v11 + 16))(v31, v26, v10);
    (*(v11 + 56))(v29, 0, 1, v10);
    swift_beginAccess();
    sub_100120B98(v29, v2 + v20);
    swift_endAccess();
  }

  else
  {
    v26 = v19;
  }

  return (*(v11 + 32))(v37, v26, v10);
}

uint64_t sub_100113200@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v727 = a1;
  v653 = a2;
  v4 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v634 = &v617 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v637 = &v617 - v8;
  v9 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v652 = &v617 - v11;
  v12 = sub_100004E70(&qword_100203870, &qword_1001AE008);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v660 = &v617 - v14;
  v726 = type metadata accessor for IDCSAnalytics.PayloadValidationReason();
  v725 = *(v726 - 8);
  v15 = *(v725 + 64);
  v16 = __chkstk_darwin(v726);
  v722 = &v617 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v651 = &v617 - v18;
  v668 = type metadata accessor for ISO18013KnownDocTypes();
  v667 = *(v668 - 8);
  v19 = *(v667 + 64);
  __chkstk_darwin(v668);
  v643 = &v617 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004E70(&qword_100201578, &qword_1001AD1E0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v656 = &v617 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v669 = &v617 - v25;
  v639 = type metadata accessor for COSESignatureValidator();
  v638 = *(v639 - 8);
  v26 = *(v638 + 64);
  __chkstk_darwin(v639);
  v646 = &v617 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100004E70(&qword_100201528, &qword_1001AB900);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v663 = &v617 - v30;
  v665 = type metadata accessor for PublicKeyAlgorithm();
  v664 = *(v665 - 8);
  v31 = *(v664 + 64);
  __chkstk_darwin(v665);
  v657 = &v617 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v737 = type metadata accessor for DIPError.Code();
  v736 = *(v737 - 8);
  v33 = *(v736 + 64);
  v34 = __chkstk_darwin(v737);
  v642 = &v617 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v641 = &v617 - v37;
  v38 = __chkstk_darwin(v36);
  v640 = &v617 - v39;
  __chkstk_darwin(v38);
  v735 = &v617 - v40;
  v691 = type metadata accessor for ISO18013IssuerSignedItem();
  v676 = *(v691 - 8);
  v41 = *(v676 + 64);
  __chkstk_darwin(v691);
  v706 = &v617 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v695 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v694 = *(v695 - 8);
  v43 = *(v694 + 64);
  v44 = __chkstk_darwin(v695);
  v705 = &v617 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v688 = &v617 - v46;
  v47 = sub_100004E70(&qword_100203498, &qword_1001ADD28);
  v48 = *(*(v47 - 8) + 64);
  v49 = __chkstk_darwin(v47 - 8);
  v692 = (&v617 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v49);
  v693 = (&v617 - v51);
  v684 = type metadata accessor for COSEKey();
  v683 = *(v684 - 1);
  v52 = *(v683 + 64);
  __chkstk_darwin(v684);
  v682 = (&v617 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v681 = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo();
  v680 = *(v681 - 1);
  v54 = *(v680 + 64);
  __chkstk_darwin(v681);
  v679 = &v617 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v690 = type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo();
  v700 = *(v690 - 8);
  v56 = *(v700 + 64);
  v57 = __chkstk_darwin(v690);
  v650 = &v617 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __chkstk_darwin(v57);
  v649 = &v617 - v60;
  v61 = __chkstk_darwin(v59);
  v648 = &v617 - v62;
  __chkstk_darwin(v61);
  v689 = &v617 - v63;
  v701 = type metadata accessor for Date();
  v696 = *(v701 - 8);
  v64 = *(v696 + 64);
  v65 = __chkstk_darwin(v701);
  v659 = &v617 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v658 = &v617 - v68;
  v69 = __chkstk_darwin(v67);
  v675 = &v617 - v70;
  v71 = __chkstk_darwin(v69);
  v678 = &v617 - v72;
  v73 = __chkstk_darwin(v71);
  v697 = &v617 - v74;
  v75 = __chkstk_darwin(v73);
  v698 = &v617 - v76;
  __chkstk_darwin(v75);
  v699 = &v617 - v77;
  v78 = sub_100004E70(&qword_1002038A0, &qword_1001AE050);
  v79 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78 - 8);
  v702 = &v617 - v80;
  v707 = type metadata accessor for ISO18013DigestAlgorithm();
  v704 = *(v707 - 8);
  v81 = *(v704 + 64);
  __chkstk_darwin(v707);
  v703 = &v617 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  object = sub_100004E70(&qword_1002038A8, &qword_1001AE058);
  countAndFlagsBits = *(object - 8);
  v83 = *(countAndFlagsBits + 64);
  __chkstk_darwin(object);
  v712 = (&v617 - v84);
  v708 = type metadata accessor for ISO18013MobileSecurityObject();
  v709 = *(v708 - 8);
  v85 = *(v709 + 64);
  __chkstk_darwin(v708);
  v711 = &v617 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v714 = type metadata accessor for COSE_Sign1();
  v715 = *(v714 - 8);
  v87 = *(v715 + 64);
  __chkstk_darwin(v714);
  v716 = &v617 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100004E70(&qword_100203890, &qword_1001AE038);
  v90 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89 - 8);
  v730 = (&v617 - v91);
  v717 = type metadata accessor for ISO18013Package.Document();
  v718 = *(v717 - 8);
  v92 = *(v718 + 64);
  __chkstk_darwin(v717);
  v719 = &v617 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v731 = type metadata accessor for ISO18013Version();
  v734 = *(v731 - 1);
  v94 = *(v734 + 64);
  __chkstk_darwin(v731);
  v96 = &v617 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v720 = type metadata accessor for ISO18013Package();
  v721 = *(v720 - 8);
  v97 = *(v721 + 64);
  __chkstk_darwin(v720);
  v738 = &v617 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v729 = type metadata accessor for ISO18013CodingKeyFormat();
  v728 = *(v729 - 1);
  v99 = *(v728 + 64);
  v100 = __chkstk_darwin(v729);
  v672 = &v617 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v100);
  v103 = &v617 - v102;
  v104 = type metadata accessor for Logger();
  v105 = *(v104 - 8);
  v106 = *(v105 + 64);
  v107 = __chkstk_darwin(v104);
  v647 = &v617 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __chkstk_darwin(v107);
  v636 = &v617 - v110;
  v111 = __chkstk_darwin(v109);
  v644 = &v617 - v112;
  v113 = __chkstk_darwin(v111);
  v654 = &v617 - v114;
  v115 = __chkstk_darwin(v113);
  v645 = &v617 - v116;
  v117 = __chkstk_darwin(v115);
  v661 = &v617 - v118;
  v119 = __chkstk_darwin(v117);
  v655 = &v617 - v120;
  v121 = __chkstk_darwin(v119);
  v666 = &v617 - v122;
  v123 = __chkstk_darwin(v121);
  v662 = &v617 - v124;
  v125 = __chkstk_darwin(v123);
  v673 = &v617 - v126;
  v127 = __chkstk_darwin(v125);
  v670 = &v617 - v128;
  v129 = __chkstk_darwin(v127);
  v671 = &v617 - v130;
  v131 = __chkstk_darwin(v129);
  v674 = &v617 - v132;
  v133 = __chkstk_darwin(v131);
  v677 = &v617 - v134;
  __chkstk_darwin(v133);
  v136 = &v617 - v135;
  v137 = type metadata accessor for IDCSAnalytics.PayloadValidationResult();
  v138 = *(*(v137 - 8) + 64);
  v139 = __chkstk_darwin(v137);
  v723 = &v617 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v139);
  v740 = v141;
  v142 = *(v141 + 104);
  v743 = &v617 - v143;
  v724 = enum case for IDCSAnalytics.PayloadValidationResult.valid(_:);
  v732 = v144;
  v742 = v141 + 104;
  v741 = v142;
  v142();
  defaultLogger()();
  Logger.sensitive(_:)();
  v145 = *(v105 + 8);
  v635 = v136;
  v687 = v104;
  v686 = v105 + 8;
  v685 = v145;
  v145(v136, v104);
  v146 = objc_opt_self();
  v147 = [v146 standardUserDefaults];
  v148._countAndFlagsBits = 0xD000000000000025;
  v148._object = 0x80000001001BAB90;
  LOBYTE(v104) = NSUserDefaults.internalBool(forKey:)(v148);

  if (v104)
  {
    v149 = *(v3 + 112);
    v150 = *(v3 + 120);
    sub_100009708(v149, v150);
    sub_10019F170(v149, v150);
    sub_1000092BC(v149, v150);
  }

  v151 = type metadata accessor for CBORDecoder();
  v152 = *(v151 + 48);
  v153 = *(v151 + 52);
  swift_allocObject();
  v154 = CBORDecoder.init()();
  v155 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat;
  v156 = v728 + 16;
  v157 = *(v728 + 16);
  v157(v103, v3 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat, v729);
  CBORDecoder.codingKeyFormat.setter();
  v158 = v739;
  sub_100112CC4(v738);
  v739 = v158;
  if (v158)
  {

    v730 = 0;
    v731 = 0;
    v733 = 0;
    v734 = 0;
    v159 = v726;
    v160 = v732;
    v161 = v743;
    goto LABEL_5;
  }

  v629 = v155;
  v630 = v157;
  v631 = v156;
  v632 = v3;
  v633 = v154;
  ISO18013Package.version.getter();
  v163 = ISO18013Version.major.getter();
  v165 = v734 + 8;
  v164 = *(v734 + 8);
  v166 = v731;
  v164(v96, v731);
  if (v163 != 1)
  {
    v179 = v743;
    v180 = v732;
    (*(v740 + 8))(v743, v732);
    (v741)(v179, enum case for IDCSAnalytics.PayloadValidationResult.unknownPackageVersion(_:), v180);
    v744[0] = 0;
    v744[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v744[0] = 0xD00000000000001CLL;
    v744[1] = 0x80000001001BABF0;
    ISO18013Package.version.getter();
    sub_100120B50(&qword_1002014C8, &type metadata accessor for ISO18013Version);
    v181._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v181);

    v164(v96, v166);
    (*(v736 + 104))(v735, enum case for DIPError.Code.idcsInvalidPayload(_:), v737);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
    v182 = swift_allocError();
    v161 = v179;
    v162 = v741;
    v160 = v180;
LABEL_13:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v739 = v182;
    swift_willThrow();

    (*(v721 + 8))(v738, v720);
    v730 = 0;
    v731 = 0;
    v733 = 0;
    v734 = 0;
    v159 = v726;
    goto LABEL_33;
  }

  v167 = *(ISO18013Package.documents.getter() + 16);

  if (v167 != 1)
  {
    v183 = v743;
    v184 = v732;
    (*(v740 + 8))(v743, v732);
    v185 = v741;
    (v741)(v183, enum case for IDCSAnalytics.PayloadValidationResult.invalidDocumentCount(_:), v184);
    v739 = " have any documents";
    (*(v736 + 104))(v735, enum case for DIPError.Code.idcsInvalidPayload(_:), v737);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
    v161 = v183;
    v182 = swift_allocError();
    v160 = v184;
    v162 = v185;
    goto LABEL_13;
  }

  v168 = ISO18013Package.documents.getter();
  v169 = v730;
  sub_1000FC1A8(v168, v730);

  v170 = sub_100004E70(&qword_1002034D0, &qword_1001ADD50);
  if ((*(*(v170 - 8) + 48))(v169, 1, v170) == 1)
  {
    goto LABEL_317;
  }

  v171 = v169[1];
  v733 = *v169;
  v734 = v171;
  (*(v718 + 32))(v719, v169 + *(v170 + 48), v717);
  v172 = v716;
  ISO18013Package.Document.issuerAuth.getter();
  v628 = COSE_Sign1.isTagged.getter();
  v173 = COSE_Sign1.payload.getter();
  if (v174 >> 60 == 15)
  {
    v175 = v743;
    v160 = v732;
    (*(v740 + 8))(v743, v732);
    v176 = v741;
    (v741)(v175, enum case for IDCSAnalytics.PayloadValidationResult.missingMSO(_:), v160);
    v739 = "unsupported package version ";
    (*(v736 + 104))(v735, enum case for DIPError.Code.idcsInvalidPayload(_:), v737);
    v731 = "agePayloadProcessor.swift";
    v730 = 0x80000001001BA260;
    sub_10002688C(_swiftEmptyArrayStorage);
    v177 = v718;
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
    v161 = v175;
    v178 = swift_allocError();
    v162 = v176;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v739 = v178;
    swift_willThrow();

    (*(v715 + 8))(v172, v714);
    (*(v177 + 8))(v719, v717);
LABEL_31:
    (*(v721 + 8))(v738, v720);
    v730 = 0;
    v731 = 0;
LABEL_32:
    v159 = v726;
    goto LABEL_33;
  }

  v186 = v174;
  v187 = v173;
  sub_100120AEC();
  v188 = v712;
  v189 = object;
  v627 = v186;
  v190 = v739;
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  if (v190)
  {
    v191 = v743;
    v160 = v732;
    (*(v740 + 8))(v743, v732);
    v192 = v741;
    (v741)(v191, enum case for IDCSAnalytics.PayloadValidationResult.invalidMSO(_:), v160);
    v731 = "ontain an MSO payload";
    v739 = "agePayloadProcessor.swift";
    v730 = 0x80000001001BA260;
    (*(v736 + 104))(v735, enum case for DIPError.Code.internalError(_:), v737);
    swift_errorRetain();
    v729 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
    v161 = v191;
    v193 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v739 = v193;
    swift_willThrow();
    sub_10001C120(v187, v627);
    v162 = v192;

LABEL_30:
    (*(v715 + 8))(v716, v714);
    (*(v718 + 8))(v719, v717);
    goto LABEL_31;
  }

  v625 = 0;
  v626 = v187;
  CBOREncodedCBOR.value.getter();
  (*(countAndFlagsBits + 8))(v188, v189);
  ISO18013MobileSecurityObject.version.getter();
  v194 = ISO18013Version.major.getter();
  v164(v96, v166);
  if (v194 != 1)
  {
    v200 = v743;
    v201 = v732;
    (*(v740 + 8))(v743, v732);
    (v741)(v200, enum case for IDCSAnalytics.PayloadValidationResult.unknownMSOVersion(_:), v201);
    v744[0] = 0;
    v744[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v744[0] = 0xD000000000000018;
    v744[1] = 0x80000001001BAC80;
    ISO18013MobileSecurityObject.version.getter();
    sub_100120B50(&qword_1002014C8, &type metadata accessor for ISO18013Version);
    v202._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v202);

    v164(v96, v166);
    v739 = v744[0];
    (*(v736 + 104))(v735, enum case for DIPError.Code.idcsInvalidPayload(_:), v737);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
    v203 = swift_allocError();
    v161 = v200;
    v160 = v201;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v739 = v203;
    v162 = v741;
LABEL_28:
    swift_willThrow();
    sub_10001C120(v626, v627);

LABEL_29:
    (*(v709 + 8))(v711, v708);
    goto LABEL_30;
  }

  v739 = v146;
  v195 = ISO18013MobileSecurityObject.docType.getter();
  v160 = v732;
  if (v195 == v733 && v196 == v734)
  {

    v197 = v740;
    v198 = v707;
    v199 = v702;
  }

  else
  {
    v204 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v197 = v740;
    v198 = v707;
    v199 = v702;
    if ((v204 & 1) == 0)
    {
      v230 = v743;
      (*(v740 + 8))(v743, v160);
      v231 = v741;
      (v741)(v230, enum case for IDCSAnalytics.PayloadValidationResult.inconsistentDocType(_:), v160);
      v739 = "unsupported MSO version ";
      (*(v736 + 104))(v735, enum case for DIPError.Code.idcsInvalidPayload(_:), v737);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
      v161 = v230;
      v232 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v739 = v232;
      v162 = v231;
      goto LABEL_28;
    }
  }

  ISO18013MobileSecurityObject.digestAlgorithm.getter();
  ISO18013DigestAlgorithm.init(rawValue:)();
  v205 = v704;
  if ((*(v704 + 48))(v199, 1, v198) == 1)
  {
    v206 = *(v197 + 8);
    v207 = v743;
    v206(v743, v160);
    sub_10000A0D4(v199, &qword_1002038A0, &qword_1001AE050);
    (v741)(v207, enum case for IDCSAnalytics.PayloadValidationResult.unknownDigestAlgorithm(_:), v160);
    v744[0] = 0;
    v744[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v744[0] = 0xD00000000000001DLL;
    v744[1] = 0x80000001001BACE0;
    v208._countAndFlagsBits = ISO18013MobileSecurityObject.digestAlgorithm.getter();
    String.append(_:)(v208);

    (*(v736 + 104))(v735, enum case for DIPError.Code.idcsInvalidPayload(_:), v737);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
    v209 = swift_allocError();
    v161 = v743;
    v162 = v741;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v739 = v209;
    goto LABEL_28;
  }

  (*(v205 + 32))(v703, v199, v198);
  Date.init()();
  v210 = v689;
  ISO18013MobileSecurityObject.validityInfo.getter();
  v211 = v698;
  ISO18013MobileSecurityObject.ValidityInfo.validFrom.getter();
  v213 = v700 + 8;
  v212 = *(v700 + 8);
  v214 = v690;
  v212(v210, v690);
  ISO18013MobileSecurityObject.validityInfo.getter();
  v215 = v697;
  ISO18013MobileSecurityObject.ValidityInfo.validUntil.getter();
  v216 = v211;
  v700 = v213;
  v624 = v212;
  v212(v210, v214);
  if (static Date.< infix(_:_:)())
  {
    v217 = v677;
    defaultLogger()();
    v218 = v696;
    v219 = v678;
    v220 = v701;
    (*(v696 + 16))(v678, v216, v701);
    v221 = Logger.logObject.getter();
    v222 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v221, v222))
    {
      v223 = swift_slowAlloc();
      v224 = swift_slowAlloc();
      v744[0] = v224;
      *v223 = 136315138;
      sub_100120B50(&qword_100200500, &type metadata accessor for Date);
      v225 = dispatch thunk of CustomStringConvertible.description.getter();
      v226 = v219;
      v228 = v227;
      (*(v218 + 8))(v226, v701);
      v229 = sub_10010150C(v225, v228, v744);

      *(v223 + 4) = v229;
      _os_log_impl(&_mh_execute_header, v221, v222, "MSO is not yet valid. Valid from = %s", v223, 0xCu);
      sub_100005090(v224);
    }

    else
    {

      (*(v218 + 8))(v219, v220);
    }

    v685(v217, v687);
    v254 = v743;
    v256 = v732;
    (*(v740 + 8))(v743, v732);
    v257 = &enum case for IDCSAnalytics.PayloadValidationResult.notYetValidMSO(_:);
LABEL_48:
    (v741)(v254, *v257, v256);
    goto LABEL_49;
  }

  if (static Date.> infix(_:_:)())
  {
    v239 = v674;
    defaultLogger()();
    v240 = v696;
    v241 = v675;
    v242 = v215;
    v243 = v701;
    (*(v696 + 16))(v675, v242, v701);
    v244 = Logger.logObject.getter();
    v245 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v244, v245))
    {
      v246 = swift_slowAlloc();
      v247 = swift_slowAlloc();
      v744[0] = v247;
      *v246 = 136315138;
      sub_100120B50(&qword_100200500, &type metadata accessor for Date);
      v248 = dispatch thunk of CustomStringConvertible.description.getter();
      v249 = v240;
      v250 = v248;
      v252 = v251;
      (*(v249 + 8))(v241, v243);
      v253 = sub_10010150C(v250, v252, v744);

      *(v246 + 4) = v253;
      _os_log_impl(&_mh_execute_header, v244, v245, "MSO is expired. Valid until = %s", v246, 0xCu);
      sub_100005090(v247);
      v254 = v743;

      v685(v239, v687);
      v255 = *(v740 + 8);
    }

    else
    {

      (*(v240 + 8))(v241, v243);
      v685(v239, v687);
      v255 = *(v740 + 8);
      v254 = v743;
    }

    v256 = v732;
    v255(v254, v732);
    v257 = &enum case for IDCSAnalytics.PayloadValidationResult.expiredMSO(_:);
    goto LABEL_48;
  }

LABEL_49:
  v258 = v719;
  v259 = ISO18013Package.Document.namespaces.getter();
  v260 = *(ISO18013MobileSecurityObject.valueDigests.getter() + 16);

  if (v260 != *(v259 + 16))
  {
    v274 = v743;
    v275 = v732;
    (*(v740 + 8))(v743, v732);

    v276 = v701;
    v277 = v741;
    (v741)(v274, enum case for IDCSAnalytics.PayloadValidationResult.inconsistentNamespaceCount(_:), v275);
    v739 = "unsupported digest algorithm ";
    (*(v736 + 104))(v735, enum case for DIPError.Code.idcsInvalidPayload(_:), v737);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
    v278 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v739 = v278;
    swift_willThrow();
    sub_10001C120(v626, v627);

    v279 = *(v696 + 8);
    v279(v697, v276);
    v279(v698, v276);
    v280 = v276;
    v160 = v732;
    v279(v699, v280);
    v162 = v277;
    v161 = v743;
    (*(v704 + 8))(v703, v707);
    (*(v709 + 8))(v711, v708);
    (*(v715 + 8))(v716, v714);
    (*(v718 + 8))(v258, v717);
    goto LABEL_31;
  }

  v261 = v679;
  ISO18013MobileSecurityObject.deviceKeyInfo.getter();
  v262 = v682;
  ISO18013MobileSecurityObject.DeviceKeyInfo.deviceKey.getter();
  (*(v680 + 8))(v261, v681);
  v263 = COSEKey.publicKeyIdentifier.getter();
  v265 = v264;
  (*(v683 + 8))(v262, v684);
  v266 = v733;
  if (v265 >> 60 == 15)
  {
    v267 = v743;
    v268 = v732;
    (*(v740 + 8))(v743, v732);

    v269 = v701;
    v270 = v741;
    (v741)(v267, enum case for IDCSAnalytics.PayloadValidationResult.missingDeviceKeyIdentifier(_:), v268);
    v739 = "ween mso and document";
    (*(v736 + 104))(v735, enum case for DIPError.Code.idcsInvalidPayload(_:), v737);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
    v271 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v739 = v271;
    swift_willThrow();
    sub_10001C120(v626, v627);

    v272 = *(v696 + 8);
    v272(v697, v269);
    v272(v698, v269);
    v273 = v269;
    v160 = v732;
    v272(v699, v273);
    v162 = v270;
    v161 = v267;
    (*(v704 + 8))(v703, v707);
    goto LABEL_29;
  }

  v674 = v263;
  v675 = v265;
  v281 = sub_10011C568(v733, v734, v259);
  v730 = v281;
  v731 = v282;
  if (!v282)
  {
    v281 = sub_10011ECE8(v266, v734);
    v730 = v281;
    v731 = v282;
  }

  v283 = v695;
  v284 = 0;
  v285 = v259 + 64;
  v286 = 1 << *(v259 + 32);
  if (v286 < 64)
  {
    v287 = ~(-1 << v286);
  }

  else
  {
    v287 = -1;
  }

  v288 = v287 & *(v259 + 64);
  v289 = (v286 + 63) >> 6;
  v679 = (v694 + 16);
  v712 = (v694 + 32);
  v681 = (v676 + 8);
  v682 = (v694 + 8);
  v622 = v259 + 64;
  v621 = v289;
  if (v288)
  {
    goto LABEL_59;
  }

  do
  {
LABEL_60:
    v290 = v284 + 1;
    if (__OFADD__(v284, 1))
    {
      __break(1u);
LABEL_295:
      sub_1000092BC(v281, v282);
      sub_10001C120(v706, v705);
      sub_1000092BC(v712, object);

      (*(v638 + 8))(v646, v639);
      (*(v664 + 8))(v657, v665);
      goto LABEL_161;
    }

    if (v290 >= v289)
    {

      v376 = COSE_Sign1.x509Chain.getter();
      if (v376)
      {
        if (v376[2])
        {
          v378 = v376[4];
          v377 = v376[5];
          sub_100009708(v378, v377);

          v712 = v378;
          object = v377;
          v379 = v625;
          v380 = decodeCertificate(fromDER:)();
          if (v379)
          {
            v372 = v743;
            v381 = v732;
            (*(v740 + 8))(v743, v732);
            v382 = v741;
            (v741)(v372, enum case for IDCSAnalytics.PayloadValidationResult.misformattedIssuerCertificate(_:), v381);
            v739 = "egion-for-photo-id-presentment";
            (*(v736 + 104))(v735, enum case for DIPError.Code.idcsMisformattedIssuerAuthCerts(_:), v737);
            v729 = "agePayloadProcessor.swift";
            swift_errorRetain();
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
            v383 = swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            v739 = v383;
            swift_willThrow();
            sub_10001C120(v674, v675);
            sub_10001C120(v626, v627);

            sub_1000092BC(v712, object);

            v384 = *(v696 + 8);
            v385 = v701;
            v384(v697, v701);
            v384(v698, v385);
            v386 = v385;
            v160 = v381;
            v384(v699, v386);
            v162 = v382;
LABEL_156:
            v161 = v372;
            (*(v704 + 8))(v703, v707);
            (*(v709 + 8))(v711, v708);
            (*(v715 + 8))(v716, v714);
            (*(v718 + 8))(v719, v717);
            (*(v721 + 8))(v738, v720);
            goto LABEL_32;
          }

          v468 = v380;
          v469 = v663;
          SecCertificateRef.publicKeyAlgorithm()();
          countAndFlagsBits = v468;

          if ((*(v664 + 48))(v469, 1, v665) == 1)
          {
            v372 = v743;
            v470 = v732;
            (*(v740 + 8))(v743, v732);
            sub_10000A0D4(v663, &qword_100201528, &qword_1001AB900);
            v471 = v741;
            (v741)(v372, enum case for IDCSAnalytics.PayloadValidationResult.misformattedIssuerAuthPublicKey(_:), v470);
            v739 = " issuer certificate data";
            (*(v736 + 104))(v735, enum case for DIPError.Code.idcsMisformattedIssuerAuthCerts(_:), v737);
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
            v472 = swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            v739 = v472;
            swift_willThrow();
            sub_10001C120(v674, v675);
            sub_10001C120(v626, v627);

            sub_1000092BC(v712, object);

LABEL_227:
            v504 = *(v696 + 8);
            v505 = v701;
            v504(v697, v701);
            v504(v698, v505);
            v506 = v505;
            v160 = v732;
            v504(v699, v506);
            v162 = v471;
            goto LABEL_156;
          }

          (*(v664 + 32))(v657, v663, v665);
          v706 = SecCertificateRef.rawECPublicKeyData()();
          v705 = v501;
          if (v501 >> 60 == 15)
          {
            v372 = v743;
            v502 = v732;
            (*(v740 + 8))(v743, v732);
            v471 = v741;
            (v741)(v372, enum case for IDCSAnalytics.PayloadValidationResult.misformattedIssuerAuthPublicKey(_:), v502);
            v739 = "y algorithm is not available";
            (*(v736 + 104))(v735, enum case for DIPError.Code.idcsMisformattedIssuerAuthCerts(_:), v737);
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
            v503 = swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            v739 = v503;
            swift_willThrow();
            sub_10001C120(v674, v675);
            sub_10001C120(v626, v627);

            sub_1000092BC(v712, object);

            (*(v664 + 8))(v657, v665);
            goto LABEL_227;
          }

          v528 = *(v736 + 104);
          LODWORD(v695) = enum case for DIPError.Code.idcsUnknownIssuerAuthAlgorithm(_:);
          v528(v735);
          LODWORD(v702) = enum case for DIPError.Code.idcsMisformattedIssuerAuthCerts(_:);
          v528(v640);
          LODWORD(v694) = enum case for DIPError.Code.idcsMisformattedIssuerAuthSignature(_:);
          v528(v641);
          LODWORD(v693) = enum case for DIPError.Code.idcsInvalidIssuerAuthSignature(_:);
          v528(v642);
          COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)();
          v529 = COSE_Sign1.signature.getter();
          v531 = v530;
          COSE_Sign1.algorithmIdentifier.getter();
          COSESignatureValidator.validateSignature(signature:publicKeyData:publicKeyAlgorithm:algorithmIdentifier:payload:)();
          v625 = 0;
          v281 = v529;
          v282 = v531;
          goto LABEL_295;
        }
      }

      v423 = v670;
      defaultLogger()();
      v424 = Logger.logObject.getter();
      v425 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v424, v425))
      {
        v426 = swift_slowAlloc();
        *v426 = 0;
        _os_log_impl(&_mh_execute_header, v424, v425, "Package does not include an issuer certificate; skipping signature validation", v426, 2u);
      }

      v685(v423, v687);
LABEL_161:
      if (v727)
      {
        goto LABEL_168;
      }

      v427 = v669;
      ISO18013KnownDocTypes.init(rawValue:)();
      if ((*(v667 + 48))(v427, 1, v668) != 1)
      {
        v428 = v656;
        sub_100046360(v669, v656, &qword_100201578, &qword_1001AD1E0);
        v429 = (*(v667 + 88))(v428, v668);
        if (v429 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:) || v429 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:) || v429 == enum case for ISO18013KnownDocTypes.photoID(_:))
        {
LABEL_229:
          sub_10000A0D4(v669, &qword_100201578, &qword_1001AD1E0);
          v507 = sub_10000C480();
          v508 = v625;
          v509 = sub_10011B9DC(v507);
          v625 = v508;
          if (v508)
          {

            defaultLogger()();
            swift_errorRetain();
            v510 = Logger.logObject.getter();
            v511 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v510, v511))
            {
              v512 = swift_slowAlloc();
              v513 = swift_slowAlloc();
              *v512 = 138412290;
              swift_errorRetain();
              v514 = _swift_stdlib_bridgeErrorToNSError();
              *(v512 + 4) = v514;
              *v513 = v514;
              _os_log_impl(&_mh_execute_header, v510, v511, "Failed to get elements to evaluate age consistency: %@", v512, 0xCu);
              sub_10000A0D4(v513, &qword_1002003B8, &unk_1001AB850);
            }

            else
            {
            }

            v685(v647, v687);
            v625 = 0;
          }

          else
          {
            v558 = v509;

            v559 = sub_10000C5DC(v558);

            (*(v740 + 8))(v743, v732);
            if (v559)
            {
              if (v559 == 1)
              {
                v560 = &enum case for IDCSAnalytics.PayloadValidationResult.inconsistentAgeOver(_:);
              }

              else
              {
                v560 = &enum case for IDCSAnalytics.PayloadValidationResult.inconsistentAgeBirthDate(_:);
              }

              v610 = *v560;
              v609 = v743;
            }

            else
            {
              v609 = v743;
              v610 = v724;
            }

            (v741)(v609, v610, v732);
          }

LABEL_168:
          v430 = v672;
          v431 = v729;
          v630(v672, v632 + v629, v729);
          v432 = (*(v728 + 88))(v430, v431);
          if (v432 != enum case for ISO18013CodingKeyFormat.standard(_:))
          {
            if (v432 == enum case for ISO18013CodingKeyFormat.ACWG(_:))
            {
              v728 = 4;
              goto LABEL_173;
            }

            (*(v728 + 8))(v672, v729);
          }

          v728 = 0;
LABEL_173:
          v433 = COSE_Sign1.x509Chain.getter();
          if (v433)
          {
            v434 = v433;
          }

          else
          {
            v434 = _swiftEmptyArrayStorage;
          }

          v435 = v434[2];
          if (v435)
          {
            v744[0] = _swiftEmptyArrayStorage;
            LODWORD(v343) = specialized ContiguousArray.reserveCapacity(_:)();
            v165 = 0;
            v436 = v434 + 5;
            while (v165 < v434[2])
            {
              v437 = *(v436 - 1);
              v438 = *v436;
              sub_100009708(v437, *v436);
              v439 = v625;
              decodeCertificate(fromDER:)();
              v625 = v439;
              if (v439)
              {
                sub_10001C120(v674, v675);
                sub_10001C120(v626, v627);

                sub_1000092BC(v437, v438);
                v466 = *(v696 + 8);
                v467 = v701;
                v466(v697, v701);
                v466(v698, v467);
                v466(v699, v467);
                (*(v704 + 8))(v703, v707);
                (*(v709 + 8))(v711, v708);
                (*(v715 + 8))(v716, v714);
                (*(v718 + 8))(v719, v717);
                (*(v721 + 8))(v738, v720);

                goto LABEL_238;
              }

              ++v165;
              sub_1000092BC(v437, v438);
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v440 = *(v744[0] + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              LODWORD(v343) = specialized ContiguousArray._endMutation()();
              v436 += 2;
              if (v435 == v165)
              {

                v441 = v744[0];
                goto LABEL_183;
              }
            }

            __break(1u);
            if (v343 != v695)
            {
              goto LABEL_306;
            }

            v611 = v743;
            v612 = v732;
            (*(v740 + 8))(v743, v732);
            v613 = &enum case for IDCSAnalytics.PayloadValidationResult.unknownIssuerAuthAlgorithm(_:);
LABEL_313:
            (v741)(v611, *v613, v612);
            goto LABEL_314;
          }

          v441 = _swiftEmptyArrayStorage;
LABEL_183:
          if (v441 >> 62)
          {
            v442 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v442 = *((v441 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v443 = 0;
          v729 = _swiftEmptyArrayStorage;
          while (v442 != v443)
          {
            if ((v441 & 0xC000000000000001) != 0)
            {
              v444 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v443 >= *((v441 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_301;
              }

              v444 = *(v441 + 8 * v443 + 32);
            }

            v445 = v444;
            v446 = v443 + 1;
            if (__OFADD__(v443, 1))
            {
              __break(1u);
LABEL_301:
              __break(1u);
            }

            v447 = SecCertificateRef.authorityKeyIdentifier.getter();
            v449 = v448;

            ++v443;
            if (v449 >> 60 != 15)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v729 = sub_100100EA8(0, *(v729 + 2) + 1, 1, v729);
              }

              v451 = *(v729 + 2);
              v450 = *(v729 + 3);
              if (v451 >= v450 >> 1)
              {
                v729 = sub_100100EA8((v450 > 1), v451 + 1, 1, v729);
              }

              v452 = v729;
              *(v729 + 2) = v451 + 1;
              v453 = &v452[16 * v451];
              *(v453 + 4) = v447;
              *(v453 + 5) = v449;
              v443 = v446;
            }
          }

          defaultLogger()();
          v454 = v729;

          v455 = Logger.logObject.getter();
          v456 = static os_log_type_t.debug.getter();

          LODWORD(object) = v456;
          if (os_log_type_enabled(v455, v456))
          {
            v457 = swift_slowAlloc();
            v712 = swift_slowAlloc();
            v744[0] = v712;
            *v457 = 136315138;
            v458 = *(v454 + 2);
            if (v458)
            {
              v749[0] = _swiftEmptyArrayStorage;
              sub_10010A6B4(0, v458, 0);
              v459 = v749[0];
              v460 = (v729 + 40);
              do
              {
                v462 = *(v460 - 1);
                v461 = *v460;
                sub_100009708(v462, *v460);
                v463 = Data.base16EncodedString()();
                sub_1000092BC(v462, v461);
                v749[0] = v459;
                v465 = *(v459 + 16);
                v464 = *(v459 + 24);
                if (v465 >= v464 >> 1)
                {
                  sub_10010A6B4((v464 > 1), v465 + 1, 1);
                  v459 = v749[0];
                }

                v460 += 2;
                *(v459 + 16) = v465 + 1;
                *(v459 + 16 * v465 + 32) = v463;
                --v458;
              }

              while (v458);
            }

            v480 = Array.description.getter();
            v482 = v481;

            v483 = sub_10010150C(v480, v482, v744);

            *(v457 + 4) = v483;
            _os_log_impl(&_mh_execute_header, v455, object, "ISO18013PackagePayloadProcessor: authorityKeyIdentifiers: %s", v457, 0xCu);
            sub_100005090(v712);
          }

          else
          {
          }

          v685(v673, v687);
          v484 = v734;
          sub_10011DA70(v744);
          if (v745)
          {
            sub_10001A940(v744, &v748);
            sub_100120AB4(v744);
            sub_10001AA08(&v748, v749);
            v485 = v750;
            v486 = v751;
            v487 = sub_100009278(v749, v750);
            v488 = v625;
            v712 = sub_10011D00C(v733, v484, v487, v485, v486);
            v729 = v489;
            v625 = v488;
            if (v488)
            {
              sub_10001C120(v674, v675);
              sub_10001C120(v626, v627);

LABEL_237:
              v520 = *(v696 + 8);
              v521 = v701;
              v520(v697, v701);
              v520(v698, v521);
              v520(v699, v521);
              (*(v704 + 8))(v703, v707);
              (*(v709 + 8))(v711, v708);
              (*(v715 + 8))(v716, v714);
              (*(v718 + 8))(v719, v717);
              (*(v721 + 8))(v738, v720);
              sub_100005090(v749);
LABEL_238:
              v739 = v625;
              goto LABEL_239;
            }

            defaultLogger()();

            v494 = Logger.logObject.getter();
            v495 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v494, v495))
            {
              v496 = swift_slowAlloc();
              v497 = swift_slowAlloc();
              v744[0] = v497;
              *v496 = 136315138;
              if (v729)
              {
                v498 = v712;
              }

              else
              {
                v498 = 0;
              }

              if (v729)
              {
                v499 = v729;
              }

              else
              {
                v499 = 0xE000000000000000;
              }

              v500 = sub_10010150C(v498, v499, v744);

              *(v496 + 4) = v500;
              _os_log_impl(&_mh_execute_header, v494, v495, "ISO18013PackagePayloadProcessor: Issuing Authority %s", v496, 0xCu);
              sub_100005090(v497);
            }

            else
            {
            }

            v685(v662, v687);
            sub_100005090(v749);
          }

          else
          {
            sub_10000A0D4(v744, &qword_100203888, &qword_1001AE030);
            defaultLogger()();

            v490 = Logger.logObject.getter();
            v491 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v490, v491))
            {
              v492 = swift_slowAlloc();
              v493 = swift_slowAlloc();
              v744[0] = v493;
              *v492 = 136315138;
              *(v492 + 4) = sub_10010150C(v733, v734, v744);
              _os_log_impl(&_mh_execute_header, v490, v491, "ISO18013PackagePayloadProcessor: docType: %s doesnt have issuing authority element identifier", v492, 0xCu);
              sub_100005090(v493);
            }

            v685(v666, v687);
            v712 = 0;
            v729 = 0;
          }

          sub_10011DA70(v744);
          if (v745)
          {
            sub_10001A940(v746, &v748);
            sub_100120AB4(v744);
            sub_10001AA08(&v748, v749);
            v515 = v750;
            v516 = v751;
            v517 = sub_100009278(v749, v750);
            v518 = v625;
            sub_10011D00C(v733, v734, v517, v515, v516);
            v625 = v518;
            if (v518)
            {
              sub_10001C120(v674, v675);
              sub_10001C120(v626, v627);

              goto LABEL_237;
            }

            if (v519)
            {
              v527 = String.uppercased()();
              countAndFlagsBits = v527._countAndFlagsBits;
              object = v527._object;
            }

            else
            {
              countAndFlagsBits = 0;
              object = 0;
            }

            defaultLogger()();
            v532 = Logger.logObject.getter();
            v533 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v532, v533))
            {
              v534 = swift_slowAlloc();
              v535 = swift_slowAlloc();
              v744[0] = v535;
              *v534 = 136315138;
              if (object)
              {
                v536 = countAndFlagsBits;
              }

              else
              {
                v536 = 0;
              }

              if (object)
              {
                v537 = object;
              }

              else
              {
                v537 = 0xE000000000000000;
              }

              v538 = sub_10010150C(v536, v537, v744);

              *(v534 + 4) = v538;
              _os_log_impl(&_mh_execute_header, v532, v533, "ISO18013PackagePayloadProcessor: region: %s", v534, 0xCu);
              sub_100005090(v535);
            }

            v685(v655, v687);
            sub_100005090(v749);
          }

          else
          {
            sub_10000A0D4(v744, &qword_100203888, &qword_1001AE030);
            defaultLogger()();

            v522 = Logger.logObject.getter();
            v523 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v522, v523))
            {
              v524 = swift_slowAlloc();
              v525 = swift_slowAlloc();
              v744[0] = v525;
              *v524 = 136315138;
              *(v524 + 4) = sub_10010150C(v733, v734, v744);
              _os_log_impl(&_mh_execute_header, v522, v523, "ISO18013PackagePayloadProcessor: docType: %s doesnt have issuing country element identifier", v524, 0xCu);
              sub_100005090(v525);
            }

            v685(v661, v687);
            countAndFlagsBits = sub_10011ECE8(v733, v734);
            object = v526;
          }

          sub_10011DA70(v744);
          if (v745)
          {
            sub_10001A940(v747, &v748);
            sub_100120AB4(v744);
            sub_10001AA08(&v748, v749);
            v539 = v750;
            v540 = v751;
            v541 = sub_100009278(v749, v750);
            v542 = v625;
            v706 = sub_10011D00C(v733, v734, v541, v539, v540);
            v625 = v542;
            if (v542)
            {
              sub_10001C120(v674, v675);
              sub_10001C120(v626, v627);

              v544 = *(v696 + 8);
              v545 = v701;
              v544(v697, v701);
              v544(v698, v545);
              v544(v699, v545);
              (*(v704 + 8))(v703, v707);
              (*(v709 + 8))(v711, v708);
              (*(v715 + 8))(v716, v714);
              (*(v718 + 8))(v719, v717);
              (*(v721 + 8))(v738, v720);
              sub_100005090(v749);

              goto LABEL_238;
            }

            v550 = v543;

            defaultLogger()();

            v551 = Logger.logObject.getter();
            v552 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v551, v552))
            {
              v553 = swift_slowAlloc();
              v554 = swift_slowAlloc();
              v744[0] = v554;
              *v553 = 136315138;
              if (v550)
              {
                v555 = v706;
              }

              else
              {
                v555 = 0;
              }

              if (v550)
              {
                v556 = v550;
              }

              else
              {
                v556 = 0xE000000000000000;
              }

              v557 = sub_10010150C(v555, v556, v744);

              *(v553 + 4) = v557;
              _os_log_impl(&_mh_execute_header, v551, v552, "ISO18013PackagePayloadProcessor: Issuing Jurisdiction %s", v553, 0xCu);
              sub_100005090(v554);
            }

            else
            {
            }

            v685(v645, v687);
            sub_100005090(v749);
          }

          else
          {
            sub_10000A0D4(v744, &qword_100203888, &qword_1001AE030);
            defaultLogger()();

            v546 = Logger.logObject.getter();
            v547 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v546, v547))
            {
              v548 = swift_slowAlloc();
              v549 = swift_slowAlloc();
              v744[0] = v549;
              *v548 = 136315138;
              *(v548 + 4) = sub_10010150C(v733, v734, v744);
              _os_log_impl(&_mh_execute_header, v546, v547, "ISO18013PackagePayloadProcessor: docType: %s doesnt have issuing jurisdiction element identifier", v548, 0xCu);
              sub_100005090(v549);
            }

            v685(v654, v687);
            v706 = 0;
            v550 = 0;
          }

          v561 = [v739 standardUserDefaults];
          v562._countAndFlagsBits = 0xD00000000000002ELL;
          v562._object = 0x80000001001BAE10;
          v563 = NSUserDefaults.internalBool(forKey:)(v562);

          if (v563)
          {
            v564 = v667;
            v565 = v643;
            v566 = v668;
            (*(v667 + 104))(v643, enum case for ISO18013KnownDocTypes.photoID(_:), v668);
            v567 = ISO18013KnownDocTypes.rawValue.getter();
            v569 = v568;
            (*(v564 + 8))(v565, v566);
            if (v733 == v567 && v734 == v569)
            {

LABEL_282:
              defaultLogger()();

              v571 = Logger.logObject.getter();
              v572 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v571, v572))
              {
                v573 = swift_slowAlloc();
                v744[0] = swift_slowAlloc();
                *v573 = 136315394;
                *(v573 + 4) = sub_10010150C(v733, v734, v744);
                *(v573 + 12) = 2080;
                if (object)
                {
                  v574 = countAndFlagsBits;
                }

                else
                {
                  v574 = 0x3E6C696E3CLL;
                }

                if (object)
                {
                  v575 = object;
                }

                else
                {
                  v575 = 0xE500000000000000;
                }

                v576 = sub_10010150C(v574, v575, v744);

                *(v573 + 14) = v576;
                _os_log_impl(&_mh_execute_header, v571, v572, "ISO18013PackagePayloadProcessor update region to US for docType: %s region: %s", v573, 0x16u);
                swift_arrayDestroy();
              }

              v685(v644, v687);

              object = 0xE200000000000000;
              countAndFlagsBits = 21333;
              goto LABEL_291;
            }

            v570 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v570)
            {
              goto LABEL_282;
            }
          }

LABEL_291:
          v577 = v725;
          v578 = v651;
          v579 = v726;
          (*(v725 + 104))(v651, **(&off_1001F7C28 + v727), v726);
          type metadata accessor for IDCSAnalytics();

          v580 = v734;

          v742 = v550;
          static IDCSAnalytics.sendPayloadValidationEvent(reason:docType:issuer:result:region:issuingJurisdiction:hasTaggedIssuerAuth:)();

          (*(v577 + 8))(v578, v579);
          v581 = v711;
          sub_10011E040(v660);
          v582 = *(v632 + 120);
          v741 = *(v632 + 112);
          v739 = v582;
          sub_100009708(v741, v582);
          v583 = v648;
          ISO18013MobileSecurityObject.validityInfo.getter();
          ISO18013MobileSecurityObject.ValidityInfo.validFrom.getter();
          v584 = v583;
          v585 = v690;
          v586 = v624;
          v624(v584, v690);
          v587 = v649;
          ISO18013MobileSecurityObject.validityInfo.getter();
          ISO18013MobileSecurityObject.ValidityInfo.validUntil.getter();
          v586(v587, v585);
          v588 = v650;
          ISO18013MobileSecurityObject.validityInfo.getter();
          v589 = v652;
          ISO18013MobileSecurityObject.ValidityInfo.signed.getter();
          v586(v588, v585);
          v590 = v696;
          v591 = v701;
          (*(v696 + 56))(v589, 0, 1, v701);
          v592 = v716;
          v593 = COSE_Sign1.x509Chain.getter();
          sub_10001C120(v626, v627);

          v594 = *(v590 + 8);
          v594(v697, v591);
          v595 = _swiftEmptyArrayStorage;
          if (v593)
          {
            v595 = v593;
          }

          v737 = v595;
          v594(v698, v591);
          v594(v699, v591);
          (*(v704 + 8))(v703, v707);
          (*(v709 + 8))(v581, v708);
          (*(v715 + 8))(v592, v714);
          (*(v718 + 8))(v719, v717);
          (*(v721 + 8))(v738, v720);
          (*(v740 + 8))(v743, v732);
          v596 = v653;
          *v653 = v733;
          *(v596 + 1) = v580;
          v597 = v741;
          *(v596 + 2) = v728;
          *(v596 + 3) = v597;
          v598 = v674;
          *(v596 + 4) = v739;
          *(v596 + 5) = v598;
          *(v596 + 6) = v675;
          v599 = type metadata accessor for PayloadMetadata();
          v600 = *(v590 + 32);
          v600(&v596[v599[8]], v658, v591);
          v600(&v596[v599[9]], v659, v591);
          sub_100046524(v589, &v596[v599[10]], &qword_1002004D0, &unk_1001AE1C0);
          v601 = &v596[v599[11]];
          v602 = v731;
          *v601 = v730;
          *(v601 + 1) = v602;
          *&v596[v599[12]] = v737;
          v603 = &v596[v599[13]];
          v604 = object;
          *v603 = countAndFlagsBits;
          v603[1] = v604;
          v605 = &v596[v599[14]];
          v606 = v742;
          *v605 = v706;
          *(v605 + 1) = v606;
          v607 = &v596[v599[15]];
          v608 = v729;
          *v607 = v712;
          *(v607 + 1) = v608;
          return sub_100046524(v660, &v596[v599[16]], &qword_100203870, &qword_1001AE008);
        }

        (*(v667 + 8))(v656, v668);
      }

      sub_10000A0D4(v669, &qword_100201578, &qword_1001AD1E0);
      goto LABEL_168;
    }

    v288 = *(v285 + 8 * v290);
    ++v284;
  }

  while (!v288);
  while (1)
  {
    v620 = v290;
    v291 = __clz(__rbit64(v288)) | (v290 << 6);
    v623 = v259;
    v292 = (*(v259 + 48) + 16 * v291);
    v294 = *v292;
    v293 = v292[1];
    v295 = *(*(v259 + 56) + 8 * v291);

    v296 = ISO18013MobileSecurityObject.valueDigests.getter();
    v680 = v294;
    v684 = v293;
    v297 = sub_100112C74(v294, v293, v296);

    v689 = v297;
    if (!v297)
    {
      v473 = v743;
      v474 = v732;
      (*(v740 + 8))(v743, v732);

      v475 = v474;
      v476 = v741;
      (v741)(v473, enum case for IDCSAnalytics.PayloadValidationResult.missingNamespaceInMSO(_:), v475);
      v744[0] = 0;
      v744[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v744[0] = 0xD000000000000012;
      v744[1] = 0x80000001001BAD70;
      v477._countAndFlagsBits = v680;
      v477._object = v684;
      String.append(_:)(v477);

      v478._countAndFlagsBits = 0x6F736D206E6920;
      v478._object = 0xE700000000000000;
      String.append(_:)(v478);
      v739 = v744[0];
      v729 = v744[1];
      (*(v736 + 104))(v735, enum case for DIPError.Code.idcsInvalidPayload(_:), v737);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
      v479 = swift_allocError();
      v372 = v473;
      v419 = v476;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v739 = v479;
      swift_willThrow();

      sub_10001C120(v674, v675);
      sub_10001C120(v626, v627);

LABEL_155:
      v420 = *(v696 + 8);
      v421 = v701;
      v420(v697, v701);
      v420(v698, v421);
      v422 = v421;
      v160 = v732;
      v420(v699, v422);
      v162 = v419;
      goto LABEL_156;
    }

    v298 = 0;
    v619 = (v288 - 1) & v288;
    v683 = v295;
    v299 = (v295 + 64);
    v300 = 1 << *(v295 + 32);
    v301 = v300 < 64 ? ~(-1 << v300) : -1;
    v302 = v301 & *(v295 + 64);
    v303 = (v300 + 63) >> 6;
    v304 = v625;
    v305 = v693;
    v678 = v299;
    v677 = v303;
LABEL_70:
    if (!v302)
    {
      if (v303 <= v298 + 1)
      {
        v309 = v298 + 1;
      }

      else
      {
        v309 = v303;
      }

      v310 = v309 - 1;
      while (1)
      {
        v308 = v298 + 1;
        if (__OFADD__(v298, 1))
        {
          break;
        }

        if (v308 >= v303)
        {
          v625 = v304;
          v351 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
          v320 = v692;
          (*(*(v351 - 8) + 56))(v692, 1, 1, v351);
          v302 = 0;
          v298 = v310;
          goto LABEL_81;
        }

        v302 = *&v299[8 * v308];
        ++v298;
        if (v302)
        {
          v307 = v283;
          v625 = v304;
          v298 = v308;
          goto LABEL_80;
        }
      }

      __break(1u);
      goto LABEL_229;
    }

    v307 = v283;
    v625 = v304;
    v308 = v298;
LABEL_80:
    v311 = __clz(__rbit64(v302));
    v302 &= v302 - 1;
    v312 = v311 | (v308 << 6);
    v313 = *(v683 + 56);
    v314 = (*(v683 + 48) + 16 * v312);
    v315 = v314[1];
    object = *v314;
    v316 = v694;
    v317 = v688;
    (*(v694 + 16))(v688, v313 + *(v694 + 72) * v312, v307);
    v318 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
    v319 = *(v318 + 48);
    v320 = v692;
    *v692 = object;
    *(v320 + 8) = v315;
    v321 = *(v316 + 32);
    v283 = v307;
    v321(v320 + v319, v317, v307);
    (*(*(v318 - 8) + 56))(v320, 0, 1, v318);

    v305 = v693;
LABEL_81:
    sub_100046524(v320, v305, &qword_100203498, &qword_1001ADD28);
    v322 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
    if ((*(*(v322 - 8) + 48))(v305, 1, v322) != 1)
    {
      break;
    }

    v284 = v620;
    v259 = v623;
    v285 = v622;
    v289 = v621;
    v288 = v619;
    if (!v619)
    {
      goto LABEL_60;
    }

LABEL_59:
    v290 = v284;
  }

  v324 = *v305;
  v323 = v305[1];
  (*v712)(v705, v305 + *(v322 + 48), v283);
  CBOREncodedCBOR.value.getter();
  v325 = ISO18013IssuerSignedItem.elementIdentifier.getter();
  countAndFlagsBits = v323;
  if (v324 == v325 && v323 == v326)
  {
  }

  else
  {
    v327 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v327 & 1) == 0)
    {
      v399 = v743;
      v415 = v732;
      (*(v740 + 8))(v743, v732);

      v416 = v415;
      v402 = v741;
      (v741)(v399, enum case for IDCSAnalytics.PayloadValidationResult.inconsistentElementIdentifier(_:), v416);
      v744[0] = 0;
      v744[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      v417._countAndFlagsBits = 0xD000000000000037;
      v417._object = 0x80000001001BAD90;
      String.append(_:)(v417);
      v418._countAndFlagsBits = v324;
      v418._object = countAndFlagsBits;
      String.append(_:)(v418);

      v739 = v744[0];
      v729 = v744[1];
      (*(v736 + 104))(v735, enum case for DIPError.Code.idcsInvalidPayload(_:), v737);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
      v405 = swift_allocError();
      goto LABEL_154;
    }
  }

  v328 = ISO18013IssuerSignedItem.digestID.getter();
  if (v328 < 0)
  {
    v399 = v743;
    v400 = v732;
    (*(v740 + 8))(v743, v732);

    v401 = v400;
    v402 = v741;
    (v741)(v399, enum case for IDCSAnalytics.PayloadValidationResult.invalidDigestID(_:), v401);
    v744[0] = 0;
    v744[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    strcpy(v744, "digest ID for ");
    HIBYTE(v744[1]) = -18;
    v403._countAndFlagsBits = v324;
    v403._object = countAndFlagsBits;
    String.append(_:)(v403);

    v404._countAndFlagsBits = 0xD00000000000001BLL;
    v404._object = 0x80000001001BADF0;
    String.append(_:)(v404);
    v739 = v744[0];
    v729 = v744[1];
    (*(v736 + 104))(v735, enum case for DIPError.Code.idcsInvalidPayload(_:), v737);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
    v405 = swift_allocError();
LABEL_154:
    v372 = v399;
    v419 = v402;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v739 = v405;
    swift_willThrow();

    sub_10001C120(v674, v675);
    sub_10001C120(v626, v627);

    (*v681)(v706, v691);
    (*v682)(v705, v695);
    goto LABEL_155;
  }

  v329 = v689;
  v330 = v732;
  if (!*(v689 + 2) || (v331 = sub_100101B90(v328), (v332 & 1) == 0))
  {

    v365 = v743;
    (*(v740 + 8))(v743, v330);
    (v741)(v365, enum case for IDCSAnalytics.PayloadValidationResult.missingDigestID(_:), v330);
    v744[0] = 0;
    v744[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v744[0] = 0x20676E697373696DLL;
    v744[1] = 0xEF20747365676964;
    v749[0] = ISO18013IssuerSignedItem.digestID.getter();
    v366._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v366);

    v367._countAndFlagsBits = 0x656C6520726F6620;
    v367._object = 0xED000020746E656DLL;
    String.append(_:)(v367);
    v368._countAndFlagsBits = v324;
    v368._object = countAndFlagsBits;
    String.append(_:)(v368);

    v369._countAndFlagsBits = 0x656D616E206E6920;
    v369._object = 0xEE00206563617073;
    String.append(_:)(v369);
    v370._countAndFlagsBits = v680;
    v370._object = v684;
    String.append(_:)(v370);

    (*(v736 + 104))(v735, enum case for DIPError.Code.idcsInvalidPayload(_:), v737);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
    v371 = swift_allocError();
    v372 = v365;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v739 = v371;
    swift_willThrow();

    sub_10001C120(v674, v675);
    sub_10001C120(v626, v627);

    (*v681)(v706, v691);
    (*v682)(v705, v695);
    v373 = *(v696 + 8);
    v374 = v701;
    v373(v697, v701);
    v373(v698, v374);
    v375 = v374;
    v160 = v732;
    v373(v699, v375);
    v162 = v741;
    goto LABEL_156;
  }

  v676 = v324;
  v333 = (*(v329 + 7) + 16 * v331);
  v334 = v333[1];
  v702 = *v333;
  sub_100009708(v702, v334);
  v335 = CBOREncodedCBOR.dataValue.getter();
  v337 = v336;
  v338 = v625;
  v339 = computeISO18013Digest(algorithm:data:)();
  if (v338)
  {
    sub_1000092BC(v335, v337);

    sub_10001C120(v674, v675);
    sub_10001C120(v626, v627);

    sub_1000092BC(v702, v334);

    (*v681)(v706, v691);
    (*v682)(v705, v695);
    v406 = *(v696 + 8);
    v407 = v701;
    v406(v697, v701);
    v406(v698, v407);
    v406(v699, v407);
    (*(v704 + 8))(v703, v707);
    (*(v709 + 8))(v711, v708);
    (*(v715 + 8))(v716, v714);
    (*(v718 + 8))(v719, v717);
    (*(v721 + 8))(v738, v720);
    v739 = v338;
    goto LABEL_239;
  }

  v341 = v339;
  v342 = v340;
  LODWORD(v343) = sub_1000092BC(v335, v337);
  v344 = v334 >> 62;
  object = v342;
  v345 = v342 >> 62;
  if (v334 >> 62 == 3)
  {
    v346 = 0;
    v304 = 0;
    v347 = v702;
    v165 = v341;
    if (!v702 && v334 == 0xC000000000000000 && v345 >= 3)
    {
      v346 = 0;
      if (!v341 && object == 0xC000000000000000)
      {
        goto LABEL_69;
      }
    }
  }

  else
  {
    v304 = 0;
    v347 = v702;
    v165 = v341;
    if (v344 > 1)
    {
      if (v344 == 2)
      {
        v349 = *(v702 + 16);
        v348 = *(v702 + 24);
        v350 = __OFSUB__(v348, v349);
        v346 = v348 - v349;
        if (v350)
        {
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
          goto LABEL_311;
        }
      }

      else
      {
        v346 = 0;
      }
    }

    else if (v344)
    {
      LODWORD(v346) = HIDWORD(v702) - v702;
      if (__OFSUB__(HIDWORD(v702), v702))
      {
        goto LABEL_308;
      }

      v346 = v346;
    }

    else
    {
      v346 = BYTE6(v334);
    }
  }

  if (v345 > 1)
  {
    if (v345 != 2)
    {
      if (v346)
      {
        goto LABEL_147;
      }

      goto LABEL_69;
    }

    v354 = *(v165 + 16);
    v353 = *(v165 + 24);
    v350 = __OFSUB__(v353, v354);
    v352 = v353 - v354;
    if (v350)
    {
      goto LABEL_305;
    }
  }

  else
  {
    if (!v345)
    {
      v352 = BYTE6(object);
      goto LABEL_117;
    }

    LODWORD(v352) = HIDWORD(v165) - v165;
    if (__OFSUB__(HIDWORD(v165), v165))
    {
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      if (v343 == v694)
      {
        v611 = v743;
        v612 = v732;
        (*(v740 + 8))(v743, v732);
        v613 = &enum case for IDCSAnalytics.PayloadValidationResult.misformattedIssuerSignature(_:);
        goto LABEL_313;
      }

LABEL_311:
      if (v343 != v693)
      {
        goto LABEL_318;
      }

      v611 = v743;
      v612 = v732;
      (*(v740 + 8))(v743, v732);
      v613 = &enum case for IDCSAnalytics.PayloadValidationResult.invalidIssuerSignature(_:);
      goto LABEL_313;
    }

    v352 = v352;
  }

LABEL_117:
  if (v346 != v352)
  {
    goto LABEL_147;
  }

  if (v346 < 1)
  {
    goto LABEL_69;
  }

  if (v344 <= 1)
  {
    if (!v344)
    {
      v744[0] = v347;
      LOWORD(v744[1]) = v334;
      BYTE2(v744[1]) = BYTE2(v334);
      BYTE3(v744[1]) = BYTE3(v334);
      BYTE4(v744[1]) = BYTE4(v334);
      BYTE5(v744[1]) = BYTE5(v334);
      v355 = v165;
      v356 = v165;
      v357 = object;
      sub_100009708(v355, object);
      sub_100100058(v744, v356, v357, v749);
      v304 = 0;
      sub_1000092BC(v356, v357);
      v165 = v356;
      if ((v749[0] & 1) == 0)
      {
        goto LABEL_147;
      }

      goto LABEL_69;
    }

    if (v347 >> 32 < v347)
    {
      goto LABEL_309;
    }

    sub_100009708(v165, object);
    v625 = __DataStorage._bytes.getter();
    if (v625)
    {
      v360 = __DataStorage._offset.getter();
      if (__OFSUB__(v347, v360))
      {
        goto LABEL_316;
      }

      v361 = &v625[v347 - v360];
    }

    else
    {
      v361 = 0;
    }

    __DataStorage._length.getter();
    v363 = v361;
    goto LABEL_138;
  }

  if (v344 != 2)
  {
    *(v744 + 6) = 0;
    v744[0] = 0;
    v362 = object;
    sub_100009708(v165, object);
    sub_100100058(v744, v165, v362, v749);
    v304 = 0;
    sub_1000092BC(v165, v362);
    if ((v749[0] & 1) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_69;
  }

  v358 = *(v347 + 16);
  v625 = *(v347 + 24);
  sub_100009708(v165, object);
  v343 = __DataStorage._bytes.getter();
  if (!v343)
  {
    v618 = 0;
    goto LABEL_134;
  }

  v359 = v343;
  v343 = __DataStorage._offset.getter();
  if (!__OFSUB__(v358, v343))
  {
    v618 = v358 - v343 + v359;
LABEL_134:
    if (__OFSUB__(v625, v358))
    {
      goto LABEL_310;
    }

    __DataStorage._length.getter();
    v363 = v618;
LABEL_138:
    v364 = object;
    sub_100100058(v363, v165, object, v744);
    v304 = 0;
    sub_1000092BC(v165, v364);
    v347 = v702;
    if ((v744[0] & 1) == 0)
    {
LABEL_147:

      v387 = v671;
      defaultLogger()();
      sub_100009708(v347, v334);
      v388 = object;
      sub_100009708(v165, object);

      v389 = Logger.logObject.getter();
      v390 = static os_log_type_t.debug.getter();

      sub_1000092BC(v165, v388);
      sub_1000092BC(v347, v334);
      LODWORD(v739) = v390;
      v391 = v389;
      if (os_log_type_enabled(v389, v390))
      {
        v392 = swift_slowAlloc();
        v729 = swift_slowAlloc();
        v744[0] = v729;
        *v392 = 136315650;
        *(v392 + 4) = sub_10010150C(v676, countAndFlagsBits, v744);
        *(v392 + 12) = 2080;
        v393 = Data.base16EncodedString()();
        v394 = sub_10010150C(v393._countAndFlagsBits, v393._object, v744);

        *(v392 + 14) = v394;
        *(v392 + 22) = 2080;
        v395 = Data.base16EncodedString()();
        v396 = sub_10010150C(v395._countAndFlagsBits, v395._object, v744);

        *(v392 + 24) = v396;
        _os_log_impl(&_mh_execute_header, v391, v739, "Digests for element %s are inconsistent; computed %s, mso contains %s", v392, 0x20u);
        swift_arrayDestroy();

        v397 = v732;

        v685(v387, v687);
        v398 = v743;
        (*(v740 + 8))(v743, v397);
      }

      else
      {

        v685(v387, v687);
        v398 = v743;
        v397 = v732;
        (*(v740 + 8))(v743, v732);
      }

      v408 = v397;
      v409 = v741;
      (v741)(v398, enum case for IDCSAnalytics.PayloadValidationResult.inconsistentDigest(_:), v408);
      v744[0] = 0;
      v744[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v744[0] = 0xD000000000000018;
      v744[1] = 0x80000001001BADD0;
      v410._countAndFlagsBits = v676;
      v410._object = countAndFlagsBits;
      String.append(_:)(v410);

      v739 = v744[0];
      v729 = v744[1];
      (*(v736 + 104))(v735, enum case for DIPError.Code.idcsInvalidPayload(_:), v737);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
      v411 = swift_allocError();
      v412 = v743;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v739 = v411;
      swift_willThrow();

      sub_10001C120(v674, v675);
      sub_10001C120(v626, v627);

      sub_1000092BC(v702, v334);
      sub_1000092BC(v165, object);
      (*v681)(v706, v691);
      (*v682)(v705, v695);
      v413 = *(v696 + 8);
      v414 = v701;
      v413(v697, v701);
      v413(v698, v414);
      v413(v699, v414);
      v162 = v409;
      v161 = v412;
      (*(v704 + 8))(v703, v707);
      (*(v709 + 8))(v711, v708);
      (*(v715 + 8))(v716, v714);
      (*(v718 + 8))(v719, v717);
      (*(v721 + 8))(v738, v720);
      v159 = v726;
      v233 = v723;
      v160 = v732;
      goto LABEL_34;
    }

LABEL_69:

    v306 = v706;
    sub_10011EFAC(v706, v733, v734, v680, v684, v730, v731);
    sub_1000092BC(v347, v334);
    sub_1000092BC(v165, object);
    (*v681)(v306, v691);
    v283 = v695;
    (*v682)(v705, v695);
    v299 = v678;
    v303 = v677;
    goto LABEL_70;
  }

  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  (*(v736 + 8))(v634, v737);
LABEL_314:
  sub_10000A0D4(v637, &qword_100201488, &qword_1001ACFD0);
  (v165)(v735, enum case for DIPError.Code.internalError(_:), v737);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
  v614 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v739 = v614;
  swift_willThrow();
  sub_10001C120(v674, v675);
  sub_10001C120(v626, v627);

  sub_10001C120(v706, v705);
  sub_1000092BC(v712, object);

  (*(v638 + 8))(v646, v639);
  (*(v664 + 8))(v657, v665);
  v615 = *(v696 + 8);
  v616 = v701;
  v615(v697, v701);
  v615(v698, v616);
  v615(v699, v616);
  (*(v704 + 8))(v703, v707);
  (*(v709 + 8))(v711, v708);
  (*(v715 + 8))(v716, v714);
  (*(v718 + 8))(v719, v717);
  (*(v721 + 8))(v738, v720);
LABEL_239:
  v159 = v726;
  v160 = v732;
  v161 = v743;
LABEL_5:
  v162 = v741;
LABEL_33:
  v233 = v723;
LABEL_34:
  (v162)(v233, v724, v160);
  sub_100120B50(&qword_1002038B0, &type metadata accessor for IDCSAnalytics.PayloadValidationResult);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v234 = v160;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v744[0] == v749[0] && v744[1] == v749[1])
  {
    v235 = 1;
  }

  else
  {
    v235 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v740 = *(v740 + 8);
  (v740)(v233, v234);

  if (v235)
  {
    (v740)(v161, v234);
    (v741)(v161, enum case for IDCSAnalytics.PayloadValidationResult.invalid(_:), v234);
  }

  v236 = v725;
  v237 = v722;
  (*(v725 + 104))(v722, **(&off_1001F7C28 + v727), v159);
  type metadata accessor for IDCSAnalytics();
  static IDCSAnalytics.sendPayloadValidationEvent(reason:docType:issuer:result:region:issuingJurisdiction:hasTaggedIssuerAuth:)();

  (*(v236 + 8))(v237, v159);
  (*(v736 + 104))(v735, enum case for DIPError.Code.internalError(_:), v737);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return (v740)(v743, v234);
}

unint64_t sub_10011B928(uint64_t a1)
{
  _StringGuts.grow(_:)(30);

  v3 = *(a1 + 112);
  v2 = *(a1 + 120);
  sub_100009708(v3, v2);
  v4 = Data.base16EncodedString()();
  sub_1000092BC(v3, v2);
  String.append(_:)(v4);

  return 0xD00000000000001CLL;
}

uint64_t sub_10011B9DC(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10011C098();
  v9 = v1;
  if (v1)
  {
    (*(v4 + 104))(v7, enum case for DIPError.Code.internalError(_:), v3);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v9 = sub_100123368(a1, v8);
  }

  return v9;
}

uint64_t sub_10011BBF8@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v38 = *(v1 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004E70(&qword_100203890, &qword_1001AE038);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v31 - v7);
  v9 = type metadata accessor for ISO18013Package.Document();
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ISO18013Package();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v39;
  result = sub_100112CC4(v17);
  if (!v18)
  {
    v32 = v12;
    v33 = v9;
    v39 = v14;
    v34 = 0;
    v35 = v13;
    v20 = v17;
    v21 = *(ISO18013Package.documents.getter() + 16);

    if (v21 == 1)
    {
      v22 = ISO18013Package.documents.getter();
      sub_1000FC1A8(v22, v8);

      v23 = sub_100004E70(&qword_1002034D0, &qword_1001ADD50);
      result = (*(*(v23 - 8) + 48))(v8, 1, v23);
      v24 = v39;
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v25 = v8[1];

        v26 = v36;
        v27 = v32;
        v28 = v33;
        (*(v36 + 32))(v32, v8 + *(v23 + 48), v33);
        v29 = v37;
        ISO18013Package.Document.issuerAuth.getter();
        (*(v26 + 8))(v27, v28);
        (*(v24 + 8))(v20, v35);
        v30 = type metadata accessor for COSE_Sign1();
        return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
      }
    }

    else
    {
      (*(v38 + 104))(v4, enum case for DIPError.Code.idcsInvalidPayload(_:), v1);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return (*(v39 + 8))(v17, v35);
    }
  }

  return result;
}

unint64_t sub_10011C098()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v38 = v0;
  v39 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004E70(&qword_100203890, &qword_1001AE038);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v33 - v7);
  v9 = sub_100004E70(&qword_100203898, &unk_1001AE040);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v33 - v11);
  v13 = type metadata accessor for ISO18013Package.Document();
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ISO18013Package();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v40 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v41;
  sub_100112CC4(v40);
  if (!v21)
  {
    v34 = v16;
    v35 = 0;
    v36 = v18;
    v41 = v17;
    v22 = ISO18013Package.documents.getter();
    sub_1000FC1A8(v22, v8);

    v23 = sub_100004E70(&qword_1002034D0, &qword_1001ADD50);
    if ((*(*(v23 - 8) + 48))(v8, 1, v23) == 1)
    {
      sub_10000A0D4(v8, &qword_100203890, &qword_1001AE038);
      (*(v39 + 104))(v4, enum case for DIPError.Code.invalidStoredData(_:), v38);
      v17 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v25 = v8[1];
      v26 = *(v23 + 48);
      v27 = *(v9 + 48);
      *v12 = *v8;
      v12[1] = v25;
      v28 = v37;
      v29 = *(v37 + 32);
      v30 = v13;
      v29(v12 + v27, v8 + v26, v13);
      v31 = v12[1];

      v32 = v34;
      v29(v34, v12 + *(v9 + 48), v30);
      v17 = ISO18013Package.Document.namespaces.getter();
      (*(v28 + 8))(v32, v30);
    }

    (*(v36 + 8))(v40, v41);
  }

  return v17;
}

unint64_t sub_10011C568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = a3;
  v3 = type metadata accessor for AnyCodable();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ISO18013IssuerSignedItem();
  v86 = *(v8 - 8);
  v9 = *(v86 + 64);
  __chkstk_darwin(v8);
  v85 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004E70(&qword_100203400, &qword_1001ADCB0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v89 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v79 - v15;
  v17 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v84 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v87 = &v79 - v22;
  sub_10011DA70(&v96);
  if (!*(&v97 + 1))
  {
    v41 = &unk_100203888;
    v42 = &unk_1001AE030;
    v43 = &v96;
LABEL_19:
    sub_10000A0D4(v43, v41, v42);
    return 0;
  }

  v80 = v8;
  v81 = v7;
  v90 = v18;
  v23 = v17;
  v82 = v4;
  v83 = v3;
  v108 = v100;
  v109 = v101;
  v110 = v102;
  v111 = v103;
  v104 = v96;
  v105 = v97;
  v106 = v98;
  v107 = v99;
  sub_10001A940(&v109, &v96);
  sub_100009278(&v96, *(&v97 + 1));
  swift_getDynamicType();
  sub_100005090(&v96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = &v79;
  v25 = *(AssociatedTypeWitness - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v28 = &v79 - v27;
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v25 + 8))(v28, AssociatedTypeWitness);
  if (!*(v91 + 16))
  {

    v32 = v23;
    v33 = v90;
    goto LABEL_9;
  }

  v29 = sub_100099644(v94, v95);
  v31 = v30;

  v32 = v23;
  v33 = v90;
  if ((v31 & 1) == 0)
  {
LABEL_9:
    v44 = *(v33 + 56);
    v44(v16, 1, 1, v32);
LABEL_10:
    sub_10000A0D4(v16, &qword_100203400, &qword_1001ADCB0);
    goto LABEL_11;
  }

  v34 = *(*(v91 + 56) + 8 * v29);
  v35 = v111;
  sub_100009278(&v109, *(&v110 + 1));
  v36 = *(v35 + 16);

  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v34 + 16))
  {
    v37 = sub_100099644(v92, v93);
    v39 = v38;

    if (v39)
    {
      (*(v33 + 16))(v16, *(v34 + 56) + *(v33 + 72) * v37, v23);

      v40 = 0;
      goto LABEL_24;
    }
  }

  else
  {
  }

  v40 = 1;
LABEL_24:
  v64 = v87;
  v44 = *(v33 + 56);
  v44(v16, v40, 1, v23);
  if ((*(v33 + 48))(v16, 1, v23) == 1)
  {
    goto LABEL_10;
  }

  (*(v33 + 32))(v64, v16, v23);
  v65 = v85;
  CBOREncodedCBOR.value.getter();
  v66 = v81;
  ISO18013IssuerSignedItem.elementValue.getter();
  (*(v86 + 8))(v65, v80);
  v67 = AnyCodable.stringValue.getter();
  v69 = v68;
  (*(v82 + 8))(v66, v83);
  if (v69)
  {
    *&v96 = v67;
    *(&v96 + 1) = v69;
    sub_10004630C();
    Collection.nilIfEmpty.getter();
    (*(v33 + 8))(v64, v32);

    if (v95)
    {
      v70 = v94;
      sub_100120AB4(&v104);
      return v70;
    }
  }

  else
  {
    (*(v33 + 8))(v64, v32);
  }

LABEL_11:
  sub_10001A940(&v104, &v96);
  sub_100009278(&v96, *(&v97 + 1));
  swift_getDynamicType();
  sub_100005090(&v96);
  v45 = swift_getAssociatedTypeWitness();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v79 - v48;
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v46 + 8))(v49, v45);
  v50 = v91;
  if (!*(v91 + 16))
  {

    goto LABEL_17;
  }

  v51 = sub_100099644(v94, v95);
  v53 = v52;

  if ((v53 & 1) == 0)
  {
LABEL_17:
    v61 = v89;
    v44(v89, 1, 1, v32);
LABEL_18:
    sub_100120AB4(&v104);
    v41 = &qword_100203400;
    v42 = &qword_1001ADCB0;
    v43 = v61;
    goto LABEL_19;
  }

  v54 = *(*(v50 + 56) + 8 * v51);
  v55 = v106;
  sub_100009278(&v104, *(&v105 + 1));
  v56 = *(v55 + 16);

  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v54 + 16))
  {
    v57 = sub_100099644(v92, v93);
    v59 = v58;

    if (v59)
    {
      v60 = *(v54 + 56) + *(v90 + 72) * v57;
      v61 = v89;
      (*(v90 + 16))(v89, v60, v32);

      v62 = 0;
      goto LABEL_29;
    }
  }

  else
  {
  }

  v62 = 1;
  v61 = v89;
LABEL_29:
  v71 = v90;
  v44(v61, v62, 1, v32);
  if ((*(v71 + 48))(v61, 1, v32) == 1)
  {
    goto LABEL_18;
  }

  v72 = v84;
  (*(v71 + 32))(v84, v61, v32);
  v73 = v85;
  CBOREncodedCBOR.value.getter();
  v74 = v81;
  ISO18013IssuerSignedItem.elementValue.getter();
  (*(v86 + 8))(v73, v80);
  v75 = AnyCodable.stringValue.getter();
  v77 = v76;
  (*(v82 + 8))(v74, v83);
  if (v77 && (*&v96 = v75, *(&v96 + 1) = v77, sub_10004630C(), Collection.nilIfEmpty.getter(), , v95))
  {
    v78 = v94;
    (*(v71 + 8))(v72, v32);
  }

  else
  {
    (*(v71 + 8))(v72, v32);

    v78 = 0xD00000000000001CLL;
  }

  sub_100120AB4(&v104);
  return v78;
}

uint64_t sub_10011D00C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = a3;
  v83 = a2;
  v77 = a1;
  v84 = *(a4 - 8);
  v7 = *(v84 + 64);
  v8 = __chkstk_darwin(a1);
  v79 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v67 = &v67 - v10;
  v11 = type metadata accessor for Logger();
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  v13 = __chkstk_darwin(v11);
  v82 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v68 = &v67 - v15;
  v76 = type metadata accessor for AnyCodable();
  v75 = *(v76 - 8);
  v16 = *(v75 + 64);
  __chkstk_darwin(v76);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ISO18013IssuerSignedItem();
  v72 = *(v73 - 8);
  v18 = *(v72 + 64);
  __chkstk_darwin(v73);
  v71 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v78 = *(v70 - 8);
  v20 = *(v78 + 64);
  __chkstk_darwin(v70);
  v69 = &v67 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v26 = &v67 - v25;
  swift_getDynamicType();
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v23 + 8))(v26, AssociatedTypeWitness);
  v27 = v89;
  v28 = v90;
  sub_100004E70(&qword_1002004E8, &unk_1001AE010);
  inited = swift_initStackObject();
  v85 = xmmword_1001AA160;
  *(inited + 16) = xmmword_1001AA160;
  *(inited + 32) = v27;
  *(inited + 40) = v28;
  sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
  v30 = swift_allocObject();
  *(v30 + 16) = v85;
  v31 = *(a5 + 16);

  dispatch thunk of RawRepresentable.rawValue.getter();
  *(inited + 48) = v30;
  v32 = sub_10010D02C(inited);
  swift_setDeallocating();
  sub_10000A0D4(inited + 32, &qword_1002004F0, &unk_1001AE020);
  v33 = v87;
  v34 = sub_10011B9DC(v32);
  if (v33)
  {
  }

  v36 = v34;
  v37 = v78;
  v86 = v31;
  v87 = 0;
  v38 = v79;

  if (!*(v36 + 16))
  {

    v44 = v82;
    v52 = v88;
    v53 = a4;
LABEL_12:

    v51 = v84;
    goto LABEL_13;
  }

  v39 = sub_100099644(v27, v28);
  v41 = v40;

  v42 = a4;
  if ((v41 & 1) == 0)
  {
    v44 = v82;
    goto LABEL_11;
  }

  v43 = *(*(v36 + 56) + 8 * v39);

  v44 = v82;
  if (!*(v43 + 16))
  {
LABEL_11:
    v52 = v88;
    v53 = v42;
    goto LABEL_12;
  }

  v45 = v69;
  v46 = v70;
  (*(v37 + 16))(v69, v43 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v70);

  v47 = v71;
  CBOREncodedCBOR.value.getter();
  (*(v37 + 8))(v45, v46);
  v48 = v74;
  ISO18013IssuerSignedItem.elementValue.getter();
  (*(v72 + 8))(v47, v73);
  *&v85 = AnyCodable.stringValue.getter();
  v50 = v49;
  (*(v75 + 8))(v48, v76);
  v51 = v84;
  v52 = v88;
  v53 = v42;
  if (v50)
  {
    v54 = v68;
    defaultLogger()();
    v55 = v67;
    (*(v51 + 16))(v67, v52, v42);
    v56 = v83;

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v91 = v88;
      *v59 = 136315650;
      *(v59 + 4) = sub_10010150C(v77, v56, &v91);
      *(v59 + 12) = 2080;
      dispatch thunk of RawRepresentable.rawValue.getter();
      (*(v51 + 8))(v55, v53);
      v60 = sub_10010150C(v89, v90, &v91);

      *(v59 + 14) = v60;
      *(v59 + 22) = 2080;
      v61 = v85;
      *(v59 + 24) = sub_10010150C(v85, v50, &v91);
      _os_log_impl(&_mh_execute_header, v57, v58, "Element found for doc Type %s and element Identifier %s : %s", v59, 0x20u);
      swift_arrayDestroy();

      (*(v80 + 8))(v68, v81);
      return v61;
    }

    else
    {

      (*(v51 + 8))(v55, v42);
      (*(v80 + 8))(v54, v81);
      return v85;
    }
  }

LABEL_13:
  defaultLogger()();
  (*(v51 + 16))(v38, v52, v53);
  v62 = v83;

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v65 = 136315394;
    *(v65 + 4) = sub_10010150C(v77, v62, &v91);
    *(v65 + 12) = 2080;
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v51 + 8))(v38, v53);
    v66 = sub_10010150C(v89, v90, &v91);

    *(v65 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v63, v64, "Element not found for doc Type %s and element Identifier %s", v65, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v51 + 8))(v38, v53);
  }

  (*(v80 + 8))(v44, v81);
  return 0;
}

uint64_t sub_10011DA70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004E70(&qword_100201578, &qword_1001AD1E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;

  ISO18013KnownDocTypes.init(rawValue:)();
  v9 = type metadata accessor for ISO18013KnownDocTypes();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_2;
  }

  sub_100046360(v8, v6, &qword_100201578, &qword_1001AD1E0);
  v12 = (*(v10 + 88))(v6, v9);
  if (v12 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
  {
    v13 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
    *(a1 + 24) = v13;
    v14 = sub_100120B50(&qword_100203880, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
    *(a1 + 32) = v14;
    v15 = sub_10001A9A4(a1);
    v16 = *(*(v13 - 8) + 104);
    v16(v15, enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:), v13);
    *(a1 + 64) = v13;
    *(a1 + 72) = v14;
    v17 = sub_10001A9A4((a1 + 40));
    v16(v17, enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:), v13);
    *(a1 + 104) = v13;
    *(a1 + 112) = v14;
    v18 = sub_10001A9A4((a1 + 80));
    v19 = &enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:);
  }

  else
  {
    if (v12 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
    {
      *(a1 + 112) = 0;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return sub_10000A0D4(v8, &qword_100201578, &qword_1001AD1E0);
    }

    if (v12 != enum case for ISO18013KnownDocTypes.photoID(_:))
    {
      (*(v10 + 8))(v6, v9);
LABEL_2:
      result = sub_10000A0D4(v8, &qword_100201578, &qword_1001AD1E0);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0;
      return result;
    }

    v13 = type metadata accessor for ISO23220_1_ElementIdentifier();
    *(a1 + 24) = v13;
    v20 = sub_100120B50(&qword_100203878, &type metadata accessor for ISO23220_1_ElementIdentifier);
    *(a1 + 32) = v20;
    v21 = sub_10001A9A4(a1);
    v16 = *(*(v13 - 8) + 104);
    v16(v21, enum case for ISO23220_1_ElementIdentifier.issuingAuthority(_:), v13);
    *(a1 + 64) = v13;
    *(a1 + 72) = v20;
    v22 = sub_10001A9A4((a1 + 40));
    v16(v22, enum case for ISO23220_1_ElementIdentifier.issuingCountry(_:), v13);
    *(a1 + 104) = v13;
    *(a1 + 112) = v20;
    v18 = sub_10001A9A4((a1 + 80));
    v19 = &enum case for ISO23220_1_ElementIdentifier.issuingSubdivision(_:);
  }

  v16(v18, *v19, v13);
  return sub_10000A0D4(v8, &qword_100201578, &qword_1001AD1E0);
}

uint64_t sub_10011DE30()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10011C098();
  v7 = v0;
  if (v0)
  {
    (*(v2 + 104))(v5, enum case for DIPError.Code.internalError(_:), v1);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v7 = sub_100123C64(v6);
  }

  return v7;
}

uint64_t sub_10011E040@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004E70(&qword_100203868, &qword_1001AE000);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_100004E70(&qword_100203870, &qword_1001AE008);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ISO18013MobileSecurityObject.IdentifierList();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ISO18013MobileSecurityObject.status.getter();
  v15 = type metadata accessor for ISO18013MobileSecurityObject.Status();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v5, 1, v15) == 1)
  {
    sub_10000A0D4(v5, &qword_100203868, &qword_1001AE000);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  else
  {
    ISO18013MobileSecurityObject.Status.identifierList.getter();
    (*(v16 + 8))(v5, v15);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v14, v9, v10);
      ISO18013MobileSecurityObject.IdentifierList.id.getter();
      ISO18013MobileSecurityObject.IdentifierList.certificate.getter();
      ISO18013MobileSecurityObject.IdentifierList.uri.getter();
      ISO18013MobileSecurityObject.IdentifierList.init(id:certificate:uri:)();
      (*(v11 + 8))(v14, v10);
      v17 = 0;
      return (*(v11 + 56))(a1, v17, 1, v10);
    }
  }

  sub_10000A0D4(v9, &qword_100203870, &qword_1001AE008);
  v17 = 1;
  return (*(v11 + 56))(a1, v17, 1, v10);
}

void *sub_10011E344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10011C098();
  v16 = v5;
  if (v5)
  {
    (*(v11 + 104))(v14, enum case for DIPError.Code.internalError(_:), v10);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v16 = sub_100111F78(a1, a2, a3, v15, a4, v19);
  }

  return v16;
}

uint64_t sub_10011E580()
{
  sub_1000092BC(*(v0 + 112), *(v0 + 120));
  sub_10000A0D4(v0 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_decodedPayload, &qword_100203918, &qword_1001AE0B0);
  sub_100005090((v0 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_analyticsRecorder));
  v1 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat;
  v2 = type metadata accessor for ISO18013CodingKeyFormat();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ISO18013PackagePayloadProcessor()
{
  result = qword_100203708;
  if (!qword_100203708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011E684()
{
  sub_10011E76C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ISO18013CodingKeyFormat();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10011E76C()
{
  if (!qword_100203718)
  {
    type metadata accessor for ISO18013Package();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100203718);
    }
  }
}

uint64_t sub_10011E7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ISO18013CodingKeyFormat();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v9, enum case for ISO18013CodingKeyFormat.standard(_:));
  result = sub_1000EE06C(a1, a2, v9);
  *a3 = result;
  return result;
}

uint64_t sub_10011E8A4(uint64_t a1, char a2)
{
  *(v3 + 32) = a2;
  v4 = *v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_10011E8C8, v4, 0);
}

uint64_t sub_10011E8C8()
{
  v1 = *(v0 + 24);
  sub_100113200(*(v0 + 32), *(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10011E948(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10011E968, v3, 0);
}

uint64_t sub_10011E968()
{
  v1 = v0[3];
  v2 = sub_10011B9DC(v0[2]);
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10011E9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[6] = a5;
  v6[7] = v7;
  return _swift_task_switch(sub_10011EA0C, v7, 0);
}

uint64_t sub_10011EA0C()
{
  v1 = v0[7];
  v2 = sub_10011E344(v0[2], v0[3], v0[4], v0[5], v0[6]);
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10011EA90(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10011EAB0, v3, 0);
}

uint64_t sub_10011EAB0()
{
  v1 = v0[3];
  sub_10011BBF8(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10011EB2C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_10011EB4C, v2, 0);
}

uint64_t sub_10011EB4C()
{
  v1 = *(v0 + 16);
  v2 = sub_10011DE30();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10011EBC8()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_10011EBE8, v2, 0);
}

uint64_t sub_10011EBE8()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  sub_100009708(v3, v2);
  v4 = *(v0 + 8);

  return v4(v3, v2);
}

void (*sub_10011EC60(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10011ECE0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011ECE8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ISO18013KnownDocTypes();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:), v9);
  v14 = ISO18013KnownDocTypes.rawValue.getter();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  if (v14 == a1 && v16 == a2)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  defaultLogger()();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10010150C(a1, a2, &v25);
    _os_log_impl(&_mh_execute_header, v20, v21, "ISO18013PackagePayloadProcessor: issuerForDocTypeWithoutCorrespondingElementIdentifier docType: %s returning JP", v22, 0xCu);
    sub_100005090(v23);
  }

  (*(v5 + 8))(v8, v4);
  return 20554;
}

uint64_t sub_10011EFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v169 = a7;
  v168 = a6;
  v199 = a4;
  v200 = a5;
  v197 = a1;
  v180 = type metadata accessor for AnyCodable();
  v179 = *(v180 - 8);
  v9 = *(v179 + 64);
  __chkstk_darwin(v180);
  v178 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for ISO23220_1_ElementIdentifier();
  v171 = *(v184 - 8);
  v11 = *(v171 + 64);
  __chkstk_darwin(v184);
  v159 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_100004E70(&qword_1002038C0, &qword_1001AE070);
  v13 = *(*(v163 - 8) + 64);
  __chkstk_darwin(v163);
  v177 = &v158 - v14;
  v15 = sub_100004E70(&qword_1002038C8, &qword_1001AE078);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v161 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v183 = &v158 - v20;
  __chkstk_darwin(v19);
  v165 = &v158 - v21;
  v176 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
  v174 = *(v176 - 8);
  v22 = *(v174 + 64);
  __chkstk_darwin(v176);
  v160 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_100004E70(&qword_1002038D0, &qword_1001AE080);
  v24 = *(*(v172 - 8) + 64);
  __chkstk_darwin(v172);
  v175 = &v158 - v25;
  v26 = sub_100004E70(&qword_1002038D8, &qword_1001AE088);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v164 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v195 = &v158 - v31;
  __chkstk_darwin(v30);
  v185 = &v158 - v32;
  v192 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v190 = *(v192 - 8);
  v33 = *(v190 + 64);
  __chkstk_darwin(v192);
  v162 = &v158 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_100004E70(&qword_1002038E0, &qword_1001AE090);
  v35 = *(*(v188 - 8) + 64);
  __chkstk_darwin(v188);
  v191 = &v158 - v36;
  v37 = sub_100004E70(&qword_1002038E8, &qword_1001AE098);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v173 = &v158 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v196 = &v158 - v42;
  __chkstk_darwin(v41);
  v189 = &v158 - v43;
  v44 = type metadata accessor for ISO18013KnownNamespaces();
  v45 = *(v44 - 8);
  v201 = v44;
  v202 = v45;
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v193 = &v158 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_100004E70(&qword_1002038F0, &unk_1001AE0A0);
  v48 = *(*(v198 - 8) + 64);
  v49 = __chkstk_darwin(v198);
  v182 = &v158 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v194 = &v158 - v52;
  __chkstk_darwin(v51);
  v54 = &v158 - v53;
  v55 = sub_100004E70(&qword_100202E08, &qword_1001AD4D8);
  v56 = *(*(v55 - 8) + 64);
  v57 = __chkstk_darwin(v55 - 8);
  v170 = &v158 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __chkstk_darwin(v57);
  v186 = &v158 - v60;
  v61 = __chkstk_darwin(v59);
  v187 = &v158 - v62;
  v63 = __chkstk_darwin(v61);
  v181 = &v158 - v64;
  v65 = __chkstk_darwin(v63);
  v67 = &v158 - v66;
  v68 = __chkstk_darwin(v65);
  v70 = &v158 - v69;
  v71 = __chkstk_darwin(v68);
  v73 = &v158 - v72;
  v74 = __chkstk_darwin(v71);
  v76 = &v158 - v75;
  __chkstk_darwin(v74);
  v78 = &v158 - v77;
  v79 = sub_100004E70(&qword_100201578, &qword_1001AD1E0);
  v80 = *(*(v79 - 8) + 64);
  v81 = __chkstk_darwin(v79 - 8);
  v83 = &v158 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v81);
  v85 = &v158 - v84;

  v166 = a2;
  v167 = a3;
  ISO18013KnownDocTypes.init(rawValue:)();
  v86 = type metadata accessor for ISO18013KnownDocTypes();
  v87 = *(v86 - 8);
  if ((*(v87 + 48))(v85, 1, v86) != 1)
  {
    v158 = v85;
    sub_100046360(v85, v83, &qword_100201578, &qword_1001AD1E0);
    v89 = (*(v87 + 88))(v83, v86);
    if (v89 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
    {

      ISO18013KnownNamespaces.init(rawValue:)();
      v91 = v201;
      v90 = v202;
      (*(v202 + 104))(v76, enum case for ISO18013KnownNamespaces.iso18013_5_1(_:), v201);
      (*(v90 + 56))(v76, 0, 1, v91);
      v92 = *(v198 + 48);
      sub_100046360(v78, v54, &qword_100202E08, &qword_1001AD4D8);
      sub_100046360(v76, &v54[v92], &qword_100202E08, &qword_1001AD4D8);
      v93 = *(v90 + 48);
      if (v93(v54, 1, v91) == 1)
      {
        sub_10000A0D4(v76, &qword_100202E08, &qword_1001AD4D8);
        sub_10000A0D4(v78, &qword_100202E08, &qword_1001AD4D8);
        if (v93(&v54[v92], 1, v91) == 1)
        {
          sub_10000A0D4(v54, &qword_100202E08, &qword_1001AD4D8);
LABEL_21:
          ISO18013IssuerSignedItem.elementIdentifier.getter();
          v98 = v189;
          ISO18013_5_1_ElementIdentifier.init(rawValue:)();
          v116 = v190;
          v117 = v196;
          v107 = v192;
          (*(v190 + 104))(v196, enum case for ISO18013_5_1_ElementIdentifier.portrait(_:), v192);
          (*(v116 + 56))(v117, 0, 1, v107);
          v118 = *(v188 + 48);
          v108 = v191;
          sub_100046360(v98, v191, &qword_1002038E8, &qword_1001AE098);
          sub_100046360(v117, v118 + v108, &qword_1002038E8, &qword_1001AE098);
          v119 = *(v116 + 48);
          if (v119(v108, 1, v107) == 1)
          {
            sub_10000A0D4(v117, &qword_1002038E8, &qword_1001AE098);
            sub_10000A0D4(v98, &qword_1002038E8, &qword_1001AE098);
            if (v119(v118 + v108, 1, v107) == 1)
            {
              v120 = &qword_1002038E8;
              v121 = &qword_1001AE098;
LABEL_47:
              sub_10000A0D4(v108, v120, v121);
              sub_10000A0D4(v158, &qword_100201578, &qword_1001AD1E0);
              while (1)
              {
                v147 = v178;
                ISO18013IssuerSignedItem.elementValue.getter();
                AnyCodable.value.getter();
                (*(v179 + 8))(v147, v180);
                result = swift_dynamicCast();
                if (!result)
                {
                  return result;
                }

                v148 = v204 >> 62;
                if ((v204 >> 62) <= 1)
                {
                  break;
                }

                if (v148 != 2)
                {
                  goto LABEL_65;
                }

                v144 = *(v203 + 16);
                v149 = *(v203 + 24);
                sub_1000092BC(v203, v204);
                v150 = __OFSUB__(v149, v144);
                v143 = (v149 - v144);
                if (!v150)
                {
                  goto LABEL_66;
                }

                __break(1u);
LABEL_59:
                v151 = v161;
                sub_100046360(v108, v161, &qword_1002038C8, &qword_1001AE078);
                if (v119(v118 + v108, 1, v107) == 1)
                {
                  sub_10000A0D4(v98, v143, v144);
                  sub_10000A0D4(v117, v143, v144);
                  (*(v171 + 8))(v151, v107);
                  goto LABEL_61;
                }

                v154 = v171;
                v155 = v118 + v108;
                v156 = v159;
                (*(v171 + 32))(v159, v155, v107);
                sub_100120B50(&qword_1002038F8, &type metadata accessor for ISO23220_1_ElementIdentifier);
                v134 = dispatch thunk of static Equatable.== infix(_:_:)();
                v157 = *(v154 + 8);
                v119 = (v154 + 8);
                v157(v156, v107);
                v136 = &qword_1002038C8;
                v118 = &qword_1001AE078;
                sub_10000A0D4(v98, &qword_1002038C8, &qword_1001AE078);
                sub_10000A0D4(v117, &qword_1002038C8, &qword_1001AE078);
                v157(v151, v107);
LABEL_50:
                sub_10000A0D4(v108, v136, v118);
                result = sub_10000A0D4(v158, &qword_100201578, &qword_1001AD1E0);
                if ((v134 & 1) == 0)
                {
                  return result;
                }
              }

              if (v148)
              {
                v152 = HIDWORD(v203);
                v153 = v203;
                result = sub_1000092BC(v203, v204);
                if (__OFSUB__(v152, v153))
                {
                  __break(1u);
                  return result;
                }
              }

              else
              {
LABEL_65:
                sub_1000092BC(v203, v204);
              }

LABEL_66:
              type metadata accessor for IDCSAnalytics();
              return static IDCSAnalytics.sendPayloadPortraitSizeEvent(docType:issuer:portraitSizeBytes:)();
            }

            goto LABEL_27;
          }

          v117 = v173;
          sub_100046360(v108, v173, &qword_1002038E8, &qword_1001AE098);
          if (v119(v118 + v108, 1, v107) == 1)
          {
            sub_10000A0D4(v196, &qword_1002038E8, &qword_1001AE098);
            sub_10000A0D4(v98, &qword_1002038E8, &qword_1001AE098);
            (*(v116 + 8))(v117, v107);
LABEL_27:
            v122 = &qword_1002038E0;
            v123 = &qword_1001AE090;
            goto LABEL_62;
          }

          v132 = v118 + v108;
          v133 = v162;
          (*(v116 + 32))(v162, v132, v107);
          sub_100120B50(&qword_100203910, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
          v134 = dispatch thunk of static Equatable.== infix(_:_:)();
          v135 = *(v116 + 8);
          v135(v133, v107);
          v136 = &qword_1002038E8;
          v118 = &qword_1001AE098;
          sub_10000A0D4(v196, &qword_1002038E8, &qword_1001AE098);
          v137 = v98;
LABEL_49:
          sub_10000A0D4(v137, v136, v118);
          v135(v117, v107);
          goto LABEL_50;
        }

        goto LABEL_17;
      }

      sub_100046360(v54, v73, &qword_100202E08, &qword_1001AD4D8);
      if (v93(&v54[v92], 1, v91) == 1)
      {
        v99 = v76;
        v100 = v54;
LABEL_30:
        sub_10000A0D4(v99, &qword_100202E08, &qword_1001AD4D8);
        sub_10000A0D4(v78, &qword_100202E08, &qword_1001AD4D8);
        (*(v202 + 8))(v73, v91);
        goto LABEL_31;
      }

      v111 = v202;
      v112 = &v54[v92];
      v113 = v193;
      (*(v202 + 32))(v193, v112, v91);
      sub_100120B50(&qword_100203900, &type metadata accessor for ISO18013KnownNamespaces);
      v114 = dispatch thunk of static Equatable.== infix(_:_:)();
      v115 = *(v111 + 8);
      v115(v113, v91);
      sub_10000A0D4(v76, &qword_100202E08, &qword_1001AD4D8);
      sub_10000A0D4(v78, &qword_100202E08, &qword_1001AD4D8);
      v115(v73, v91);
      sub_10000A0D4(v54, &qword_100202E08, &qword_1001AD4D8);
      if (v114)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v91 = v201;
      if (v89 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
      {

        ISO18013KnownNamespaces.init(rawValue:)();
        v94 = v202;
        (*(v202 + 104))(v67, enum case for ISO18013KnownNamespaces.iso23220_1_jp(_:), v91);
        (*(v94 + 56))(v67, 0, 1, v91);
        v95 = *(v198 + 48);
        v54 = v194;
        sub_100046360(v70, v194, &qword_100202E08, &qword_1001AD4D8);
        sub_100046360(v67, &v54[v95], &qword_100202E08, &qword_1001AD4D8);
        v96 = *(v94 + 48);
        if (v96(v54, 1, v91) == 1)
        {
          sub_10000A0D4(v67, &qword_100202E08, &qword_1001AD4D8);
          sub_10000A0D4(v70, &qword_100202E08, &qword_1001AD4D8);
          v97 = v96(&v54[v95], 1, v91);
          v98 = v195;
          if (v97 != 1)
          {
LABEL_17:
            v100 = v54;
            goto LABEL_31;
          }

          sub_10000A0D4(v54, &qword_100202E08, &qword_1001AD4D8);
        }

        else
        {
          v109 = v181;
          sub_100046360(v54, v181, &qword_100202E08, &qword_1001AD4D8);
          v110 = v96(&v54[v95], 1, v91);
          v98 = v195;
          if (v110 == 1)
          {
            v99 = v67;
            v78 = v70;
            v73 = v109;
            v100 = v54;
            goto LABEL_30;
          }

          v127 = v202;
          v128 = &v54[v95];
          v129 = v193;
          (*(v202 + 32))(v193, v128, v91);
          sub_100120B50(&qword_100203900, &type metadata accessor for ISO18013KnownNamespaces);
          LODWORD(v200) = dispatch thunk of static Equatable.== infix(_:_:)();
          v130 = *(v127 + 8);
          v130(v129, v91);
          sub_10000A0D4(v67, &qword_100202E08, &qword_1001AD4D8);
          sub_10000A0D4(v70, &qword_100202E08, &qword_1001AD4D8);
          v130(v109, v91);
          sub_10000A0D4(v54, &qword_100202E08, &qword_1001AD4D8);
          if ((v200 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        ISO18013IssuerSignedItem.elementIdentifier.getter();
        v117 = v185;
        ISO23220_1_Japan_ElementIdentifier.init(rawValue:)();
        v131 = v174;
        v107 = v176;
        (*(v174 + 104))(v98, enum case for ISO23220_1_Japan_ElementIdentifier.portrait(_:), v176);
        (*(v131 + 56))(v98, 0, 1, v107);
        v118 = *(v172 + 48);
        v108 = v175;
        sub_100046360(v117, v175, &qword_1002038D8, &qword_1001AE088);
        sub_100046360(v98, v118 + v108, &qword_1002038D8, &qword_1001AE088);
        v119 = *(v131 + 48);
        if (v119(v108, 1, v107) == 1)
        {
          sub_10000A0D4(v98, &qword_1002038D8, &qword_1001AE088);
          sub_10000A0D4(v117, &qword_1002038D8, &qword_1001AE088);
          if (v119(v118 + v108, 1, v107) == 1)
          {
            v120 = &qword_1002038D8;
            v121 = &qword_1001AE088;
            goto LABEL_47;
          }
        }

        else
        {
          v117 = v164;
          sub_100046360(v108, v164, &qword_1002038D8, &qword_1001AE088);
          if (v119(v118 + v108, 1, v107) != 1)
          {
            v145 = v118 + v108;
            v146 = v160;
            (*(v131 + 32))(v160, v145, v107);
            sub_100120B50(&qword_100203908, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
            v134 = dispatch thunk of static Equatable.== infix(_:_:)();
            v135 = *(v131 + 8);
            v135(v146, v107);
            v136 = &qword_1002038D8;
            v118 = &qword_1001AE088;
            sub_10000A0D4(v98, &qword_1002038D8, &qword_1001AE088);
            v137 = v185;
            goto LABEL_49;
          }

          sub_10000A0D4(v98, &qword_1002038D8, &qword_1001AE088);
          sub_10000A0D4(v185, &qword_1002038D8, &qword_1001AE088);
          (*(v131 + 8))(v117, v107);
        }

        v122 = &qword_1002038D0;
        v123 = &qword_1001AE080;
        goto LABEL_62;
      }

      if (v89 == enum case for ISO18013KnownDocTypes.photoID(_:))
      {

        v101 = v187;
        ISO18013KnownNamespaces.init(rawValue:)();
        v102 = v202;
        v103 = v186;
        (*(v202 + 104))(v186, enum case for ISO18013KnownNamespaces.iso23220_1(_:), v91);
        (*(v102 + 56))(v103, 0, 1, v91);
        v104 = *(v198 + 48);
        v100 = v182;
        sub_100046360(v101, v182, &qword_100202E08, &qword_1001AD4D8);
        sub_100046360(v103, v100 + v104, &qword_100202E08, &qword_1001AD4D8);
        v105 = *(v102 + 48);
        if (v105(v100, 1, v91) == 1)
        {
          sub_10000A0D4(v103, &qword_100202E08, &qword_1001AD4D8);
          sub_10000A0D4(v101, &qword_100202E08, &qword_1001AD4D8);
          v106 = v105(v100 + v104, 1, v91);
          v107 = v184;
          v108 = v177;
          v98 = v183;
          if (v106 != 1)
          {
LABEL_31:
            sub_10000A0D4(v100, &qword_1002038F0, &unk_1001AE0A0);
            goto LABEL_32;
          }

          sub_10000A0D4(v100, &qword_100202E08, &qword_1001AD4D8);
        }

        else
        {
          v124 = v170;
          sub_100046360(v100, v170, &qword_100202E08, &qword_1001AD4D8);
          v125 = v105(v100 + v104, 1, v91);
          v107 = v184;
          v98 = v183;
          if (v125 == 1)
          {
            v73 = v124;
            v78 = v187;
            v99 = v186;
            goto LABEL_30;
          }

          v138 = v202;
          v139 = v193;
          (*(v202 + 32))(v193, v100 + v104, v91);
          sub_100120B50(&qword_100203900, &type metadata accessor for ISO18013KnownNamespaces);
          v140 = dispatch thunk of static Equatable.== infix(_:_:)();
          v141 = *(v138 + 8);
          v141(v139, v91);
          sub_10000A0D4(v186, &qword_100202E08, &qword_1001AD4D8);
          sub_10000A0D4(v187, &qword_100202E08, &qword_1001AD4D8);
          v141(v124, v91);
          sub_10000A0D4(v100, &qword_100202E08, &qword_1001AD4D8);
          v108 = v177;
          if ((v140 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        ISO18013IssuerSignedItem.elementIdentifier.getter();
        v117 = v165;
        ISO23220_1_ElementIdentifier.init(rawValue:)();
        v142 = v171;
        (*(v171 + 104))(v98, enum case for ISO23220_1_ElementIdentifier.portrait(_:), v107);
        (*(v142 + 56))(v98, 0, 1, v107);
        v118 = *(v163 + 48);
        v143 = &qword_1002038C8;
        v144 = &qword_1001AE078;
        sub_100046360(v117, v108, &qword_1002038C8, &qword_1001AE078);
        sub_100046360(v98, v118 + v108, &qword_1002038C8, &qword_1001AE078);
        v119 = *(v142 + 48);
        if (v119(v108, 1, v107) != 1)
        {
          goto LABEL_59;
        }

        sub_10000A0D4(v98, &qword_1002038C8, &qword_1001AE078);
        sub_10000A0D4(v117, &qword_1002038C8, &qword_1001AE078);
        if (v119(v118 + v108, 1, v107) == 1)
        {
          v120 = &qword_1002038C8;
          v121 = &qword_1001AE078;
          goto LABEL_47;
        }

LABEL_61:
        v122 = &qword_1002038C0;
        v123 = &qword_1001AE070;
LABEL_62:
        sub_10000A0D4(v108, v122, v123);
        v88 = v158;
        return sub_10000A0D4(v88, &qword_100201578, &qword_1001AD1E0);
      }

      (*(v87 + 8))(v83, v86);
    }

LABEL_32:
    v88 = v158;
    return sub_10000A0D4(v88, &qword_100201578, &qword_1001AD1E0);
  }

  v88 = v85;
  return sub_10000A0D4(v88, &qword_100201578, &qword_1001AD1E0);
}