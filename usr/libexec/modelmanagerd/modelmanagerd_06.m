void *sub_100086460()
{
  v1 = v0;
  sub_100065020(&qword_1001B9410, &qword_100170108);
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

void sub_1000865CC()
{
  sub_1000134E8();
  v3 = v0;
  sub_100065020(&qword_1001B9448, &qword_100170168);
  v4 = sub_1000239EC();
  if (*(v1 + 16))
  {
    sub_10000A874();
    sub_100019480();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v1 + 16);
    v11 = *(v1 + 32);
    sub_100003878();
    v12 = *(v1 + 56);
    sub_100012714();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        sub_1000137E0();
LABEL_15:
        v22 = 3 * (v18 | (v10 << 6));
        v23 = *(v1 + 48) + 8 * v22;
        v24 = *(v23 + 8);
        v25 = *(v23 + 16);
        v26 = *(v4 + 48) + 8 * v22;
        *v26 = *v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v25;
      }

      while (v15);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_17;
      }

      ++v19;
      if (*(v2 + v10))
      {
        sub_1000062A0();
        v15 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
    sub_100009C38();
  }
}

void sub_1000866EC()
{
  sub_1000055B0();
  v4 = sub_10001B210();
  v6 = v5(v4);
  sub_100002BDC(v6);
  v8 = *(v7 + 64);
  sub_100004B1C();
  __chkstk_darwin(v9);
  sub_100011D6C();
  v10 = sub_100007748();
  if (*(v0 + 16))
  {
    sub_10000A874();
    sub_100013AA0();
    if (v14)
    {
      v15 = v11 >= v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      memmove(v11, v1, 8 * v12);
    }

    v16 = 0;
    *(v10 + 16) = *(v0 + 16);
    v17 = *(v0 + 32);
    sub_100003878();
    v18 = *(v0 + 56);
    sub_100012714();
    sub_100018C90();
    while (v3)
    {
      sub_100011268();
LABEL_15:
      sub_10000949C(v19);
      v24 = sub_100030274();
      v25(v24);
      v26 = sub_100046488();
      v27(v26);
    }

    v20 = v16;
    while (1)
    {
      v16 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v16 >= v2)
      {
        goto LABEL_17;
      }

      sub_100005968();
      if (v21)
      {
        sub_1000062A0();
        v3 = v23 & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_10001E490();
    sub_100002EEC();
  }
}

void sub_100086848()
{
  sub_1000055B0();
  v2 = sub_10001B210();
  v4 = v3(v2);
  sub_100002F44(v4);
  v6 = *(v5 + 64);
  sub_100004B1C();
  __chkstk_darwin(v7);
  sub_100011D6C();
  v8 = sub_100007748();
  if (*(v0 + 16))
  {
    sub_10000A874();
    sub_100013AA0();
    if (v12)
    {
      v13 = v9 >= v11;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      memmove(v9, v1, 8 * v10);
    }

    v14 = 0;
    *(v8 + 16) = *(v0 + 16);
    v15 = *(v0 + 32);
    sub_100003878();
    v16 = *(v0 + 56);
    sub_100012714();
    v19 = v18 & v17;
    v21 = (v20 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        sub_100011268();
LABEL_15:
        sub_10000949C(v22);
        sub_10000931C();
        v27 = *(v8 + 48);
        sub_10000D460();
      }

      while (v19);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v21)
      {
        goto LABEL_17;
      }

      sub_100005968();
      if (v24)
      {
        sub_1000062A0();
        v19 = v26 & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_10001E490();
    sub_100002EEC();
  }
}

void sub_1000869B0()
{
  sub_1000055B0();
  v3 = v0;
  sub_100065020(&qword_1001B94A0, &qword_1001701B8);
  v4 = sub_1000239EC();
  if (*(v1 + 16))
  {
    v31 = v3;
    sub_10000A874();
    sub_100019480();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    v11 = *(v1 + 16);
    v32 = v4;
    *(v4 + 16) = v11;
    v12 = *(v1 + 32);
    sub_100003878();
    v13 = *(v1 + 56);
    sub_100012714();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_15:
        v23 = v19 | (v10 << 6);
        v24 = type metadata accessor for UUID();
        v25 = *(v24 - 8);
        v26 = *(v25 + 64);
        __chkstk_darwin(v24);
        v28 = &v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        v30 = *(v29 + 72) * v23;
        (*(v25 + 16))(v28, *(v1 + 48) + v30, v24);
        (*(v25 + 32))(*(v32 + 48) + v30, v28, v24);
      }

      while (v16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v18)
      {

        goto LABEL_19;
      }

      ++v20;
      if (*(v2 + v10))
      {
        sub_1000062A0();
        v16 = v22 & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    sub_10001E490();
    sub_100002EEC();
  }
}

id sub_100086BA0()
{
  v1 = v0;
  sub_100065020(&qword_1001B9498, &qword_1001701B0);
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

uint64_t sub_100086CF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100065020(&qword_1001B9410, &qword_100170108);
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

uint64_t sub_100086F24(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Assertion.DaemonRep();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B8B98, &qword_10016F750);
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
        sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep);
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

uint64_t sub_10008723C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B8B80, &qword_10016F748);
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
        sub_10001B2C0(&qword_1001B8B88, &qword_1001B8B78);
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

uint64_t sub_100087558(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ModelCatalogAsset(0);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4 - 8);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9440, &qword_100170160);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v26 = v2;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    for (i = result + 56; v14; ++*(v10 + 16))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = *(v7 + 48) + *(v29 + 72) * (v16 | (v11 << 6));
      sub_10000931C();
      v20 = *(v10 + 40);
      Hasher.init(_seed:)();
      sub_10000C228(v30);
      Hasher._finalize()();
      v21 = -1 << *(v10 + 32);
      v22 = i;
      v23 = _HashTable.nextHole(atOrAfter:)();
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = *(v10 + 48);
      result = sub_10000D460();
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v2 = v26;
        goto LABEL_18;
      }

      v18 = *(v7 + 56 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1000877C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100065020(&qword_1001B9448, &qword_100170168);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v6 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v18);
        result = Hasher._finalize()();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = *(v6 + 48) + 24 * v25;
        *v30 = v18;
        *(v30 + 8) = v19;
        *(v30 + 16) = v20;
        ++*(v6 + 16);

        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

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
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
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

uint64_t sub_100087A18(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for StateDump.AssetState();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B95D8, &qword_100170220);
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
        sub_10000814C(&qword_1001B95C8, &type metadata accessor for StateDump.AssetState);
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

uint64_t sub_100087D30(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for StateDump.SessionState();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B95C0, &qword_100170218);
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
        sub_10000814C(&qword_1001B95B0, &type metadata accessor for StateDump.SessionState);
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

uint64_t sub_100088048(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for StateDump.RequestState();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B95A8, &qword_100170210);
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
        sub_10000814C(&qword_1001B9598, &type metadata accessor for StateDump.RequestState);
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

uint64_t sub_100088360(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9590, &qword_100170208);
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
        sub_10001B2C0(&qword_1001B9580, &qword_1001B8F48);
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

uint64_t sub_10008867C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for StateDump.RemoteRequestState();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9578, &qword_100170200);
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
        sub_10000814C(&qword_1001B9568, &type metadata accessor for StateDump.RemoteRequestState);
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

uint64_t sub_100088994(uint64_t a1)
{
  v2 = v1;
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest();
  v4 = *(active - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(active);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9560, &qword_1001701F8);
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
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), active);
        v23 = *(v10 + 40);
        sub_10000814C(&qword_1001B9550, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest);
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
        (*v33)(*(v10 + 48) + v27 * v22, v7, active);
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

uint64_t sub_100088CAC(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for StateDump.InferenceProviderState();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9548, &qword_1001701F0);
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
        sub_10000814C(&qword_1001B9538, &type metadata accessor for StateDump.InferenceProviderState);
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

uint64_t sub_100088FC4(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for InferenceProviderAssetDescriptor();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B94C8, &qword_1001701C0);
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
        sub_10000814C(&qword_1001B94B8, &type metadata accessor for InferenceProviderAssetDescriptor);
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

uint64_t sub_1000892DC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9520, &qword_1001701E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    if (v15)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v21 = *(v8 + 48) + *(v34 + 72) * (v18 | (v12 << 6));
        sub_10000931C();
        v22 = *(v11 + 40);
        Hasher.init(_seed:)();
        v23 = &v7[*(v35 + 20)];
        UUID.hash(into:)();
        result = Hasher._finalize()();
        v24 = -1 << *(v11 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v17 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v32 = *(v11 + 48);
        result = sub_10000D460();
        ++*(v11 + 16);
        if (!v15)
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
        v31 = *(v17 + 8 * v26);
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
      v19 = v12;
      while (1)
      {
        v12 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v12 >= v16)
        {

          v2 = v33;
          goto LABEL_27;
        }

        v20 = *(v8 + 56 + 8 * v12);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v15 = (v20 - 1) & v20;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1000895BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100065020(&qword_1001B94A0, &qword_1001701B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v41 = (v11 - 1) & v11;
LABEL_14:
        v17 = v14 | (v7 << 6);
        v18 = type metadata accessor for UUID();
        v40 = &v36;
        v19 = *(v18 - 8);
        v20 = *(v19 + 64);
        __chkstk_darwin(v18);
        v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = v23;
        v25 = *(v3 + 48);
        v26 = *(v24 + 72);
        (*(v19 + 16))(v22, v25 + v26 * v17, v18);
        v6 = v39;
        v27 = *(v39 + 40);
        sub_10005F2BC(&qword_1001B8C00);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v28 = -1 << *(v6 + 32);
        v29 = result & ~v28;
        v30 = v29 >> 6;
        if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
        {
          break;
        }

        v31 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        result = (*(v19 + 32))(*(v6 + 48) + v31 * v26, v22, v18);
        ++*(v6 + 16);
        v11 = v41;
        v3 = v38;
        if (!v41)
        {
          goto LABEL_9;
        }
      }

      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v13 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v37;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v41 = (v16 - 1) & v16;
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

uint64_t sub_1000898C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9518, &qword_1001701D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v37 = v2;
    v38 = v8;
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
    v18 = result + 56;
    if (v16)
    {
      while (1)
      {
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v8 + 48);
        v22 = *(v39 + 72);
        sub_10000931C();
        v23 = *(v11 + 40);
        Hasher.init(_seed:)();
        v24 = *v7;
        v25 = v7[1];
        String.hash(into:)();
        v26 = *(v40 + 20);
        type metadata accessor for UUID();
        sub_10005F2BC(&qword_1001B8C00);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v27 = -1 << *(v11 + 32);
        v28 = result & ~v27;
        v29 = v28 >> 6;
        if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
        {
          break;
        }

        v30 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v35 = *(v11 + 48);
        result = sub_10000D460();
        ++*(v11 + 16);
        v8 = v38;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v18 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
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

          v2 = v37;
          goto LABEL_27;
        }

        v20 = *(v13 + 8 * v12);
        ++v19;
        if (v20)
        {
          v16 = (v20 - 1) & v20;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_100089BE0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B94F8, &qword_1001701D0);
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
        sub_10001B2C0(&qword_1001B9500, &qword_1001B94F0);
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

uint64_t sub_100089EFC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B94D8, &qword_1001701C8);
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
        sub_10001B2C0(&qword_1001B94E0, &qword_1001B94D0);
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

