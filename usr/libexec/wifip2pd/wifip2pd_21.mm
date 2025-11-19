void *sub_1001968A8()
{
  v1 = v0;
  sub_10005DC58(&qword_10058F3B0, &qword_100492330);
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

id sub_100196A18()
{
  v1 = v0;
  sub_10005DC58(&qword_10058BAD8, &qword_100480E20);
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
        sub_100002B30(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100085188(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_100196B98()
{
  v1 = v0;
  v31 = *(type metadata accessor for StorageEntry(0) - 8);
  v2 = *(v31 + 64);
  __chkstk_darwin();
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F388, &qword_1004922E8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_100198748(*(v4 + 56) + v26, v30, type metadata accessor for StorageEntry);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1001988B4(v25, *(v27 + 56) + v26, type metadata accessor for StorageEntry);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

char *sub_100196DF0()
{
  v1 = v0;
  v37 = *(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin();
  v36 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v38 = *(v35 - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin();
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F398, &unk_100492300);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v39 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v18 = v34;
    if (v16)
    {
      do
      {
        v19 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = v38;
        v24 = *(v38 + 72) * v22;
        v25 = v35;
        (*(v38 + 16))(v18, *(v6 + 48) + v24, v35);
        v26 = v36;
        v27 = *(v37 + 72) * v22;
        sub_100198748(*(v6 + 56) + v27, v36, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        v28 = v39;
        (*(v23 + 32))(*(v39 + 48) + v24, v18, v25);
        result = sub_1001988B4(v26, *(v28 + 56) + v27, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        v16 = v40;
      }

      while (v40);
    }

    v20 = v12;
    v8 = v39;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v40 = (v21 - 1) & v21;
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

void *sub_10019711C()
{
  v1 = v0;
  sub_10005DC58(&qword_10058F390, &unk_1004922F0);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void *sub_100197280()
{
  v1 = v0;
  sub_10005DC58(&unk_10058BB30, &unk_100480E60);
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

        result = sub_10000AB0C(v22, *(&v22 + 1));
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

void *sub_100197404()
{
  v1 = v0;
  sub_10005DC58(&qword_10058BB10, &qword_100480E40);
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

char *sub_100197574()
{
  v1 = v0;
  v38 = *(sub_10005DC58(&qword_10058F3A0, &qword_100492310) - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin();
  v37 = &v34 - v3;
  sub_10005DC58(&qword_10058F3A8, &qword_100492318);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v39 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    v36 = v4;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 40 * v20;
        v22 = *(v4 + 56);
        v23 = *(v4 + 48) + 40 * v20;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 24);
        v40 = *(v23 + 16);
        v27 = *(v23 + 32);
        v28 = *(v23 + 33);
        v29 = v37;
        v30 = *(v38 + 72) * v20;
        sub_100012400(v22 + v30, v37, &qword_10058F3A0, &qword_100492310);
        v31 = v39;
        v32 = v40;
        v33 = *(v39 + 48) + v21;
        *v33 = v24;
        *(v33 + 8) = v25;
        v4 = v36;
        *(v33 + 16) = v32;
        *(v33 + 24) = v26;
        *(v33 + 32) = v27;
        *(v33 + 33) = v28;
        sub_1001987F8(v29, *(v31 + 56) + v30);

        v15 = v41;
      }

      while (v41);
    }

    v18 = v10;
    v6 = v39;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v34;
        goto LABEL_18;
      }

      v19 = *(v35 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
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

id sub_1001977F8()
{
  v1 = v0;
  sub_10005DC58(&qword_10058F340, &qword_1004948F0);
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

        result = v20;
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

void *sub_1001979B4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10005DC58(a1, a2);
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
        v20 = *(*(v4 + 48) + v19);
        sub_100002B30(*(v4 + 56) + 32 * v19, v21);
        *(*(v6 + 48) + v19) = v20;
        result = sub_100085188(v21, (*(v6 + 56) + 32 * v19));
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

uint64_t _s7CoreP2P10NANPairingV8MetadataV4PeerV23__derived_struct_equalsySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL _s7CoreP2P10NANPairingV8MetadataV4ThisV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  return 0;
}

BOOL _s7CoreP2P10NANPairingV8MetadataV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (!v9 && v6 == v11 && v7 == v12 && v8 == v13)
    {
      goto LABEL_20;
    }

    return result;
  }

  if (!v9)
  {
    return 0;
  }

  if (v4 == v10 && v5 == v9)
  {
    result = 0;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  if (v6 == v11 && v7 == v12 && v8 == v13)
  {
LABEL_20:
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    v20 = *(a1 + 80);
    v22 = *(a1 + 88);
    v21 = *(a1 + 96);
    v23 = *(a2 + 56);
    v24 = *(a2 + 64);
    v25 = *(a2 + 72);
    v26 = *(a2 + 80);
    v28 = *(a2 + 88);
    v27 = *(a2 + 96);
    return (v17 == v23 && v18 == v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (v19 == v25 && v20 == v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (v22 == v28 && v21 == v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return result;
}

uint64_t sub_100197F64(uint64_t a1)
{
  v2 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100198008(void *a1)
{
  v2 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v4 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = (&v33 - v5);
  __chkstk_darwin();
  v8 = &v33 - v7;
  __chkstk_darwin();
  v10 = (&v33 - v9);
  v34 = sub_100082620(_swiftEmptyArrayStorage);
  if (a1 && (v11 = [a1 txtRecordData]) != 0 && (v12 = v11, v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v15 = v14, v12, v15 >> 60 != 15))
  {
    *v10 = v13;
    v10[1] = v15;
    v31 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    swift_storeEnumTagMultiPayload();
    (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
  }

  else
  {
    v16 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  }

  sub_100012400(v10, v8, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v8, 4);
  sub_100016290(v10, &qword_10058BB48, &unk_100483040);
  if (a1 && (v17 = [a1 blob]) != 0 && (v18 = v17, v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v21 = v20, v18, v21 >> 60 != 15))
  {
    *v6 = v19;
    v6[1] = v21;
    v32 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    swift_storeEnumTagMultiPayload();
    (*(*(v32 - 8) + 56))(v6, 0, 1, v32);
  }

  else
  {
    v22 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  }

  sub_100012400(v6, v8, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v8, 6);
  sub_100016290(v6, &qword_10058BB48, &unk_100483040);
  if (a1 && (v23 = [a1 instanceName]) != 0 && (v24 = v23, v25 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v27 = v26, v24, v27))
  {
    *v4 = v25;
    v4[1] = v27;
    v28 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    swift_storeEnumTagMultiPayload();
    (*(*(v28 - 8) + 56))(v4, 0, 1, v28);
  }

  else
  {
    v29 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
  }

  sub_100012400(v4, v8, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v8, 3);
  sub_100016290(v4, &qword_10058BB48, &unk_100483040);
  return v34;
}

unint64_t sub_1001984B4()
{
  result = qword_10058F2E8;
  if (!qword_10058F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F2E8);
  }

  return result;
}

unint64_t sub_10019850C()
{
  result = qword_10058F2F0;
  if (!qword_10058F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F2F0);
  }

  return result;
}

unint64_t sub_100198564()
{
  result = qword_10058F2F8;
  if (!qword_10058F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F2F8);
  }

  return result;
}

__n128 sub_1001985B8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001985E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019862C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001986A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001986EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100198748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001987B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001987F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058F3A0, &qword_100492310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100198868()
{
  result = qword_10058D480;
  if (!qword_10058D480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10058D480);
  }

  return result;
}

uint64_t sub_1001988B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10019891C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8) + 64);
  v5 = __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a2 + 16);
  if (!v53)
  {
    return 0;
  }

  v9 = 0;
  v10 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = 0;
  v12 = *(v6 + 72);
  v50 = v5;
  v51 = v12;
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    sub_10019B4BC(v10, v8);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v13 = *(&v55 + 1);
    v14 = v55;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v15 = v55;
    v16 = v13 >> 62;
    v17 = *(&v55 + 1) >> 62;
    if (v13 >> 62 == 3)
    {
      v18 = 0;
      if (!v14 && v13 == 0xC000000000000000 && *(&v55 + 1) >> 62 == 3)
      {
        v18 = 0;
        if (v55 == __PAIR128__(0xC000000000000000, 0))
        {
          sub_1000124C8(0, 0xC000000000000000);
          v19 = 0;
          v20 = 0xC000000000000000;
          goto LABEL_36;
        }
      }

LABEL_22:
      if (v17 <= 1)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        v18 = BYTE6(v13);
        if (v17 <= 1)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }

      LODWORD(v18) = HIDWORD(v14) - v14;
      if (__OFSUB__(HIDWORD(v14), v14))
      {
        goto LABEL_87;
      }

      v18 = v18;
      goto LABEL_22;
    }

    if (v16 == 2)
    {
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      v23 = __OFSUB__(v21, v22);
      v18 = v21 - v22;
      if (v23)
      {
        goto LABEL_88;
      }

      goto LABEL_22;
    }

    v18 = 0;
    if (v17 <= 1)
    {
LABEL_23:
      if (v17)
      {
        LODWORD(v24) = DWORD1(v55) - v55;
        if (__OFSUB__(DWORD1(v55), v55))
        {
          goto LABEL_86;
        }

        v24 = v24;
      }

      else
      {
        v24 = BYTE14(v55);
      }

      goto LABEL_30;
    }

LABEL_28:
    if (v17 != 2)
    {
      if (v18)
      {
        goto LABEL_4;
      }

LABEL_35:
      sub_1000124C8(v55, *(&v55 + 1));
      v19 = v14;
      v20 = v13;
LABEL_36:
      sub_1000124C8(v19, v20);
      v8 = v52;
      goto LABEL_53;
    }

    v26 = *(v55 + 16);
    v25 = *(v55 + 24);
    v23 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (v23)
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
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
    }

LABEL_30:
    if (v18 != v24)
    {
LABEL_4:
      sub_1000124C8(v55, *(&v55 + 1));
      sub_1000124C8(v14, v13);
      v8 = v52;
      goto LABEL_5;
    }

    if (v18 < 1)
    {
      goto LABEL_35;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        *&v55 = v14;
        WORD4(v55) = v13;
        BYTE10(v55) = BYTE2(v13);
        BYTE11(v55) = BYTE3(v13);
        BYTE12(v55) = BYTE4(v13);
        BYTE13(v55) = BYTE5(v13);
        goto LABEL_49;
      }

      v49 = v11;
      if (v14 >> 32 < v14)
      {
        goto LABEL_89;
      }

      v30 = __DataStorage._bytes.getter();
      if (v30)
      {
        v48 = v30;
        v31 = __DataStorage._offset.getter();
        if (__OFSUB__(v14, v31))
        {
          goto LABEL_92;
        }

        v28 = v14 - v31 + v48;
      }

      else
      {
        v28 = 0;
      }

LABEL_52:
      __DataStorage._length.getter();
      v11 = v49;
      sub_100031E04(v28, v15, *(&v15 + 1), &v55);
      sub_1000124C8(v14, v13);
      sub_1000124C8(v15, *(&v15 + 1));
      v8 = v52;
      if ((v55 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_53;
    }

    if (v16 == 2)
    {
      v49 = v11;
      v27 = *(v14 + 16);
      v48 = *(v14 + 24);
      v28 = __DataStorage._bytes.getter();
      if (v28)
      {
        v29 = __DataStorage._offset.getter();
        if (__OFSUB__(v27, v29))
        {
          goto LABEL_91;
        }

        v28 += v27 - v29;
      }

      if (__OFSUB__(v48, v27))
      {
        goto LABEL_90;
      }

      goto LABEL_52;
    }

    *(&v55 + 6) = 0;
    *&v55 = 0;
LABEL_49:
    sub_100031E04(&v55, v15, *(&v15 + 1), &v54);
    sub_1000124C8(v14, v13);
    sub_1000124C8(v15, *(&v15 + 1));
    v8 = v52;
    if (!v54)
    {
      goto LABEL_5;
    }

LABEL_53:
    if (v8[v50[5]] != *(a1 + v50[5]) || v8[v50[6]] != *(a1 + v50[6]))
    {
      goto LABEL_5;
    }

    v32 = v50[7];
    v33 = *&v8[v32];
    v34 = *&v8[v32 + 8];
    v35 = (a1 + v32);
    v36 = *v35;
    v37 = v35[1];
    v38 = v34 >> 62;
    v39 = v37 >> 62;
    if (v34 >> 62 == 3)
    {
      v40 = 0;
      if (!v33 && v34 == 0xC000000000000000 && v37 >> 62 == 3)
      {
        v40 = 0;
        if (!v36 && v37 == 0xC000000000000000)
        {
          goto LABEL_81;
        }
      }

LABEL_68:
      if (v39 <= 1)
      {
        goto LABEL_69;
      }

      goto LABEL_74;
    }

    if (v38 == 2)
    {
      v42 = *(v33 + 16);
      v41 = *(v33 + 24);
      v23 = __OFSUB__(v41, v42);
      v40 = v41 - v42;
      if (v23)
      {
        goto LABEL_95;
      }

      goto LABEL_68;
    }

    if (v38 == 1)
    {
      LODWORD(v40) = HIDWORD(v33) - v33;
      if (__OFSUB__(HIDWORD(v33), v33))
      {
        goto LABEL_96;
      }

      v40 = v40;
      if (v39 <= 1)
      {
LABEL_69:
        if (v39)
        {
          LODWORD(v43) = HIDWORD(v36) - v36;
          if (__OFSUB__(HIDWORD(v36), v36))
          {
            goto LABEL_93;
          }

          v43 = v43;
        }

        else
        {
          v43 = BYTE6(v37);
        }

        goto LABEL_76;
      }
    }

    else
    {
      v40 = BYTE6(v34);
      if (v39 <= 1)
      {
        goto LABEL_69;
      }
    }

LABEL_74:
    if (v39 == 2)
    {
      break;
    }

    if (!v40)
    {
      goto LABEL_81;
    }

LABEL_5:
    sub_10019B520(v8);
    ++v9;
    v10 += v51;
    if (v53 == v9)
    {
      return 0;
    }
  }

  v45 = *(v36 + 16);
  v44 = *(v36 + 24);
  v23 = __OFSUB__(v44, v45);
  v43 = v44 - v45;
  if (v23)
  {
    goto LABEL_94;
  }

LABEL_76:
  if (v40 != v43)
  {
    goto LABEL_5;
  }

  if (v40 >= 1)
  {
    sub_10000AB0C(v36, v37);
    if ((sub_100031C74(v33, v34, v36, v37) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_81:
  if (*&v8[v50[8]] != *(a1 + v50[8]))
  {
    goto LABEL_5;
  }

  sub_10019B520(v8);
  return v9;
}

uint64_t sub_100198F4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = a2;
    v5 = a1;
    v6 = 0;
    if (a1)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2 == 0xC000000000000000;
    }

    v8 = !v7;
    v38 = v8;
    v9 = a2 >> 62;
    v10 = __OFSUB__(HIDWORD(a1), a1);
    v36 = v10;
    v35 = HIDWORD(a1) - a1;
    v37 = BYTE6(a2);
    v11 = (a3 + 40);
    v32 = *(a3 + 16);
    while (1)
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = *v11 >> 62;
      if (v14 == 3)
      {
        break;
      }

      if (v14 > 1)
      {
        if (v14 != 2)
        {
          goto LABEL_36;
        }

        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        v21 = __OFSUB__(v19, v20);
        v18 = v19 - v20;
        if (v21)
        {
          goto LABEL_67;
        }

        if (v9 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v14)
      {
        LODWORD(v18) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_68;
        }

        v18 = v18;
        if (v9 <= 1)
        {
LABEL_33:
          v22 = v37;
          if (v9)
          {
            v22 = v35;
            if (v36)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v18 = BYTE6(v12);
        if (v9 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v9 != 2)
      {
        if (!v18)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v24 = *(v5 + 16);
      v23 = *(v5 + 24);
      v21 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v21)
      {
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
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
      }

LABEL_39:
      if (v18 != v22)
      {
        goto LABEL_13;
      }

      if (v18 < 1)
      {
        return v6;
      }

      if (v14 <= 1)
      {
        if (!v14)
        {
          v40[0] = *(v11 - 1);
          LOWORD(v40[1]) = v12;
          BYTE2(v40[1]) = BYTE2(v12);
          BYTE3(v40[1]) = BYTE3(v12);
          BYTE4(v40[1]) = BYTE4(v12);
          BYTE5(v40[1]) = BYTE5(v12);
          sub_10000AB0C(v13, v12);
          sub_100031E04(v40, v5, v4, &v39);
          sub_1000124C8(v13, v12);
          if (v39)
          {
            return v6;
          }

          goto LABEL_13;
        }

        if (v13 >> 32 < v13)
        {
          goto LABEL_69;
        }

        sub_10000AB0C(*(v11 - 1), *v11);
        v27 = __DataStorage._bytes.getter();
        if (v27)
        {
          v29 = __DataStorage._offset.getter();
          if (__OFSUB__(v13, v29))
          {
            goto LABEL_72;
          }

          v27 += v13 - v29;
        }

        goto LABEL_58;
      }

      if (v14 == 2)
      {
        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        sub_10000AB0C(*(v11 - 1), *v11);
        v27 = __DataStorage._bytes.getter();
        if (v27)
        {
          v28 = __DataStorage._offset.getter();
          if (__OFSUB__(v26, v28))
          {
            goto LABEL_71;
          }

          v27 += v26 - v28;
        }

        if (__OFSUB__(v25, v26))
        {
          goto LABEL_70;
        }

LABEL_58:
        __DataStorage._length.getter();
        v30 = v27;
        v5 = a1;
        v4 = a2;
        sub_100031E04(v30, a1, a2, v40);
        sub_1000124C8(v13, v12);
        if (v40[0])
        {
          return v6;
        }

        v3 = v32;
        goto LABEL_13;
      }

      memset(v40, 0, 14);
      sub_10000AB0C(v13, v12);
      sub_100031E04(v40, v5, v4, &v39);
      sub_1000124C8(v13, v12);
      if (v39)
      {
        return v6;
      }

LABEL_13:
      v11 += 2;
      if (v3 == ++v6)
      {
        return 0;
      }
    }

    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12 == 0xC000000000000000;
    }

    v17 = !v15 || v9 < 3;
    if (((v17 | v38) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v18 = 0;
    if (v9 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return 0;
}

uint64_t sub_100199314(unsigned __int8 a1, unint64_t a2, unint64_t a3)
{
  v5 = a3 >> 62;
  v25 = a2;
  if ((a3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(a2 + 16);
    }
  }

  else if (v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 >> 32;
  v8 = a1;
  v23 = a2 >> 16;
  v24 = a2 >> 8;
  v21 = HIDWORD(a2);
  v22 = a2 >> 24;
  v19 = HIWORD(a2);
  v20 = a2 >> 40;
  v17 = v6;
  v18 = HIBYTE(a2);
  if (v5 > 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = BYTE6(a3);
  if (v5)
  {
    v9 = a2 >> 32;
  }

  while (v6 != v9)
  {
    if (v5 == 2)
    {
      if (v6 < *(a2 + 16))
      {
        goto LABEL_36;
      }

      if (v6 >= *(a2 + 24))
      {
        goto LABEL_38;
      }

      v14 = __DataStorage._bytes.getter();
      if (!v14)
      {
        goto LABEL_43;
      }

      v11 = v14;
      v15 = __DataStorage._offset.getter();
      v13 = v6 - v15;
      if (__OFSUB__(v6, v15))
      {
        goto LABEL_40;
      }

      goto LABEL_25;
    }

    if (v5 == 1)
    {
      if (v6 < v25 || v6 >= v7)
      {
        goto LABEL_37;
      }

      v10 = __DataStorage._bytes.getter();
      if (!v10)
      {
        goto LABEL_42;
      }

      v11 = v10;
      v12 = __DataStorage._offset.getter();
      v13 = v6 - v12;
      if (__OFSUB__(v6, v12))
      {
        goto LABEL_39;
      }

LABEL_25:
      if (*(v11 + v13) == v8)
      {
        return v6;
      }

      goto LABEL_29;
    }

    if (v6 >= BYTE6(a3))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26[0] = a2;
    v26[1] = v24;
    v26[2] = v23;
    v26[3] = v22;
    v26[4] = v21;
    v26[5] = v20;
    v26[6] = v19;
    v26[7] = v18;
    v27 = a3;
    v28 = BYTE2(a3);
    v29 = BYTE3(a3);
    v30 = BYTE4(a3);
    v31 = BYTE5(a3);
    if (v26[v6] == v8)
    {
      return v6;
    }

LABEL_29:
    ++v6;
    if (v5 <= 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    if (v5 != 2)
    {
      if (!v17)
      {
        return 0;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v9 = *(a2 + 24);
  }

  return 0;
}

uint64_t sub_10019957C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C2B3C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 72 * a1;
    v10 = *(v9 + 80);
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = v10;
    *(a2 + 64) = *(v9 + 96);
    v11 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v11;
    result = memmove((v9 + 32), (v9 + 104), 72 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

size_t sub_100199624@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C2B50(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_10019B458(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100199744@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C2B8C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t NANMatchingFilter.FilterType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x546873696C627570;
  v2 = 0x526873696C627570;
  if (a1 != 3)
  {
    v2 = 0x73655265676E6172;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  v3 = 0xD000000000000011;
  if (a1)
  {
    v3 = 0xD000000000000010;
  }

  if (a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1001998B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P17NANMatchingFilterV0D4TypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001998E8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF74696D736E6172;
  v4 = 0x546873696C627570;
  v5 = 0xEE00657669656365;
  v6 = 0x526873696C627570;
  if (v2 != 3)
  {
    v6 = 0x73655265676E6172;
    v5 = 0xED000065736E6F70;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000001004B6400;
  v8 = 0xD000000000000011;
  if (*v1)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001004B6420;
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v7;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_1001999B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100199ACC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100199BCC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

CoreP2P::NANMatchingFilter::RespondCondition_optional __swiftcall NANMatchingFilter.RespondCondition.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100554E50, v2);

  if (v3 == 1)
  {
    v4.value = CoreP2P_NANMatchingFilter_RespondCondition_txNotEqualRx;
  }

  else
  {
    v4.value = CoreP2P_NANMatchingFilter_RespondCondition_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100199DEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x757145746F4E7874;
  }

  else
  {
    v4 = 0x526C617571457874;
  }

  if (v3)
  {
    v5 = 0xE900000000000078;
  }

  else
  {
    v5 = 0xEC00000078526C61;
  }

  if (*a2)
  {
    v6 = 0x757145746F4E7874;
  }

  else
  {
    v6 = 0x526C617571457874;
  }

  if (*a2)
  {
    v7 = 0xEC00000078526C61;
  }

  else
  {
    v7 = 0xE900000000000078;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100199EA0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100554E50, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100199F00(uint64_t *a1@<X8>)
{
  v2 = 0x526C617571457874;
  if (*v1)
  {
    v2 = 0x757145746F4E7874;
  }

  v3 = 0xE900000000000078;
  if (*v1)
  {
    v3 = 0xEC00000078526C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_100199F4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100199FDC()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10019A058()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t NANMatchingFilter.addFilter(_:)(uint64_t a1, unint64_t a2)
{
  sub_10005DC58(&qword_10058CCC0, &qword_100492360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F40;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10000AB0C(a1, a2);
  NANMatchingFilter.addFilters(_:)(inited);
  swift_setDeallocating();
  return sub_10019AD3C(inited + 32);
}

Swift::Void __swiftcall NANMatchingFilter.addFilters(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = 0;
    v3 = a1._rawValue + 32;
    do
    {
      v4 = v2;
      while (1)
      {
        if (v4 >= v1)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v2 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }

        v5 = *&v3[16 * v4];
        v6 = *&v3[16 * v4 + 8];
        v7 = v6 >> 62;
        if ((v6 >> 62) > 1)
        {
          break;
        }

        if (v7)
        {
          v8 = *&v3[16 * v4];
          if (__OFSUB__(DWORD1(v5), v5))
          {
            goto LABEL_28;
          }

          v11 = DWORD1(v5) - v5;
          goto LABEL_16;
        }

        if (BYTE6(v6) <= 0x20uLL)
        {
          goto LABEL_19;
        }

LABEL_17:
        sub_1000124C8(v5, v6);
        ++v4;
        if (v2 == v1)
        {
          goto LABEL_24;
        }
      }

      if (v7 != 2)
      {
        goto LABEL_19;
      }

      v8 = *&v3[16 * v4];
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      v11 = v9 - v10;
      if (__OFSUB__(v9, v10))
      {
        goto LABEL_27;
      }

LABEL_16:
      v15 = *&v3[16 * v4];
      sub_10000AB0C(v8, *&v3[16 * v4 + 8]);
      v5 = v15;
      if (v11 > 32)
      {
        goto LABEL_17;
      }

LABEL_19:
      v16 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000C05C4(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      v14 = v16;
      if (v13 >= v12 >> 1)
      {
        sub_1000C05C4((v12 > 1), v13 + 1, 1);
        v14 = v16;
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      *&_swiftEmptyArrayStorage[2 * v13 + 4] = v14;
    }

    while (v2 != v1);
  }

LABEL_24:
  sub_10023549C(_swiftEmptyArrayStorage);
}

unint64_t NANMatchingFilter.removeFilter(_:)(uint64_t a1, unint64_t a2)
{
  result = sub_100198F4C(a1, a2, *(v2 + 8));
  if ((v4 & 1) == 0)
  {
    sub_100199744(result, &v5);
    return sub_1000124C8(v5, *(&v5 + 1));
  }

  return result;
}

unint64_t sub_10019A420()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_10019A458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004BA950 == a2)
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

uint64_t sub_10019A53C(uint64_t a1)
{
  v2 = sub_10019AD90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019A578(uint64_t a1)
{
  v2 = sub_10019AD90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANMatchingFilter.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1000B2BD8(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1000BCCE0(a2, a4);
}

uint64_t NANMatchingFilter.encode(to:)(void *a1, char a2, uint64_t a3)
{
  v7 = sub_10005DC58(&qword_10058F3C8, &qword_100492368);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10019AD90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_10019ADE4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    sub_10005DC58(&qword_10058F3E0, &qword_100492370);
    sub_10019B5D0(&qword_10058F3E8, sub_1000B8088);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void NANMatchingFilter.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  String.hash(into:)();

  v4 = *(a3 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      sub_10000AB0C(v6, *v5);
      Data.hash(into:)();
      sub_1000124C8(v6, v7);
      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

Swift::Int NANMatchingFilter.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  NANMatchingFilter.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10019A9A8()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  Hasher.init(_seed:)();
  NANMatchingFilter.hash(into:)(v4, v2, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10019AA04()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  Hasher.init(_seed:)();
  NANMatchingFilter.hash(into:)(v4, v2, v1);
  return Hasher._finalize()();
}

uint64_t sub_10019AA50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10019AF44(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_10019AAA0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  if ((sub_1000B2BD8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1000BCCE0(v2, v3);
}

CoreP2P::NANMatchingFilter __swiftcall NANMatchingFilter.init(type:)(CoreP2P::NANMatchingFilter::FilterType type)
{
  v1 = &_swiftEmptyArrayStorage;
  result.matchingFilterList._rawValue = v1;
  result.type = type;
  return result;
}

uint64_t NANMatchingFilter.FilterType.description.getter(unsigned __int8 a1)
{
  v1 = 0x206873696C627550;
  v2 = 0x206873696C627550;
  if (a1 != 3)
  {
    v2 = 0x65522065676E6152;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1 <= 1u)
  {
    return 0x6269726373627553;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10019ABBC()
{
  v1 = *v0;
  v2 = 0x206873696C627550;
  v3 = 0x206873696C627550;
  if (v1 != 3)
  {
    v3 = 0x65522065676E6152;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x6269726373627553;
  }

  else
  {
    return v2;
  }
}

uint64_t NANMatchingFilter.RespondCondition.description.getter(char a1)
{
  if (a1)
  {
    return 0x757145746F4E7874;
  }

  else
  {
    return 0x526C617571457874;
  }
}

uint64_t sub_10019ACA8()
{
  if (*v0)
  {
    result = 0x757145746F4E7874;
  }

  else
  {
    result = 0x526C617571457874;
  }

  *v0;
  return result;
}

unint64_t _s7CoreP2P17NANMatchingFilterV0D4TypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100554DB8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10019AD90()
{
  result = qword_10058F3D0;
  if (!qword_10058F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F3D0);
  }

  return result;
}

unint64_t sub_10019ADE4()
{
  result = qword_10058F3D8;
  if (!qword_10058F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F3D8);
  }

  return result;
}

uint64_t sub_10019AF44(uint64_t *a1)
{
  v2 = sub_10005DC58(&qword_10058F430, &qword_1004927F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10019AD90();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[30] = 0;
  sub_10019B57C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v10[31];
  sub_10005DC58(&qword_10058F3E0, &qword_100492370);
  v10[15] = 1;
  sub_10019B5D0(&qword_10058F440, sub_100039F68);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100002A00(a1);
  return v8;
}

unint64_t sub_10019B164()
{
  result = qword_10058F3F0;
  if (!qword_10058F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F3F0);
  }

  return result;
}

unint64_t sub_10019B1BC()
{
  result = qword_10058F3F8;
  if (!qword_10058F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F3F8);
  }

  return result;
}

unint64_t sub_10019B214()
{
  result = qword_10058F400;
  if (!qword_10058F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F400);
  }

  return result;
}

unint64_t sub_10019B2AC()
{
  result = qword_10058F408;
  if (!qword_10058F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F408);
  }

  return result;
}

unint64_t sub_10019B304()
{
  result = qword_10058F410;
  if (!qword_10058F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F410);
  }

  return result;
}

unint64_t sub_10019B35C()
{
  result = qword_10058F418;
  if (!qword_10058F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F418);
  }

  return result;
}

unint64_t sub_10019B3B0()
{
  result = qword_10058F420;
  if (!qword_10058F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F420);
  }

  return result;
}

unint64_t sub_10019B404()
{
  result = qword_10058F428;
  if (!qword_10058F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F428);
  }

  return result;
}

uint64_t sub_10019B458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019B4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019B520(uint64_t a1)
{
  v2 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10019B57C()
{
  result = qword_10058F438;
  if (!qword_10058F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F438);
  }

  return result;
}

uint64_t sub_10019B5D0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(&qword_10058F3E0, &qword_100492370);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Data.hexString.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62 == 2)
  {
    v8 = *(a1 + 16);
  }

  sub_10000AB0C(a1, a2);
  Data.Iterator.init(_:at:)();
  sub_100085C04();
  dispatch thunk of IteratorProtocol.next()();
  if (v24)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    v20 = xmmword_100480F40;
    do
    {
      v11 = v23;
      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v12 = swift_allocObject();
      *(v12 + 16) = v20;
      *(v12 + 56) = &type metadata for UInt8;
      *(v12 + 64) = &protocol witness table for UInt8;
      *(v12 + 32) = v11;
      v13 = String.init(format:_:)();
      v15 = v14;
      v21 = v9;
      v22 = v10;

      v16._countAndFlagsBits = v13;
      v16._object = v15;
      String.append(_:)(v16);

      v9 = v21;
      v10 = v22;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v24 != 1);
  }

  (*(v19 + 8))(v7, v4);
  return v9;
}

uint64_t Data.utf8String.getter()
{
  v0 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  static String.Encoding.utf8.getter();
  return String.init(data:encoding:)();
}

uint64_t Data.colonFormatedString.getter(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10019BA90;
  *(v5 + 24) = v4;
  v8 = a2;
  sub_10000AB0C(a1, a2);
  sub_10000AB0C(a1, a2);
  sub_10005DC58(&qword_10058F448, &qword_100492800);
  sub_10019BACC();
  v6 = BidirectionalCollection<>.joined(separator:)();
  sub_1000124C8(a1, v8);

  return v6;
}

uint64_t sub_10019BA0C(char a1)
{
  sub_10005DC58(&qword_100599FF0, &qword_100486D20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100480F40;
  *(v2 + 56) = &type metadata for UInt8;
  *(v2 + 64) = &protocol witness table for UInt8;
  *(v2 + 32) = a1;

  return String.init(format:_:)();
}

uint64_t sub_10019BA90(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10019BA0C(a1);
}

uint64_t sub_10019BA98@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_10019BACC()
{
  result = qword_10058F450;
  if (!qword_10058F450)
  {
    sub_10005DD04(&qword_10058F448, &qword_100492800);
    sub_10019BB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F450);
  }

  return result;
}

unint64_t sub_10019BB50()
{
  result = qword_10058F458;
  if (!qword_10058F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F458);
  }

  return result;
}

unint64_t Data.init(uuid:)(uint64_t a1)
{
  v6[0] = UUID.uuid.getter();
  v6[1] = v2;
  v3 = sub_10004F3B0(v6, &v7);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

uint64_t sub_10019BC64@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v32 = a4;
  v33 = a2;
  v35 = a1;
  v36 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v31 = *(v36 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin();
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v34 = &v30 - v10;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v37 = a3;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v38 = v5;
      v18 = v9;
      v19 = v17;
LABEL_9:
      v20 = __clz(__rbit64(v14)) | (v19 << 6);
      v21 = v37;
      v22 = *(v37 + 48);
      v23 = type metadata accessor for UUID();
      v24 = v34;
      (*(*(v23 - 8) + 16))(v34, v22 + *(*(v23 - 8) + 72) * v20, v23);
      v25 = *(v21 + 56);
      v26 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
      sub_1001ABBF0(v25 + *(*(v26 - 8) + 72) * v20, v24 + *(v36 + 48), type metadata accessor for NANPairedDeviceSharedAssociation);
      v9 = v18;
      sub_1001AC444(v24, v18);
      v27 = v38;
      v28 = v35(v18);
      v5 = v27;
      if (v27)
      {
        sub_100016290(v18, &unk_100597500, &unk_1004939B0);
      }

      if (v28)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_100016290(v18, &unk_100597500, &unk_1004939B0);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v29 = v32;
    sub_1001AC444(v9, v32);
    return (*(v31 + 56))(v29, 0, 1, v36);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        return (*(v31 + 56))(v32, 1, 1, v36);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v38 = v5;
        v18 = v9;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10019BF58@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for WiFiAwarePairedDevice();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_1001ABBF0(v13, v11, type metadata accessor for WiFiAwarePairedDevice);
      v15 = a1(v11);
      if (v3)
      {
        return sub_1001AB714(v11, type metadata accessor for WiFiAwarePairedDevice);
      }

      if (v15)
      {
        break;
      }

      sub_1001AB714(v11, type metadata accessor for WiFiAwarePairedDevice);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_1001ABCD0(v11, v19, type metadata accessor for WiFiAwarePairedDevice);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_10019C124(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_10019C214()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for WiFiAwareKeychainError(0) - 8) + 64);
  __chkstk_darwin();
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001ABBF0(v1, v9, type metadata accessor for WiFiAwareKeychainError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_10005DC58(qword_10058C850, &unk_100486F10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100480F40;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = inited + 32;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v26;
      *(inited + 48) = 0x6E756F6620746F4ELL;
      v20 = 0xE900000000000064;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        sub_10005DC58(qword_10058C850, &unk_100486F10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100480F40;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = inited + 32;
        v20 = 0x80000001004BAA30;
        *(inited + 72) = &type metadata for String;
        v28 = 0xD000000000000012;
        goto LABEL_12;
      }

      sub_10005DC58(qword_10058C850, &unk_100486F10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100480F40;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = inited + 32;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v19;
      *(inited + 48) = 0x6C616E7265746E49;
      v20 = 0xEE00726F72726520;
    }

LABEL_13:
    *(inited + 56) = v20;
    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
    v21 = *v9;
    sub_10005DC58(qword_10058C850, &unk_100486F10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100480F40;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = inited + 32;
    *(inited + 40) = v22;
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v31 = 0xD000000000000011;
    v32 = 0x80000001004BAAA0;
    v30[3] = v21;
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24 = v31;
    v25 = v32;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v24;
    *(inited + 56) = v25;
LABEL_14:
    v16 = sub_1000827F8(inited);
    swift_setDeallocating();
    sub_100016290(v18, &qword_10058BB40, &unk_100480E70);
    return v16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10005DC58(qword_10058C850, &unk_100486F10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100480F40;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = inited + 32;
    v20 = 0x80000001004BAA50;
    *(inited + 72) = &type metadata for String;
    v28 = 0xD00000000000001ELL;
LABEL_12:
    *(inited + 40) = v27;
    *(inited + 48) = v28;
    goto LABEL_13;
  }

  (*(v3 + 32))(v6, v9, v2);
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_100480F40;
  *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v11 + 40) = v12;
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v31 = 0xD000000000000023;
  v32 = 0x80000001004BAA70;
  sub_1001AB660(&qword_100597520, &type metadata accessor for UUID);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = v31;
  v15 = v32;
  *(v11 + 72) = &type metadata for String;
  *(v11 + 48) = v14;
  *(v11 + 56) = v15;
  v16 = sub_1000827F8(v11);
  swift_setDeallocating();
  sub_100016290(v11 + 32, &qword_10058BB40, &unk_100480E70);
  (*(v3 + 8))(v6, v2);
  return v16;
}

uint64_t sub_10019C794(uint64_t a1)
{
  v2 = sub_1001AB660(&unk_10058F730, type metadata accessor for WiFiAwareKeychainError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10019C800(uint64_t a1)
{
  v2 = sub_1001AB660(&unk_10058F730, type metadata accessor for WiFiAwareKeychainError);

  return Error<>._code.getter(a1, v2);
}

uint64_t WiFiAwarePairedDevicesStore.events.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for WiFiAwarePairedDevicesStore.events;
  v4 = sub_10005DC58(&qword_10058F460, &qword_100492830);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WiFiAwarePairedDevicesStore.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  WiFiAwarePairedDevicesStore.init()();
  return v3;
}

uint64_t WiFiAwarePairedDevicesStore.init()()
{
  v1 = v0;
  v2 = sub_10005DC58(&qword_10058F468, &qword_100492838);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v22 - v5;
  v23 = sub_10005DC58(&qword_10058F470, &unk_100492840);
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v22 - v9;
  v22 = sub_10005DC58(&qword_10058F460, &qword_100492830);
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v22 - v13;
  swift_defaultActor_initialize();
  Logger.init(subsystem:category:)();
  *(v1 + qword_10058F478) = 0;
  v15 = qword_10058F480;
  *(v1 + v15) = sub_100082A90(_swiftEmptyArrayStorage);
  v16 = qword_10058F488;
  *(v1 + v16) = sub_100082BFC(_swiftEmptyArrayStorage);
  swift_weakInit();
  v17 = qword_10058F498;
  *(v1 + v17) = sub_100082E3C(_swiftEmptyArrayStorage);
  *(v1 + qword_10058F4A0) = 3;
  (*(v3 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v2);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v3 + 8))(v6, v2);
  (*(v11 + 32))(v1 + direct field offset for WiFiAwarePairedDevicesStore.events, v14, v22);
  (*(v7 + 32))(v1 + qword_10058F4A8, v10, v23);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "WiFiAwarePairedDevicesStore initialized", v20, 2u);
  }

  return v1;
}

uint64_t WiFiAwarePairedDevicesStore.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10005DC58(&qword_10058F470, &unk_100492840);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = qword_10058F4A8;
  (*(v8 + 16))(&v24 - v10, v1 + qword_10058F4A8, v7);
  AsyncStream.Continuation.finish()();
  v25 = *(v8 + 8);
  v25(v11, v7);
  v13 = qword_10059B508;
  (*(v3 + 16))(v6, v1 + qword_10059B508, v2);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = v12;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "WiFiAwarePairedDevicesStore deinitialized", v16, 2u);
    v12 = v24;
  }

  v17 = *(v3 + 8);
  v17(v6, v2);
  v17((v1 + v13), v2);
  v18 = *(v1 + qword_10058F480);

  v19 = *(v1 + qword_10058F488);

  v20 = direct field offset for WiFiAwarePairedDevicesStore.events;
  v21 = sub_10005DC58(&qword_10058F460, &qword_100492830);
  (*(*(v21 - 8) + 8))(v1 + v20, v21);
  v25((v1 + v12), v7);
  swift_weakDestroy();
  v22 = *(v1 + qword_10058F498);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t WiFiAwarePairedDevicesStore.__deallocating_deinit()
{
  WiFiAwarePairedDevicesStore.deinit();

  return _swift_defaultActor_deallocate(v0);
}

void WiFiAwarePairedDevicesStore.activate(with:)()
{
  v1 = *v0;
  swift_weakAssign();

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    v5 = *(v1 + 80);
    v6 = *(v1 + 88);
    type metadata accessor for LongTermPairingKeyStore();

    v7 = String.init<A>(describing:)();
    v9 = sub_100002320(v7, v8, &v11);

    *(v3 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Activated WiFiAwarePairedDevicesStore with %s", v3, 0xCu);
    sub_100002A00(v4);
  }

  else
  {
  }
}

void sub_10019D220()
{
  v2 = v0;
  v3 = type metadata accessor for WiFiAwareKeychainError(0);
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10005DC58(&qword_10058F520, &qword_1004928A0);
  v8 = *(*(v57 - 8) + 64);
  __chkstk_darwin();
  v10 = &v53 - v9;
  v11 = *(*(sub_10005DC58(&qword_10058F528, &qword_1004928A8) - 8) + 64);
  __chkstk_darwin();
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v53 - v13;
  __chkstk_darwin();
  v60 = &v53 - v14;
  v59 = qword_10059B508;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "[BEGIN] WiFiAwarePairedDevicesStore cache build", v17, 2u);
  }

  v18 = sub_10005DC58(&qword_10058F4E8, &qword_100492890);
  v19 = sub_1001ABAAC(&qword_10058F4F0, &qword_10058F4F8);
  sub_1001ABAAC(&qword_10058F500, &qword_10058F508);
  v20 = WiFiAwarePairedDevicesStore.getAll<A, B>()(&type metadata for String, v18, &protocol witness table for String, v19);
  if (!v1)
  {
    v21 = *(v2 + qword_10058F480);
    *(v2 + qword_10058F480) = v20;

    v22 = type metadata accessor for UUID();
    v23 = sub_1001AB660(&unk_10058BB00, &type metadata accessor for UUID);
    v24 = sub_1001ABB48();
    sub_1001ABB9C();
    v25 = WiFiAwarePairedDevicesStore.getAll<A, B>()(v22, &type metadata for WiFiAwarePairedDeviceMetadata, v23, v24);
    v49 = *(v2 + qword_10058F488);
    *(v2 + qword_10058F488) = v25;

LABEL_17:
    *(v2 + qword_10058F478) = 1;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "[END] WiFiAwarePairedDevicesStore cache build", v52, 2u);
    }

    return;
  }

  v56 = v10;
  v54 = v7;
  v26 = sub_100082A90(_swiftEmptyArrayStorage);
  v27 = *(v2 + qword_10058F480);
  *(v2 + qword_10058F480) = v26;

  v28 = sub_100082BFC(_swiftEmptyArrayStorage);
  v29 = *(v2 + qword_10058F488);
  *(v2 + qword_10058F488) = v28;

  v61 = v1;
  swift_errorRetain();
  sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  v30 = v60;
  v31 = swift_dynamicCast();
  v32 = v4[7];
  v32(v30, v31 ^ 1u, 1, v3);
  v33 = v58;
  swift_storeEnumTagMultiPayload();
  v32(v33, 0, 1, v3);
  v34 = *(v57 + 48);
  v35 = v30;
  v36 = v56;
  sub_100012400(v35, v56, &qword_10058F528, &qword_1004928A8);
  sub_100012400(v33, v36 + v34, &qword_10058F528, &qword_1004928A8);
  v37 = v4[6];
  if (v37(v36, 1, v3) == 1)
  {
    sub_100016290(v33, &qword_10058F528, &qword_1004928A8);
    if (v37(v36 + v34, 1, v3) == 1)
    {
      sub_100016290(v36, &qword_10058F528, &qword_1004928A8);
      sub_100016290(v60, &qword_10058F528, &qword_1004928A8);
LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v38 = v55;
  sub_100012400(v36, v55, &qword_10058F528, &qword_1004928A8);
  if (v37(v36 + v34, 1, v3) == 1)
  {
    sub_100016290(v33, &qword_10058F528, &qword_1004928A8);
    sub_1001AB714(v38, type metadata accessor for WiFiAwareKeychainError);
LABEL_11:
    sub_100016290(v36, &qword_10058F520, &qword_1004928A0);
    sub_100016290(v60, &qword_10058F528, &qword_1004928A8);
    goto LABEL_12;
  }

  v44 = v36 + v34;
  v45 = v36;
  v46 = v33;
  v47 = v54;
  sub_1001ABCD0(v44, v54, type metadata accessor for WiFiAwareKeychainError);
  v48 = sub_1001AAE20(v38, v47);
  sub_1001AB714(v47, type metadata accessor for WiFiAwareKeychainError);
  sub_100016290(v46, &qword_10058F528, &qword_1004928A8);
  sub_1001AB714(v38, type metadata accessor for WiFiAwareKeychainError);
  sub_100016290(v45, &qword_10058F528, &qword_1004928A8);
  sub_100016290(v60, &qword_10058F528, &qword_1004928A8);
  if (v48)
  {
    goto LABEL_16;
  }

LABEL_12:
  swift_errorRetain();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    swift_errorRetain();
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 4) = v43;
    *v42 = v43;
    _os_log_impl(&_mh_execute_header, v39, v40, "Failed to activate WiFiAwarePairedDevicesStore: %@", v41, 0xCu);
    sub_100016290(v42, &qword_10058B780, &qword_100480AC0);
  }

  swift_willThrow();
}

CFTypeRef sub_10019DBC0(unsigned __int8 a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a2 + 16))
  {
    v5 = sub_1000102E8(v3, v4);
    v7 = v6;

    if (v7)
    {
      sub_100002B30(*(a2 + 56) + 32 * v5, v77);
      if (swift_dynamicCast())
      {
        v9 = result;
        v8 = v75;
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v8 = 0xE700000000000000;
  v9 = 0x4E574F4E4B4E55;
LABEL_7:
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a2 + 16))
  {
    v12 = sub_1000102E8(v10, v11);
    v14 = v13;

    if (v14)
    {
      sub_100002B30(*(a2 + 56) + 32 * v12, v77);
      if (swift_dynamicCast())
      {
        v15 = result;
        v16 = v75;
        goto LABEL_13;
      }
    }
  }

  else
  {
  }

  v16 = 0xE500000000000000;
  v15 = 0x294C4C4128;
LABEL_13:
  v72 = v15;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *&v77[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100002320(v72, v16, v77);
    *(v19 + 12) = 2080;
    v20 = sub_100002320(v9, v8, v77);

    *(v19 + 14) = v20;
    *(v19 + 22) = 2080;
    v21 = 5522759;
    v22 = 0x455441445055;
    if (a1 != 2)
    {
      v22 = 0x45564F4D4552;
    }

    if (a1)
    {
      v21 = 4473921;
    }

    if (a1 <= 1u)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    if (a1 <= 1u)
    {
      v24 = 0xE300000000000000;
    }

    else
    {
      v24 = 0xE600000000000000;
    }

    v25 = sub_100002320(v23, v24, v77);

    *(v19 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Accessing Keychain for %s (%s) [%s]", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  result = 0;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v34 = SecItemDelete(isa);

      if (v34)
      {
        if (v34 == -25300)
        {

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            *&v77[0] = v45;
            *v44 = 136315138;
            v46 = sub_100002320(v72, v16, v77);

            *(v44 + 4) = v46;
            _os_log_impl(&_mh_execute_header, v42, v43, "No items found for: %s", v44, 0xCu);
            sub_100002A00(v45);
          }

          else
          {
          }

          type metadata accessor for WiFiAwareKeychainError(0);
          sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
          swift_allocError();
          goto LABEL_63;
        }

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *&v77[0] = v38;
          *v37 = 136315394;
          v68 = sub_100002320(v72, v16, v77);

          *(v37 + 4) = v68;
          *(v37 + 12) = 1024;
          *(v37 + 14) = v34;
          v40 = "Failed to remove item for: %s. Error: %d";
          goto LABEL_56;
        }

LABEL_57:

        goto LABEL_58;
      }

LABEL_42:

      sub_10019DA4C();
      return result;
    }

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(a2 + 16))
    {
      v30 = sub_1000102E8(v28, v29);
      v32 = v31;

      if (v32)
      {
        sub_100002B30(*(a2 + 56) + 32 * v30, v77);
LABEL_45:
        v47 = Dictionary._bridgeToObjectiveC()().super.isa;
        sub_10005DC58(&qword_10058F760, &unk_100492AD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100480F40;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v49;
        sub_100012400(v77, inited + 48, &qword_10058BA80, &qword_1004818C0);
        sub_100082AA4(inited);
        swift_setDeallocating();
        sub_100016290(inited + 32, &qword_10058BAF8, &qword_100480E38);
        sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
        v50 = Dictionary._bridgeToObjectiveC()().super.isa;

        v51 = SecItemUpdate(v47, v50);

        if (!v51)
        {
          sub_100016290(v77, &qword_10058BA80, &qword_1004818C0);

          sub_10019DA4C();
          return result;
        }

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v76 = v55;
          *v54 = 136315394;
          v56 = sub_100002320(v72, v16, &v76);

          *(v54 + 4) = v56;
          *(v54 + 12) = 1024;
          *(v54 + 14) = v51;
          _os_log_impl(&_mh_execute_header, v52, v53, "Failed to update item for: %s. Error: %d", v54, 0x12u);
          sub_100002A00(v55);
        }

        else
        {
        }

        type metadata accessor for WiFiAwareKeychainError(0);
        sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
        swift_allocError();
        *v70 = v51;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_100016290(v77, &qword_10058BA80, &qword_1004818C0);
        goto LABEL_64;
      }
    }

    else
    {
    }

    memset(v77, 0, sizeof(v77));
    goto LABEL_45;
  }

  if (a1)
  {
    v33 = Dictionary._bridgeToObjectiveC()().super.isa;
    v34 = SecItemAdd(v33, 0);

    if (v34)
    {

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v77[0] = v38;
        *v37 = 136315394;
        v39 = sub_100002320(v72, v16, v77);

        *(v37 + 4) = v39;
        *(v37 + 12) = 1024;
        *(v37 + 14) = v34;
        v40 = "Failed to add item for: %s. Error: %d";
LABEL_56:
        _os_log_impl(&_mh_execute_header, v35, v36, v40, v37, 0x12u);
        sub_100002A00(v38);

LABEL_58:

        type metadata accessor for WiFiAwareKeychainError(0);
        sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
        swift_allocError();
        *v69 = v34;
LABEL_63:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_64:
        sub_10019DA4C();
        return swift_unknownObjectRelease();
      }

      goto LABEL_57;
    }

    goto LABEL_42;
  }

  v26 = Dictionary._bridgeToObjectiveC()().super.isa;
  v27 = SecItemCopyMatching(v26, &result);

  if (v27 == -25300)
  {

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v77[0] = v61;
      *v60 = 136315138;
      v62 = sub_100002320(v72, v16, v77);

      *(v60 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v58, v59, "No items found for: %s", v60, 0xCu);
      sub_100002A00(v61);
    }

    else
    {
    }

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
    swift_allocError();
  }

  else
  {
    if (!v27)
    {

      return result;
    }

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v77[0] = v66;
      *v65 = 136315394;
      v67 = sub_100002320(v72, v16, v77);

      *(v65 + 4) = v67;
      *(v65 + 12) = 1024;
      *(v65 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v63, v64, "Failed to get items for: %s. Error: %d", v65, 0x12u);
      sub_100002A00(v66);
    }

    else
    {
    }

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
    swift_allocError();
    *v71 = v27;
  }

  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t *sub_10019E970(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = a2;
  v7 = *(a2 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v37 - v10;
  v11 = type metadata accessor for JSONEncoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v3)
  {
  }

  else
  {
    v29 = v14;
    v30 = v15;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v32 = *(v4 + qword_10058F4A0);
    v43 = 0;
    v33 = [(objc_class *)isa compressedDataUsingAlgorithm:v32 error:&v43];

    v34 = v43;
    if (v33)
    {
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000124C8(v29, v30);

      return v5;
    }

    v36 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000124C8(v29, v30);
  }

  v16 = *(v7 + 16);
  v17 = v42;
  v16(v42, a1, v5);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = v19;
    v21 = v17;
    v22 = v20;
    v38 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v22 = 136315394;
    v16(v41, v21, v5);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    (*(v7 + 8))(v21, v5);
    v26 = sub_100002320(v23, v25, &v43);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v27;
    v28 = v38;
    *v38 = v27;
    _os_log_impl(&_mh_execute_header, v18, v39, "Failed to encode: %s with error: %@", v22, 0x16u);
    sub_100016290(v28, &qword_10058B780, &qword_100480AC0);

    v5 = v40;
    sub_100002A00(v40);
  }

  else
  {

    (*(v7 + 8))(v17, v5);
  }

  swift_willThrow();
  return v5;
}

uint64_t sub_10019ED60(uint64_t a1, unint64_t a2)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = *(v2 + qword_10058F4A0);
  v30 = 0;
  v8 = [(objc_class *)isa decompressedDataUsingAlgorithm:v7 error:&v30];

  v9 = v30;
  if (v8)
  {
    v29 = a2;
    v10 = type metadata accessor for JSONDecoder();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = v9;
    JSONDecoder.init()();
    v14 = v8;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (!v3)
    {
      sub_1000124C8(v15, v17);
    }

    sub_1000124C8(v15, v17);

    a2 = v29;
  }

  else
  {
    v18 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_10000AB0C(a1, a2);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  sub_1000124C8(a1, a2);

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v21 = 136315394;
    v24 = Data.description.getter();
    v26 = sub_100002320(v24, v25, &v30);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v27;
    *v22 = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Failed to decode: %s with error: %@", v21, 0x16u);
    sub_100016290(v22, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v23);
  }

  return swift_willThrow();
}

uint64_t WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = v4;
  LODWORD(v7) = a4;
  v36 = a3;
  v33 = type metadata accessor for WiFiAwarePairedDevice();
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v35 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v31 - v13;
  if ((*(v4 + qword_10058F478) & 1) == 0)
  {
    sub_10019D220();
    if (!v5)
    {
      goto LABEL_5;
    }

    return v4;
  }

  if (v5)
  {
    return v4;
  }

LABEL_5:
  v15 = *(v4 + qword_10058F480);
  if (!*(v15 + 16))
  {
LABEL_21:

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100002320(a1, a2, &v37);
      _os_log_impl(&_mh_execute_header, v27, v28, "No paired devices found for %s", v29, 0xCu);
      sub_100002A00(v30);
    }

    v4 = type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v4;
  }

  v16 = *(v6 + qword_10058F480);

  v17 = sub_1000102E8(a1, a2);
  if ((v18 & 1) == 0)
  {

    goto LABEL_21;
  }

  v31 = v5;
  v19 = *(*(v15 + 56) + 8 * v17);

  v34 = *(v19 + 16);
  if (!v34)
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_26:

    return v4;
  }

  v21 = 0;
  v4 = _swiftEmptyArrayStorage;
  v32 = v7;
  v22 = v33;
  while (v21 < *(v19 + 16))
  {
    v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v24 = *(v10 + 72);
    sub_1001ABBF0(v19 + v23 + v24 * v21, v14, type metadata accessor for WiFiAwarePairedDevice);
    if (((v7 & 1) != 0 || v14[*(v22 + 24)] == 1) && *&v14[*(v22 + 28)] == v36)
    {
      sub_1001ABCD0(v14, v35, type metadata accessor for WiFiAwarePairedDevice);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000C0704(0, v4[2] + 1, 1);
        v4 = v37;
      }

      v7 = v4[2];
      v26 = v4[3];
      if (v7 >= v26 >> 1)
      {
        sub_1000C0704(v26 > 1, v7 + 1, 1);
        v4 = v37;
      }

      v4[2] = v7 + 1;
      result = sub_1001ABCD0(v35, v4 + v23 + v7 * v24, type metadata accessor for WiFiAwarePairedDevice);
      LOBYTE(v7) = v32;
      v22 = v33;
    }

    else
    {
      result = sub_1001AB714(v14, type metadata accessor for WiFiAwarePairedDevice);
    }

    if (v34 == ++v21)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

void WiFiAwarePairedDevicesStore.getPairedDeviceMetadata(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v2 + qword_10058F478))
  {
    if (v3)
    {
      return;
    }
  }

  else
  {
    sub_10019D220();
    if (v3)
    {
      return;
    }
  }

  v12 = *(v2 + qword_10058F488);
  if (*(v12 + 16))
  {
    v13 = *(v4 + qword_10058F488);

    v14 = sub_10002A440(a1);
    if (v15)
    {
      v16 = *(v12 + 56) + 72 * v14;
      v32 = *v16;
      v18 = *(v16 + 32);
      v17 = *(v16 + 48);
      v19 = *(v16 + 64);
      v33 = *(v16 + 16);
      v34 = v18;
      v36 = v19;
      v35 = v17;
      sub_1000B7880(&v32, v31);

      v20 = v35;
      *(a2 + 32) = v34;
      *(a2 + 48) = v20;
      *(a2 + 64) = v36;
      v21 = v33;
      *a2 = v32;
      *(a2 + 16) = v21;
      return;
    }
  }

  (*(v8 + 16))(v11, a1, v7);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v32 = v25;
    *v24 = 136315138;
    sub_1001AB660(&qword_100597520, &type metadata accessor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v8 + 8))(v11, v7);
    v29 = sub_100002320(v26, v28, &v32);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "No metadata found for %s", v24, 0xCu);
    sub_100002A00(v25);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  type metadata accessor for WiFiAwareKeychainError(0);
  sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t WiFiAwarePairedDevicesStore.getPairedDevicesInfo(for:with:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = *(type metadata accessor for WiFiAwarePairedDevice() - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v6;
    v17 = v16;
    v33 = swift_slowAlloc();
    v35 = v33;
    *v17 = 136315394;
    *(v17 + 4) = sub_100002320(a1, a2, &v35);
    *(v17 + 12) = 2080;
    v18 = 0xE900000000000079;
    v19 = 0x7261726F706D6554;
    v20 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E75;
    if (a3 == 1)
    {
      v21 = 0x6E656E616D726550;
      v20 = 0xE900000000000074;
    }

    if (a3 != 2)
    {
      v19 = v21;
      v18 = v20;
    }

    if (a3)
    {
      v22 = v19;
    }

    else
    {
      v22 = 1701736270;
    }

    HIDWORD(v31) = v15;
    if (a3)
    {
      v23 = v18;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    v24 = sub_100002320(v22, v23, &v35);
    v32 = a1;
    v25 = v24;
    v5 = v4;

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, BYTE4(v31), "[GET] Paired devices info for %s with %s storage class.", v17, 0x16u);
    swift_arrayDestroy();

    v6 = v34;

    v26 = v32;
  }

  else
  {

    v26 = a1;
  }

  v35 = _swiftEmptyArrayStorage;
  result = WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(v26, a2, a3, 0);
  if (v5)
  {
    goto LABEL_21;
  }

  v28 = result;
  v29 = *(result + 16);
  if (!v29)
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_21:

    return v14;
  }

  v30 = 0;
  while (v30 < *(v28 + 16))
  {
    sub_1001ABBF0(v28 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, v13, type metadata accessor for WiFiAwarePairedDevice);
    sub_10019FB98(v13, v6, &v35);
    ++v30;
    result = sub_1001AB714(v13, type metadata accessor for WiFiAwarePairedDevice);
    if (v29 == v30)
    {
      v14 = v35;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

void sub_10019FB98(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(*(type metadata accessor for WiFiAwarePairedDevice() - 8) + 64);
  __chkstk_darwin();
  v8 = &v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  WiFiAwarePairedDevicesStore.getPairedDeviceMetadata(for:)(a1, v11);
  if (!v3)
  {
    sub_1001AB6A8();
    sub_1001ABBF0(a1, v8, type metadata accessor for WiFiAwarePairedDevice);
    WiFiAwarePairedDeviceInfo.init(device:metadata:)(v8, v11);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v9 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }
}

uint64_t WiFiAwarePairedDevicesStore.getPairedDeviceInfo(for:with:matching:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a1;
  v5 = v4;
  v53 = a3;
  v8 = *(*(sub_10005DC58(&unk_10058F4C0, &unk_100492870) - 8) + 64);
  __chkstk_darwin();
  v50 = &v42 - v9;
  v10 = type metadata accessor for WiFiAwarePairedDevice();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  __chkstk_darwin();
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v42 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v16 + 16);
  v49 = a4;
  v20(v19, a4, v15);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v45 = v5;
    v24 = v23;
    v43 = swift_slowAlloc();
    v55 = v43;
    *v24 = 136315650;
    *(v24 + 4) = sub_100002320(v52, a2, &v55);
    *(v24 + 12) = 2080;
    v25 = 0xE900000000000079;
    v26 = 0x7261726F706D6554;
    v27 = 0xE700000000000000;
    v28 = 0x6E776F6E6B6E75;
    if (v53 == 1)
    {
      v28 = 0x6E656E616D726550;
      v27 = 0xE900000000000074;
    }

    if (v53 != 2)
    {
      v26 = v28;
      v25 = v27;
    }

    if (v53)
    {
      v29 = v26;
    }

    else
    {
      v29 = 1701736270;
    }

    if (v53)
    {
      v30 = v25;
    }

    else
    {
      v30 = 0xE400000000000000;
    }

    v31 = sub_100002320(v29, v30, &v55);
    v44 = v14;
    v32 = v31;

    *(v24 + 14) = v32;
    *(v24 + 22) = 2080;
    sub_1001AB660(&qword_100597520, &type metadata accessor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    (*(v16 + 8))(v19, v15);
    v36 = sub_100002320(v33, v35, &v55);
    v14 = v44;

    *(v24 + 24) = v36;
    _os_log_impl(&_mh_execute_header, v21, v22, "[GET] Paired device info for %s with %s storageClass and PairingKeyStoreID %s", v24, 0x20u);
    v22 = v43;
    swift_arrayDestroy();
  }

  else
  {

    (*(v16 + 8))(v19, v15);
  }

  v37 = v51;
  WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(v52, a2, v53, 0);
  if (!v37)
  {
    v38 = __chkstk_darwin();
    v39 = v50;
    *(&v42 - 2) = v49;
    sub_10019BF58(sub_1001AC5B0, v38, v39);

    if ((*(v47 + 48))(v39, 1, v48) == 1)
    {
      sub_100016290(v39, &unk_10058F4C0, &unk_100492870);
      v22 = type metadata accessor for WiFiAwareKeychainError(0);
      sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      sub_1001ABCD0(v39, v14, type metadata accessor for WiFiAwarePairedDevice);
      WiFiAwarePairedDevicesStore.getPairedDeviceMetadata(for:)(v14, v54);
      sub_1001AB6A8();
      v40 = v46;
      sub_1001ABBF0(v14, v46, type metadata accessor for WiFiAwarePairedDevice);
      v22 = WiFiAwarePairedDeviceInfo.init(device:metadata:)(v40, v54);
      sub_1001AB714(v14, type metadata accessor for WiFiAwarePairedDevice);
    }
  }

  return v22;
}

uint64_t WiFiAwarePairedDevicesStore.getAll<A, B>()(uint64_t a1, ValueMetadata *a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v8 = *v4;
  v9 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v79 = &v70 - v10;
  Description = a2[-1].Description;
  v11 = *(Description + 8);
  __chkstk_darwin();
  v83 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  v13 = *(*(v86 - 8) + 64);
  __chkstk_darwin();
  v85 = &v70 - v14;
  v92 = type metadata accessor for Optional();
  v88 = *(v92 - 8);
  v15 = *(v88 + 64);
  __chkstk_darwin();
  v81 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v70 - v17;
  v87 = v4;
  v90 = qword_10059B508;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "[GET] ALL", v21, 2u);
  }

  v98 = Dictionary.init()();
  v22 = *(v8 + 80);
  v23 = *(v8 + 88);
  v24 = sub_1001AB4DC(a2 == &type metadata for WiFiAwarePairedDeviceMetadata);
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  type metadata accessor for CFString(0);
  *(&v97 + 1) = v28;
  *&v96 = kSecMatchLimitAll;
  sub_100085188(&v96, v95);
  v29 = kSecMatchLimitAll;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = v24;
  sub_10007FDF4(v95, v25, v27, isUniquelyReferenced_nonNull_native);

  v31 = v94;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;
  v93 = a2;
  *(&v97 + 1) = &type metadata for Bool;
  v80 = a3;
  LOBYTE(v96) = 1;
  sub_100085188(&v96, v95);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v31;
  sub_10007FDF4(v95, v32, v34, v35);

  v36 = v94;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  *(&v97 + 1) = &type metadata for Bool;
  LOBYTE(v96) = 1;
  sub_100085188(&v96, v95);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v36;
  sub_10007FDF4(v95, v37, v39, v40);

  v41 = v94;
  v42 = v91;
  v43 = sub_10019DBC0(0, v94);
  if (v42)
  {
  }

  else if (v43 && (*&v96 = v43, sub_10005DC58(&qword_10058F4D8, &unk_100492880), result = swift_dynamicCast(), (result & 1) != 0))
  {
    v70 = v41;
    v77 = 0;
    v45 = *&v95[0];
    v91 = *(*&v95[0] + 16);
    if (v91)
    {
      v46 = 0;
      v84 = kSecAttrAccount;
      v78 = kSecValueData;
      v74 = (v88 + 16);
      v73 = (Description + 16);
      v72 = (Description + 56);
      v71 = (Description + 8);
      v47 = (v88 + 8);
      v90 = a1 - 8;
      v88 = (a1 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v48 = v93;
      Description = *&v95[0];
      while (v46 < *(v45 + 2))
      {
        v49 = *&v45[8 * v46 + 32];
        if (v48 == &type metadata for WiFiAwarePairedDeviceMetadata)
        {
          if (!*(v49 + 16))
          {
            goto LABEL_39;
          }

          v53 = *&v45[8 * v46 + 32];

          result = sub_10007CFD0(v84);
          if ((v54 & 1) == 0)
          {
            goto LABEL_40;
          }

          sub_100002B30(*(v49 + 56) + 32 * result, v95);
          sub_100085188(v95, &v96);
          swift_dynamicCast();
          UUID.init(uuidString:)();

          v55 = swift_dynamicCast();
          v56 = *(a1 - 8);
          if (v55)
          {
            v57 = v18;
            v58 = 0;
          }

          else
          {
            v57 = v18;
            v58 = 1;
          }

          (*(*(a1 - 8) + 56))(v57, v58, 1, a1);
        }

        else
        {
          if (*(v49 + 16))
          {
            v50 = *&v45[8 * v46 + 32];

            v51 = sub_10007CFD0(v84);
            if (v52)
            {
              sub_100002B30(*(v49 + 56) + 32 * v51, &v96);
            }

            else
            {
              v96 = 0u;
              v97 = 0u;
            }
          }

          else
          {
            v96 = 0u;
            v97 = 0u;
          }

          sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
          v59 = swift_dynamicCast();
          v56 = *(a1 - 8);
          (*(v56 + 56))(v18, v59 ^ 1u, 1, a1);
        }

        v60 = *(v56 + 48);
        if (v60(v18, 1, a1) != 1 && *(v49 + 16) && (v61 = sub_10007CFD0(v78), (v62 & 1) != 0) && (sub_100002B30(*(v49 + 56) + 32 * v61, &v96), (swift_dynamicCast() & 1) != 0))
        {
          v75 = *(&v95[0] + 1);
          v76 = *&v95[0];
          v63 = v77;
          sub_10019ED60(*&v95[0], *(&v95[0] + 1));
          if (v63)
          {

            sub_1000124C8(v76, v75);

            return (*v47)(v18, v92);
          }

          v77 = 0;
          v64 = v81;
          (*v74)(v81, v18, v92);
          result = v60(v64, 1, a1);
          if (result == 1)
          {
            goto LABEL_41;
          }

          v65 = v79;
          v66 = v83;
          v48 = v93;
          (*v73)(v79, v83, v93);
          (*v72)(v65, 0, 1, v48);
          type metadata accessor for Dictionary();
          Dictionary.subscript.setter();
          sub_1000124C8(v76, v75);
          (*v71)(v66, v48);
        }

        else
        {

          v48 = v93;
        }

        ++v46;
        result = (*v47)(v18, v92);
        v45 = Description;
        if (v91 == v46)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    else
    {
LABEL_32:

      return v98;
    }
  }

  else
  {

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Internal Error while accessing Keychain", v69, 2u);
    }

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t WiFiAwarePairedDevicesStore.addPairedDevice(for:metadata:keyStoreID:storageClass:lifetime:client:)(uint64_t *a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v257 = a6;
  v268 = a3;
  v274 = a1;
  v13 = type metadata accessor for WiFiAwareKeychainError(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin();
  v252 = &v234[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v260 = &v234[-v16];
  __chkstk_darwin();
  v259 = &v234[-v17];
  v18 = *(type metadata accessor for PairedDeviceXPCDelegate(0) - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v249 = &v234[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v256 = type metadata accessor for Date();
  v255 = *(v256 - 8);
  v21 = *(v255 + 64);
  __chkstk_darwin();
  v254 = &v234[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *(*(sub_10005DC58(&unk_10058F4C0, &unk_100492870) - 8) + 64);
  __chkstk_darwin();
  v261 = &v234[-v24];
  v269 = type metadata accessor for WiFiAwarePairedDevice();
  v271 = *(v269 - 1);
  v25 = *(v271 + 64);
  __chkstk_darwin();
  v251 = &v234[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v250 = &v234[-v27];
  __chkstk_darwin();
  v29 = &v234[-v28];
  __chkstk_darwin();
  v263 = &v234[-v30];
  __chkstk_darwin();
  v262 = &v234[-v31];
  __chkstk_darwin();
  v253 = &v234[-v32];
  __chkstk_darwin();
  v272 = &v234[-v33];
  __chkstk_darwin();
  v265 = &v234[-v34];
  v35 = type metadata accessor for UUID();
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v38 = &v234[-v37];
  v39 = __chkstk_darwin();
  v45 = &v234[-v44];
  v273 = a5;
  if (a5 == 2)
  {
    v245 = v40;
    v240 = v39;
    v241 = v38;
    v237 = v42;
    v238 = v41;
    v239 = v18;
    v46 = a4;
    v47 = v8;
    if (a7 != 0.0)
    {
      goto LABEL_10;
    }

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = a7;
      v56 = "Invalid Lifetime: %f for Temporary StorageClass";
      v57 = v54;
      v58 = v53;
      v59 = v55;
      v60 = 12;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v58, v57, v56, v59, v60);
    }

LABEL_21:

    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
    swift_allocError();
LABEL_31:
    swift_storeEnumTagMultiPayload();
    goto LABEL_32;
  }

  if (a5 != 1)
  {
    v53 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      v56 = "Invalid StorageClass";
      v57 = v85;
      v58 = v53;
      v59 = v86;
      v60 = 2;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v245 = v40;
  v240 = v39;
  v241 = v38;
  v237 = v42;
  v238 = v41;
  v239 = v18;
  v46 = a4;
  v47 = v8;
  if (a7 != 0.0)
  {
    v48 = v43;
    v258 = v35;
    v270 = v46;
    v49 = v29;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134218240;
      *(v52 + 4) = a7;
      *(v52 + 12) = 2048;
      *(v52 + 14) = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Invalid Lifetime: %f for Permanent StorageClass, Expecting %f", v52, 0x16u);
    }

    v29 = v49;
    v46 = v270;
    v35 = v258;
    v43 = v48;
  }

LABEL_10:
  v270 = v46;
  v247 = v13;
  v61 = qword_10059B508;
  v62 = *(v43 + 16);
  v248 = v43 + 16;
  v258 = v62;
  v63 = v43;
  (v62)(v45);
  v64 = v268;
  sub_1000B7880(v268, v277);

  v244 = v61;
  v65 = Logger.logObject.getter();
  v66 = v64;
  v67 = static os_log_type_t.default.getter();
  sub_1000B7220(v66);

  v246 = v65;
  v68 = os_log_type_enabled(v65, v67);
  v266 = v47;
  v267 = a2;
  v236 = v29;
  v242 = v63;
  if (v68)
  {
    v69 = swift_slowAlloc();
    *&v277[0] = swift_slowAlloc();
    *v69 = 136315906;
    v70 = WiFiAwarePairedDeviceMetadata.description.getter();
    v72 = sub_100002320(v70, v71, v277);
    v235 = v67;
    v73 = v72;

    *(v69 + 4) = v73;
    *(v69 + 12) = 2080;
    if (v273 == 2)
    {
      v74 = 0x7261726F706D6554;
    }

    else
    {
      v74 = 0x6E656E616D726550;
    }

    if (v273 == 2)
    {
      v75 = 0xE900000000000079;
    }

    else
    {
      v75 = 0xE900000000000074;
    }

    v76 = sub_100002320(v74, v75, v277);

    *(v69 + 14) = v76;
    *(v69 + 22) = 2080;
    sub_1001AB660(&qword_100597520, &type metadata accessor for UUID);
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    v79 = v78;
    v80 = *(v63 + 8);
    v81 = v35;
    v243 = v80;
    v80(v45, v35);
    v82 = sub_100002320(v77, v79, v277);

    *(v69 + 24) = v82;
    *(v69 + 32) = 2080;
    v83 = v270;
    *(v69 + 34) = sub_100002320(v274, v267, v277);
    v84 = v246;
    _os_log_impl(&_mh_execute_header, v246, v235, "[ADD] Paired device with metdata %s, %s storage class and pairingKeyStoreID %s for %s", v69, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v87 = *(v63 + 8);
    v81 = v35;
    v243 = v87;
    v87(v45, v35);
    v83 = v270;
  }

  if ((sub_1001A4168(v83) & 1) == 0)
  {
    v95 = v83;
    v96 = v245;
    v97 = v81;
    v258(v245, v95, v81);
    v98 = v267;

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v273 = swift_slowAlloc();
      *&v277[0] = v273;
      *v101 = 136315394;
      sub_1001AB660(&qword_100597520, &type metadata accessor for UUID);
      v102 = dispatch thunk of CustomStringConvertible.description.getter();
      v104 = v103;
      v243(v96, v97);
      v105 = sub_100002320(v102, v104, v277);

      *(v101 + 4) = v105;
      *(v101 + 12) = 2080;
      *(v101 + 14) = sub_100002320(v274, v98, v277);
      _os_log_impl(&_mh_execute_header, v99, v100, "PairingKeyStoreID %s does not exist for %s", v101, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v243(v96, v81);
    }

    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
    swift_allocError();
    v53 = v106;
    v258(v106, v95, v97);
    goto LABEL_31;
  }

  v88 = v273;
  v89 = v264;
  v90 = WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(v274, v267, v273, 0);
  v91 = v89;
  if (v89)
  {
    *&v277[0] = v89;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    v92 = v259;
    swift_dynamicCast();
    v93 = v260;
    swift_storeEnumTagMultiPayload();
    v53 = sub_1001AAE20(v92, v93);
    sub_1001AB714(v93, type metadata accessor for WiFiAwareKeychainError);
    sub_1001AB714(v92, type metadata accessor for WiFiAwareKeychainError);
    if ((v53 & 1) == 0)
    {
LABEL_32:
      swift_willThrow();
      return v53;
    }

    v91 = 0;
    v94 = _swiftEmptyArrayStorage;
  }

  else
  {
    v94 = v90;
  }

  __chkstk_darwin();
  *&v234[-16] = v83;
  *&v234[-8] = v88;
  v108 = v261;
  sub_10019BF58(sub_1001AC5D4, v94, v261);
  if ((*(v271 + 48))(v108, 1, v269) == 1)
  {
    v264 = v91;
    sub_100016290(v108, &unk_10058F4C0, &unk_100492870);
    v109 = sub_1001AB830(v94);
    if ((v110 & 1) == 0)
    {
      v53 = v109;
      if (v109)
      {
        v111 = v240;
        v112 = v258;
        v258(v240, v83, v81);
        if (v88 != 2)
        {
          a7 = 0.0;
        }

        v261 = v94;
        v113 = v236;
        v112(v236, v111, v81);
        v114 = v269;
        *(v113 + v269[5]) = v53;
        *(v113 + v114[7]) = v88;
        *(v113 + v114[8]) = a7;
        *(v113 + v114[10]) = v257;
        *(v113 + v114[6]) = 1;
        v115 = v113 + v114[9];
        Date.init()();
        v116 = v81;
        v273 = v242 + 8;
        v243(v111, v81);
        sub_10005DC58(&qword_10058F4E0, &unk_100482FD0);
        v117 = *(v271 + 72);
        v118 = (*(v271 + 80) + 32) & ~*(v271 + 80);
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_100480F40;
        v120 = v113;
        v121 = v261;
        sub_1001ABBF0(v120, v119 + v118, type metadata accessor for WiFiAwarePairedDevice);
        *&v277[0] = v121;

        sub_100235590(v119);
        if (*(v121 + 2))
        {
          v122 = sub_10005DC58(&qword_10058F4E8, &qword_100492890);
          sub_1001ABAAC(&qword_10058F4F0, &qword_10058F4F8);
          sub_1001ABAAC(&qword_10058F500, &qword_10058F508);
          v123 = v264;
          sub_1001A4224(v277, v274, v267, 0, 2u, v122);
          v124 = v123;
          if (v123)
          {

LABEL_53:

            goto LABEL_116;
          }
        }

        else
        {
          v146 = sub_10005DC58(&qword_10058F4E8, &qword_100492890);
          sub_1001ABAAC(&qword_10058F4F0, &qword_10058F4F8);
          sub_1001ABAAC(&qword_10058F500, &qword_10058F508);
          v147 = v264;
          sub_1001A4224(v277, v274, v267, 0, 1u, v146);
          v124 = v147;

          if (v147)
          {
            goto LABEL_53;
          }
        }

        v173 = *(v268 + 3);
        v277[2] = *(v268 + 2);
        v277[3] = v173;
        v278 = v268[8];
        v174 = *(v268 + 1);
        v277[0] = *v268;
        v277[1] = v174;
        v175 = UUID.uuidString.getter();
        v177 = v176;
        sub_1001ABB48();
        sub_1001ABB9C();
        sub_1001A4224(v277, v175, v177, 1, 1u, &type metadata for WiFiAwarePairedDeviceMetadata.Kind);
        if (v124)
        {

          *&v277[0] = v124;
          swift_errorRetain();
          sub_10005DC58(&qword_10058C830, &qword_1004821F0);
          v178 = v252;
          swift_dynamicCast();
          if (swift_getEnumCaseMultiPayload())
          {

            sub_1001AB714(v178, type metadata accessor for WiFiAwareKeychainError);
            v53 = v238;
            v179 = v81;
            v258(v238, v83, v81);
            swift_errorRetain();
            v180 = Logger.logObject.getter();
            v181 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v180, v181))
            {
              v182 = swift_slowAlloc();
              v183 = swift_slowAlloc();
              v274 = swift_slowAlloc();
              *&v277[0] = v274;
              *v182 = 136315394;
              sub_1001AB660(&qword_100597520, &type metadata accessor for UUID);
              v184 = dispatch thunk of CustomStringConvertible.description.getter();
              v186 = v185;
              v243(v53, v179);
              v187 = sub_100002320(v184, v186, v277);

              *(v182 + 4) = v187;
              *(v182 + 12) = 2112;
              swift_errorRetain();
              v188 = _swift_stdlib_bridgeErrorToNSError();
              *(v182 + 14) = v188;
              *v183 = v188;
              _os_log_impl(&_mh_execute_header, v180, v181, "Failed to add metadata for %s: %@", v182, 0x16u);
              sub_100016290(v183, &qword_10058B780, &qword_100480AC0);

              v53 = v274;
              sub_100002A00(v274);
            }

            else
            {

              v243(v53, v81);
            }

            goto LABEL_115;
          }

          if (*v178 != -25299)
          {

LABEL_115:
            swift_willThrow();
LABEL_116:
            v164 = &v268;
LABEL_117:
            sub_1001AB714(*(v164 - 32), type metadata accessor for WiFiAwarePairedDevice);
            return v53;
          }

          v204 = v237;
          v205 = v81;
          v258(v237, v83, v81);
          v206 = Logger.logObject.getter();
          v207 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v206, v207))
          {
            v208 = swift_slowAlloc();
            v272 = swift_slowAlloc();
            *&v277[0] = v272;
            *v208 = 136315138;
            sub_1001AB660(&qword_100597520, &type metadata accessor for UUID);
            v209 = dispatch thunk of CustomStringConvertible.description.getter();
            v211 = v210;
            v243(v204, v205);
            v212 = sub_100002320(v209, v211, v277);

            *(v208 + 4) = v212;
            _os_log_impl(&_mh_execute_header, v206, v207, "Metadata already exists for %s", v208, 0xCu);
            sub_100002A00(v272);

            v189 = v274;

            goto LABEL_102;
          }

          v243(v204, v116);
        }

        else
        {
        }

        v189 = v274;
LABEL_102:
        Strong = swift_weakLoadStrong();
        v191 = v236;
        if (!Strong || (LongTermPairingKeyStore.incrementUsageCount(for:)(v236), v193 = v192, , (v193 & 1) != 0))
        {

          v194 = v191;
          v195 = v251;
          sub_1001ABBF0(v194, v251, type metadata accessor for WiFiAwarePairedDevice);
          v196 = v267;

          v197 = Logger.logObject.getter();
          v198 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v197, v198))
          {
            v199 = swift_slowAlloc();
            *&v277[0] = swift_slowAlloc();
            *v199 = 136315394;
            v200 = WiFiAwarePairedDevice.description.getter();
            v202 = v201;
            sub_1001AB714(v195, type metadata accessor for WiFiAwarePairedDevice);
            v203 = sub_100002320(v200, v202, v277);

            *(v199 + 4) = v203;
            *(v199 + 12) = 2080;
            *(v199 + 14) = sub_100002320(v189, v196, v277);
            _os_log_impl(&_mh_execute_header, v197, v198, "Failed to increment usage count for %s for %s", v199, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            sub_1001AB714(v195, type metadata accessor for WiFiAwarePairedDevice);
          }

          sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
          v53 = v247;
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          goto LABEL_115;
        }

        v213 = v250;
        sub_1001ABBF0(v191, v250, type metadata accessor for WiFiAwarePairedDevice);
        v214 = v267;

        v215 = Logger.logObject.getter();
        v216 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v215, v216))
        {
          v217 = swift_slowAlloc();
          *&v277[0] = swift_slowAlloc();
          *v217 = 136315394;
          v218 = WiFiAwarePairedDevice.description.getter();
          v219 = v213;
          v221 = v220;
          sub_1001AB714(v219, type metadata accessor for WiFiAwarePairedDevice);
          v222 = sub_100002320(v218, v221, v277);

          *(v217 + 4) = v222;
          *(v217 + 12) = 2080;
          v223 = v214;
          *(v217 + 14) = sub_100002320(v274, v214, v277);
          _os_log_impl(&_mh_execute_header, v215, v216, "Successfully added new paired Device %s for %s", v217, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v224 = v213;
          v223 = v214;

          sub_1001AB714(v224, type metadata accessor for WiFiAwarePairedDevice);
        }

        v225 = qword_10058F498;
        v226 = v266;
        swift_beginAccess();
        v227 = *(v226 + v225);
        if (*(v227 + 16))
        {

          v228 = v223;
          v229 = sub_1000102E8(v274, v223);
          if (v230)
          {
            v231 = *(*(v227 + 56) + 8 * v229);

            v232 = *(v231 + 16);
            if (v232)
            {
              v233 = 0;
              v149 = v249;
              while (v233 < *(v231 + 16))
              {
                sub_1001ABBF0(v231 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v233, v149, type metadata accessor for PairedDeviceXPCDelegate);
                sub_1001A34B0(v149, v236, v268, v266, v274, v228);
                ++v233;
                sub_1001AB714(v149, type metadata accessor for PairedDeviceXPCDelegate);
                if (v232 == v233)
                {
                  goto LABEL_128;
                }
              }

              goto LABEL_140;
            }
          }

LABEL_128:
        }

        v172 = v236;
        goto LABEL_94;
      }
    }

    v140 = v267;

    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      *&v277[0] = v144;
      *v143 = 136315138;
      *(v143 + 4) = sub_100002320(v274, v140, v277);
      _os_log_impl(&_mh_execute_header, v141, v142, "Failed to assign new deviceID for %s", v143, 0xCu);
      sub_100002A00(v144);
    }

    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
    v53 = v247;
    swift_allocError();
    goto LABEL_31;
  }

  sub_1001ABCD0(v108, v265, type metadata accessor for WiFiAwarePairedDevice);
  v125 = v241;
  v258(v241, v83, v81);
  v126 = v267;

  v127 = v83;
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v128, v129))
  {
    LODWORD(v268) = v129;
    v264 = v91;
    v261 = v94;
    v130 = swift_slowAlloc();
    *&v277[0] = swift_slowAlloc();
    *v130 = 136315906;
    sub_1001AB660(&qword_100597520, &type metadata accessor for UUID);
    v131 = dispatch thunk of CustomStringConvertible.description.getter();
    v133 = v132;
    v243(v125, v81);
    v134 = sub_100002320(v131, v133, v277);

    *(v130 + 4) = v134;
    *(v130 + 12) = 2080;
    *(v130 + 14) = sub_100002320(v274, v126, v277);
    *(v130 + 22) = 2080;
    v135 = v265;
    swift_beginAccess();
    v136 = *&v135[v269[7]];
    if (v136)
    {
      v137 = v273;
      if (v136 == 2)
      {
        v138 = 0x7261726F706D6554;
        v139 = 0xE900000000000079;
      }

      else if (v136 == 1)
      {
        v138 = 0x6E656E616D726550;
        v139 = 0xE900000000000074;
      }

      else
      {
        v139 = 0xE700000000000000;
        v138 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v139 = 0xE400000000000000;
      v138 = 1701736270;
      v137 = v273;
    }

    v148 = sub_100002320(v138, v139, v277);

    *(v130 + 24) = v148;
    *(v130 + 32) = 1024;
    v145 = v269;
    v53 = v265;
    *(v130 + 34) = v265[v269[6]];
    _os_log_impl(&_mh_execute_header, v128, v268, "PairingKeyStoreID %s already exists for %s with %s storage class [isValid: %{BOOL}d]", v130, 0x26u);
    swift_arrayDestroy();

    v127 = v270;
    v94 = v261;
    v91 = v264;
  }

  else
  {

    v243(v125, v81);
    v145 = v269;
    v53 = v265;
    v137 = v273;
  }

  swift_beginAccess();
  if (*(v53 + v145[6]))
  {

    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1001AB714(v53, type metadata accessor for WiFiAwarePairedDevice);
    return v53;
  }

  v149 = v267;
  v150 = v234;
  __chkstk_darwin();
  *&v234[-16] = v127;
  *&v234[-8] = v137;
  v151 = sub_10019C124(sub_1001ABC58, &v234[-32], v94, type metadata accessor for WiFiAwarePairedDevice);
  v268 = v91;
  v264 = v234;
  if (v152)
  {
    v153 = *(v94 + 16);
    v154 = v153;
    v155 = v269;
    goto LABEL_66;
  }

  v154 = v151;
  v153 = v151 + 1;
  if (__OFADD__(v151, 1))
  {
    __break(1u);
LABEL_140:
    __break(1u);

    result = sub_1001AB714(v149, type metadata accessor for PairedDeviceXPCDelegate);
    __break(1u);
    return result;
  }

  v155 = v94 + 16;
  v156 = *(v94 + 16);
  v157 = v272;
  if (v153 == v156)
  {
LABEL_64:
    if (v153 < v154)
    {
      goto LABEL_135;
    }

    v149 = v267;
    v156 = &v280;
    v155 = v269;
    if (v154 < 0)
    {
      goto LABEL_136;
    }

LABEL_66:
    v156 = v154 - v153;
    v150 = v154;
    if (__OFADD__(v153, v154 - v153))
    {
      goto LABEL_137;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v276 = v94;
    if (!isUniquelyReferenced_nonNull_native || v154 > *(v94 + 24) >> 1)
    {
      if (v153 <= v154)
      {
        v159 = v154;
      }

      else
      {
        v159 = v153;
      }

      v94 = sub_1001176CC(isUniquelyReferenced_nonNull_native, v159, 1, v94);
      v276 = v94;
    }

    sub_1001ABD38(v154, v153, 0, type metadata accessor for WiFiAwarePairedDevice);
    v160 = v265;
    swift_beginAccess();
    v160[*(v155 + 24)] = 1;
    v161 = v254;
    Date.init()();
    (*(v255 + 40))(&v160[*(v155 + 36)], v161, v256);
    swift_endAccess();
    v153 = v253;
    sub_1001ABBF0(v160, v253, type metadata accessor for WiFiAwarePairedDevice);
    v154 = *(v94 + 16);
    v156 = *(v94 + 24);
    v150 = v154 + 1;
    if (v154 >= v156 >> 1)
    {
      goto LABEL_138;
    }

    goto LABEL_74;
  }

  while (v153 < v156)
  {
    v165 = (*(v271 + 80) + 32) & ~*(v271 + 80);
    v166 = v94;
    v149 = v94 + v165;
    v94 = *(v271 + 72);
    v150 = v94 * v153;
    sub_1001ABBF0(v149 + v94 * v153, v157, type metadata accessor for WiFiAwarePairedDevice);
    if (static UUID.== infix(_:_:)())
    {
      v167 = *(v272 + v269[7]);
      sub_1001AB714(v272, type metadata accessor for WiFiAwarePairedDevice);
      v156 = v273;
      v168 = v167 == v273;
      v157 = v272;
      if (v168)
      {
        v94 = v166;
        goto LABEL_78;
      }
    }

    else
    {
      sub_1001AB714(v157, type metadata accessor for WiFiAwarePairedDevice);
    }

    if (v153 == v154)
    {
      v94 = v166;
    }

    else
    {
      if (v154 < 0)
      {
        goto LABEL_131;
      }

      v169 = *v155;
      if (v154 >= *v155)
      {
        goto LABEL_132;
      }

      v155 = v94 * v154;
      sub_1001ABBF0(v149 + v94 * v154, v262, type metadata accessor for WiFiAwarePairedDevice);
      if (v153 >= v169)
      {
        goto LABEL_133;
      }

      sub_1001ABBF0(v149 + v150, v263, type metadata accessor for WiFiAwarePairedDevice);
      v94 = v166;
      v170 = swift_isUniquelyReferenced_nonNull_native();
      v157 = v272;
      if ((v170 & 1) == 0)
      {
        v94 = sub_1000C2BA0(v166);
      }

      v171 = v94 + v165;
      sub_1001AC4B4(v263, v171 + v155, type metadata accessor for WiFiAwarePairedDevice);
      v156 = *(v94 + 16);
      if (v153 >= v156)
      {
        goto LABEL_134;
      }

      sub_1001AC4B4(v262, v171 + v150, type metadata accessor for WiFiAwarePairedDevice);
    }

    ++v154;
LABEL_78:
    ++v153;
    v155 = v94 + 16;
    v156 = *(v94 + 16);
    if (v153 == v156)
    {
      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  v94 = sub_1001176CC(v156 > 1, v150, 1, v94);
LABEL_74:
  v53 = v274;
  *(v94 + 16) = v150;
  sub_1001ABCD0(v153, v94 + ((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v154, type metadata accessor for WiFiAwarePairedDevice);
  v275 = v94;
  v162 = sub_10005DC58(&qword_10058F4E8, &qword_100492890);
  sub_1001ABAAC(&qword_10058F4F0, &qword_10058F4F8);
  sub_1001ABAAC(&qword_10058F500, &qword_10058F508);
  v163 = v268;
  sub_1001A4224(&v275, v53, v149, 0, 2u, v162);
  if (v163)
  {

    v164 = &v279;
    goto LABEL_117;
  }

  v172 = v265;
  v53 = *&v265[*(v155 + 20)];
LABEL_94:
  sub_1001AB714(v172, type metadata accessor for WiFiAwarePairedDevice);
  return v53;
}

void sub_1001A34B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v32 = a5;
  v33 = type metadata accessor for PairedDeviceXPCDelegate(0);
  v10 = *(*(v33 - 8) + 64);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(type metadata accessor for WiFiAwarePairedDevice() - 8) + 64);
  __chkstk_darwin();
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AB6A8();
  sub_1001ABBF0(a2, v15, type metadata accessor for WiFiAwarePairedDevice);
  sub_1000B7880(a3, v34);
  v16 = WiFiAwarePairedDeviceInfo.init(device:metadata:)(v15, a3);
  sub_1001ABBF0(a1, v12, type metadata accessor for PairedDeviceXPCDelegate);

  v17 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34[0] = v30;
    *v21 = 136315650;
    *(v21 + 4) = sub_100002320(v32, a6, v34);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v17;
    *v22 = v17;
    *(v21 + 22) = 2080;
    v34[10] = *&v12[*(v33 + 20)];
    swift_unknownObjectRetain();
    v23 = v17;
    sub_10005DC58(&qword_10058F538, &qword_1004928C8);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    sub_1001AB714(v12, type metadata accessor for PairedDeviceXPCDelegate);
    v27 = sub_100002320(v24, v26, v34);

    *(v21 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Sending ADD event to %s for %@ using %s", v21, 0x20u);
    sub_100016290(v22, &qword_10058B780, &qword_100480AC0);

    swift_arrayDestroy();

    a1 = v31;
  }

  else
  {

    sub_1001AB714(v12, type metadata accessor for PairedDeviceXPCDelegate);
  }

  v28 = *(a1 + *(v33 + 20));
  if (v28)
  {
    [v28 pairedDeviceAdded:v17];
  }
}

uint64_t WiFiAwarePairedDevicesStore.authrorizeNewPairedDevice(for:with:storageClass:lifetime:client:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  WiFiAwarePairedDevicesStore.getPairedDeviceMetadata(for:)(a3, v14);
  if (!v6)
  {
    a5 = WiFiAwarePairedDevicesStore.addPairedDevice(for:metadata:keyStoreID:storageClass:lifetime:client:)(a1, a2, v14, a3, a4, a5, a6);
    sub_1000B7220(v14);
  }

  return a5;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WiFiAwarePairedDevicesStore.reauthorizePairedDevice(for:with:)(Swift::String a1, Swift::UInt64 with)
{
  v63 = with;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = type metadata accessor for Date();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  __chkstk_darwin();
  v55 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for WiFiAwarePairedDevice();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v59 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = v50 - v11;
  __chkstk_darwin();
  v13 = v50 - v12;
  __chkstk_darwin();
  v15 = v50 - v14;
  __chkstk_darwin();
  v17 = v50 - v16;
  __chkstk_darwin();
  v19 = v50 - v18;
  __chkstk_darwin();
  v21 = v50 - v20;
  v58 = countAndFlagsBits;
  v22 = v61;
  v23 = WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(countAndFlagsBits, object, 1, 1);
  if (v22)
  {
    return;
  }

  v61 = v19;
  v53 = object;
  v54 = v15;
  v50[0] = v13;
  v50[1] = 0;
  v51 = v21;
  v52 = v2;
  v25 = v23 + 16;
  v24 = *(v23 + 16);
  v26 = v23;

  v27 = v62;
  if (!v24)
  {
LABEL_7:
    swift_bridgeObjectRelease_n();
    v30 = v53;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v64 = v34;
      *v33 = 134218242;
      *(v33 + 4) = v63;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_100002320(v58, v30, &v64);
      _os_log_impl(&_mh_execute_header, v31, v32, "No device found with ID %llu for %s", v33, 0x16u);
      sub_100002A00(v34);
    }

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v28 = 0;
  while (1)
  {
    v29 = *v25;
    if (v28 >= *v25)
    {
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
      goto LABEL_50;
    }

    v19 = ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    sub_1001ABBF0(&v19[v26 + v15 * v28], v17, type metadata accessor for WiFiAwarePairedDevice);
    if (*&v17[*(v27 + 20)] == v63)
    {
      break;
    }

    ++v28;
    sub_1001AB714(v17, type metadata accessor for WiFiAwarePairedDevice);
    if (v24 == v28)
    {
      goto LABEL_7;
    }
  }

  v24 = type metadata accessor for WiFiAwarePairedDevice;
  v35 = v61;
  sub_1001ABCD0(v17, v61, type metadata accessor for WiFiAwarePairedDevice);
  sub_1001ABCD0(v35, v51, type metadata accessor for WiFiAwarePairedDevice);
  v29 = *(v26 + 16);
  if (!v29)
  {
LABEL_14:
    v38 = *(v26 + 16);
    v8 = v38;
    v25 = v58;
    goto LABEL_20;
  }

  v8 = 0;
  v24 = &v19[v15];
  v36 = &v19[*(v27 + 20)];
  v37 = v63;
  while (*&v36[v26] != v63)
  {
    v36 = &v15[v36];
    ++v8;
    v24 = &v15[v24];
    if (v29 == v8)
    {
      goto LABEL_14;
    }
  }

  v38 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_54;
  }

  v39 = v54;
  if (v38 != v29)
  {
    while (v38 < v29)
    {
      v61 = v26;
      v46 = v24 + v26;
      v47 = v37;
      v48 = v39;
      sub_1001ABBF0(v46, v39, type metadata accessor for WiFiAwarePairedDevice);
      v28 = *(v48 + *(v62 + 20));
      v49 = v48;
      v37 = v47;
      sub_1001AB714(v49, type metadata accessor for WiFiAwarePairedDevice);
      if (v28 == v47)
      {
        v39 = v54;
        v26 = v61;
      }

      else
      {
        if (v38 == v8)
        {
          v39 = v54;
          v26 = v61;
        }

        else
        {
          v26 = v61;
          if (v8 < 0)
          {
            goto LABEL_46;
          }

          v28 = *v25;
          if (v8 >= *v25)
          {
            goto LABEL_47;
          }

          v25 = v8 * v15;
          sub_1001ABBF0(&v19[v61 + v8 * v15], v60, type metadata accessor for WiFiAwarePairedDevice);
          if (v38 >= v28)
          {
            goto LABEL_48;
          }

          sub_1001ABBF0(v24 + v26, v59, type metadata accessor for WiFiAwarePairedDevice);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1000C2BA0(v26);
          }

          sub_1001AC4B4(v59, &v19[v26 + v25], type metadata accessor for WiFiAwarePairedDevice);
          v29 = *(v26 + 16);
          if (v38 >= v29)
          {
            goto LABEL_49;
          }

          sub_1001AC4B4(v60, v24 + v26, type metadata accessor for WiFiAwarePairedDevice);
          v39 = v54;
        }

        ++v8;
      }

      ++v38;
      v25 = v26 + 16;
      v29 = *(v26 + 16);
      v24 = &v15[v24];
      if (v38 == v29)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_45;
  }

  v38 = *(v26 + 16);
LABEL_18:
  if (v38 < v8)
  {
    __break(1u);
  }

  else
  {
    v25 = v58;
    if ((v8 & 0x8000000000000000) == 0)
    {
LABEL_20:
      v29 = v8 - v38;
      v28 = v8;
      if (!__OFADD__(v38, v8 - v38))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v26;
        if (!isUniquelyReferenced_nonNull_native || v8 > *(v26 + 24) >> 1)
        {
          if (v38 <= v8)
          {
            v41 = v8;
          }

          else
          {
            v41 = v38;
          }

          v26 = sub_1001176CC(isUniquelyReferenced_nonNull_native, v41, 1, v26);
          v65 = v26;
        }

        sub_1001ABD38(v8, v38, 0, type metadata accessor for WiFiAwarePairedDevice);
        v42 = v62;
        v43 = v51;
        v51[*(v62 + 24)] = 1;
        v44 = v55;
        Date.init()();
        (*(v56 + 40))(v43 + *(v42 + 36), v44, v57);
        v8 = v50[0];
        sub_1001ABBF0(v43, v50[0], type metadata accessor for WiFiAwarePairedDevice);
        v24 = *(v26 + 16);
        v29 = *(v26 + 24);
        v28 = v24 + 1;
        if (v24 < v29 >> 1)
        {
          goto LABEL_28;
        }

        goto LABEL_51;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      v26 = sub_1001176CC(v29 > 1, v28, 1, v26);
LABEL_28:
      *(v26 + 16) = v28;
      sub_1001ABCD0(v8, &v19[v26 + v24 * v15], type metadata accessor for WiFiAwarePairedDevice);
      v64 = v26;
      v45 = sub_10005DC58(&qword_10058F4E8, &qword_100492890);
      sub_1001ABAAC(&qword_10058F4F0, &qword_10058F4F8);
      sub_1001ABAAC(&qword_10058F500, &qword_10058F508);
      sub_1001A4224(&v64, v25, v53, 0, 2u, v45);

      sub_1001AB714(v51, type metadata accessor for WiFiAwarePairedDevice);
      return;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_1001A4168(uint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    v2 = LongTermPairingKeyStore.loadPairedPeersWithIDs()();

    __chkstk_darwin();
    v5[2] = a1;
    v3 = sub_100129748(sub_1001AC51C, v5, v2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1001A4224(uint64_t a1, uint64_t a2, unint64_t a3, char a4, unsigned __int8 a5, uint64_t *a6)
{
  v12 = *(*v6 + 80);
  v13 = *(*v6 + 88);
  v14 = sub_1001AB774(a2, a3, a4 & 1);
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = sub_10019E970(a1, a6);
  if (v7)
  {
  }

  else
  {
    v32 = &type metadata for Data;
    *&v31 = v17;
    *(&v31 + 1) = v18;
    sub_100085188(&v31, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v14;
    sub_10007FDF4(v30, v28, v16, isUniquelyReferenced_nonNull_native);

    sub_10019DBC0(a5, v33);

    swift_unknownObjectRelease();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *&v31 = swift_slowAlloc();
      *v22 = 136315394;
      v23 = 5522759;
      v24 = 0x455441445055;
      if (a5 != 2)
      {
        v24 = 0x45564F4D4552;
      }

      if (a5)
      {
        v23 = 4473921;
      }

      if (a5 <= 1u)
      {
        v25 = v23;
      }

      else
      {
        v25 = v24;
      }

      if (a5 <= 1u)
      {
        v26 = 0xE300000000000000;
      }

      else
      {
        v26 = 0xE600000000000000;
      }

      v27 = sub_100002320(v25, v26, &v31);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_100002320(a2, a3, &v31);
      _os_log_impl(&_mh_execute_header, v20, v21, "Successfully performed %s operation for: %s", v22, 0x16u);
      swift_arrayDestroy();
    }
  }
}

uint64_t WiFiAwarePairedDevicesStore.updatePairedDeviceName(for:deviceID:to:storageClass:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v61 = a4;
  v62 = a5;
  v84 = a3;
  v60 = *(type metadata accessor for PairedDeviceXPCDelegate(0) - 8);
  v11 = *(v60 + 64);
  __chkstk_darwin();
  v59 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for WiFiAwarePairedDevice();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v54[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  __chkstk_darwin();
  v20 = &v54[-v19];
  if (a6 != 1)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Updates to temporary paired devices are not supported", v30, 2u);
    }

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v56 = v18;
  v63 = a1;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v57 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v58 = v7;
    v25 = v24;
    v26 = swift_slowAlloc();
    *&v76 = v26;
    *v25 = 134218242;
    *(v25 + 4) = v84;
    *(v25 + 12) = 2080;
    v55 = v22;
    v27 = v63;
    *(v25 + 14) = sub_100002320(v63, a2, &v76);
    _os_log_impl(&_mh_execute_header, v21, v55, "Updating paired device with ID %llu for %s", v25, 0x16u);
    sub_100002A00(v26);

    v7 = v58;
  }

  else
  {

    v27 = v63;
  }

  v32 = v64;
  result = WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(v27, a2, 1, 1);
  if (v32)
  {
    return result;
  }

  v33 = result;
  v64 = a2;
  v58 = v7;
  v34 = *(result + 16);
  if (!v34)
  {
  }

  v35 = 0;
  v36 = v67;
  while (1)
  {
    if (v35 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    sub_1001ABBF0(v33 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v35, v17, type metadata accessor for WiFiAwarePairedDevice);
    if (*&v17[*(v13 + 20)] == v84)
    {
      break;
    }

    ++v35;
    sub_1001AB714(v17, type metadata accessor for WiFiAwarePairedDevice);
    if (v34 == v35)
    {
    }
  }

  v37 = v17;
  v38 = v56;
  sub_1001ABCD0(v37, v56, type metadata accessor for WiFiAwarePairedDevice);
  v39 = v57;
  sub_1001ABCD0(v38, v57, type metadata accessor for WiFiAwarePairedDevice);
  v40 = v58;
  WiFiAwarePairedDevicesStore.getPairedDeviceMetadata(for:)(v39, v81);
  v83 = v81[0];
  v78 = v81[2];
  v79 = v81[3];
  v80 = v82;
  v76 = v81[0];
  v77 = v81[1];
  v41 = v62;

  sub_100016290(&v83, &unk_100599FD0, &qword_100482530);
  *&v76 = v61;
  *(&v76 + 1) = v41;
  v74[2] = v78;
  v74[3] = v79;
  v75 = v80;
  v74[0] = v76;
  v74[1] = v77;
  v71 = v78;
  v72 = v79;
  v73 = v80;
  v69 = v76;
  v70 = v77;
  sub_1000B7880(v74, v67);
  v42 = UUID.uuidString.getter();
  v44 = v43;
  sub_1001ABB48();
  sub_1001ABB9C();
  sub_1001A4224(&v69, v42, v44, 1, 2u, &type metadata for WiFiAwarePairedDeviceMetadata.Kind);
  v67[2] = v71;
  v67[3] = v72;
  v68 = v73;
  v67[0] = v69;
  v67[1] = v70;
  sub_1000B7220(v67);

  v45 = qword_10058F498;
  swift_beginAccess();
  v46 = *(v40 + v45);
  if (!*(v46 + 16))
  {
LABEL_22:
    v65[2] = v78;
    v65[3] = v79;
    v66 = v80;
    v65[0] = v76;
    v65[1] = v77;
    sub_1000B7220(v65);
    return sub_1001AB714(v39, type metadata accessor for WiFiAwarePairedDevice);
  }

  v47 = *(v40 + v45);

  v48 = sub_1000102E8(v63, v64);
  if ((v49 & 1) == 0 || (v50 = *(*(v46 + 56) + 8 * v48), , , (v51 = *(v50 + 16)) == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v52 = 0;
  v36 = v59;
  v53 = v60;
  while (v52 < *(v50 + 16))
  {
    sub_1001ABBF0(v50 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v52, v36, type metadata accessor for PairedDeviceXPCDelegate);
    sub_1001A4C74(v36, v39, &v76, v58, v63, v64);
    ++v52;
    sub_1001AB714(v36, type metadata accessor for PairedDeviceXPCDelegate);
    if (v51 == v52)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);

  result = sub_1001AB714(v36, type metadata accessor for PairedDeviceXPCDelegate);
  __break(1u);
  return result;
}

void sub_1001A4C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v34 = a5;
  v35 = type metadata accessor for PairedDeviceXPCDelegate(0);
  v10 = *(*(v35 - 8) + 64);
  __chkstk_darwin();
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(type metadata accessor for WiFiAwarePairedDevice() - 8) + 64);
  __chkstk_darwin();
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AB6A8();
  sub_1001ABBF0(a2, v15, type metadata accessor for WiFiAwarePairedDevice);
  v16 = *(a3 + 48);
  v37[2] = *(a3 + 32);
  v37[3] = v16;
  v38 = *(a3 + 64);
  v17 = *(a3 + 16);
  v37[0] = *a3;
  v37[1] = v17;
  sub_1000B7880(v37, v36);
  v18 = WiFiAwarePairedDeviceInfo.init(device:metadata:)(v15, v37);
  sub_1001ABBF0(a1, v12, type metadata accessor for PairedDeviceXPCDelegate);

  v19 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = a1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36[0] = v32;
    *v23 = 136315650;
    *(v23 + 4) = sub_100002320(v34, a6, v36);
    *(v23 + 12) = 2112;
    *(v23 + 14) = v19;
    *v24 = v19;
    *(v23 + 22) = 2080;
    v39 = *&v12[*(v35 + 20)];
    swift_unknownObjectRetain();
    v25 = v19;
    sub_10005DC58(&qword_10058F538, &qword_1004928C8);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_1001AB714(v12, type metadata accessor for PairedDeviceXPCDelegate);
    v29 = sub_100002320(v26, v28, v36);

    *(v23 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Sending CHANGED event to %s for %@ using %s", v23, 0x20u);
    sub_100016290(v24, &qword_10058B780, &qword_100480AC0);

    swift_arrayDestroy();

    a1 = v33;
  }

  else
  {

    sub_1001AB714(v12, type metadata accessor for PairedDeviceXPCDelegate);
  }

  v30 = *(a1 + *(v35 + 20));
  if (v30)
  {
    [v30 pairedDeviceChanged:v19];
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WiFiAwarePairedDevicesStore.deauthorizePairedDevice(for:with:remove:)(Swift::String a1, Swift::UInt64 with, Swift::Bool remove)
{
  v5 = v4;
  v6 = v3;
  v133 = remove;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v125 = *v3;
  v121 = *(type metadata accessor for PairedDeviceXPCDelegate(0) - 8);
  v10 = *(v121 + 64);
  __chkstk_darwin();
  v120 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for UUID();
  v123 = *(v124 - 8);
  v12 = *(v123 + 64);
  __chkstk_darwin();
  v122 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for WiFiAwarePairedDevice();
  v14 = *(v135 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v126 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v128 = (&v115 - v17);
  __chkstk_darwin();
  v132 = &v115 - v18;
  __chkstk_darwin();
  v129 = &v115 - v19;
  __chkstk_darwin();
  v21 = &v115 - v20;
  __chkstk_darwin();
  v127 = &v115 - v22;
  __chkstk_darwin();
  v131 = &v115 - v23;
  v24 = qword_10059B508;

  v130 = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v134 = v6;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v119 = v5;
    v29 = countAndFlagsBits;
    v30 = object;
    v31 = v28;
    v32 = swift_slowAlloc();
    *&v138 = v32;
    *v31 = 134218498;
    *(v31 + 4) = with;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_100002320(v29, v30, &v138);
    *(v31 + 22) = 1024;
    *(v31 + 24) = v133;
    _os_log_impl(&_mh_execute_header, v25, v26, "[DEAUTH] Paired device with deviceID %llu for %s [Remove: %{BOOL}d]", v31, 0x1Cu);
    sub_100002A00(v32);

    object = v30;
    countAndFlagsBits = v29;
    v5 = v119;
    v6 = v134;
  }

  v33 = WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(countAndFlagsBits, object, 1, 0);
  if (v5)
  {
    return;
  }

  v34 = v33;
  v118 = 0;
  v117 = countAndFlagsBits;
  v119 = object;
  v36 = (v33 + 16);
  v35 = *(v33 + 16);

  if (!v35)
  {
LABEL_9:

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_10:

    return;
  }

  v37 = 0;
  while (1)
  {
    v38 = *v36;
    if (v37 >= *v36)
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
      goto LABEL_90;
    }

    v26 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v6 = *(v14 + 72);
    sub_1001ABBF0(v34 + v26 + v6 * v37, v21, type metadata accessor for WiFiAwarePairedDevice);
    if (*(v21 + *(v135 + 20)) == with)
    {
      break;
    }

    ++v37;
    sub_1001AB714(v21, type metadata accessor for WiFiAwarePairedDevice);
    if (v35 == v37)
    {
      goto LABEL_9;
    }
  }

  v39 = v127;
  sub_1001ABCD0(v21, v127, type metadata accessor for WiFiAwarePairedDevice);
  v40 = v39;
  v41 = v131;
  sub_1001ABCD0(v40, v131, type metadata accessor for WiFiAwarePairedDevice);
  v140 = 0;
  v42 = v119;
  v43 = v118;
  v44 = WiFiAwarePairedDevicesStore.getPairedDeviceInfo(for:with:matching:)(v117, v119, 1, v41);
  if (v43)
  {
    v127 = v34;

    swift_errorRetain();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v116 = v45;
      v49 = v48;
      v118 = swift_slowAlloc();
      *&v138 = v118;
      *v47 = 136315394;
      *(v47 + 4) = sub_100002320(v117, v42, &v138);
      *(v47 + 12) = 2112;
      swift_errorRetain();
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 14) = v50;
      *v49 = v50;
      v51 = v46;
      v52 = v116;
      _os_log_impl(&_mh_execute_header, v116, v51, "Failed to get paired device info for %s: %@", v47, 0x16u);
      sub_100016290(v49, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v118);
    }

    else
    {
    }

    v116 = 0;
    v34 = v127;
  }

  else
  {
    v116 = v44;
    v140 = v44;
  }

  v118 = 0;
  v38 = *v36;
  if (!*v36)
  {
LABEL_22:
    v14 = *v36;
    v21 = *v36;
    v36 = v134;
    goto LABEL_28;
  }

  v21 = 0;
  v35 = v6 + v26;
  v53 = *(v135 + 20) + v26;
  while (*(v34 + v53) != with)
  {
    v53 += v6;
    ++v21;
    v35 += v6;
    if (v38 == v21)
    {
      goto LABEL_22;
    }
  }

  v127 = with;
  v14 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);

    sub_1001AB714(v26, type metadata accessor for PairedDeviceXPCDelegate);
    __break(1u);
    return;
  }

  v54 = v129;
  if (v14 != v38)
  {
    while (v14 < v38)
    {
      v65 = v34;
      sub_1001ABBF0(v34 + v35, v54, type metadata accessor for WiFiAwarePairedDevice);
      v34 = *(v54 + *(v135 + 20));
      sub_1001AB714(v54, type metadata accessor for WiFiAwarePairedDevice);
      v38 = v127;
      if (v34 == v127)
      {
        v34 = v65;
      }

      else
      {
        if (v14 == v21)
        {
          v34 = v65;
        }

        else
        {
          if (v21 < 0)
          {
            goto LABEL_86;
          }

          v36 = *v36;
          if (v21 >= v36)
          {
            goto LABEL_87;
          }

          v34 = v21 * v6;
          sub_1001ABBF0(v65 + v26 + v21 * v6, v132, type metadata accessor for WiFiAwarePairedDevice);
          if (v14 >= v36)
          {
            goto LABEL_88;
          }

          v36 = v128;
          sub_1001ABBF0(v65 + v35, v128, type metadata accessor for WiFiAwarePairedDevice);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_1000C2BA0(v65);
          }

          v54 = v129;
          v66 = v65 + v26 + v34;
          v34 = v65;
          sub_1001AC4B4(v36, v66, type metadata accessor for WiFiAwarePairedDevice);
          v38 = v65[2];
          if (v14 >= v38)
          {
            goto LABEL_89;
          }

          sub_1001AC4B4(v132, v65 + v35, type metadata accessor for WiFiAwarePairedDevice);
        }

        ++v21;
      }

      ++v14;
      v36 = (v34 + 16);
      v38 = *(v34 + 16);
      v35 += v6;
      if (v14 == v38)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_85;
  }

  v14 = v38;
LABEL_26:
  if (v14 < v21)
  {
    goto LABEL_92;
  }

  v36 = v134;
  if (v21 < 0)
  {
    goto LABEL_93;
  }

LABEL_28:
  v38 = v21 - v14;
  v35 = v21;
  if (__OFADD__(v14, v21 - v14))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v141 = v34;
  if (!isUniquelyReferenced_nonNull_native || v21 > *(v34 + 24) >> 1)
  {
    if (v14 <= v21)
    {
      v56 = v21;
    }

    else
    {
      v56 = v14;
    }

    v34 = sub_1001176CC(isUniquelyReferenced_nonNull_native, v56, 1, v34);
    v141 = v34;
  }

  sub_1001ABD38(v21, v14, 0, type metadata accessor for WiFiAwarePairedDevice);
  v127 = v34;
  v141 = v34;

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  v59 = os_log_type_enabled(v57, v58);
  if (!v133)
  {
    if (v59)
    {
      v67 = swift_slowAlloc();
      *&v138 = swift_slowAlloc();
      *v67 = 136315394;
      v21 = v131;
      v68 = swift_beginAccess();
      v69 = WiFiAwarePairedDevice.description.getter(v68);
      v71 = sub_100002320(v69, v70, &v138);

      *(v67 + 4) = v71;
      v36 = v134;
      *(v67 + 12) = 2080;
      *(v67 + 14) = sub_100002320(v117, v119, &v138);
      _os_log_impl(&_mh_execute_header, v57, v58, "Marking paired device %s as invalid for %s", v67, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v21 = v131;
    }

    v34 = v127;
    swift_beginAccess();
    *(v21 + *(v135 + 24)) = 0;
    sub_1001ABBF0(v21, v126, type metadata accessor for WiFiAwarePairedDevice);
    v35 = *(v34 + 16);
    v38 = *(v34 + 24);
    v14 = v35 + 1;
    if (v35 >= v38 >> 1)
    {
      goto LABEL_94;
    }

    goto LABEL_59;
  }

  if (v59)
  {
    v60 = swift_slowAlloc();
    *&v138 = swift_slowAlloc();
    *v60 = 136315394;
    v21 = v131;
    v61 = swift_beginAccess();
    v62 = WiFiAwarePairedDevice.description.getter(v61);
    v64 = sub_100002320(v62, v63, &v138);

    *(v60 + 4) = v64;
    v36 = v134;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_100002320(v117, v119, &v138);
    _os_log_impl(&_mh_execute_header, v57, v58, "Removing paired device %s for %s", v60, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v21 = v131;
  }

  v34 = v127;
  v72 = v123;
  v73 = v122;
  swift_beginAccess();
  v74 = v124;
  (*(v72 + 16))(v73, v21, v124);
  v75 = v118;
  sub_1001A84B0(v73);
  if (v75)
  {
    (*(v72 + 8))(v73, v74);

    sub_1001AB714(v21, type metadata accessor for WiFiAwarePairedDevice);
  }

  else
  {
    v118 = 0;
    (*(v72 + 8))(v73, v74);
    v76 = v117;
    while (1)
    {
      v127 = v34;
      v77 = *(v34 + 16);

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();

      v80 = os_log_type_enabled(v78, v79);
      if (v77)
      {
        if (v80)
        {
          v81 = swift_slowAlloc();
          *&v138 = swift_slowAlloc();
          *v81 = 136315394;
          v82 = v117;
          v83 = v119;
          *(v81 + 4) = sub_100002320(v117, v119, &v138);
          *(v81 + 12) = 2080;
          v84 = v127;

          v85 = Array.description.getter();
          v87 = v86;

          v88 = sub_100002320(v85, v87, &v138);
          v36 = v134;

          *(v81 + 14) = v88;
          _os_log_impl(&_mh_execute_header, v78, v79, "Updating paired device list for %s to %s", v81, 0x16u);
          swift_arrayDestroy();

          v89 = v125;
        }

        else
        {

          v83 = v119;
          v84 = v127;
          v89 = v125;
          v82 = v117;
        }

        v93 = *(v89 + 80);
        v94 = *(v89 + 88);
        v95 = sub_1001AB774(v82, v83, 0);
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;
        *&v137[0] = v84;

        v99 = sub_10005DC58(&qword_10058F4E8, &qword_100492890);
        sub_1001ABAAC(&qword_10058F4F0, &qword_10058F4F8);
        sub_1001ABAAC(&qword_10058F500, &qword_10058F508);
        v100 = v118;
        v101 = sub_10019E970(v137, v99);
        if (v100)
        {

          sub_1001AB714(v131, type metadata accessor for WiFiAwarePairedDevice);
          goto LABEL_10;
        }

        v103 = v101;
        v104 = v102;

        v139 = &type metadata for Data;
        *&v138 = v103;
        *(&v138 + 1) = v104;
        sub_100085188(&v138, v137);
        v105 = swift_isUniquelyReferenced_nonNull_native();
        v136 = v95;
        sub_10007FDF4(v137, v96, v98, v105);

        sub_10019DBC0(2u, v136);
        v21 = v131;

        v76 = v117;
      }

      else
      {
        if (v80)
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *&v138 = v91;
          *v90 = 136315138;
          v92 = v119;
          *(v90 + 4) = sub_100002320(v76, v119, &v138);
          _os_log_impl(&_mh_execute_header, v78, v79, "No paired devices left for %s. Removing!", v90, 0xCu);
          sub_100002A00(v91);
        }

        else
        {

          v92 = v119;
        }

        v106 = *(v125 + 80);
        v107 = *(v125 + 88);
        v108 = sub_1001AB774(v76, v92, 0);
        v109 = v118;
        sub_10019DBC0(3u, v108);
        if (v109)
        {

          sub_1001AB714(v21, type metadata accessor for WiFiAwarePairedDevice);
          goto LABEL_10;
        }
      }

      swift_unknownObjectRelease();
      v110 = qword_10058F498;
      swift_beginAccess();
      v111 = *(v36 + v110);
      v34 = v121;
      v26 = v120;
      if (!*(v111 + 16))
      {

        goto LABEL_83;
      }

      v112 = *(v36 + v110);

      v113 = sub_1000102E8(v76, v119);
      if ((v114 & 1) == 0)
      {
        break;
      }

      v14 = *(*(v111 + 56) + 8 * v113);

      v35 = *(v14 + 16);
      if (!v35)
      {
        break;
      }

      v6 = 0;
      while (1)
      {
        v38 = *(v14 + 16);
        if (v6 >= v38)
        {
          break;
        }

        sub_1001ABBF0(v14 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v6, v26, type metadata accessor for PairedDeviceXPCDelegate);
        sub_1001A6488(v26, &v140, v36, v76, v119);
        ++v6;
        sub_1001AB714(v26, type metadata accessor for PairedDeviceXPCDelegate);
        if (v35 == v6)
        {
          goto LABEL_82;
        }
      }

LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      v34 = sub_1001176CC(v38 > 1, v14, 1, v34);
LABEL_59:
      v76 = v117;
      *(v34 + 16) = v14;
      sub_1001ABCD0(v126, v34 + v26 + v35 * v6, type metadata accessor for WiFiAwarePairedDevice);
      v141 = v34;
    }

LABEL_82:

LABEL_83:
    sub_1001AB714(v21, type metadata accessor for WiFiAwarePairedDevice);
  }
}

void sub_1001A6488(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for PairedDeviceXPCDelegate(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  if (*a2)
  {
    v32 = a4;
    sub_1001ABBF0(a1, v13, type metadata accessor for PairedDeviceXPCDelegate);
    v15 = v14;

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = v5;
      v19 = v18;
      v20 = swift_slowAlloc();
      v30 = a1;
      v21 = v20;
      v29 = swift_slowAlloc();
      v34 = v29;
      *v19 = 136315650;
      *(v19 + 4) = sub_100002320(v32, a5, &v34);
      *(v19 + 12) = 2112;
      *(v19 + 14) = v15;
      *v21 = v14;
      *(v19 + 22) = 2080;
      v33 = *&v13[*(v10 + 20)];
      swift_unknownObjectRetain();
      v22 = v15;
      sub_10005DC58(&qword_10058F538, &qword_1004928C8);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      sub_1001AB714(v13, type metadata accessor for PairedDeviceXPCDelegate);
      v26 = sub_100002320(v23, v25, &v34);

      *(v19 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "Sending REMOVE event to %s for %@ using %s", v19, 0x20u);
      sub_100016290(v21, &qword_10058B780, &qword_100480AC0);
      a1 = v30;

      swift_arrayDestroy();
    }

    else
    {

      sub_1001AB714(v13, type metadata accessor for PairedDeviceXPCDelegate);
    }

    v27 = *(a1 + *(v10 + 20));
    if (v27)
    {
      [v27 pairedDeviceRemoved:v15];
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WiFiAwarePairedDevicesStore.removeAllPairedDevices(for:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v7 = *(type metadata accessor for WiFiAwarePairedDevice() - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v2;
    v15 = v14;
    v22 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100002320(countAndFlagsBits, object, &v22);
    _os_log_impl(&_mh_execute_header, v11, v12, "[REMOVE] ALL paired devices for %s", v13, 0xCu);
    sub_100002A00(v15);
    v3 = v21;
  }

  v16 = WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(countAndFlagsBits, object, 1, 1);
  if (!v3)
  {
    v17 = v16;
    v18 = *(v16 + 16);
    if (v18)
    {
      v19 = 0;
      while (v19 < *(v17 + 16))
      {
        sub_1001ABBF0(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v10, type metadata accessor for WiFiAwarePairedDevice);
        sub_1001A6A00(v10, v4, countAndFlagsBits, object);
        ++v19;
        sub_1001AB714(v10, type metadata accessor for WiFiAwarePairedDevice);
        if (v18 == v19)
        {
          goto LABEL_8;
        }
      }

      __break(1u);

      sub_1001AB714(v10, type metadata accessor for WiFiAwarePairedDevice);
      __break(1u);
    }

    else
    {
LABEL_8:
    }
  }
}

void sub_1001A6A00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(*(type metadata accessor for WiFiAwarePairedDevice() - 8) + 64);
  v8 = __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + *(v8 + 28));
  v12._countAndFlagsBits = a3;
  v12._object = a4;
  WiFiAwarePairedDevicesStore.deauthorizePairedDevice(for:with:remove:)(v12, v11, 1);
  if (v13)
  {
    sub_1001ABBF0(a1, v10, type metadata accessor for WiFiAwarePairedDevice);

    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28 = 0;
      v17 = v16;
      v26 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      v29 = v18;
      *v17 = 136315650;
      v19 = WiFiAwarePairedDevice.description.getter(v18);
      v21 = v20;
      sub_1001AB714(v10, type metadata accessor for WiFiAwarePairedDevice);
      v22 = sub_100002320(v19, v21, &v29);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100002320(a3, a4, &v29);
      *(v17 + 22) = 2112;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v23;
      v24 = v26;
      *v26 = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to remove %s for %s: %@", v17, 0x20u);
      sub_100016290(v24, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    else
    {

      sub_1001AB714(v10, type metadata accessor for WiFiAwarePairedDevice);
    }
  }
}

uint64_t WiFiAwarePairedDevicesStore.removeAllPairedDevices()()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = type metadata accessor for WiFiAwareKeychainError(0);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_10005DC58(&qword_10058F520, &qword_1004928A0);
  v1[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = *(*(sub_10005DC58(&qword_10058F528, &qword_1004928A8) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v8 = sub_10005DC58(&qword_10058F530, &qword_1004928B0);
  v1[21] = v8;
  v9 = *(v8 - 8);
  v1[22] = v9;
  v10 = *(v9 + 64) + 15;
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_1001A6EDC, v0, 0);
}

void sub_1001A6EDC()
{
  v65 = v0;
  v61 = v0[7];
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[REMOVE] ALL paired devices", v3, 2u);
  }

  v4 = v0[7];

  v5 = qword_10058F498;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = v6 + 64;
  v8 = -1;
  v9 = -1 << *(v6 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v6 + 64);
  v11 = (63 - v9) >> 6;

  v12 = 0;
  v63 = v0;
  v58 = v6;
  while (v10)
  {
    v13 = v12;
LABEL_13:
    v14 = v0[7];
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (*(v6 + 48) + ((v13 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];

    v19._countAndFlagsBits = v18;
    v19._object = v17;
    WiFiAwarePairedDevicesStore.removeAllPairedDevices(for:)(v19);
    if (v20)
    {

      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        log = v21;
        v24 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v64 = v60;
        *v23 = 136315394;
        v25 = sub_100002320(v18, v17, &v64);

        *(v23 + 4) = v25;
        *(v23 + 12) = 2112;
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 14) = v26;
        *v24 = v26;
        _os_log_impl(&_mh_execute_header, log, v22, "Failed to remove ALL paired devices for %s: %@", v23, 0x16u);
        sub_100016290(v24, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v60);

        v6 = v58;
      }

      else
      {
      }
    }

    else
    {
    }

    v12 = v13;
    v0 = v63;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  v28 = v0[7];
  v27 = v0[8];

  v30 = *(v27 + 80);
  v29 = *(v27 + 88);
  v31 = sub_1001AB4DC(0);
  sub_10019DBC0(3u, v31);

  swift_unknownObjectRelease();
  v32 = v0[7];
  v33 = sub_1001AB4DC(1);
  sub_10019DBC0(3u, v33);

  swift_unknownObjectRelease();
  v34 = v0[7];
  if (swift_weakLoadStrong())
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Uninstalling ALL identities from pairing keystore", v37, 2u);
    }

    if (swift_weakLoadStrong())
    {
      LongTermPairingKeyStore.uninstallAllIdentities()();
    }

    v39 = v0[22];
    v38 = v0[23];
    v40 = v0[21];
    v41 = v0[7];
    sub_10005DC58(&qword_10058F470, &unk_100492840);
    AsyncStream.Continuation.yield(_:)();
    (*(v39 + 8))(v38, v40);
    v42 = swift_task_alloc();
    v0[24] = v42;
    *v42 = v0;
    v42[1] = sub_1001A7CB8;
    v43 = v0[7];

    sub_1001A7EF0();
  }

  else
  {
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "PairingKeyStore is nil", v46, 2u);
    }

    v47 = v0[9];

    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v48 = v0[23];
    v50 = v0[19];
    v49 = v0[20];
    v52 = v0[17];
    v51 = v0[18];
    v54 = v0[15];
    v53 = v0[16];
    v56 = v0[13];
    v55 = v0[14];
    v62 = v0[11];

    v57 = v0[1];

    v57();
  }
}

uint64_t sub_1001A7CB8()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v15 = *v0;

  v3 = v1[23];
  v4 = v1[20];
  v5 = v1[19];
  v6 = v1[18];
  v7 = v1[17];
  v8 = v1[16];
  v9 = v1[15];
  v10 = v1[14];
  v14 = v1[13];
  v11 = v1[11];

  v12 = *(v15 + 8);

  return v12();
}

uint64_t sub_1001A7F10()
{
  v1 = [objc_allocWithZone(RPClient) init];
  v0[19] = v1;
  v2 = String._bridgeToObjectiveC()();
  v0[20] = v2;
  v0[2] = v0;
  v0[3] = sub_1001A8070;
  v3 = swift_continuation_init();
  v0[17] = sub_10005DC58(&qword_10058F750, &qword_100492AC0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001A8404;
  v0[13] = &unk_100566C28;
  v0[14] = v3;
  [v1 regenerateSelfIdentity:v2 withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001A8070()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 168) = v3;
  v4 = *(v1 + 144);
  if (v3)
  {
    v5 = sub_1001A8290;
  }

  else
  {
    v5 = sub_1001A8190;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001A8190()
{
  v1 = *(v0 + 144);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Regenerated rapport self identity", v4, 2u);
  }

  v5 = *(v0 + 152);

  [v5 invalidate];
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001A8290()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to rapport regenerate self identity: %@", v7, 0xCu);
    sub_100016290(v8, &qword_10058B780, &qword_100480AC0);
  }

  v10 = v0[21];
  v11 = v0[19];

  swift_willThrow();
  v12 = v0[1];
  v13 = v0[21];

  return v12();
}

uint64_t sub_1001A8404(uint64_t a1, void *a2)
{
  v3 = sub_100029B34((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1001A84B0(uint64_t a1)
{
  v2 = v1;
  v57 = *v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin();
  v62 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v56 = &v53 - v8;
  __chkstk_darwin();
  v10 = &v53 - v9;
  v11 = qword_10059B508;
  v12 = v5[2];
  v63 = a1;
  v58 = v12;
  v12(&v53 - v9, a1, v4);
  v59 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v61 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v65 = v54;
    *v16 = 136315138;
    sub_1001AB660(&qword_100597520, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v2;
    v19 = v18;
    v60 = v5[1];
    v60(v10, v4);
    v20 = sub_100002320(v17, v19, &v65);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Decrementing usage count for %s", v16, 0xCu);
    sub_100002A00(v54);
  }

  else
  {

    v60 = v5[1];
    v60(v10, v4);
  }

  Strong = swift_weakLoadStrong();
  v22 = v62;
  v23 = v63;
  if (Strong && (v24 = LongTermPairingKeyStore.decrementUsageCount(for:)(v63), v26 = v25, result = , (v26 & 1) == 0))
  {
    if (!v24)
    {
      v38 = v56;
      v58(v56, v23, v4);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v65 = v42;
        *v41 = 136315138;
        sub_1001AB660(&qword_100597520, &type metadata accessor for UUID);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        v60(v38, v4);
        v46 = sub_100002320(v43, v45, &v65);

        *(v41 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v39, v40, "Removing paired device metadata for %s", v41, 0xCu);
        sub_100002A00(v42);
      }

      else
      {

        v60(v38, v4);
      }

      v47 = UUID.uuidString.getter();
      v48 = *(v57 + 80);
      v49 = *(v57 + 88);
      v51 = sub_1001AB774(v47, v50, 1);

      v52 = v64;
      sub_10019DBC0(3u, v51);

      v64 = v52;
      if (!v52)
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v58(v22, v23, v4);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v22;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v65 = v32;
      *v31 = 136315138;
      sub_1001AB660(&qword_100597520, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v60(v30, v4);
      v36 = sub_100002320(v33, v35, &v65);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to decrement usage count for %s", v31, 0xCu);
      sub_100002A00(v32);
    }

    else
    {

      v60(v22, v4);
    }

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError);
    v37 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v64 = v37;
    return swift_willThrow();
  }

  return result;
}

void WiFiAwarePairedDevicesStore.startEvents(for:to:with:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PairedDeviceXPCDelegate(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin();
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v60 = v10;
    v61 = v17;
    v58 = v14;
    v59 = v11;
    v56 = *(v11 + 16);
    v57 = a4;
    v56(v19, a4, v10);
    *&v19[*(v15 + 20)] = a3;
    v21 = qword_10058F498;
    swift_beginAccess();
    swift_unknownObjectRetain();
    v22 = *(v5 + v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v5 + v21);
    v62 = a1;
    v63 = v24;
    *(v5 + v21) = 0x8000000000000000;
    v26 = sub_1000102E8(a1, a2);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      __break(1u);
      goto LABEL_21;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *(v5 + v21) = v24;
        if (v25)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_100197404();
        v24 = v63;
        *(v5 + v21) = v63;
        if (v30)
        {
LABEL_13:
          v21 = v24[7];
          v24 = *(v21 + 8 * v26);
          v37 = swift_isUniquelyReferenced_nonNull_native();
          *(v21 + 8 * v26) = v24;
          if (v37)
          {
LABEL_14:
            v39 = v24[2];
            v38 = v24[3];
            v40 = v61;
            if (v39 >= v38 >> 1)
            {
              v54 = sub_1001176F4(v38 > 1, v39 + 1, 1, v24);
              v40 = v61;
              v24 = v54;
              *(v21 + 8 * v26) = v54;
            }

            v24[2] = v39 + 1;
            sub_1001ABCD0(v19, v24 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39, type metadata accessor for PairedDeviceXPCDelegate);
            swift_endAccess();
            v41 = v58;
            v42 = v60;
            v56(v58, v57, v60);
            swift_unknownObjectRetain();

            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = v41;
              v46 = swift_slowAlloc();
              v64[0] = swift_slowAlloc();
              *v46 = 136315650;
              *(v46 + 4) = sub_100002320(v62, a2, v64);
              *(v46 + 12) = 2080;
              v63 = a3;
              swift_unknownObjectRetain();
              sub_10005DC58(&qword_10058F538, &qword_1004928C8);
              v47 = String.init<A>(describing:)();
              v49 = sub_100002320(v47, v48, v64);

              *(v46 + 14) = v49;
              *(v46 + 22) = 2080;
              sub_1001AB660(&qword_100597520, &type metadata accessor for UUID);
              v50 = dispatch thunk of CustomStringConvertible.description.getter();
              v52 = v51;
              (*(v59 + 8))(v45, v42);
              v53 = sub_100002320(v50, v52, v64);

              *(v46 + 24) = v53;
              _os_log_impl(&_mh_execute_header, v43, v44, "WiFiAwarePairedDeviceStore monitoring [START] for: %s to: %s with delegateID: %s", v46, 0x20u);
              swift_arrayDestroy();
            }

            else
            {

              (*(v59 + 8))(v41, v42);
            }

            return;
          }

LABEL_21:
          v24 = sub_1001176F4(0, v24[2] + 1, 1, v24);
          *(v21 + 8 * v26) = v24;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1001907B8(v29, isUniquelyReferenced_nonNull_native);
      v24 = v63;
      v31 = sub_1000102E8(v62, a2);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_25;
      }

      v26 = v31;
      *(v5 + v21) = v24;
      if (v30)
      {
        goto LABEL_13;
      }
    }

    v24[(v26 >> 6) + 8] |= 1 << v26;
    v33 = (v24[6] + 16 * v26);
    *v33 = v62;
    v33[1] = a2;
    *(v24[7] + 8 * v26) = _swiftEmptyArrayStorage;
    v34 = v24[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (!v35)
    {
      v24[2] = v36;

      goto LABEL_13;
    }

    __break(1u);
LABEL_25:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

int64_t WiFiAwarePairedDevicesStore.stopEvents(for:with:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin();
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v36 = v3;
    v14 = sub_10019C908();
    v37 = a1;
    v16 = sub_1001A95D0(v38, a1, a2);
    if (*v15)
    {
      v17 = v15;
      __chkstk_darwin();
      *(&v35 - 2) = a3;
      result = sub_1001AAABC(sub_1001AC5B0, (&v35 - 4));
      v18 = *(*v17 + 16);
      if (v18 < result)
      {
        __break(1u);
        return result;
      }

      sub_1001ABE84(result, v18);
      (v16)(v38, 0);
      (v14)(v39, 0);
    }

    else
    {
      (v16)(v38, 0);
      (v14)(v39, 0);
    }

    (*(v8 + 16))(v12, a3, v7);

    v19 = v36;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_100002320(v37, a2, v39);
      *(v22 + 12) = 2080;
      sub_1001AB660(&qword_100597520, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v8 + 8))(v12, v7);
      v26 = sub_100002320(v23, v25, v39);
      v19 = v36;

      *(v22 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "WiFiAwarePairedDeviceStore monitoring [STOP] for: %s for delegateID: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    v27 = qword_10058F498;
    result = swift_beginAccess();
    v28 = *(v19 + v27);
    v29 = v37;
    if (*(v28 + 16))
    {
      v30 = *(v19 + v27);

      v31 = sub_1000102E8(v29, a2);
      if (v32)
      {
        v33 = *(*(v28 + 56) + 8 * v31);

        v34 = *(v33 + 16);

        if (v34)
        {
          return result;
        }

        swift_beginAccess();
        sub_10007FBC8(v29, a2);
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t (*sub_1001A9554(uint64_t **a1, uint64_t *a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1001A9D98(v4, a2);
  return sub_1001A95CC;
}

uint64_t (*sub_1001A95D0(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1001A9E40(v6, a2, a3);
  return sub_1001AC5CC;
}

uint64_t (*sub_1001A9658(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1001A9EEC(v6, a2, a3);
  return sub_1001AC5CC;
}

void sub_1001A96E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

_OWORD *sub_1001A9754(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100085188(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1001A97C0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
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

unint64_t sub_1001A9818(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = a5[7] + 16 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
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

_OWORD *sub_1001A9878(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CodingUserInfoKey();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_100085188(a3, (a4[7] + 32 * a1));
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

unint64_t sub_1001A9938(unint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_1001A9988(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100085188(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1001A99F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for StorageEntry(0);
  result = sub_1001ABCD0(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for StorageEntry);
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

unint64_t sub_1001A9A9C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

uint64_t sub_1001A9AE4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  result = sub_1001ABCD0(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for NANPairedDeviceSharedAssociation);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1001A9BD4(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  result = sub_1001ABCD0(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for NANGenericServiceProtocol.Attribute);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1001A9C7C(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  result = sub_100085188(a3, (a4[7] + 32 * a1));
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

unint64_t sub_1001A9CE8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

_OWORD *sub_1001A9D30(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_100085188(a3, (a4[7] + 32 * a1));
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

uint64_t (*sub_1001A9D98(uint64_t *a1, uint64_t *a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1001AAA60(v6);
  v6[9] = sub_1001A9FF8(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1001A9E3C;
}

uint64_t (*sub_1001A9E40(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1001AAA94(v8);
  v8[9] = sub_1001AA290(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1001AC5D0;
}

uint64_t (*sub_1001A9EEC(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1001AAA94(v8);
  v8[9] = sub_1001AA52C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1001AC5D0;
}

void sub_1001A9F98(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1001A9FF8(uint64_t *a1, uint64_t *a2, char a3))(char **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x90uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 120) = a2;
  *(v8 + 128) = v3;
  v10 = *v3;
  v11 = sub_10007CE78(a2);
  *(v9 + 18) = v12 & 1;
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_100195AC4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_10018DA48(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_10007CE78(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 136) = v11;
  if (v17)
  {
    v22 = *(*v4 + 56) + 16 * v11;
    v23 = *v22;
    v24 = *(v22 + 8);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  *(v9 + 104) = v23;
  *(v9 + 112) = v24;
  return sub_1001AA150;
}

void sub_1001AA150(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 13);
  v4 = (*a1)[112];
  v5 = (*a1)[18];
  if (a2)
  {
    if (v3)
    {
      v6 = *(v2 + 17);
      v7 = **(v2 + 16);
      if ((v5 & 1) == 0)
      {
        v8 = *(v2 + 15);
        *(v2 + 72) = *v8;
        v9 = *(v8 + 32);
        *v2 = *(v8 + 16);
        *(v2 + 8) = v9;
        sub_1001A9818(v6, v8, v3, v4 & 1, v7);
        sub_1000836D4((v2 + 72), (v2 + 48));
        v10 = (v2 + 48);
        v11 = v2;
LABEL_11:
        sub_100083730(v11, v10);
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v3)
  {
    v6 = *(v2 + 17);
    v7 = **(v2 + 16);
    if ((v5 & 1) == 0)
    {
      v15 = *(v2 + 15);
      *(v2 + 88) = *v15;
      v16 = *(v15 + 32);
      *(v2 + 24) = *(v15 + 16);
      *(v2 + 20) = v16;
      sub_1001A9818(v6, v15, v3, v4 & 1, v7);
      sub_1000836D4((v2 + 88), (v2 + 48));
      v11 = (v2 + 24);
      v10 = (v2 + 48);
      goto LABEL_11;
    }

LABEL_7:
    v12 = v7[7] + 16 * v6;
    *v12 = v3;
    *(v12 + 8) = v4 & 1;
    goto LABEL_12;
  }

  if ((*a1)[18])
  {
    v13 = *(v2 + 17);
    v14 = **(v2 + 16);
    sub_1001AC54C(*(v14 + 48) + 40 * v13);
    sub_100192D78(v13, v14);
  }

LABEL_12:
  v17 = *(v2 + 13);
  v18 = v3;

  free(v2);
}

void (*sub_1001AA290(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1000102E8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100197404();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1001907B8(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1000102E8(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_1001AA3E8;
}

void sub_1001AA3E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[2];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_10008378C(*(v13 + 48) + 16 * v12);
      sub_100193530(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v19 = *v2;

  free(v2);
}

void (*sub_1001AA52C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x68uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v11 = type metadata accessor for StorageEntry(0);
  v10[3] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[4] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v10[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[7] = v15;
  v16 = *(*(sub_10005DC58(&unk_10058F740, &unk_100492AB0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[8] = swift_coroFrameAlloc();
    v10[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[8] = malloc(v16);
    v10[9] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[10] = v17;
  v19 = *v4;
  v21 = sub_10007D1A4(a2, a3);
  *(v10 + 96) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_16:
      v10[11] = v21;
      if (v25)
      {
LABEL_17:
        sub_1001ABCD0(*(*v5 + 56) + *(v13 + 72) * v21, v18, type metadata accessor for StorageEntry);
        v27 = 0;
LABEL_21:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_1001AA808;
      }

LABEL_20:
      v27 = 1;
      goto LABEL_21;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_100196B98();
      goto LABEL_16;
    }

    sub_10018FA54(v24, a4 & 1);
    v28 = *v5;
    v29 = sub_10007D1A4(a2, a3);
    if ((v25 & 1) == (v30 & 1))
    {
      v21 = v29;
      v10[11] = v29;
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1001AA808(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_100012400(v5, v6, &unk_10058F740, &unk_100492AB0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_1001ABCD0(v9, *(v2 + 6), type metadata accessor for StorageEntry);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_1001ABCD0(v13, v14, type metadata accessor for StorageEntry);
        sub_1001A99F0(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_100012400(v5, v17, &unk_10058F740, &unk_100492AB0);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_1001ABCD0(v9, *(v2 + 7), type metadata accessor for StorageEntry);
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1001ABCD0(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for StorageEntry);
      goto LABEL_10;
    }
  }

  sub_100016290(v9, &unk_10058F740, &unk_100492AB0);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_1001AC3F0(*(v20 + 48) + 16 * v19);
    sub_100193F64(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_100016290(v23, &unk_10058F740, &unk_100492AB0);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_1001AAA60(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1001AAA88;
}

uint64_t (*sub_1001AAA94(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1001AC5A8;
}

uint64_t sub_1001AAABC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = *(type metadata accessor for PairedDeviceXPCDelegate(0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v30 - v10;
  __chkstk_darwin();
  v13 = &v30 - v12;
  v14 = *v2;
  result = sub_10019C124(a1, a2, *v2, type metadata accessor for PairedDeviceXPCDelegate);
  if (!v3)
  {
    if (v16)
    {
      return *(v14 + 16);
    }

    v34 = v13;
    v35 = a1;
    v31 = v11;
    v32 = v9;
    v36 = a2;
    v30 = v2;
    v38 = result;
    v17 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v19 = (v14 + 16);
      v18 = *(v14 + 16);
      if (v17 == v18)
      {
        return v38;
      }

      v33 = v6;
      while (v17 < v18)
      {
        v20 = v14;
        v37 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v21 = v14 + v37;
        v22 = *(v6 + 72);
        v23 = v34;
        sub_1001ABBF0(v21 + v22 * v17, v34, type metadata accessor for PairedDeviceXPCDelegate);
        v24 = v35(v23);
        result = sub_1001AB714(v23, type metadata accessor for PairedDeviceXPCDelegate);
        if (v24)
        {
          v6 = v33;
          v14 = v20;
        }

        else
        {
          v25 = v38;
          if (v17 == v38)
          {
            v6 = v33;
            v14 = v20;
          }

          else
          {
            if ((v38 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v26 = *v19;
            if (v38 >= *v19)
            {
              goto LABEL_25;
            }

            v27 = v22 * v38;
            result = sub_1001ABBF0(v21 + v22 * v38, v31, type metadata accessor for PairedDeviceXPCDelegate);
            if (v17 >= v26)
            {
              goto LABEL_26;
            }

            v28 = v22 * v17;
            sub_1001ABBF0(v21 + v22 * v17, v32, type metadata accessor for PairedDeviceXPCDelegate);
            v14 = v20;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_1000C2BB4(v20);
            }

            v6 = v33;
            v29 = v14 + v37;
            result = sub_1001AC4B4(v32, v14 + v37 + v27, type metadata accessor for PairedDeviceXPCDelegate);
            if (v17 >= *(v14 + 16))
            {
              goto LABEL_27;
            }

            result = sub_1001AC4B4(v31, v29 + v28, type metadata accessor for PairedDeviceXPCDelegate);
            *v30 = v14;
            v25 = v38;
          }

          v38 = v25 + 1;
        }

        ++v17;
        v19 = (v14 + 16);
        v18 = *(v14 + 16);
        if (v17 == v18)
        {
          return v38;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001AAE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(type metadata accessor for WiFiAwareKeychainError(0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v23 - v11);
  v13 = *(*(sub_10005DC58(&qword_10058F758, &qword_100492AC8) - 8) + 64);
  v14 = __chkstk_darwin();
  v16 = &v23 - v15;
  v17 = *(v14 + 56);
  sub_1001ABBF0(a1, &v23 - v15, type metadata accessor for WiFiAwareKeychainError);
  sub_1001ABBF0(a2, &v16[v17], type metadata accessor for WiFiAwareKeychainError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_18;
        }

LABEL_20:
        sub_100016290(v16, &qword_10058F758, &qword_100492AC8);
        v20 = 0;
        return v20 & 1;
      }

      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_20;
      }
    }

LABEL_18:
    sub_1001AB714(v16, type metadata accessor for WiFiAwareKeychainError);
    v20 = 1;
    return v20 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1001ABBF0(v16, v12, type metadata accessor for WiFiAwareKeychainError);
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = *v12 == *&v16[v17];
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_1001ABBF0(v16, v10, type metadata accessor for WiFiAwareKeychainError);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v24 + 8))(v10, v4);
    goto LABEL_20;
  }

  v19 = v24;
  (*(v24 + 32))(v7, &v16[v17], v4);
  v20 = static UUID.== infix(_:_:)();
  v21 = *(v19 + 8);
  v21(v7, v4);
  v21(v10, v4);
LABEL_12:
  sub_1001AB714(v16, type metadata accessor for WiFiAwareKeychainError);
  return v20 & 1;
}

unint64_t sub_1001AB1B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1001AB29C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_100115F7C(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = sub_1001AB1B8(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}