uint64_t sub_10008A218(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100065020(&qword_1001B9498, &qword_1001701B0);
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = NSObject._rawHashValue(seed:)(v16);
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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

          v2 = v26;
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

uint64_t sub_10008A428(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v43 - v10;
  v11 = type metadata accessor for Assertion.DaemonRep();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v57 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v14) = *(a1 + 32);
  v15 = v14 & 0x3F;
  v16 = ((1 << v14) + 63) >> 6;
  v17 = 8 * v16;

  if (v15 > 0xD)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v43 = &v43;
    __chkstk_darwin(v18);
    v44 = v16;
    v46 = (&v43 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100011624(0, v16, v46);
    v53 = a2;
    v54 = 0;
    v16 = 0;
    v19 = *(a1 + 56);
    v45 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    v21 = v20 < 64 ? ~(-1 << v20) : -1;
    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v59 = a2 + 56;
    v58 = v5 + 16;
    v60 = (v5 + 8);
    v49 = (v12 + 8);
    v50 = v12 + 16;
    v17 = v61;
    v51 = v23;
    v52 = v11;
    v47 = v12;
    v48 = a1;
LABEL_6:
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v56 = (v22 - 1) & v22;
LABEL_13:
      v27 = v24 | (v16 << 6);
      v28 = *(a1 + 48);
      v29 = *(v12 + 72);
      v55 = v27;
      a2 = a1;
      (*(v12 + 16))(v57, v28 + v29 * v27, v11);
      Assertion.DaemonRep.id.getter();
      v30 = v53;
      if (*(v53 + 16))
      {
        v31 = *(v53 + 40);
        sub_10001B2C0(&qword_1001B8B88, &qword_1001B8B78);
        v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v33 = v30;
        v34 = ~(-1 << *(v30 + 32));
        while (1)
        {
          a2 = v32 & v34;
          if (((*(v59 + (((v32 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v34)) & 1) == 0)
          {
            break;
          }

          (*(v5 + 16))(v9, *(v33 + 48) + *(v5 + 72) * a2, v4);
          sub_10001B2C0(&qword_1001B8B90, &qword_1001B8B78);
          v35 = dispatch thunk of static Equatable.== infix(_:_:)();
          v36 = *(v5 + 8);
          v36(v9, v4);
          v32 = a2 + 1;
          if (v35)
          {
            v37 = v61;
            v36(v61, v4);
            v17 = v37;
            v11 = v52;
            (*v49)(v57, v52);
            v12 = v47;
            a1 = v48;
            v23 = v51;
            v22 = v56;
            goto LABEL_6;
          }
        }

        v12 = v47;
        a1 = v48;
        v17 = v61;
      }

      (*v60)(v17, v4);
      v11 = v52;
      (*v49)(v57, v52);
      *(v46 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      v38 = __OFADD__(v54++, 1);
      v23 = v51;
      v22 = v56;
      if (v38)
      {
        goto LABEL_26;
      }
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v23)
      {
        v39 = sub_10008C1EC(v46, v44, v54, a1);
        swift_bridgeObjectRelease_n();
        return v39;
      }

      v26 = *(v45 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v56 = (v26 - 1) & v26;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v41 = a1;
  v42 = swift_slowAlloc();

  v39 = sub_10008C09C(v42, v16, v41, a2, &_swift_bridgeObjectRetain_n, sub_10008B144, &_swift_bridgeObjectRelease_n);

  swift_bridgeObjectRelease_n();
  return v39;
}

uint64_t sub_10008AA34(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100065020(&qword_1001B9420, &qword_100170118);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v62 - v8;
  v10 = type metadata accessor for Assertion.DaemonRep();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v80 = v62 - v16;
  v17 = *(a1 + 32);
  v18 = v17 & 0x3F;
  v19 = ((1 << v17) + 63) >> 6;
  v20 = (8 * v19);
  v76 = a2;

  if (v18 > 0xD)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v64 = v3;
    v62[1] = v62;
    __chkstk_darwin(v21);
    v63 = v19;
    v65 = (v62 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100011624(0, v19, v65);
    v66 = 0;
    v19 = 0;
    v23 = a1 + 56;
    v24 = 1 << *(a1 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(a1 + 56);
    v27 = (v24 + 63) >> 6;
    v79 = v11 + 2;
    v71 = (v11 + 1);
    *&v22 = 136315138;
    v67 = v22;
    v74 = v11;
    v75 = v9;
    v77 = v15;
    v3 = a1;
    v72 = v27;
    v73 = a1 + 56;
    v69 = a1;
    v70 = v10;
    while (v26)
    {
      v28 = __clz(__rbit64(v26));
      v78 = (v26 - 1) & v26;
LABEL_12:
      a1 = v28 | (v19 << 6);
      v15 = v11[2];
      (v15)(v80, *(v3 + 48) + v11[9] * a1, v10);
      v31 = Assertion.DaemonRep.policy.getter();
      v33 = v32;
      v34 = *(v76 + 296);
      if (*(v34 + 16))
      {
        v35 = v31;
        v36 = *(v76 + 296);

        v37 = sub_1000236F4(v35, v33);
        if (v38)
        {
          v39 = v37;
          v40 = a1;
          v41 = v3;
          v42 = *(v34 + 56);
          v43 = type metadata accessor for Policy();
          v44 = *(v43 - 8);
          v45 = v42 + *(v44 + 72) * v39;
          v3 = v41;
          a1 = v40;
          v9 = v75;
          (*(v44 + 16))(v75, v45, v43);
          v46 = v9;
          v47 = 0;
        }

        else
        {
          v43 = type metadata accessor for Policy();
          v9 = v75;
          v46 = v75;
          v47 = 1;
        }

        sub_100009BFC(v46, v47, 1, v43);
      }

      else
      {
        v43 = type metadata accessor for Policy();
        sub_100009BFC(v9, 1, 1, v43);
      }

      type metadata accessor for Policy();
      v20 = sub_10000C6C0(v9, 1, v43);
      sub_10000C7F0(v9, &qword_1001B9420);
      v10 = v70;
      if (v20 == 1)
      {
        v48 = v71;
        if (qword_1001B88D8 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        v20 = sub_10000641C(v49, qword_1001B9218);
        a1 = v77;
        (v15)(v77, v80, v10);
        v15 = v10;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v81 = v68;
          *v52 = v67;
          v53 = Assertion.DaemonRep.policy.getter();
          a1 = v54;
          v55 = *v48;
          v55(v77, v15);
          v56 = sub_100004A3C(v53, a1, &v81);

          *(v52 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v50, v51, "Cannot restore assertion with non-existent policy: %s", v52, 0xCu);
          v20 = v68;
          sub_100003324(v68);

          v9 = v75;
        }

        else
        {

          v55 = *v48;
          v55(a1, v15);
        }

        v10 = v15;
        v55(v80, v15);
        v3 = v69;
        v23 = v73;
        v11 = v74;
        v27 = v72;
        v26 = v78;
      }

      else
      {
        (*v71)(v80, v70);
        *(v65 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
        v57 = __OFADD__(v66++, 1);
        v23 = v73;
        v11 = v74;
        v27 = v72;
        v26 = v78;
        if (v57)
        {
          __break(1u);
        }
      }
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v19 >= v27)
      {
        v58 = sub_10008C1EC(v65, v63, v66, v3);

        return v58;
      }

      v30 = *(v23 + 8 * v19);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v78 = (v30 - 1) & v30;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v60 = swift_slowAlloc();
  v61 = v76;

  v58 = sub_10008C09C(v60, v19, a1, v61, &_swift_retain_n, sub_10008B5D0, &_swift_release_n);

  return v58;
}

uint64_t sub_10008B144(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v44 = a1;
  v6 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = type metadata accessor for Assertion.DaemonRep();
  v15 = *(*(v14 - 8) + 64);
  result = __chkstk_darwin(v14);
  v54 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a3;
  v52 = 0;
  v19 = 0;
  v20 = *(a3 + 56);
  v43 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v48 = v17 + 16;
  v49 = v17;
  v56 = v7;
  v57 = a4 + 56;
  v55 = v7 + 16;
  v58 = (v7 + 8);
  v46 = result;
  v47 = (v17 + 8);
  v45 = v24;
LABEL_5:
  while (v23)
  {
    v25 = __clz(__rbit64(v23));
    v53 = (v23 - 1) & v23;
LABEL_12:
    v28 = v25 | (v19 << 6);
    (*(v49 + 16))(v54, *(v51 + 48) + *(v49 + 72) * v28, v14);
    Assertion.DaemonRep.id.getter();
    if (*(a4 + 16))
    {
      v50 = v28;
      v29 = *(a4 + 40);
      sub_10001B2C0(&qword_1001B8B88, &qword_1001B8B78);
      v30 = v13;
      v31 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = a4;
      v33 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v34 = v31 & v33;
        if (((*(v57 + (((v31 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v33)) & 1) == 0)
        {
          break;
        }

        v35 = v56;
        (*(v56 + 16))(v11, *(v32 + 48) + *(v56 + 72) * v34, v6);
        sub_10001B2C0(&qword_1001B8B90, &qword_1001B8B78);
        v36 = dispatch thunk of static Equatable.== infix(_:_:)();
        v37 = *(v35 + 8);
        v37(v11, v6);
        v31 = v34 + 1;
        if (v36)
        {
          v13 = v30;
          v37(v30, v6);
          v14 = v46;
          result = (*v47)(v54, v46);
          a4 = v32;
          v24 = v45;
          v23 = v53;
          goto LABEL_5;
        }
      }

      a4 = v32;
      v13 = v30;
      v24 = v45;
      v14 = v46;
      v28 = v50;
    }

    (*v58)(v13, v6);
    result = (*v47)(v54, v14);
    *(v44 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v23 = v53;
    if (__OFADD__(v52++, 1))
    {
      __break(1u);
LABEL_21:
      v39 = v51;

      v40 = sub_10008C1EC(v44, v42, v52, v39);

      return v40;
    }
  }

  v26 = v19;
  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v19 >= v24)
    {
      goto LABEL_21;
    }

    v27 = *(v43 + 8 * v19);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v53 = (v27 - 1) & v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008B5D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v70 = a4;
  v60 = a1;
  v5 = sub_100065020(&qword_1001B9420, &qword_100170118);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v59 - v7;
  v9 = type metadata accessor for Assertion.DaemonRep();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v71 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v75 = &v59 - v16;
  v61 = 0;
  v17 = 0;
  v68 = v14;
  v69 = a3;
  v20 = *(a3 + 56);
  v19 = a3 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v74 = v14 + 16;
  v65 = (v14 + 8);
  *&v15 = 136315138;
  v62 = v15;
  v72 = result;
  v66 = v24;
  v67 = v19;
  v64 = v8;
  while (v23)
  {
    v25 = __clz(__rbit64(v23));
    v73 = (v23 - 1) & v23;
LABEL_11:
    v28 = v25 | (v17 << 6);
    v29 = *(v68 + 16);
    v29(v75, *(v69 + 48) + *(v68 + 72) * v28, v9);
    v30 = Assertion.DaemonRep.policy.getter();
    v32 = v31;
    v33 = *(v70 + 296);
    if (*(v33 + 16))
    {
      v34 = v30;
      v35 = *(v70 + 296);

      v36 = sub_1000236F4(v34, v32);
      if (v37)
      {
        v38 = v36;
        v39 = *(v33 + 56);
        v40 = type metadata accessor for Policy();
        (*(*(v40 - 8) + 16))(v8, v39 + *(*(v40 - 8) + 72) * v38, v40);
        v41 = v8;
        v42 = 0;
      }

      else
      {
        v40 = type metadata accessor for Policy();
        v41 = v8;
        v42 = 1;
      }

      sub_100009BFC(v41, v42, 1, v40);

      v9 = v72;
    }

    else
    {
      v40 = type metadata accessor for Policy();
      sub_100009BFC(v8, 1, 1, v40);
    }

    type metadata accessor for Policy();
    v43 = sub_10000C6C0(v8, 1, v40);
    sub_10000C7F0(v8, &qword_1001B9420);
    if (v43 == 1)
    {
      if (qword_1001B88D8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000641C(v44, qword_1001B9218);
      v45 = v71;
      v29(v71, v75, v9);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.fault.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v65;
      if (v48)
      {
        v50 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v76 = v63;
        *v50 = v62;
        v51 = Assertion.DaemonRep.policy.getter();
        v53 = v52;
        v54 = *v49;
        (*v49)(v71, v72);
        v55 = sub_100004A3C(v51, v53, &v76);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v46, v47, "Cannot restore assertion with non-existent policy: %s", v50, 0xCu);
        sub_100003324(v63);

        v9 = v72;
      }

      else
      {

        v54 = *v49;
        (*v49)(v45, v9);
      }

      result = (v54)(v75, v9);
      v8 = v64;
      v24 = v66;
      v19 = v67;
      v23 = v73;
    }

    else
    {
      result = (*v65)(v75, v9);
      *(v60 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v56 = __OFADD__(v61++, 1);
      v24 = v66;
      v19 = v67;
      v23 = v73;
      if (v56)
      {
        goto LABEL_29;
      }
    }
  }

  v26 = v17;
  while (1)
  {
    v17 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v17 >= v24)
    {
      v57 = v69;

      v58 = sub_10008C1EC(v60, v59, v61, v57);

      return v58;
    }

    v27 = *(v19 + 8 * v17);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v73 = (v27 - 1) & v27;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10008BB3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = type metadata accessor for Assertion.DaemonRep();
  v6 = *(*(v39 - 8) + 64);
  result = __chkstk_darwin(v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v8 + 16;
  v35 = v8;
  v32 = 0;
  v33 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      return (*v33)(v21, v20);
    }

    v26 = v24;
    result = (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        return sub_10008C1EC(v31, v30, v32, v28);
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_10008BEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  v8 = sub_100002F44(v7);
  v30 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100002B8C();
  v14 = v13 - v12;
  v29 = 0;
  v15 = 0;
  v32 = a3;
  v17 = *(a3 + 56);
  v16 = a3 + 56;
  v18 = *(v16 - 24);
  sub_100002F28();
  sub_100057A30();
  v20 = v19 >> 6;
  while (v5)
  {
    sub_1000137E0();
LABEL_9:
    v24 = *(v32 + 48);
    v25 = *(v30 + 72);
    sub_100005B9C();
    sub_10000931C();
    v26 = a4(v14);
    sub_100005618();
    sub_10000D2AC();
    if (v4)
    {
      return;
    }

    if (v26)
    {
      sub_100005AF4();
      sub_10000CCF0(v27);
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_14:

        sub_10008C87C();
        return;
      }
    }
  }

  v21 = v15;
  while (1)
  {
    v15 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      goto LABEL_14;
    }

    ++v21;
    if (*(v16 + 8 * v15))
    {
      sub_1000062A0();
      v5 = v23 & v22;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_10008C09C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a5(a4, 2);
    v14 = a6(v13, a2, a3, a4);
    a7(a4, 2);

    return v14;
  }

  return result;
}

unint64_t *sub_10008C15C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10008BB3C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10008C1EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for Assertion.DaemonRep();
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

  sub_100065020(&qword_1001B8B98, &qword_10016F750);
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
    sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep);
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
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_27:

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
      goto LABEL_27;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10008C50C()
{
  sub_100003884();
  sub_1000135C4();
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = swift_task_alloc();
  v7 = sub_100004B00(v6);
  *v7 = v8;
  v9 = sub_10003F82C(v7);

  return sub_10007A404(v9, v0, v2, v3, v5, v4);
}

uint64_t sub_10008C5BC()
{
  sub_1000094B0();
  sub_10000636C();
  v2 = type metadata accessor for Policy();
  sub_100002F44(v2);
  v5 = *(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  sub_100011900();
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + v8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10006FA64;
  sub_1000135D0();
  sub_100006378();

  return sub_10007A8E8(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10008C6CC()
{
  sub_1000094B0();
  sub_10000636C();
  sub_10002A104();
  v1 = type metadata accessor for Policy();
  sub_100002F44(v1);
  v4 = *(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  sub_100011900();
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + v8);
  v10 = *(v0 + (v5 & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  v12 = sub_100004B00(v11);
  *v12 = v13;
  v12[1] = sub_10006FA64;
  sub_1000135D0();
  sub_100006378();

  return sub_10007B06C(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_10008C7D0()
{
  sub_100001ED0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v4[1] = sub_10006FA64;

  return sub_10000AB2C();
}

void sub_10008C87C()
{
  sub_1000055B0();
  sub_100026F40();
  v4 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  v5 = sub_100002BDC(v4);
  v36 = v6;
  v37 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_100002B8C();
  v11 = v10 - v9;
  if (!v1)
  {
LABEL_28:

LABEL_29:
    sub_100002EEC();
    return;
  }

  if (*(v0 + 16) == v1)
  {
    goto LABEL_29;
  }

  sub_100065020(&qword_1001B9520, &qword_1001701E0);
  sub_100001F0C();
  v12 = static _SetStorage.allocate(capacity:)();
  v13 = v12;
  if (v2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v3;
  }

  v15 = 0;
  v16 = v12 + 56;
  v35 = v0;
  while (v14)
  {
    sub_10002F700();
LABEL_16:
    v20 = *(v0 + 48);
    v21 = *(v36 + 72);
    sub_100005B9C();
    sub_10000931C();
    v22 = *(v13 + 40);
    Hasher.init(_seed:)();
    v23 = v11 + *(v37 + 20);
    UUID.hash(into:)();
    Hasher._finalize()();
    v24 = *(v13 + 32);
    sub_10000D028();
    if (((v27 << v26) & ~*(v16 + 8 * v25)) == 0)
    {
      sub_10000783C();
      while (1)
      {
        sub_100060714();
        if (v32)
        {
          if (v30)
          {
            goto LABEL_31;
          }
        }

        if (v29 == v31)
        {
          v29 = 0;
        }

        if (*(v16 + 8 * v29) != -1)
        {
          sub_1000081CC();
          goto LABEL_26;
        }
      }
    }

    sub_1000033E8();
LABEL_26:
    *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v13 + 48);
    sub_100005B9C();
    sub_10000D460();
    ++*(v13 + 16);
    if (__OFSUB__(v1--, 1))
    {
      goto LABEL_32;
    }

    v0 = v35;
    if (!v1)
    {
      goto LABEL_28;
    }
  }

  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= v2)
    {
      goto LABEL_28;
    }

    ++v17;
    if (v3[v15])
    {
      sub_1000062A0();
      v14 = v19 & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_10008CAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_10008CAEC@<X0>(uint64_t a1@<X8>)
{
  v43 = sub_100065020(&qword_1001B9458, &qword_100174250);
  v3 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v5 = &v40 - v4;
  v6 = type metadata accessor for Policy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100065020(&qword_1001B9480, &qword_1001701A8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v45 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v40 = v5;
  v44 = v20;
  if (v22)
  {
    v42 = a1;
    v23 = v21;
LABEL_7:
    v41 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v23 << 6);
    v25 = (*(v18 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    (*(v7 + 16))(v10, *(v18 + 56) + *(v7 + 72) * v24, v6);
    v28 = v43;
    v29 = *(v43 + 48);
    *v17 = v26;
    *(v17 + 1) = v27;
    v30 = v10;
    v31 = v28;
    (*(v7 + 32))(&v17[v29], v30, v6);
    sub_100009BFC(v17, 0, 1, v31);

    v32 = v41;
    a1 = v42;
LABEL_8:
    *v1 = v18;
    v1[1] = v19;
    v33 = v45;
    v1[2] = v44;
    v1[3] = v21;
    v1[4] = v32;
    v34 = v1[5];
    v35 = v1[6];
    sub_10002F6B4(v17, v33, &qword_1001B9480, &qword_1001701A8);
    v36 = 1;
    if (sub_10000C6C0(v33, 1, v31) != 1)
    {
      v37 = v33;
      v38 = v40;
      sub_10002F6B4(v37, v40, &qword_1001B9458, &qword_100174250);
      v34(v38);
      sub_10000C7F0(v38, &qword_1001B9458);
      v36 = 0;
    }

    v39 = sub_100065020(&qword_1001B9460, &qword_100170188);
    return sub_100009BFC(a1, v36, 1, v39);
  }

  else
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= ((v20 + 64) >> 6))
      {
        v31 = v43;
        sub_100009BFC(&v40 - v16, 1, 1, v43);
        v32 = 0;
        goto LABEL_8;
      }

      v22 = *(v19 + 8 * v23);
      ++v21;
      if (v22)
      {
        v42 = a1;
        v21 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10008CE3C()
{
  sub_100003884();
  sub_1000135C4();
  v1 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100002F44(v1);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = sub_100004B00(v5);
  *v6 = v7;
  v6[1] = sub_10006FA64;
  sub_100003D20();

  return sub_100075B88(v8, v9, v10);
}

uint64_t sub_10008CF48()
{
  sub_100003884();
  sub_1000135C4();
  v1 = type metadata accessor for Assertion.DaemonRep();
  sub_100002F04(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v6 = sub_100004B00(v5);
  *v6 = v7;
  v6[1] = sub_10006FA64;
  sub_100003D20();

  return sub_10007484C(v8, v9, v10, v11);
}

uint64_t sub_10008D024()
{
  sub_1000094B0();
  sub_10000636C();
  v2 = sub_100065020(&qword_1001B9420, &qword_100170118);
  sub_100002F44(v2);
  v5 = *(v4 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_100011900();
  v7 = *(v0 + v6);
  v9 = (v0 + (v8 & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_10006F558;
  sub_100006378();

  return sub_100074558(v13, v14, v15, v16, v17);
}

uint64_t sub_10008D16C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10008D1C4()
{
  result = qword_1001B9530;
  if (!qword_1001B9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9530);
  }

  return result;
}

uint64_t sub_10008D218()
{
  sub_100001ED0();
  sub_1000135C4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v6 = sub_10003F82C(v4);

  return sub_100076520(v6, v2, v1);
}

uint64_t sub_10008D2D0()
{
  v4 = *(v0 + 16);
  v5 = *(*(v3 - 120) + 48) + *(v0 + 72) * v2;
  result = v1;
  v7 = *(v3 - 104);
  return result;
}

uint64_t sub_10008D330()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t sub_10008D340()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B95E0);
  sub_10000641C(v0, qword_1001B95E0);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void sub_10008D3AC()
{
  v0 = [objc_opt_self() currentEstimates];
  sub_10000E2C0(0, &qword_1001B9690, RDEstimate_ptr);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = sub_10000E8DC(v1);
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v2 == v3)
    {

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v8 = sub_10008DBF0(v5);
    v10 = v9;

    ++v3;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10013FBE8(0, v4[2] + 1, 1, v4);
        v4 = v14;
      }

      v12 = v4[2];
      v11 = v4[3];
      if (v12 >= v11 >> 1)
      {
        sub_10013FBE8(v11 > 1, v12 + 1, 1, v4);
        v4 = v15;
      }

      v4[2] = v12 + 1;
      v13 = &v4[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v3 = v7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_10008D538(uint64_t a1)
{
  v41 = a1;
  v1 = sub_100065020(&qword_1001B9698, &qword_100170280);
  v2 = sub_100002BDC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v40 - v7;
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = sub_100002BDC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  out_token = -1;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  sub_10000E2C0(0, &qword_1001B8BC0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v20 = static OS_dispatch_queue.global(qos:)();
  v21 = v16;
  v22 = v41;
  (*(v12 + 8))(v21, v9);
  (*(v4 + 16))(v8, v22, v1);
  v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = swift_allocObject();
  (*(v4 + 32))(v24 + v23, v8, v1);
  aBlock[4] = sub_10008DC54;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008DB78;
  aBlock[3] = &unk_1001B0798;
  v25 = _Block_copy(aBlock);

  v26 = String.utf8CString.getter();
  v27 = notify_register_dispatch((v26 + 32), &out_token, v20, v25);

  _Block_release(v25);

  if (!v27)
  {
    v34 = out_token;
    if (out_token != -1)
    {

      *(swift_allocObject() + 16) = v34;
      AsyncStream.Continuation.onTermination.setter();
      return;
    }

    if (qword_1001B88E0 != -1)
    {
      sub_100004FFC();
    }

    v35 = type metadata accessor for Logger();
    sub_10000641C(v35, qword_1001B95E0);

    v29 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      v39 = sub_100004A3C(v17, v19, aBlock);

      *(v37 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v29, v36, "Could not register for %s. Registration token invalid.", v37, 0xCu);
      sub_100003324(v38);

      goto LABEL_6;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (qword_1001B88E0 != -1)
  {
    sub_100004FFC();
  }

  v28 = type metadata accessor for Logger();
  sub_10000641C(v28, qword_1001B95E0);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v29, v30))
  {
    goto LABEL_13;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  aBlock[0] = v32;
  *v31 = 136315394;
  v33 = sub_100004A3C(v17, v19, aBlock);

  *(v31 + 4) = v33;
  *(v31 + 12) = 1024;
  *(v31 + 14) = v27;
  _os_log_impl(&_mh_execute_header, v29, v30, "Could not register for %s. Status: %u.", v31, 0x12u);
  sub_100003324(v32);

LABEL_6:

LABEL_14:

  AsyncStream.Continuation.finish()();
}

uint64_t sub_10008DAAC()
{
  v0 = sub_100065020(&qword_1001B96A0, &qword_100170288);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  AsyncStream.Continuation.yield<A>()();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10008DB78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10008DBF0(void *a1)
{
  v1 = [a1 countryCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10008DC54()
{
  v0 = *(*(sub_100065020(&qword_1001B9698, &qword_100170280) - 8) + 80);

  return sub_10008DAAC();
}

uint64_t *sub_10008DCD8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  sub_100003324(v0 + 9);
  sub_10000ED30((v0 + 14), &qword_1001B8AF8, &qword_10016F6E8);
  v8 = v0[19];

  v9 = v0[20];

  v10 = v0[21];

  sub_100003324(v0 + 22);
  v11 = v0[27];

  sub_100003324(v0 + 28);
  sub_100003324(v0 + 33);
  sub_100003324(v0 + 38);
  sub_100003324(v0 + 43);
  sub_100003324(v0 + 48);
  v12 = v0[53];

  v13 = v0[54];

  v14 = v0[55];
  v15 = v0[56];
  v16 = v0[57];
  v17 = v0[58];
  v18 = v0[59];
  v19 = v0[60];
  v21 = v0[61];
  v20 = v0[62];

  sub_100003324(v0 + 63);
  sub_100003324(v0 + 68);
  sub_100003324(v0 + 73);
  sub_100003324(v0 + 78);
  sub_100003324(v0 + 83);
  return v0;
}

uint64_t sub_10008DE3C()
{
  sub_10008DCD8();

  return _swift_deallocClassInstance(v0, 704, 7);
}

uint64_t sub_10008DE94(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = [objc_allocWithZone(NSProcessInfo) init];
  v3 = OBJC_IVAR____TtC13modelmanagerd6Daemon_logHandle;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  generalLogHandle.getter();
  (*(v5 + 32))(v1 + v3, v8, v4);
  *(v1 + OBJC_IVAR____TtC13modelmanagerd6Daemon_simulatorListener) = 0;
  *(v1 + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) = a1;
  return v1;
}

uint64_t sub_10008DFCC()
{
  sub_100002BAC();
  v1 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_10008E094;
  v3 = *(v0 + 16);

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10008E094()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_10000F258, 0, 0);
}

uint64_t sub_10008E180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(sub_100065020(&qword_1001BB050, &qword_10016F6E0) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return _swift_task_switch(sub_10008E21C, 0, 0);
}

uint64_t sub_10008E21C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  type metadata accessor for TaskPriority();
  sub_100005BB4();
  sub_100005640();
  v4 = swift_allocObject();
  sub_100003B28(v4);
  sub_1000057EC();
  sub_10007AE90();
  sub_10000A538();
  sub_100005BB4();
  sub_100005640();
  v5 = swift_allocObject();
  sub_100003B28(v5);
  sub_1000057EC();
  sub_10007AE90();
  sub_10000A538();
  sub_100005BB4();
  sub_100005640();
  v6 = swift_allocObject();
  sub_100003B28(v6);
  sub_1000057EC();
  sub_10007AE90();
  sub_10000A538();
  sub_100005BB4();
  sub_100005640();
  v7 = swift_allocObject();
  sub_100003B28(v7);
  sub_1000057EC();
  sub_10007AE90();
  sub_10000A538();
  sub_100005BB4();
  sub_100005640();
  v8 = swift_allocObject();
  sub_100003B28(v8);
  sub_1000057EC();
  sub_10007AE90();
  sub_10000A538();
  v9 = async function pointer to TaskGroup.awaitAllRemainingTasks(isolation:)[1];
  v10 = swift_task_alloc();
  v0[5] = v10;
  v11 = sub_100065020(&qword_1001B9408, &qword_100174090);
  *v10 = v0;
  v10[1] = sub_10008E43C;
  v12 = v0[2];

  return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v11);
}

uint64_t sub_10008E43C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100001F00();

  return v6();
}

uint64_t sub_10008E558()
{
  sub_100002BAC();
  *(v0 + 24) = *(*(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 64);

  v1 = swift_task_alloc();
  v2 = sub_100007A14(v1);
  *v2 = v3;
  sub_100004B28(v2);

  return sub_1000FF6E0();
}

uint64_t sub_10008E61C()
{
  sub_100002BAC();
  *(v0 + 24) = *(*(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 56);

  v1 = swift_task_alloc();
  v2 = sub_100007A14(v1);
  *v2 = v3;
  v4 = sub_100004B28(v2);

  return sub_100073AE0(v4);
}

uint64_t sub_10008E6C0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100001F00();

  return v6();
}

uint64_t sub_10008E7DC()
{
  sub_100002BAC();
  *(v0 + 24) = *(*(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 424);

  v1 = swift_task_alloc();
  v2 = sub_100007A14(v1);
  *v2 = v3;
  sub_100004B28(v2);

  return sub_1000A0F90();
}

uint64_t sub_10008E8A0()
{
  sub_100002BAC();
  *(v0 + 24) = *(*(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 24);

  v1 = swift_task_alloc();
  v2 = sub_100007A14(v1);
  *v2 = v3;
  sub_100004B28(v2);

  return sub_1000CC898();
}

uint64_t sub_10008E964()
{
  sub_100002BAC();
  v1 = *(*(*(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 32) + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inferenceMonitorManager);
  *(v0 + 24) = v1;

  return _swift_task_switch(sub_10008E9F4, v1, 0);
}

uint64_t sub_10008E9F4()
{
  sub_100002BAC();
  v1 = *(v0 + 24);
  sub_100125690();

  sub_100001F00();

  return v2();
}

uint64_t sub_10008EA54()
{
  sub_100002BAC();
  *(v1 + 240) = v0;
  v2 = *(*(type metadata accessor for XPCListener.InitializationOptions() - 8) + 64) + 15;
  *(v1 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10008EB0C, v0, 0);
}

uint64_t sub_10008EB0C()
{
  v1 = v0[30];
  type metadata accessor for _OSActivity();
  v0[32] = swift_initStackObject();
  v2 = sub_10001B160("Daemon setup", 12, 2);
  v3 = OBJC_IVAR____TtC13modelmanagerd6Daemon_logHandle;
  v0[33] = v2;
  v0[34] = v3;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = sub_100002F80(v5);
  v7 = v0[30];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v8[1] = [*(v7 + 112) processIdentifier];

    sub_100002F9C();
    _os_log_impl(v9, v10, v11, v12, v13, 8u);
    sub_100002BB8();
  }

  else
  {
    v14 = v0[30];
  }

  v15 = swift_task_alloc();
  v0[35] = v15;
  *v15 = v0;
  v15[1] = sub_10008ECA4;
  v16 = v0[30];

  return sub_10008DFAC();
}

uint64_t sub_10008ECA4()
{
  sub_100002BAC();
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 240);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_10008EDD4, v2, 0);
}

uint64_t sub_10008EDD4()
{
  v1 = *(v0 + 240) + *(v0 + 272);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1000059D8(&_mh_execute_header, v4, v5, "Daemon setup complete");
    sub_100002BB8();
  }

  *(v0 + 80) = &type metadata for ModelManager;
  *(v0 + 88) = sub_1000207F8();
  *(v0 + 56) = 1;
  v6 = isFeatureEnabled(_:)();
  sub_100003324((v0 + 56));
  if ((v6 & 1) != 0 && os_variant_has_internal_content())
  {
    sub_10008F570(*(*(v0 + 240) + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 112, v0 + 136);
    if (*(v0 + 160))
    {
      v7 = *(v0 + 240);
      sub_100004A04((v0 + 136), v0 + 96);
      v8 = static RemoteIPCRequest.remoteXPCServiceName.getter();
      v10 = v9;
      sub_1000480AC(v0 + 96, v0 + 176);

      sub_100107F60(v8, v10, (v0 + 176), sub_10008F5E0, v7);
      sub_100003324((v0 + 96));
    }

    else
    {
      v11 = *(v0 + 272);
      v12 = *(v0 + 240);
      sub_10000ED30(v0 + 136, &qword_1001B8AF8, &qword_10016F6E8);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (sub_100002F80(v14))
      {
        *swift_slowAlloc() = 0;
        sub_1000059D8(&_mh_execute_header, v15, v16, "Cannot build remoteXPC listener in simulator");
        sub_100002BB8();
      }
    }
  }

  v17 = *(v0 + 240);
  v18 = *(v0 + 248);
  static ModelXPCRequest.serviceName.getter();

  static XPCListener.InitializationOptions.none.getter();
  v19 = type metadata accessor for XPCListener();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();

  v22 = *(v0 + 264);
  v23 = *(v0 + 248);
  swift_beginAccess();
  os_activity_scope_leave((v22 + 24));
  swift_endAccess();

  sub_100001F00();

  return v24();
}

uint64_t (*sub_10008F278(uint64_t (*result)(), uint64_t a2))()
{
  v2 = *(a2 + OBJC_IVAR____TtC13modelmanagerd6Daemon_context);
  v3 = *(v2 + 160);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + 160);
    swift_retain_n();
    v6 = sub_100108174(v4, v3);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008F300(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC13modelmanagerd6Daemon_context);
  if (*(v2 + 152))
  {
    v3 = *(v2 + 152);

    sub_100065020(&qword_1001B9910, &qword_100170408);
    sub_10008F5F0();
    dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008F3A4()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd6Daemon_logHandle;
  v2 = type metadata accessor for Logger();
  sub_1000055EC(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13modelmanagerd6Daemon_context);

  v5 = *(v0 + OBJC_IVAR____TtC13modelmanagerd6Daemon_simulatorListener);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10008F428()
{
  sub_10008F3A4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for Daemon()
{
  result = qword_1001B9840;
  if (!qword_1001B9840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008F4A8()
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

uint64_t sub_10008F570(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001B8AF8, &qword_10016F6E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008F5F0()
{
  result = qword_1001B9918;
  if (!qword_1001B9918)
  {
    sub_10006A614(&qword_1001B9910, &qword_100170408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9918);
  }

  return result;
}

uint64_t sub_10008F654()
{
  sub_100001ED0();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v6 = sub_100004B00(v5);
  *v6 = v7;
  v6[1] = sub_10006F558;

  return sub_10008E180(v4, v2, v0);
}

uint64_t sub_10008F6F4()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000501C(v1);

  return sub_10008E538(v3, v4, v5, v6);
}

uint64_t sub_10008F780()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000501C(v1);

  return sub_10008E5FC(v3, v4, v5, v6);
}

uint64_t sub_10008F80C()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000501C(v1);

  return sub_10008E7BC(v3, v4, v5, v6);
}

uint64_t sub_10008F898()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000501C(v1);

  return sub_10008E880(v3, v4, v5, v6);
}

uint64_t sub_10008F924()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000501C(v1);

  return sub_10008E944(v3, v4, v5, v6);
}

uint64_t sub_10008F9B4()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B9920);
  sub_10000641C(v0, qword_1001B9920);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10008FA20()
{
  sub_100001ED0();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100003960();
  *v6 = v5;
  v8 = *(v7 + 176);
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;
  *(v5 + 184) = v0;

  if (!v0)
  {
    *(v5 + 208) = v3;
  }

  sub_1000059F8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10008FB30()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 136);
  v4 = *(v0 + 104);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  TaskCancellingXPCReceivedMessage.auditToken.getter();
  v7 = *(v6 + 64);
  sub_1000020C0((v0 + 16));
  v8 = *(v0 + 48);
  sub_100003370((v0 + 16), *(v0 + 40));
  sub_100012728();
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 104);
  if (v2)
  {
    v10(v11, *(v0 + 80));
    sub_100003324((v0 + 16));
    v12 = *(v0 + 56);
    v12[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
    v12[4] = sub_1000085B8(&qword_1001B9A10);
    v12[5] = sub_100005038(&qword_1001B99F8);
    sub_10000366C(v12);
    swift_errorRetain();
    ModelManagerError.init(wrapping:)();
    swift_storeEnumTagMultiPayload();

    v13 = sub_10001132C();
    v14(v13);

    sub_100001F00();

    return v15();
  }

  else
  {
    v17 = *(v0 + 96);
    v18 = *(v0 + 64);
    v10(v11, *(v0 + 80));
    sub_100003324((v0 + 16));
    TaskCancellingXPCReceivedMessage.auditToken.getter();
    swift_task_alloc();
    sub_100004B34();
    *(v0 + 192) = v19;
    *v19 = v20;
    v19[1] = sub_10008FD40;
    v21 = *(v0 + 136);
    v22 = *(v0 + 96);
    v23 = *(v0 + 72);
    v24 = *(v0 + 56);

    return sub_100013CBC(v24, v23, v22);
  }
}

uint64_t sub_10008FD40()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  v5 = *(v2 + 192);
  *v4 = *v1;
  *(v3 + 200) = v0;

  v6 = *(v2 + 168);
  (*(v2 + 160))(*(v2 + 96), *(v2 + 80));
  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10008FEA4()
{
  sub_100001ED0();
  v0 = sub_10001132C();
  v1(v0);

  sub_100001F00();

  return v2();
}

uint64_t sub_10008FF2C()
{
  sub_100001ED0();
  v1 = *(v0 + 152);
  v2 = *(v0 + 56);
  v2[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v2[4] = sub_1000085B8(&qword_1001B9A10);
  v2[5] = sub_100005038(&qword_1001B99F8);
  sub_10000366C(v2);
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  sub_100019A1C();

  v3 = sub_10001132C();
  v4(v3);

  sub_100001F00();

  return v5();
}

uint64_t sub_100090024()
{
  sub_100001ED0();
  v1 = *(v0 + 184);
  v2 = *(v0 + 56);
  v2[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v2[4] = sub_1000085B8(&qword_1001B9A10);
  v2[5] = sub_100005038(&qword_1001B99F8);
  sub_10000366C(v2);
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  sub_100019A1C();

  v3 = sub_10001132C();
  v4(v3);

  sub_100001F00();

  return v5();
}

uint64_t sub_10009011C()
{
  sub_100001ED0();
  v1 = *(v0 + 200);
  v2 = *(v0 + 56);
  v2[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v2[4] = sub_1000085B8(&qword_1001B9A10);
  v2[5] = sub_100005038(&qword_1001B99F8);
  sub_10000366C(v2);
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  sub_100019A1C();

  v3 = sub_10001132C();
  v4(v3);

  sub_100001F00();

  return v5();
}

uint64_t sub_100090214()
{
  sub_100002BAC();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = type metadata accessor for AuditToken();
  v1[16] = v5;
  sub_100002F44(v5);
  v1[17] = v6;
  v8 = *(v7 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest();
  v1[21] = v9;
  sub_100002F44(v9);
  v1[22] = v10;
  v12 = *(v11 + 64) + 15;
  v1[23] = swift_task_alloc();
  sub_1000059F8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100090334()
{
  sub_100003884();
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[15];
  v4 = v0[12];
  sub_100005490();
  TaskCancellingXPCReceivedMessage.decode()();
  TaskCancellingXPCReceivedMessage.auditToken.getter();
  swift_task_alloc();
  sub_100004B34();
  v0[24] = v5;
  *v5 = v6;
  v5[1] = sub_100090408;
  v7 = v0[23];
  v8 = v0[20];

  return sub_10015DED0(v3 + 16, v8);
}

uint64_t sub_100090408()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = v2[24];
  v6 = *v1;
  *v4 = *v1;
  v3[25] = v0;

  v7 = v2[20];
  v8 = v2[17];
  v9 = v2[16];
  if (v0)
  {
    v10 = *(v8 + 8);
    v3[35] = v10;
    v10(v7, v9);
    sub_1000059F8();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v14 = v3[15];
    v15 = *(v8 + 8);
    v3[26] = v15;
    v3[27] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v7, v9);
    v16 = swift_task_alloc();
    v3[28] = v16;
    *v16 = v6;
    v16[1] = sub_1000905E4;
    v17 = v3[23];

    return sub_10015E158(v14 + 16);
  }
}

uint64_t sub_1000905E4()
{
  sub_100001ED0();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100003960();
  *v6 = v5;
  v8 = *(v7 + 224);
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;
  *(v5 + 232) = v0;

  if (!v0)
  {
    *(v5 + 288) = v3;
  }

  sub_1000059F8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000906F4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 232);
  v3 = *(v0 + 184);
  v4 = *(v0 + 152);
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);
  TaskCancellingXPCReceivedMessage.auditToken.getter();
  v7 = *(v5 + 64);
  sub_1000020C0((v0 + 56));
  v8 = *(v0 + 88);
  sub_100003370((v0 + 56), *(v0 + 80));
  sub_100012728();
  if (v2)
  {
    v9 = *(v0 + 216);
    (*(v0 + 208))(*(v0 + 152), *(v0 + 128));
    sub_100003324((v0 + 56));
    *(v0 + 256) = *(v0 + 208);
    *(v0 + 264) = v2;
    v10 = *(v0 + 104);
    *(v0 + 40) = sub_100065020(&qword_1001B99F0, &qword_100170530);
    *(v0 + 48) = sub_100005038(&qword_1001B99F8);
    sub_10000366C((v0 + 16));
    swift_errorRetain();
    ModelManagerError.init(wrapping:)();
    swift_storeEnumTagMultiPayload();
    v24 = (v10 + *v10);
    v11 = v10[1];
    swift_task_alloc();
    sub_100004B34();
    *(v0 + 272) = v12;
    *v12 = v13;
    v14 = sub_100005BD4(v12);

    return v24(v14);
  }

  else
  {
    v16 = *(v0 + 216);
    (*(v0 + 208))(*(v0 + 152), *(v0 + 128));
    sub_100003324((v0 + 56));
    *(v0 + 240) = *(v0 + 208);
    v17 = *(v0 + 144);
    v18 = *(v0 + 96);
    TaskCancellingXPCReceivedMessage.auditToken.getter();
    v19 = swift_task_alloc();
    *(v0 + 248) = v19;
    *v19 = v0;
    v20 = sub_10000A554(v19);

    return sub_10015E4B8(v20, v21, v22, v23);
  }
}

uint64_t sub_10009091C()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[31];
  v3 = v1[30];
  v4 = v1[18];
  v5 = v1[17];
  v6 = v1[16];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v3(v4, v6);
  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100090A74()
{
  sub_100001ED0();
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  (*(v0[22] + 8))(v0[23], v0[21]);

  sub_100001F00();

  return v4();
}

uint64_t sub_100090B0C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  sub_100003960();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  sub_100003324((v2 + 16));
  sub_1000059F8();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100090BF8()
{
  sub_100002BAC();
  v1 = v0[33];

  v0[30] = v0[32];
  v2 = v0[18];
  v3 = v0[12];
  TaskCancellingXPCReceivedMessage.auditToken.getter();
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v5 = sub_10000A554(v4);

  return sub_10015E4B8(v5, v6, v7, v8);
}

uint64_t sub_100090C80()
{
  sub_100003884();
  v1 = v0[25];
  v0[32] = v0[35];
  v0[33] = v1;
  v2 = v0[13];
  v0[5] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v0[6] = sub_100005038(&qword_1001B99F8);
  sub_10000366C(v0 + 2);
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  swift_storeEnumTagMultiPayload();
  sub_100007850();
  v9 = v3;
  v4 = *(v2 + 4);
  swift_task_alloc();
  sub_100004B34();
  v0[34] = v5;
  *v5 = v6;
  v7 = sub_100005BD4(v5);

  return v9(v7);
}

uint64_t sub_100090D90()
{
  sub_100003884();
  v1 = v0[29];
  v0[32] = v0[26];
  v0[33] = v1;
  v2 = v0[13];
  v0[5] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v0[6] = sub_100005038(&qword_1001B99F8);
  sub_10000366C(v0 + 2);
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  swift_storeEnumTagMultiPayload();
  sub_100007850();
  v9 = v3;
  v4 = *(v2 + 4);
  swift_task_alloc();
  sub_100004B34();
  v0[34] = v5;
  *v5 = v6;
  v7 = sub_100005BD4(v5);

  return v9(v7);
}

uint64_t sub_100090EA0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1001B88E8 != -1)
  {
    sub_10000A220();
  }

  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001B9920);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error during decoding the message %@", v5, 0xCu);
    sub_10006F830(v6);
  }

  a1[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  a1[4] = sub_100005038(&qword_1001B99F8);
  v8 = sub_10000366C(a1);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  _print_unlocked<A, B>(_:_:)();
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = enum case for ModelManagerError.ipcError(_:);
  v10 = type metadata accessor for ModelManagerError();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000910B0()
{
  sub_100002BAC();
  *(v1 + 80) = v0;
  sub_1000059F8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100091138()
{
  sub_100003884();
  v1 = *(v0 + 80);
  type metadata accessor for _OSActivity();
  *(v0 + 88) = swift_initStackObject();
  *(v0 + 96) = sub_10001B160("Client connection cancellation", 30, 2);
  v2 = *(v1 + 56);
  os_unfair_lock_lock(v2 + 5);
  os_unfair_lock_opaque = v2[4]._os_unfair_lock_opaque;
  *(v0 + 136) = os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 5);
  if (qword_1001B88E8 != -1)
  {
    sub_10000A220();
  }

  v4 = type metadata accessor for Logger();
  sub_10000641C(v4, qword_1001B9920);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = os_unfair_lock_opaque;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cancellation Handler with XPC Error, sessionManager invoked for removeAllSession with pid %ld", v7, 0xCu);
  }

  v8 = *(v0 + 80);

  *(v0 + 104) = *(*sub_100003370((v8 + 16), *(v8 + 40)) + 128);

  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_100091328;

  return sub_100092C14();
}

uint64_t sub_100091328()
{
  sub_100002BAC();
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_1000059F8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10009145C()
{
  sub_100001ED0();
  *(v0 + 120) = *(*sub_100003370((*(v0 + 80) + 16), *(*(v0 + 80) + 40)) + 120);

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100091548;
  v2 = *(v0 + 136);

  return sub_10007687C(v2);
}

uint64_t sub_100091548()
{
  sub_100002BAC();
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_1000059F8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10009167C()
{
  sub_100002BAC();
  v1 = *(v0 + 96);
  swift_beginAccess();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  sub_100001F00();

  return v2();
}

uint64_t *sub_100091728()
{
  sub_100003324(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t sub_100091758()
{
  sub_100091728();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1000917F8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006FA64;

  return sub_100090214();
}

uint64_t sub_1000918A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TaskCancellablePeerHandler.handleIncomingRequest(_:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006FA64;

  return TaskCancellablePeerHandler.handleIncomingRequest(_:)(a1, a2, a3);
}

uint64_t sub_100091958()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006F558;

  return sub_1000910B0();
}

uint64_t sub_100091A00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100091A48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(&qword_1001B99F0, &qword_100170530);
    sub_100091A00(&qword_1001B9A00, &type metadata accessor for ModelManagerError);
    sub_100091A00(&qword_1001B9A08, &type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100091B30(uint64_t a1)
{
  v2 = type metadata accessor for ModelCatalogAsset(0);
  v3 = sub_100002F44(v2);
  v34 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100005F44(v7, v29);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002045C(0, v8, 0);
  result = sub_10001E724(a1);
  v12 = result;
  v13 = 0;
  v37 = a1 + 56;
  v30 = a1 + 64;
  v31 = v8;
  v32 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v12 < 1 << *(a1 + 32))
    {
      v14 = v12 >> 6;
      if ((*(v37 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v36 = v11;
      v35 = v10;
      sub_10000C050(*(a1 + 48) + *(v34 + 72) * v12, v33);
      v16 = *v33;
      v15 = v33[1];

      result = sub_10000AAD0(v33, type metadata accessor for ModelCatalogAsset);
      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10002045C((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v16;
      v19[5] = v15;
      if (v36)
      {
        goto LABEL_29;
      }

      a1 = v32;
      v20 = 1 << *(v32 + 32);
      if (v12 >= v20)
      {
        goto LABEL_26;
      }

      v21 = *(v37 + 8 * v14);
      if ((v21 & (1 << v12)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v32 + 36) != v35)
      {
        goto LABEL_28;
      }

      v22 = v21 & (-2 << (v12 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v23 = v31;
      }

      else
      {
        v24 = v14 << 6;
        v25 = v14 + 1;
        v23 = v31;
        v26 = (v30 + 8 * v14);
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_100016E94(v12, v35, 0);
            v20 = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v12, v35, 0);
      }

LABEL_19:
      if (++v13 == v23)
      {
        return _swiftEmptyArrayStorage;
      }

      v11 = 0;
      v10 = *(v32 + 36);
      v12 = v20;
      if (v20 < 0)
      {
        break;
      }
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
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100091E08(uint64_t a1)
{
  v3 = type metadata accessor for ModelCatalogAsset(0);
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v3 - 8);
  v41 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for AppleIntelligenceAsset();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v40);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v38 = v9;
  v33[1] = v1;
  v46 = _swiftEmptyArrayStorage;
  sub_100016FE0();
  v11 = v46;
  result = sub_10001E724(a1);
  v15 = result;
  v16 = 0;
  v45 = a1 + 56;
  v34 = a1 + 64;
  v35 = v10;
  v17 = a1;
  v36 = a1;
  v37 = v6 + 32;
  v39 = v6;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v15 < 1 << *(v17 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v45 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v17 + 36) != v13)
      {
        goto LABEL_25;
      }

      v44 = v14;
      v43 = v13;
      v19 = *(v17 + 48);
      v20 = v41;
      sub_10000C050(v19 + *(v42 + 72) * v15, v41);
      v21 = *v20;
      v22 = v20[1];

      v23 = v38;
      AppleIntelligenceAsset.init(assetIdentifier:version:)();
      sub_10000AAD0(v20, type metadata accessor for ModelCatalogAsset);
      v46 = v11;
      v24 = v11[2];
      if (v24 >= v11[3] >> 1)
      {
        sub_100016FE0();
        v11 = v46;
      }

      v11[2] = v24 + 1;
      result = (*(v39 + 32))(v11 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v24, v23, v40);
      if (v44)
      {
        goto LABEL_29;
      }

      v17 = v36;
      v25 = 1 << *(v36 + 32);
      if (v15 >= v25)
      {
        goto LABEL_26;
      }

      v26 = *(v45 + 8 * v18);
      if ((v26 & (1 << v15)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v36 + 36) != v43)
      {
        goto LABEL_28;
      }

      v27 = v26 & (-2 << (v15 & 0x3F));
      if (v27)
      {
        v25 = __clz(__rbit64(v27)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v18 << 6;
        v29 = v18 + 1;
        v30 = (v34 + 8 * v18);
        while (v29 < (v25 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_100016E94(v15, v43, 0);
            v25 = __clz(__rbit64(v31)) + v28;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v15, v43, 0);
      }

LABEL_19:
      if (++v16 == v35)
      {
        return v11;
      }

      v14 = 0;
      v13 = *(v17 + 36);
      v15 = v25;
      if (v25 < 0)
      {
        break;
      }
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
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000921C4()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B9A18);
  sub_10000641C(v0, qword_1001B9A18);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100092238()
{
  sub_100002BAC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_100004B28(v1);

  return sub_100093228();
}

uint64_t sub_1000922C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[5];
  v5 = a3[6];
  CustomAssetConfiguration.instanceID.getter();
  CustomAssetConfiguration.templateID.getter();
  AuditToken.processIdentifier.getter();
  if (a3[2] != 1)
  {
    v6 = a3[3];
    v7 = a3[4];
  }

  v8 = static CustomAssetConfiguration.getCustomAssetConfigurationIdentifer(instanceID:templateID:clientProcessID:appBundleID:executablePath:)();
  v10 = v9;

  if (v8 == CustomAssetConfiguration.identifier.getter() && v10 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      v15 = type metadata accessor for ModelManagerError();
      sub_100015F10(&qword_1001B8F50, 255, &type metadata accessor for ModelManagerError);
      swift_allocError();
      (*(*(v15 - 8) + 104))(v16, enum case for ModelManagerError.invalidClientIdentifier(_:), v15);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000924A0()
{
  v0 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  CustomAssetConfiguration.templateID.getter();
  CustomAssetConfiguration.copyWithAuditToken(auditToken:)();
  v4 = type metadata accessor for CustomAssetConfiguration();
  sub_100009BFC(v3, 0, 1, v4);
  return sub_1000FF3CC();
}

uint64_t sub_100092580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005F88();
  sub_1000033DC();
  v16 = v14[71];

  v17 = v14[73];
  sub_100003324(v14 + 22);
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v18 = v14[69];
  v19 = type metadata accessor for Logger();
  sub_10000641C(v19, qword_1001B9A18);
  sub_10000D0E8();

  swift_errorRetain();
  v20 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10001E6F0();

  if (os_log_type_enabled(v20, v15))
  {
    v21 = v14[69];
    sub_1000267F8();
    v22 = sub_1000039DC();
    sub_1000033D0();
    a9 = swift_slowAlloc();
    sub_100026B40(4.8151e-34);
    sub_10001AFF8();
    sub_10000CD00();
    v23 = sub_10000CF10();
    sub_100004A3C(v23, v24, v25);
    sub_10000A08C();

    sub_100003760();
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    sub_10003DDBC(v26);
    sub_100057A3C(&_mh_execute_header, v20, v15, "Session %s couldn't mark assets as in use by the session: %@");
    sub_10001301C(v22, &qword_1001B8F68);
    sub_100002BD0();

    sub_100003324(a9);
    sub_100007C2C();

    sub_100002BD0();
  }

  else
  {
  }

  v27 = async function pointer to Task<>.value.getter[1];
  swift_task_alloc();
  sub_100004B34();
  v14[78] = v28;
  *v28 = v29;
  sub_100002FAC(v28);
  sub_1000A0258();
  sub_1000062BC();

  return Task<>.value.getter(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100092764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005F88();
  sub_1000033DC();
  v16 = v14[77];
  sub_100003324(v14 + 22);
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v17 = v14[69];
  v18 = type metadata accessor for Logger();
  sub_10000641C(v18, qword_1001B9A18);
  sub_10000D0E8();

  swift_errorRetain();
  v19 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10001E6F0();

  if (os_log_type_enabled(v19, v15))
  {
    v20 = v14[69];
    sub_1000267F8();
    v21 = sub_1000039DC();
    sub_1000033D0();
    a9 = swift_slowAlloc();
    sub_100026B40(4.8151e-34);
    sub_10001AFF8();
    sub_10000CD00();
    v22 = sub_10000CF10();
    sub_100004A3C(v22, v23, v24);
    sub_10000A08C();

    sub_100003760();
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    sub_10003DDBC(v25);
    sub_100057A3C(&_mh_execute_header, v19, v15, "Session %s couldn't mark assets as in use by the session: %@");
    sub_10001301C(v21, &qword_1001B8F68);
    sub_100002BD0();

    sub_100003324(a9);
    sub_100007C2C();

    sub_100002BD0();
  }

  else
  {
  }

  v26 = async function pointer to Task<>.value.getter[1];
  swift_task_alloc();
  sub_100004B34();
  v14[78] = v27;
  *v27 = v28;
  sub_100002FAC(v27);
  sub_1000A0258();
  sub_1000062BC();

  return Task<>.value.getter(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100092940()
{
  sub_100002BAC();
  v1 = v0[7];
  v0[2] = v0[9];
  sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[8];

  sub_100001F00();

  return v3();
}

uint64_t sub_1000929C8()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[13];
  v3 = v1[12];
  v4 = v1[7];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  sub_10000CC50();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100092AE0()
{
  sub_10001446C();
  sub_10000636C();
  sub_10004575C();
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    v4 = v0[5];
    sub_10000A05C();
    v5 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v5 = 136315138;
    v6 = sub_10001AFF8();
    sub_10000CB58(v6, v7, v8);
    sub_100007BA0();
    *(v5 + 4) = v2;
    sub_1000033FC();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_100003324(v1);
    sub_1000039CC();

    sub_100002BD0();
  }

  v14 = v0[5];
  v15 = sub_10000D070(v0[7]);
  v0[14] = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  Session.Metadata.onBehalfOfPID.getter();
  v16 = *v15;
  v17 = swift_task_alloc();
  v18 = sub_10000D03C(v17);
  *v18 = v19;
  sub_1000094C8(v18);
  sub_100003770();

  return sub_100037440();
}

uint64_t sub_100092C14()
{
  sub_100002BAC();
  *(v1 + 96) = v0;
  *(v1 + 184) = v2;
  v3 = type metadata accessor for RequestCancellationReason();
  *(v1 + 104) = v3;
  sub_100002F44(v3);
  *(v1 + 112) = v4;
  v6 = *(v5 + 64);
  *(v1 + 120) = sub_100002C58();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100092CBC()
{
  sub_10000636C();
  v2 = *(v0 + 96);
  sub_100004CBC();
  swift_beginAccess();
  v3 = *(v2 + 112);
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_1000464A4();
    __CocoaSet.makeIterator()();
    v4 = sub_100005B00();
    type metadata accessor for DaemonSession(v4);
    sub_10000C61C();
    sub_100015F10(v5, 255, v6);
    sub_100001F70();
    Set.Iterator.init(_cocoa:)();
    result = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 48);
  }

  else
  {
    v12 = -1 << *(v3 + 32);
    v8 = v3 + 56;
    v10 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v3 + 56);

    v9 = 0;
  }

  *(v0 + 136) = v8;
  *(v0 + 144) = v10;
  *(v0 + 128) = result;
  *(v0 + 188) = enum case for RequestCancellationReason.clientTermination(_:);
  if (result < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v15 = v9;
  v16 = v9;
  if (!v11)
  {
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v16 >= ((*(v0 + 144) + 64) >> 6))
      {
        break;
      }

      ++v15;
      if (*(*(v0 + 136) + 8 * v16))
      {
        goto LABEL_12;
      }
    }

LABEL_21:
    v23 = *(v0 + 136);
    v24 = *(v0 + 120);
    sub_100055984();
    sub_100001F00();
    sub_100023A30();

    __asm { BRAA            X1, X16 }
  }

LABEL_12:
  sub_1000062A0();
  sub_10001E4DC(v17, v18);
  while (1)
  {
    *(v0 + 160) = v16;
    *(v0 + 168) = v1;
    *(v0 + 152) = v10;
    if (!v10)
    {
LABEL_20:
      v21 = *(v0 + 144);
      v22 = *(v0 + 128);
      goto LABEL_21;
    }

    v20 = *(v0 + 184);
    if (AuditToken.processIdentifier.getter() == v20)
    {
      break;
    }

    result = *(v0 + 128);
    v9 = v16;
    v11 = v1;
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v19 = __CocoaSet.Iterator.next()();
    if (!v19)
    {
      goto LABEL_20;
    }

    *(v0 + 88) = v19;
    type metadata accessor for DaemonSession(0);
    sub_10001910C();
    v10 = *(v0 + 80);
    v16 = v9;
    v1 = v11;
  }

  v27 = sub_1000A0270();
  v28(v27);
  v29 = swift_task_alloc();
  *(v0 + 176) = v29;
  *v29 = v0;
  sub_100007FBC(v29);
  sub_100023A30();

  return sub_100036A94();
}

uint64_t sub_100092F2C()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[22];
  v3 = v1[15];
  v4 = v1[14];
  v5 = v1[13];
  v6 = v1[12];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v4 + 8);
  v10 = sub_100001F70();
  v11(v10);
  v12 = sub_100003DE0();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10009307C()
{
  sub_10000636C();
  v3 = *(v0 + 152);

  v4 = *(v0 + 160);
  for (i = *(v0 + 168); ; i = v2)
  {
    result = *(v0 + 128);
    if (result < 0)
    {
      v11 = __CocoaSet.Iterator.next()();
      if (!v11)
      {
        goto LABEL_14;
      }

      *(v0 + 88) = v11;
      type metadata accessor for DaemonSession(0);
      sub_10001910C();
      v1 = *(v0 + 80);
      v8 = v4;
      v2 = i;
      goto LABEL_10;
    }

    v7 = v4;
    v8 = v4;
    if (!i)
    {
      break;
    }

LABEL_7:
    sub_1000062A0();
    sub_10001E4DC(v9, v10);
LABEL_10:
    *(v0 + 160) = v8;
    *(v0 + 168) = v2;
    *(v0 + 152) = v1;
    if (!v1)
    {
LABEL_14:
      v13 = *(v0 + 144);
      v14 = *(v0 + 128);
LABEL_15:
      v15 = *(v0 + 136);
      v16 = *(v0 + 120);
      sub_100055984();
      sub_100001F00();
      sub_100023A30();

      __asm { BRAA            X1, X16 }
    }

    v12 = *(v0 + 184);
    if (AuditToken.processIdentifier.getter() == v12)
    {
      v19 = sub_1000A0270();
      v20(v19);
      v21 = swift_task_alloc();
      *(v0 + 176) = v21;
      *v21 = v0;
      sub_100007FBC();
      sub_100023A30();

      return sub_100036A94();
    }

    v4 = v8;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= ((*(v0 + 144) + 64) >> 6))
    {
      goto LABEL_15;
    }

    ++v7;
    if (*(*(v0 + 136) + 8 * v8))
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100093228()
{
  sub_100001ED0();
  v1[17] = v0;
  v2 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v2);
  v4 = *(v3 + 64);
  v1[18] = sub_10000F0C0();
  v1[19] = swift_task_alloc();
  v5 = sub_100065020(&qword_1001B9CB8, &qword_1001728F0);
  v1[20] = v5;
  sub_100002F44(v5);
  v1[21] = v6;
  v8 = *(v7 + 64);
  v1[22] = sub_100002C58();
  v9 = sub_100065020(&qword_1001B9CC0, &qword_100170728);
  v1[23] = v9;
  sub_100002F44(v9);
  v1[24] = v10;
  v12 = *(v11 + 64);
  v1[25] = sub_100002C58();
  sub_1000071A8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_1000933A0()
{
  sub_100002BAC();
  v1 = sub_10000D070(*(v0 + 136));
  *(v0 + 208) = v1;
  v2 = *v1;

  return _swift_task_switch(sub_100093434, v2, 0);
}

uint64_t sub_100093434()
{
  sub_100001ED0();
  v1 = *(v0 + 136);
  v2 = **(v0 + 208);
  sub_1000FBDBC(*(v0 + 176));
  sub_10000CC50();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000934D4()
{
  sub_100001ED0();
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  AsyncStream.makeAsyncIterator()();
  v5 = *(v3 + 8);
  v6 = sub_100001F70();
  v7(v6);
  sub_100011344();
  v0[27] = sub_100015F10(v8, v9, v10);
  v11 = v0[17];
  v12 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  sub_100011910(v13);
  v14 = sub_10001646C();

  return AsyncStream.Iterator.next(isolation:)(v14);
}

uint64_t sub_1000935D0()
{
  sub_100001ED0();
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 200);
  sub_10014E860(*(v0 + 212));
  sub_10000CC50();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100093EDC()
{
  sub_100003884();
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 248);
  v5 = *(*v0 + 200);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  v8 = *(v3 + 8);
  v9 = sub_1000060A4();
  v10(v9);
  sub_1000071A8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000951CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  sub_10005D918();
  sub_1000033DC();
  v14 = v12[11];
  v15 = v12[8];
  v16 = v12[9];
  v17 = v12[7];
  v18 = v12[2];

  swift_errorRetain();
  v19 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10001E6F0();

  v20 = os_log_type_enabled(v19, v13);
  v21 = v12[11];
  if (v20)
  {
    v22 = v12[2];
    sub_1000267F8();
    v23 = sub_1000039DC();
    sub_1000033D0();
    a10 = swift_slowAlloc();
    *v18 = 136315394;
    v24 = sub_10001AFF8();
    v27 = sub_10000CB58(v24, v25, v26);

    *(v18 + 4) = v27;
    *(v18 + 12) = 2112;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    sub_10003DDBC(v28);
    sub_100005A04();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    sub_10001301C(v23, &qword_1001B8F68);
    sub_100002BD0();

    sub_100003324(a10);
    sub_100007C2C();

    sub_100002BD0();
  }

  else
  {
  }

  v34 = v12[6];

  sub_100001F00();
  sub_100016688();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_100095360()
{
  sub_100002BAC();
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  sub_100001F00();

  return v3();
}

uint64_t sub_1000953BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005B00();
  v6 = type metadata accessor for ModelCatalogAsset(v5);
  v7 = sub_100002F44(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v69 - v15;
  v17 = sub_10004BB90();
  if (!v2)
  {
    v19 = v17;
    v20 = v18;
    v21 = sub_10001CFA8();
    v3 = v21;
    if (a2)
    {
      v76 = v16;
      v70 = v20;
      v71 = v14;
      v69[0] = v19;
      v69[1] = 0;
      v20 = v21 + 56;
      v23 = 1 << *(v21 + 32);
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v25 = v24 & *(v21 + 56);
      v26 = (v23 + 63) >> 6;
      v78 = a2 + 56;

      v27 = 0;
      v75 = _swiftEmptyArrayStorage;
      v72 = v9;
      v73 = v3;
LABEL_9:
      while (v25)
      {
LABEL_14:
        v29 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v30 = *(v3 + 48);
        v74 = *(v9 + 72);
        sub_10000C050(v30 + v74 * (v29 | (v27 << 6)), v76);
        if (*(a2 + 16))
        {
          v31 = *v76;
          v32 = v76[1];
          v33 = *(a2 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v34 = Hasher._finalize()();
          v35 = ~(-1 << *(a2 + 32));
          while (1)
          {
            v36 = v34 & v35;
            if (((*(v78 + (((v34 & v35) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v34 & v35)) & 1) == 0)
            {
              break;
            }

            v37 = (*(a2 + 48) + 16 * v36);
            if (*v37 != v31 || v37[1] != v32)
            {
              v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v34 = v36 + 1;
              if ((v39 & 1) == 0)
              {
                continue;
              }
            }

            sub_100025814(v76, v71);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = v75[2];
              sub_1000093CC();
              v75 = v43;
            }

            v9 = v72;
            v3 = v73;
            v40 = v75[2];
            if (v40 >= v75[3] >> 1)
            {
              sub_1000093CC();
              v75 = v44;
            }

            v41 = v75;
            v75[2] = v40 + 1;
            sub_100025814(v71, v41 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v40 * v74);
            goto LABEL_9;
          }
        }

        sub_10000AAD0(v76, type metadata accessor for ModelCatalogAsset);
        v9 = v72;
        v3 = v73;
      }

      while (1)
      {
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v28 >= v26)
        {
          break;
        }

        v25 = *(v20 + 8 * v28);
        ++v27;
        if (v25)
        {
          v27 = v28;
          goto LABEL_14;
        }
      }

      sub_1000089FC();
      v3 = v45;
      if (*(v45 + 16) != *(a2 + 16))
      {

        v61 = type metadata accessor for ModelManagerError();
        sub_100005C00();
        sub_100015F10(v62, 255, v63);
        sub_1000055A4();
        sub_100007894();
        v64 = swift_allocError();
        sub_100011D90(v64, v65);
        v66 = v70;
        *v67 = v69[0];
        v67[1] = v66;
        v67[2] = a2;
        sub_100006098(v61);
        (*(v68 + 104))();
        swift_willThrow();
        return v3;
      }

      if (qword_1001B88F0 != -1)
      {
        sub_10000505C();
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000641C(v46, qword_1001B9A18);
      sub_10000A08C();

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        sub_10000A05C();
        v49 = swift_slowAlloc();
        sub_1000033D0();
        v50 = swift_slowAlloc();
        v77 = v50;
        *v49 = 136315138;
        sub_100091B30(v3);
        Array.description.getter();
        sub_10001E598();
        v51 = sub_10000CF10();
        v54 = sub_100004A3C(v51, v52, v53);
        v3 = v20;

        *(v49 + 4) = v54;
        v55 = "Request specified required asset IDs, using asset subset: %s";
        goto LABEL_36;
      }
    }

    else
    {

      if (qword_1001B88F0 != -1)
      {
LABEL_40:
        sub_10000505C();
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_10000641C(v56, qword_1001B9A18);
      sub_10000A08C();

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        sub_10000A05C();
        v49 = swift_slowAlloc();
        sub_1000033D0();
        v50 = swift_slowAlloc();
        v77 = v50;
        *v49 = 136315138;
        sub_100091B30(v3);
        Array.description.getter();
        sub_10001E598();
        v57 = sub_10000CF10();
        v60 = sub_100004A3C(v57, v58, v59);
        v3 = v20;

        *(v49 + 4) = v60;
        v55 = "Request didn't specify required asset IDs, using full asset bundle: %s";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v47, v48, v55, v49, 0xCu);
        sub_100003324(v50);
        sub_100007C2C();

        sub_1000039CC();
      }
    }
  }

  return v3;
}

uint64_t sub_1000959D8()
{
  sub_100002BAC();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v1[19] = v5;
  v6 = type metadata accessor for ClientData();
  v1[24] = v6;
  sub_100002F44(v6);
  v1[25] = v7;
  v9 = *(v8 + 64);
  v1[26] = sub_100002C58();
  v10 = type metadata accessor for InferenceProviderDescriptor();
  v1[27] = v10;
  sub_100002F44(v10);
  v1[28] = v11;
  v13 = *(v12 + 64);
  v1[29] = sub_10000F0C0();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v14 = sub_100002C10();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_100096030()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 272);
  *v4 = *v2;
  *(v3 + 280) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 184);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100096144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  sub_100012EA4(v16 + 16, v16 + 96, &qword_1001B9CB0, &qword_100171E70);
  if (*(v16 + 120))
  {
    v17 = *(v16 + 208);
    v18 = *(v16 + 168);
    sub_100004A04((v16 + 96), v16 + 56);
    v19 = *(v16 + 88);
    sub_100003370((v16 + 56), *(v16 + 80));
    RequestMetadata.clientData.getter();
    v20 = *(v19 + 24);
    v77 = v20 + *v20;
    v21 = v20[1];
    v22 = swift_task_alloc();
    *(v16 + 288) = v22;
    *v22 = v16;
    v22[1] = sub_100096580;
    sub_1000031B8(*(v16 + 208));
    sub_1000135D0();
    sub_100003D04();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, v19 + 24, v77, a12, a13, a14, a15, a16);
  }

  else
  {
    sub_10001301C(v16 + 96, &qword_1001B9CB0);
    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v32 = *(v16 + 248);
    v34 = *(v16 + 224);
    v33 = *(v16 + 232);
    v35 = *(v16 + 216);
    v36 = type metadata accessor for Logger();
    sub_10000641C(v36, qword_1001B9A18);
    v37 = *(v34 + 16);
    v38 = sub_1000062B0();
    v39(v38);
    v40 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100006390();
    v42 = os_log_type_enabled(v40, v41);
    v44 = *(v16 + 224);
    v43 = *(v16 + 232);
    v45 = *(v16 + 216);
    if (v42)
    {
      sub_10000A05C();
      LODWORD(a11) = v35;
      v46 = swift_slowAlloc();
      sub_1000033D0();
      a10 = swift_slowAlloc();
      a12 = a10;
      *v46 = 136315138;
      sub_100009C4C();
      sub_100015F10(v47, 255, v48);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_100045E40();
      v49 = *(v44 + 8);
      v50 = sub_100005E8C();
      v49(v50);
      v51 = sub_10000CD1C();
      sub_100004A3C(v51, v52, v53);
      sub_100005974();

      *(v46 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v40, a11, "vm punchout request made with unrecognized InferenceProvider %s", v46, 0xCu);
      sub_100003324(a10);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {

      v49 = *(v44 + 8);
      v54 = sub_100005E8C();
      v49(v54);
    }

    v56 = *(v16 + 256);
    v55 = *(v16 + 264);
    v57 = *(v16 + 248);
    v58 = *(v16 + 216);
    type metadata accessor for ModelManagerError();
    sub_100005C00();
    sub_100015F10(v59, 255, v60);
    sub_100008194();
    v62 = v61;
    *v61 = InferenceProviderDescriptor.description.getter();
    v62[1] = v63;
    sub_1000038AC();
    (*(v64 + 104))(v62);
    swift_willThrow();
    sub_10001301C(v16 + 16, &qword_1001B9CB0);
    v65 = sub_100005E8C();
    v49(v65);
    (v49)(v56, v58);
    v66 = *(v16 + 136);

    v68 = *(v16 + 248);
    v67 = *(v16 + 256);
    sub_100025DC8();

    sub_100001F00();
    sub_100003D04();

    return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_100096580()
{
  sub_10001881C();
  sub_100003884();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v9 = v6[36];
  *v8 = *v1;
  v7[37] = v0;

  v10 = v6[26];
  v11 = v6[25];
  v12 = v6[24];
  v13 = v6[23];
  if (!v0)
  {
    v7[38] = v3;
    v7[39] = v5;
  }

  (*(v11 + 8))(v10, v12);
  sub_100007BB8();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10009670C()
{
  sub_10001881C();
  sub_100003884();
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[19];
  ClientData.init(_:)();
  sub_10001301C((v0 + 2), &qword_1001B9CB0);
  v9 = *(v7 + 8);
  v10 = sub_100003754();
  v9(v10);
  v11 = sub_100019220();
  v9(v11);
  v12 = v0[17];

  sub_100003324(v0 + 7);
  v14 = v0[31];
  v13 = v0[32];
  v16 = v0[29];
  v15 = v0[30];
  v17 = v0[26];

  sub_100002F54();
  sub_100007BB8();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_100096804()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[32];
  v2 = v0[33];
  v3 = *(v0[28] + 8);
  (v3)(v0[31], v0[27]);
  v4 = sub_1000060A4();
  v3(v4);
  v5 = v0[17];

  v6 = v0[35];
  v8 = v0[31];
  v7 = v0[32];
  sub_100025DC8();

  sub_100001F00();
  sub_100003D20();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1000968CC()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[27];
  v5 = v0[28];
  sub_10001301C((v0 + 2), &qword_1001B9CB0);
  v6 = *(v5 + 8);
  v7 = sub_100003754();
  v6(v7);
  v8 = sub_100019220();
  v6(v8);
  v9 = v0[17];

  sub_100003324(v0 + 7);
  v10 = v0[37];
  v12 = v0[31];
  v11 = v0[32];
  sub_100025DC8();

  sub_100001F00();
  sub_100007BB8();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1000969B4()
{
  sub_100002BAC();
  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  *(v1 + 400) = v3;
  *(v1 + 176) = v4;
  *(v1 + 184) = v5;
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  *(v1 + 208) = v6;
  sub_100002F44(v6);
  *(v1 + 216) = v7;
  v9 = *(v8 + 64);
  *(v1 + 224) = sub_100002C58();
  v10 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002F04(v10);
  v12 = *(v11 + 64);
  *(v1 + 232) = sub_100002C58();
  v13 = type metadata accessor for RequestMetadata();
  *(v1 + 240) = v13;
  sub_100002F44(v13);
  *(v1 + 248) = v14;
  v16 = *(v15 + 64);
  *(v1 + 256) = sub_10000F0C0();
  *(v1 + 264) = swift_task_alloc();
  v17 = type metadata accessor for TaskPriority();
  *(v1 + 272) = v17;
  sub_100002F44(v17);
  *(v1 + 280) = v18;
  v20 = *(v19 + 64);
  *(v1 + 288) = sub_100002C58();
  v21 = type metadata accessor for ClientData();
  *(v1 + 296) = v21;
  sub_100002F44(v21);
  *(v1 + 304) = v22;
  v24 = *(v23 + 64);
  *(v1 + 312) = sub_10000F0C0();
  *(v1 + 320) = swift_task_alloc();
  v25 = type metadata accessor for InferenceProviderDescriptor();
  *(v1 + 328) = v25;
  sub_100002F44(v25);
  *(v1 + 336) = v26;
  v28 = *(v27 + 64);
  *(v1 + 344) = sub_10000F0C0();
  *(v1 + 352) = swift_task_alloc();
  v29 = sub_100002C10();

  return _swift_task_switch(v29, v30, v31);
}

uint64_t sub_100096BEC()
{
  sub_100005F88();
  sub_1000033DC();
  v1 = v0[24];
  v2 = v0[22];
  RequestMetadata.requiredAssetIDs.getter();
  v3 = sub_10001B228();
  v0[45] = sub_1000953BC(v3, v4);
  v5 = v0[44];
  v6 = v0[22];

  sub_10001D000(v5);
  v7 = *(v0[25] + 352);
  swift_task_alloc();
  sub_100004B34();
  v0[46] = v8;
  *v8 = v9;
  v8[1] = sub_100096D5C;
  v10 = v0[44];
  sub_1000062BC();

  return sub_1000253E8(v11, v12);
}

uint64_t sub_100096D5C()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 368);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[47] = v0;

  if (v0)
  {
    v9 = v3[45];
    v10 = v3[25];

    v11 = sub_100097874;
    v12 = v10;
  }

  else
  {
    v12 = v3[25];
    v11 = sub_100096E6C;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_100096E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, NSObject *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005B0C();
  sub_10001A5C4();
  sub_100012EA4(v20 + 16, v20 + 96, &qword_1001B9CB0, &qword_100171E70);
  if (*(v20 + 120))
  {
    sub_100004A04((v20 + 96), v20 + 56);
    swift_task_alloc();
    sub_100004B34();
    *(v20 + 384) = v21;
    *v21 = v22;
    v21[1] = sub_10009730C;
    v23 = *(v20 + 352);
    v24 = *(v20 + 320);
    v25 = *(v20 + 192);
    v26 = *(v20 + 200);
    v27 = *(v20 + 176);
    sub_1000135DC();

    return sub_1000959D8();
  }

  else
  {
    v30 = *(v20 + 360);

    sub_10001301C(v20 + 96, &qword_1001B9CB0);
    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v31 = *(v20 + 344);
    v32 = *(v20 + 352);
    v33 = *(v20 + 328);
    v34 = *(v20 + 336);
    v36 = *(v20 + 248);
    v35 = *(v20 + 256);
    v37 = *(v20 + 240);
    v38 = *(v20 + 192);
    v39 = type metadata accessor for Logger();
    sub_10000641C(v39, qword_1001B9A18);
    (*(v36 + 16))(v35, v38, v37);
    v40 = *(v34 + 16);
    v41 = sub_1000062B0();
    v42(v41);
    v43 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100006390();
    v45 = os_log_type_enabled(v43, v44);
    v47 = *(v20 + 336);
    v46 = *(v20 + 344);
    v48 = *(v20 + 328);
    v49 = *(v20 + 248);
    v50 = *(v20 + 256);
    v94 = *(v20 + 240);
    if (v45)
    {
      v52 = *(v20 + 216);
      v51 = *(v20 + 224);
      HIDWORD(a14) = v33;
      v53 = *(v20 + 208);
      sub_1000267F8();
      a11 = v46;
      a13 = sub_1000062D8();
      a16 = a13;
      *v46 = 136315394;
      a12 = v43;
      RequestMetadata.id.getter();
      sub_100005070();
      sub_10001B27C(v54, v55, v56);
      dispatch thunk of CustomStringConvertible.description.getter();
      a10 = v48;
      (*(v52 + 8))(v51, v53);
      v57 = sub_100012F70();
      v58(v57, v94);
      v59 = sub_100036724();
      sub_100004A3C(v59, v60, v61);

      sub_10001877C();
      sub_100009C4C();
      sub_100015F10(v62, 255, v63);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = *(v47 + 8);
      v66 = sub_10001B228();
      v65(v66);
      v67 = sub_100007660();
      sub_100004A3C(v67, v68, v69);
      sub_100001F0C();

      *(v46 + 14) = v64;
      sub_100057A3C(&_mh_execute_header, a12, BYTE4(a14), "request %s made with unrecognized InferenceProvider %s");
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {

      v65 = *(v47 + 8);
      v70 = sub_1000071D0();
      v65(v70);
      v71 = sub_100012F70();
      v72(v71, v94);
    }

    v73 = *(v20 + 352);
    v74 = *(v20 + 328);
    type metadata accessor for ModelManagerError();
    sub_100005C00();
    sub_100015F10(v75, 255, v76);
    sub_100008194();
    v78 = v77;
    *v77 = InferenceProviderDescriptor.description.getter();
    v78[1] = v79;
    sub_1000038AC();
    (*(v80 + 104))(v78);
    swift_willThrow();
    sub_10001301C(v20 + 16, &qword_1001B9CB0);
    v81 = sub_100005E98();
    v65(v81);
    v83 = *(v20 + 344);
    v82 = *(v20 + 352);
    v85 = *(v20 + 312);
    v84 = *(v20 + 320);
    sub_10003F83C();

    sub_100001F00();
    sub_1000135DC();

    return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, v94, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_10009730C()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[49] = v0;

  if (v0)
  {
    v9 = v3[45];
    v10 = v3[25];

    v11 = sub_100097934;
    v12 = v10;
  }

  else
  {
    v12 = v3[25];
    v11 = sub_10009741C;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10009741C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 176);
  v3 = sub_10004BB90();
  if (v1)
  {
    v6 = *(v0 + 352);
    v5 = *(v0 + 360);
    v7 = *(v0 + 328);
    v8 = *(v0 + 336);
    v9 = *(v0 + 320);
    v10 = *(v0 + 296);
    v11 = *(v0 + 304);

    v12 = *(v11 + 8);
    v13 = sub_1000071D0();
    v14(v13);
    sub_100003324((v0 + 56));
    sub_10001301C(v0 + 16, &qword_1001B9CB0);
    v15 = *(v8 + 8);
    v16 = sub_100001F70();
    v17(v16);
    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v25 = *(v0 + 312);
    v24 = *(v0 + 320);
    sub_10003F83C();

    sub_10000BF6C();

    return v26();
  }

  else
  {
    v18 = v3;
    v19 = v4;
    v20 = *(v0 + 200);
    v21 = sub_10001B304(*(v0 + 176) + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata, *(v0 + 176) + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken);
    v67 = *(v0 + 352);
    v68 = *(v0 + 344);
    v64 = *(v0 + 360);
    v65 = *(v0 + 336);
    v28 = *(v0 + 320);
    v66 = *(v0 + 328);
    v29 = *(v0 + 304);
    v30 = *(v0 + 312);
    v63 = v18;
    v32 = *(v0 + 288);
    v31 = *(v0 + 296);
    v56 = v28;
    v33 = *(v0 + 280);
    v53 = *(v0 + 272);
    v55 = *(v0 + 264);
    v69 = *(v0 + 256);
    v51 = *(v0 + 232);
    v70 = *(v0 + 224);
    v35 = *(v0 + 184);
    v34 = *(v0 + 192);
    v60 = *(v0 + 176);
    v62 = *(v0 + 400);
    v61 = v21;
    type metadata accessor for DaemonRequest(0);
    sub_100007130(v0 + 56, v0 + 136);
    (*(v33 + 16))(v32, v35, v53);
    v36 = RequestMetadata.loggingIdentifier.getter();
    v52 = v37;
    v54 = v36;
    (*(v29 + 16))(v30, v28, v31);
    v38 = type metadata accessor for UUID();
    sub_100002F04(v38);
    v40 = *(v39 + 64);
    sub_100002C58();
    RequestMetadata.uuid.getter();
    RequestMetadata.sessionID.getter();
    v50 = RequestMetadata.requiredAssetIDs.getter();
    RequestMetadata.isInference.getter();
    RequestMetadata.isStream.getter();
    RequestMetadata.isInputStream.getter();
    LODWORD(v28) = RequestMetadata.subrequestID.getter();
    RequestMetadata.allInputStreamed.getter();
    v47 = RequestMetadata.useCaseID.getter();
    v48 = v41;
    HIDWORD(v46) = v28;
    RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)();

    LOBYTE(v46) = 0;
    sub_10014E8C8(v42, v64, v61, v0 + 136, v63, v19, v62, v32, v46, v55, v47, v48, v49, v50, v51, v30, v52, v54, v55, v56, v31, v29);
    v44 = v43;
    (*(v59 + 8))(v57, v58);
    sub_100003324((v0 + 56));
    sub_10001301C(v0 + 16, &qword_1001B9CB0);
    (*(v65 + 8))(v67, v66);

    sub_100001F7C();

    return v45(v44);
  }
}

uint64_t sub_100097874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  (*(v12[42] + 8))(v12[44], v12[41]);
  v13 = v12[47];
  v15 = v12[43];
  v14 = v12[44];
  v17 = v12[39];
  v16 = v12[40];
  sub_10003F83C();

  sub_100001F00();
  sub_1000062BC();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_100097934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  v13 = v12[44];
  v14 = v12[41];
  v15 = v12[42];
  sub_100003324(v12 + 7);
  sub_10001301C((v12 + 2), &qword_1001B9CB0);
  v16 = *(v15 + 8);
  v17 = sub_100001F70();
  v18(v17);
  v19 = v12[49];
  v21 = v12[43];
  v20 = v12[44];
  v23 = v12[39];
  v22 = v12[40];
  sub_10003F83C();

  sub_100001F00();
  sub_1000062BC();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_100097A18()
{
  sub_100002BAC();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 168) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  v6 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  *(v1 + 88) = v6;
  sub_100002F44(v6);
  *(v1 + 96) = v7;
  v9 = *(v8 + 64);
  *(v1 + 104) = sub_100002C58();
  v10 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  *(v1 + 112) = v10;
  sub_100002F44(v10);
  *(v1 + 120) = v11;
  v13 = *(v12 + 64);
  *(v1 + 128) = sub_100002C58();
  v14 = sub_100002C10();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_100097B28()
{
  sub_10001881C();
  sub_100003884();
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v2 = v1[7];
  v3 = type metadata accessor for Logger();
  sub_10000641C(v3, qword_1001B9A18);

  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100006390();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[7];
  if (v6)
  {
    v8 = sub_100003788();
    *v8 = 67109120;
    *(v8 + 4) = Session.Metadata.onBehalfOfPID.getter();

    _os_log_impl(&_mh_execute_header, v4, v0, "Forming DaemonRequest for session with obop %d", v8, 8u);
    sub_1000039CC();
  }

  else
  {
    v9 = v1[7];
  }

  v10 = v1[7];
  v11 = sub_10000D070(v1[10]);
  v1[17] = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  Session.Metadata.onBehalfOfPID.getter();
  v12 = *v11;
  v13 = swift_task_alloc();
  v1[18] = v13;
  *v13 = v1;
  sub_100004B28(v13);
  sub_100007BB8();

  return sub_10002292C(v14);
}

uint64_t sub_100097CBC()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 144);
  v5 = *(v3 + 80);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 172) = v8;

  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100098044()
{
  sub_100001ED0();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v8 = *(v7 + 152);
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;
  v5[20] = v0;

  if (v0)
  {
    v11 = v5[10];
    sub_10000E700();

    return _swift_task_switch(v12, v13, v14);
  }

  else
  {
    v15 = v5[16];
    v16 = v5[13];

    v17 = *(v9 + 8);

    return v17(v3);
  }
}

uint64_t sub_1000982DC()
{
  sub_100002BAC();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[26] = v5;
  sub_100002F44(v5);
  v1[27] = v6;
  v8 = *(v7 + 64);
  v1[28] = sub_100002C58();
  v9 = type metadata accessor for InferenceProviderDescriptor();
  v1[29] = v9;
  sub_100002F44(v9);
  v1[30] = v10;
  v12 = *(v11 + 64);
  v1[31] = sub_100002C58();
  v13 = type metadata accessor for RequestMetadata();
  v1[32] = v13;
  sub_100002F44(v13);
  v1[33] = v14;
  v16 = *(v15 + 64);
  v1[34] = sub_100002C58();
  v17 = sub_100065020(&qword_1001B9CA8, &qword_100170720);
  sub_100002F04(v17);
  v19 = *(v18 + 64);
  v1[35] = sub_100002C58();
  v20 = sub_100002C10();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_100098454()
{
  sub_100002BAC();
  v1 = *(v0[25] + 352);
  swift_task_alloc();
  sub_100004B34();
  v0[36] = v2;
  *v2 = v3;
  v2[1] = sub_1000984EC;
  v4 = v0[22];

  return sub_1000253E8((v0 + 2), v4);
}

uint64_t sub_1000984EC()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 288);
  *v4 = *v2;
  *(v3 + 296) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 200);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100098600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, NSObject *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005B0C();
  sub_10001A5C4();
  sub_100012EA4(v20 + 16, v20 + 96, &qword_1001B9CB0, &qword_100171E70);
  if (*(v20 + 120))
  {
    v21 = *(v20 + 280);
    v22 = *(v20 + 256);
    v23 = *(v20 + 264);
    v24 = *(v20 + 192);
    v25 = *(v20 + 200);
    v26 = *(v20 + 184);
    sub_100004A04((v20 + 96), v20 + 56);
    type metadata accessor for DaemonRequest(0);
    sub_100007130(v20 + 56, v20 + 136);
    v27 = *(v23 + 16);
    v28 = sub_10001B228();
    v29(v28);
    sub_100009BFC(v21, 0, 1, v22);
    v30 = *(v25 + 296);

    v31 = swift_task_alloc();
    *(v20 + 304) = v31;
    *v31 = v20;
    v31[1] = sub_100098AC8;
    v32 = *(v20 + 280);
    sub_1000031B8(*(v20 + 192));
    sub_1000135DC();

    return sub_10014ECA8(v33, v34, v35, v36, v37);
  }

  else
  {
    sub_10001301C(v20 + 96, &qword_1001B9CB0);
    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v41 = *(v20 + 264);
    v40 = *(v20 + 272);
    v43 = *(v20 + 248);
    v42 = *(v20 + 256);
    v44 = *(v20 + 232);
    v45 = *(v20 + 240);
    v47 = *(v20 + 176);
    v46 = *(v20 + 184);
    v48 = type metadata accessor for Logger();
    sub_10000641C(v48, qword_1001B9A18);
    v49 = *(v41 + 16);
    v50 = sub_100036724();
    v51(v50);
    (*(v45 + 16))(v43, v47, v44);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v20 + 264);
    v56 = *(v20 + 272);
    v57 = *(v20 + 256);
    v58 = *(v20 + 232);
    v59 = *(v20 + 240);
    if (v54)
    {
      a10 = *(v20 + 256);
      v61 = *(v20 + 216);
      v60 = *(v20 + 224);
      a13 = *(v20 + 248);
      v62 = *(v20 + 208);
      sub_1000267F8();
      a12 = v58;
      a15 = sub_1000062D8();
      a16 = a15;
      *v58 = 136315394;
      a14 = v52;
      RequestMetadata.id.getter();
      sub_100005070();
      sub_10001B27C(v63, v64, v65);
      dispatch thunk of CustomStringConvertible.description.getter();
      HIDWORD(a11) = v53;
      v66 = *(v61 + 8);
      v67 = sub_100013BBC();
      v68(v67);
      (*(v55 + 8))(v56, a10);
      v69 = sub_100001F70();
      sub_100004A3C(v69, v70, v71);

      sub_10001877C();
      sub_100009C4C();
      sub_100015F10(v72, 255, v73);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10005D744();
      (*(v59 + 8))(a13, v58);
      v74 = sub_100001F70();
      v77 = sub_100004A3C(v74, v75, v76);

      *(v58 + 14) = v77;
      sub_100057A3C(&_mh_execute_header, a14, v53, "request %s made with unrecognized InferenceProvider %s");
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {

      v78 = *(v59 + 8);
      v79 = sub_100003754();
      v80(v79);
      (*(v55 + 8))(v56, v57);
    }

    v81 = *(v20 + 176);
    type metadata accessor for ModelManagerError();
    sub_100005C00();
    sub_100015F10(v82, 255, v83);
    sub_100008194();
    v85 = v84;
    *v84 = InferenceProviderDescriptor.description.getter();
    v85[1] = v86;
    sub_1000038AC();
    (*(v87 + 104))(v85);
    swift_willThrow();
    sub_10001301C(v20 + 16, &qword_1001B9CB0);
    v89 = *(v20 + 272);
    v88 = *(v20 + 280);
    v90 = *(v20 + 248);
    v91 = *(v20 + 224);

    sub_100001F00();
    sub_1000135DC();

    return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_100098AC8()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 304);
  v5 = *(v3 + 200);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 312) = v8;

  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100098BC0()
{
  sub_100001ED0();
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[31];
  v4 = v0[28];
  sub_100003324(v0 + 7);
  sub_10001301C((v0 + 2), &qword_1001B9CB0);

  sub_100001F7C();
  v6 = v0[39];

  return v5(v6);
}

uint64_t sub_100098C6C()
{
  sub_100001ED0();
  v1 = v0[37];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[31];
  v5 = v0[28];

  sub_100001F00();

  return v6();
}

uint64_t sub_100098CF0()
{
  sub_100002BAC();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  *(v1 + 336) = v5;
  *(v1 + 56) = v6;
  v7 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  sub_100002F04(v7);
  v9 = *(v8 + 64);
  *(v1 + 96) = sub_100002C58();
  v10 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  *(v1 + 104) = v10;
  sub_100002F44(v10);
  *(v1 + 112) = v11;
  v13 = *(v12 + 64);
  *(v1 + 120) = sub_100002C58();
  v14 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  *(v1 + 128) = v14;
  sub_100002F44(v14);
  *(v1 + 136) = v15;
  v17 = *(v16 + 64);
  *(v1 + 144) = sub_100002C58();
  v18 = type metadata accessor for InferenceProviderDescriptor();
  *(v1 + 152) = v18;
  sub_100002F44(v18);
  *(v1 + 160) = v19;
  v21 = *(v20 + 64);
  *(v1 + 168) = sub_10000F0C0();
  *(v1 + 176) = swift_task_alloc();
  v22 = sub_100002C10();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_100098E88()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[22];
  v2 = v0[7];
  v3 = *(v0[11] + 168);
  v0[23] = v2[2];
  v4 = v2[3];
  v5 = v2[8];
  sub_100003370(v2 + 4, v2[7]);
  v6 = *(v5 + 8);
  v7 = sub_10000A9EC();
  v8(v7);
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_100098F70;
  v10 = v0[22];
  sub_100003754();
  sub_100007BB8();

  return sub_1000C9A70(v11, v12, v13);
}

uint64_t sub_100098F70()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = v2[24];
  v6 = *v1;
  sub_100004B40();
  *v7 = v6;
  v3[25] = v8;
  v3[26] = v0;

  v9 = v2[22];
  v10 = v2[20];
  v11 = v2[19];
  v12 = v2[11];
  v15 = *(v10 + 8);
  v13 = v10 + 8;
  v14 = v15;
  if (v0)
  {
    v14(v9, v11);
    v16 = sub_100099928;
  }

  else
  {
    v3[27] = v14;
    v3[28] = v13 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v9, v11);
    v16 = sub_1000990F8;
  }

  return _swift_task_switch(v16, v12, 0);
}

uint64_t sub_1000990F8()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 200);

    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v2 = *(v0 + 56);
    v3 = type metadata accessor for Logger();
    sub_10000641C(v3, qword_1001B9A18);
    sub_10000D0E8();

    v4 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_100019920();

    if (sub_10000A384())
    {
      v6 = *(v0 + 136);
      v5 = *(v0 + 144);
      v7 = *(v0 + 128);
      v8 = *(v0 + 56);
      sub_10000A05C();
      v9 = swift_slowAlloc();
      sub_1000033D0();
      v115 = swift_slowAlloc();
      *v9 = 136315138;
      RequestMetadata.id.getter();
      sub_100005070();
      sub_10001B27C(v10, v11, v12);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = *(v6 + 8);
      v15 = sub_100007B78();
      v16(v15);
      v17 = sub_100004CB0();
      sub_100004A3C(v17, v18, v19);
      sub_100005974();

      *(v9 + 4) = v13;
      sub_1000033FC();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      sub_100003324(v115);
      sub_1000039CC();

      sub_100002BD0();
    }

    v25 = type metadata accessor for ModelManagerError();
    sub_100005C00();
    sub_100015F10(v26, 255, v27);
    sub_1000055A4();
    sub_100007894();
    swift_allocError();
    sub_100006098(v25);
    (*(v28 + 104))();
    swift_willThrow();
    goto LABEL_9;
  }

  v29 = *(v0 + 208);
  v30 = *(v0 + 88);
  v31 = *(v0 + 64);
  sub_10004B958();
  if (v29)
  {
    v32 = *(v0 + 200);

LABEL_9:
    v34 = *(v0 + 168);
    v33 = *(v0 + 176);
    v35 = *(v0 + 144);
    v36 = *(v0 + 120);
    v37 = *(v0 + 96);

    sub_100001F00();

    return v38();
  }

  v98 = *(v0 + 216);
  v99 = *(v0 + 224);
  v101 = *(v0 + 200);
  v111 = *(v0 + 184);
  v40 = *(v0 + 168);
  v93 = *(v0 + 152);
  v97 = *(v0 + 144);
  v106 = *(v0 + 136);
  v108 = *(v0 + 128);
  v92 = *(v0 + 120);
  v103 = *(v0 + 112);
  v104 = *(v0 + 104);
  v110 = *(v0 + 96);
  v41 = *(v0 + 88);
  v114 = v41;
  v42 = *(v0 + 64);
  v112 = *(v0 + 72);
  v113 = *(v0 + 80);
  v100 = *(v0 + 336);
  v43 = *(v0 + 56);
  v44 = sub_1000060A4();
  sub_100108FFC(v44);
  sub_100007130((v41 + 38), v0 + 16);
  v96 = *(v0 + 40);
  v94 = *(v0 + 48);
  sub_100003370((v0 + 16), v96);
  *(v0 + 232) = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  RequestMetadata.id.getter();
  Session.Metadata.id.getter();
  v45 = RequestMetadata.loggingIdentifier.getter();
  v90 = v46;
  v91 = v45;
  v47 = Session.Metadata.useCaseID.getter();
  v88 = v48;
  v89 = v47;
  v49 = type metadata accessor for URL();
  sub_100002BDC(v49);
  v51 = v50;
  v53 = *(v52 + 64);
  v95 = sub_100002C58();
  Session.Metadata.assetBundleURI.getter();
  v54 = URL.absoluteString.getter();
  v86 = v55;
  v87 = v54;
  (*(v51 + 8))(v95, v49);
  v56 = v43[8];
  sub_100003370(v43 + 4, v43[7]);
  v57 = *(v56 + 8);
  v58 = sub_100001F0C();
  v59(v58, v56);
  v85 = InferenceProviderDescriptor.id.getter();
  v61 = v60;
  v98(v40, v93);
  v62 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken;
  *(v0 + 240) = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken;
  v109 = v42;
  v63 = v42 + v62;
  LODWORD(v42) = AuditToken.processIdentifier.getter();
  v64 = Session.Metadata.onBehalfOfPID.getter();
  LOBYTE(v56) = RequestMetadata.isStream.getter();
  BYTE2(v84) = RequestMetadata.isInference.getter() & 1;
  BYTE1(v84) = v100;
  LOBYTE(v84) = (v56 & 1) == 0;
  *(v0 + 248) = (*(v94 + 8))(v97, v92, v91, v90, v89, v88, v87, v86, v101, v85, v61, __PAIR64__(v64, v42), v84, v63, v96, v94);

  (*(v103 + 8))(v92, v104);
  v65 = *(v106 + 8);
  *(v0 + 256) = v65;
  *(v0 + 264) = (v106 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v66 = sub_100005EC8();
  v65(v66);

  v105 = v114[50];
  v102 = v114[51];
  sub_100003370(v114 + 47, v105);
  RequestMetadata.id.getter();
  v107 = type metadata accessor for UUID();
  *(v0 + 272) = v107;
  sub_100002BDC(v107);
  v68 = v67;
  *(v0 + 280) = *(v69 + 64);
  v70 = sub_100002C58();
  UUIDIdentifier.uuid.getter();
  v71 = sub_100005EC8();
  v65(v71);
  v72 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  sub_100002F04(v72);
  *(v0 + 288) = *(v73 + 64);
  v74 = sub_100002C58();
  v75 = v43;
  RequestMetadata.loggingIdentifier.getter();
  UUID.init(uuidString:)();

  v76 = RequestMetadata.useCaseID.getter();
  v78 = v77;
  sub_1001284A4();
  (*(v102 + 8))(v70, v74, 0, v76, v78, v79, v105);

  sub_10001301C(v74, &qword_1001B9060);
  v80 = *(v68 + 8);
  *(v0 + 296) = v80;
  *(v0 + 304) = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80(v70, v107);

  v81 = v114[37];
  sub_1000119E4();
  v82 = swift_allocObject();
  *(v0 + 312) = v82;
  v82[2] = v109;
  v82[3] = v75;
  v82[4] = v112;
  v82[5] = v113;

  v83 = swift_task_alloc();
  *(v0 + 320) = v83;
  *v83 = v0;
  v83[1] = sub_10005D76C;
  sub_1000031B8(*(v0 + 56));

  return sub_100139284();
}

uint64_t sub_100099928()
{
  sub_10000639C();
  sub_100003884();
  v1 = *(v0 + 208);
  sub_1000A02C8();

  sub_100001F00();
  sub_100003D20();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000999A8()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  swift_errorRetain();
  v85 = v1;
  if ((v2 & 1) == 0)
  {
    v3 = *(v0 + 328);
    swift_errorRetain();
    if (sub_10009DB48(v1))
    {
      v77 = *(v0 + 328);
      v79 = *(v0 + 264);
      v81 = *(v0 + 256);
      v83 = *(v0 + 248);
      v61 = *(v0 + 240);
      v57 = *(v0 + 216);
      v59 = *(v0 + 224);
      v4 = *(v0 + 168);
      v5 = *(v0 + 144);
      v55 = *(v0 + 152);
      v63 = *(v0 + 128);
      v65 = *(v0 + 232);
      v73 = *(v0 + 184);
      v75 = *(v0 + 96);
      v71 = *(v0 + 288) + 15;
      v67 = *(v0 + 88);
      v69 = *(v0 + 280) + 15;
      v6 = *(v0 + 56);
      v7 = *(v0 + 64);
      sub_10005D8A4(v6);
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      sub_100003370((v0 + 16), v8);
      RequestMetadata.id.getter();
      v10 = *(v6 + 7);
      v11 = *(v6 + 8);
      sub_100003370(v6 + 4, v10);
      v12 = *(v11 + 8);
      v13 = sub_10000D0E8();
      v14(v13, v11);
      InferenceProviderDescriptor.id.getter();
      sub_10001351C();
      v57(v4, v55);
      (*(v9 + 16))(v5, v83, v85, v4, v10, v7 + v61, v8, v9);

      v81(v5, v63);
      sub_100065020(&qword_1001B9CA0, &qword_100170718);
      sub_100005B00();
      v15 = type metadata accessor for ModelManagerError();
      sub_100002F44(v15);
      v17 = *(v16 + 72);
      v18 = sub_100007764();
      *(v18 + 16) = xmmword_10016FF40;
      swift_errorRetain();
      ModelManagerError.init(wrapping:)();
      v20 = v67[50];
      v19 = v67[51];
      sub_100003370(v67 + 47, v20);
      RequestMetadata.id.getter();
      v21 = swift_task_alloc();
      UUIDIdentifier.uuid.getter();
      v81(v5, v63);
      v22 = swift_task_alloc();
      RequestMetadata.loggingIdentifier.getter();
      UUID.init(uuidString:)();

      RequestMetadata.useCaseID.getter();
      sub_10005D744();
      sub_1001284A4();
      (*(v19 + 16))(v21, v22, 0, v18, v75, &v6[v65], v65, v23, v20, v19);

      v24 = *(v0 + 296);
      v25 = *(v0 + 304);
      sub_100033268();
      v26 = *(v0 + 96);
      sub_10001301C(v22, &qword_1001B9060);
      v24(v21, v77);
      sub_10001301C(v26, &qword_1001B9058);

      sub_100003324((v0 + 16));

      sub_100001F7C();

      return v27(v85);
    }

    v29 = *(v0 + 328);
  }

  v78 = *(v0 + 328);
  v74 = *(v0 + 296);
  v76 = *(v0 + 304);
  v72 = *(v0 + 272);
  v80 = *(v0 + 264);
  v82 = *(v0 + 256);
  v84 = *(v0 + 248);
  v54 = *(v0 + 224);
  v56 = *(v0 + 240);
  v68 = *(v0 + 184);
  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v52 = *(v0 + 152);
  v53 = *(v0 + 216);
  v58 = *(v0 + 128);
  v60 = *(v0 + 232);
  v70 = *(v0 + 96);
  v66 = *(v0 + 288) + 15;
  v62 = *(v0 + 88);
  v64 = *(v0 + 280) + 15;
  v33 = *(v0 + 56);
  v32 = *(v0 + 64);
  swift_willThrow();
  sub_10005D8A4(v33);
  v34 = *(v0 + 40);
  v35 = *(v0 + 48);
  sub_100003370((v0 + 16), v34);
  RequestMetadata.id.getter();
  v36 = v33[7];
  v37 = v33[8];
  sub_100003370(v33 + 4, v36);
  v38 = *(v37 + 8);
  v39 = sub_10001B228();
  v40(v39);
  InferenceProviderDescriptor.id.getter();
  sub_10005D744();
  v53(v30, v52);
  (*(v35 + 16))(v31, v84, v85, v30, v36, v32 + v56, v34, v35);

  v82(v31, v58);
  sub_100065020(&qword_1001B9CA0, &qword_100170718);
  sub_100005B00();
  v41 = type metadata accessor for ModelManagerError();
  sub_100002F44(v41);
  v43 = *(v42 + 72);
  *(sub_100007764() + 16) = xmmword_10016FF40;
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  v44 = v62[51];
  sub_100003370(v62 + 47, v62[50]);
  RequestMetadata.id.getter();
  v45 = swift_task_alloc();
  UUIDIdentifier.uuid.getter();
  v82(v31, v58);
  v46 = swift_task_alloc();
  RequestMetadata.loggingIdentifier.getter();
  UUID.init(uuidString:)();

  RequestMetadata.useCaseID.getter();
  sub_1001284A4();
  v47 = *(v44 + 16);
  v48 = sub_100019220();
  v49(v48);

  sub_10001301C(v46, &qword_1001B9060);
  v74(v45, v72);
  sub_10001301C(v70, &qword_1001B9058);

  sub_100003324((v0 + 16));
  v50 = *(v0 + 328);
  sub_1000A02C8();

  sub_100001F00();

  return v51();
}

uint64_t sub_10009A128()
{
  sub_100002BAC();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[5] = v7;
  v1[6] = v8;
  v1[4] = v9;
  v10 = type metadata accessor for InferenceProviderDescriptor();
  v1[13] = v10;
  sub_100002F44(v10);
  v1[14] = v11;
  v13 = *(v12 + 64);
  v1[15] = sub_10000F0C0();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v14 = sub_100002C10();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10009A200()
{
  sub_10000639C();
  sub_100003884();
  v2 = v0[9];
  if (*(v2 + 16))
  {
    v3 = v0[18];
    v4 = v0[13];
    v5 = v0[14];
    sub_100020444(0, v2, v0[17]);
    v6 = *(v5 + 32);
    v7 = sub_100001F70();
    v8(v7);
    v9 = swift_task_alloc();
    v10 = sub_1000192A4(v9);
    *v10 = v11;
    v10[1] = sub_10009A428;
    v12 = v0[18];
    v13 = v0[12];
    v14 = v0[7];
    v15 = v0[4];
    sub_100003D20();

    return sub_1000982DC();
  }

  else
  {
    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v18 = v0[5];
    v19 = type metadata accessor for Logger();
    sub_100002FD0(v19, qword_1001B9A18);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[5];
      sub_10000A05C();
      swift_slowAlloc();
      v23 = sub_1000039DC();
      *v1 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 4) = v24;
      *v23 = v24;
      sub_100005EB0(&_mh_execute_header, v20, v21, "There are no fallback inference providers remaining, throwing %@");
      sub_10001301C(v23, &qword_1001B8F68);
      sub_1000039CC();

      sub_100002BD0();
    }

    v25 = v0[5];

    swift_willThrow();
    swift_errorRetain();
    v26 = v0[5];
    sub_100035D3C();

    sub_100001F00();
    sub_100003D20();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34);
  }
}

uint64_t sub_10009A428()
{
  sub_100001ED0();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v8 = *(v7 + 152);
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;
  v5[20] = v3;
  v5[21] = v0;

  if (v0)
  {
    v11 = v5[12];
    sub_10000E700();

    return _swift_task_switch(v12, v13, v14);
  }

  else
  {
    v15 = swift_task_alloc();
    v5[22] = v15;
    *v15 = v9;
    v15[1] = sub_10009A59C;
    v16 = v5[11];
    v17 = v5[12];
    v18 = v5[10];
    v19 = v5[6];
    sub_10001E54C();

    return sub_100098CF0();
  }
}

uint64_t sub_10009A59C()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 176);
  v6 = *v2;
  sub_100003744();
  *v7 = v6;
  *(v9 + 184) = v8;
  *(v9 + 192) = v0;

  sub_10000A9E0();
  v11 = *(v10 + 96);
  sub_10000E700();

  return _swift_task_switch(v12, v13, v14);
}

void sub_10009A6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v25;
  a24 = v26;
  sub_100005EA4();
  a22 = v24;
  if (v24[23])
  {
    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v27 = v24[18];
    v28 = v24[16];
    v29 = v24[13];
    v30 = v24[14];
    v31 = type metadata accessor for Logger();
    sub_10000641C(v31, qword_1001B9A18);
    (*(v30 + 16))(v28, v27, v29);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v24[16];
    v37 = v24[13];
    v36 = v24[14];
    if (v34)
    {
      sub_1000267F8();
      HIDWORD(a10) = v33;
      a9 = sub_1000039DC();
      sub_1000033D0();
      a11 = swift_slowAlloc();
      a12 = a11;
      *v33 = 136315394;
      sub_100009C4C();
      sub_100015F10(v38, 255, v39);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v43 = *(v36 + 8);
      v44 = sub_100004CB0();
      v43(v44);
      sub_100004A3C(v40, v42, &a12);
      sub_100019498();

      sub_100003760();
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v45;
      *a9 = v45;
      sub_100057A3C(&_mh_execute_header, v32, v33, "Fallback inference provider %s failed with %@");
      sub_10001301C(a9, &qword_1001B8F68);
      sub_100002BD0();

      sub_100003324(a11);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {

      v43 = *(v36 + 8);
      v59 = sub_100004CB0();
      v43(v59);
    }

    v24[25] = v43;
    v60 = v24[8];
    v61 = v24[9];
    v24[2] = v60;
    v24[3] = v61;
    if (v60)
    {
      v62 = v24[24];
      swift_retain_n();

      sub_10010BE98();
      if (v62)
      {
        sub_100003D04();
        return;
      }

      v64 = v63;
    }

    else
    {

      v64 = 0;
    }

    v66 = v24[14];
    v65 = v24[15];
    v67 = v24[13];
    sub_100144030(0, v64);
    v24[26] = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v43)(v65, v67);
    v68 = v24[3];
    v24[27] = v24[2];
    v24[28] = v68;
    v69 = swift_task_alloc();
    v24[29] = v69;
    *v69 = v24;
    v69[1] = sub_10009AA6C;
    v70 = v24[11];
    v71 = v24[12];
    v72 = v24[10];
    v73 = v24[6];
    v74 = v24[7];
    sub_1000031B8(v24[20]);
    sub_100005A04();
    sub_100003D04();

    sub_10009A128(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v46 = v24[20];
    (*(v24[14] + 8))(v24[18], v24[13]);

    v48 = v24[17];
    v47 = v24[18];
    v50 = v24[15];
    v49 = v24[16];

    sub_100002F54();
    sub_100003D04();

    v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_10009AA6C()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 232);
  *v4 = *v2;
  *(v3 + 240) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 96);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10009AB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  sub_1000187F4();

  v12 = sub_1000071D0();
  v11(v12);

  v14 = v10[17];
  v13 = v10[18];
  v16 = v10[15];
  v15 = v10[16];

  sub_100002F54();
  sub_100006378();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_10009AC20()
{
  sub_100001ED0();
  (*(v0[14] + 8))(v0[18], v0[13]);
  v1 = v0[21];
  sub_100035D3C();

  sub_100001F00();

  return v2();
}

uint64_t sub_10009ACB0()
{
  sub_100001ED0();
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[13];
  v4 = v0[14];

  v5 = *(v4 + 8);
  v6 = sub_100001F70();
  v7(v6);
  v8 = v0[24];
  sub_100035D3C();

  sub_100001F00();

  return v9();
}

uint64_t sub_10009AD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  sub_1000187F4();

  v12 = sub_1000071D0();
  v11(v12);

  v13 = *(v10 + 240);
  sub_100035D3C();

  sub_100001F00();
  sub_100006378();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_10009ADE8()
{
  sub_100002BAC();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 184) = v5;
  *(v1 + 16) = v6;
  v7 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v7);
  v9 = *(v8 + 64);
  *(v1 + 56) = sub_100002C58();
  v10 = type metadata accessor for ClientData();
  *(v1 + 64) = v10;
  sub_100002F44(v10);
  *(v1 + 72) = v11;
  v13 = *(v12 + 64);
  *(v1 + 80) = sub_100002C58();
  v14 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  *(v1 + 88) = v14;
  sub_100002F44(v14);
  *(v1 + 96) = v15;
  v17 = *(v16 + 64);
  *(v1 + 104) = sub_100002C58();
  v18 = sub_100002C10();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_10009AF1C()
{
  sub_10001446C();
  sub_10000636C();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  RequestMetadata.sessionID.getter();
  *(v0 + 112) = sub_10004B7DC(v1);
  v6 = *(v2 + 8);
  v7 = sub_100019220();
  v8(v7);
  v9 = swift_task_alloc();
  v10 = sub_10000D03C(v9);
  *v10 = v11;
  v10[1] = sub_10009B044;
  v12 = *(v0 + 48);
  v13 = *(v0 + 184);
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  sub_100003770();

  return sub_100097A18();
}

uint64_t sub_10009B044()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 120);
  v6 = *v2;
  sub_100003744();
  *v7 = v6;
  *(v9 + 128) = v8;
  *(v9 + 136) = v0;

  sub_10000A9E0();
  v11 = *(v10 + 48);
  sub_10000E700();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10009B158()
{
  sub_100002BAC();
  v1 = v0[6];
  v2 = v0[3];
  v3 = RequestMetadata.allInputStreamed.getter();
  v0[18] = *(v1 + 296);
  if (v3)
  {
    v4 = swift_task_alloc();
    v5 = sub_1000192A4(v4);
    *v5 = v6;
    v5[1] = sub_10009B24C;
    v7 = v0[4];
    v8 = v0[5];
    sub_100007884(v0[16]);

    return sub_100133248();
  }

  else
  {
    v10 = v0[10];
    v11 = v0[16] + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
    RequestMetadata.clientData.getter();
    sub_10000CC50();

    return _swift_task_switch(v12, v13, v14);
  }
}

uint64_t sub_10009B24C()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 152);
  *v4 = *v2;
  *(v3 + 160) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 48);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10009B360()
{
  sub_100002BAC();
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  sub_1000A0220();

  sub_100002F54();

  return v3();
}

uint64_t sub_10009B3D8()
{
  sub_10000639C();
  sub_100003884();
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  sub_100133958();
  *(v0 + 188) = v7 & 1;
  v8 = *(v4 + 8);
  v9 = sub_1000060A4();
  v10(v9);
  sub_100003D20();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10009B474()
{
  sub_10001881C();
  sub_100003884();
  if (*(v0 + 188) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 168) = v1;
    *v1 = v0;
    v1[1] = sub_10009B5EC;
    v2 = *(v0 + 144);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    sub_1000031B8(*(v0 + 128));
    sub_100007BB8();

    return sub_100129B08();
  }

  else
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = *(v0 + 56);
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    type metadata accessor for TaskPriority();
    sub_100003978();
    sub_100009BFC(v12, v13, v14, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v11;
    v16[5] = v10;
    v16[6] = v7;

    sub_100004D44();
    sub_1000652FC();

    sub_1000A0220();

    sub_100002F54();
    sub_100007BB8();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_10009B5EC()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 168);
  *v4 = *v2;
  *(v3 + 176) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 48);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10009B700()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[6];
  v3 = v0[7];
  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v5, v6, v7, v8);
  sub_100011344();
  v12 = sub_100015F10(v9, v10, v11);
  sub_1000119E4();
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = v12;
  v13[4] = v4;
  v13[5] = v1;
  swift_retain_n();

  sub_100004D44();
  sub_100128ED0();

  sub_1000A0220();

  sub_100002F54();
  sub_100007BB8();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_10009B818()
{
  sub_100001ED0();
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);

  sub_1000402D8();

  sub_100001F00();

  return v3();
}

uint64_t sub_10009B890()
{
  sub_100001ED0();
  v1 = v0[14];

  v2 = v0[20];
  v3 = v0[16];

  sub_1000402D8();

  sub_100001F00();

  return v4();
}

uint64_t sub_10009B910()
{
  sub_100001ED0();
  v1 = v0[14];

  v2 = v0[22];
  v3 = v0[16];

  sub_1000402D8();

  sub_100001F00();

  return v4();
}

uint64_t sub_10009B990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_10009BA60, a4, 0);
}

uint64_t sub_10009BA60()
{
  sub_100002BAC();
  v1 = v0[6];
  v2 = v0[3] + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  RequestMetadata.id.getter();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_10009BB0C;
  v4 = v0[2];
  sub_1000031B8(v0[6]);

  return sub_10009C09C();
}

uint64_t sub_10009BB0C()
{
  sub_10000639C();
  sub_100003884();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = v5[7];
  v7 = v5[6];
  v8 = v5[5];
  v9 = v5[4];
  v10 = *v1;
  sub_100002B9C();
  *v11 = v10;
  v3[8] = v0;

  v12 = *(v8 + 8);
  v13 = sub_100003754();
  v14(v13);
  if (v0)
  {
    v15 = v3[2];
    sub_100003D20();

    return _swift_task_switch(v16, v17, v18);
  }

  else
  {
    v20 = v3[6];

    sub_100001F00();
    sub_100003D20();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

uint64_t sub_10009BC88()
{
  sub_100002BAC();
  v1 = *(v0 + 48);

  sub_100001F00();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_10009BCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for InferenceProviderDescriptor();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = *(*(sub_100065020(&qword_1001B9C88, &qword_1001706E0) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10009BDE0, 0, 0);
}

uint64_t sub_10009BDE0()
{
  sub_10001446C();
  v21 = v1;
  sub_10000636C();
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[4];
  v5 = v0[2];
  type metadata accessor for InferenceProviderRequestResult();
  sub_100003978();
  sub_100009BFC(v6, v7, v8, v9);
  v10 = v4[8];
  sub_100003370(v4 + 4, v4[7]);
  v11 = *(v10 + 8);
  v12 = sub_10000D0E8();
  v13(v12, v10);
  v20 = (v5 + *v5);
  v14 = v5[1];
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_10009BF28;
  v16 = v0[7];
  v17 = v0[3];
  v18 = sub_1000031B8(v0[8]);

  return v20(v18);
}

uint64_t sub_10009BF28()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[7];
  v5 = v1[6];
  v6 = v1[5];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v5 + 8);
  v10 = sub_1000060A4();
  v11(v10);
  sub_10001301C(v3, &qword_1001B9C88);

  sub_100001F00();

  return v12();
}

uint64_t sub_10009C09C()
{
  sub_100002BAC();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[13] = v3;
  sub_100002F44(v3);
  v1[14] = v4;
  v6 = *(v5 + 64);
  v1[15] = sub_100002C58();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10009C14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v18 = v16[11];
  v17 = v16[12];
  sub_100004CBC();
  swift_beginAccess();
  v20 = *(v17 + 360);
  v19 = *(v17 + 368);
  v53 = v17;
  v21 = type metadata accessor for UUID();
  v16[16] = v21;
  sub_100002BDC(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  v16[17] = v25;
  v52 = v25 + 15;
  v26 = swift_task_alloc();

  v16[18] = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  UUIDIdentifier.uuid.getter();
  v27 = swift_task_alloc();
  v27[2] = v20;
  v27[3] = v19;
  v27[4] = v26;
  sub_1001418B8(sub_10009FF78, v27, v19);
  v29 = v28;

  v30 = *(v23 + 8);
  v16[19] = v30;
  v16[20] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v26, v21);

  if (v29)
  {
    v31 = v16[11];
    v32 = swift_task_alloc();
    UUIDIdentifier.uuid.getter();
    sub_100004B50();
    v34 = *(v53 + 360);
    v33 = *(v53 + 368);
    v35 = swift_task_alloc();
    v35[2] = v34;
    v35[3] = v33;
    v35[4] = v32;
    sub_1001418B8(sub_1000A0208, v35, v33);
    LOBYTE(v33) = v36;

    if (v33)
    {
      sub_100013BBC();
      sub_100141198();
    }

    v37 = v16[12];
    v30(v32, v21);
    swift_endAccess();

    v16[21] = *(v37 + 296);
    sub_10000E70C();
    sub_100003D04();

    return _swift_task_switch(v38, v39, v40);
  }

  else
  {
    v42 = v16[15];

    sub_100002F54();
    sub_100003D04();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, v53, v21, a13, a14, a15, a16);
  }
}

uint64_t sub_10009C3C4()
{
  sub_100002BAC();
  v1 = *(v0 + 168);
  v2 = *(v0 + 96);
  *(v0 + 248) = sub_10012A1B4(*(v0 + 88));
  sub_10000CC50();

  return _swift_task_switch(v3, v4, v5);
}