uint64_t sub_10036C420()
{
  sub_10036C284();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropReceiveConnectionManager()
{
  result = qword_10097A4B8;
  if (!qword_10097A4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10036C4CC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void *sub_10036C658()
{
  v1 = v0;
  sub_10028088C(&qword_10097A6E0, &unk_1007FD870);
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

void *sub_10036C7F0()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&unk_100977340, &unk_1007FA1C0);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
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
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1003708C4(*(v7 + 48) + v22, v6, type metadata accessor for SDAirDropDiscoveredEndpoint);
        result = sub_10000ED10(v6, *(v9 + 48) + v22, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_10036CA24(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
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

      v18 = *(v4 + 56 + 8 * v10);
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

void *sub_10036CB54()
{
  v1 = v0;
  sub_10028088C(&unk_10097A700, &unk_1007FD890);
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

void *sub_10036CCBC()
{
  v1 = v0;
  sub_10028088C(&unk_10097F0B0, &qword_1007FD8D0);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_10036CDFC()
{
  v1 = v0;
  sub_10028088C(&qword_10097A720, &unk_100804CB0);
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
        result = sub_100294008(v18, *(&v18 + 1));
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

id sub_10036CF94(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
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
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

void *sub_10036D0D4()
{
  v1 = v0;
  sub_10028088C(&qword_10097A6F8, &unk_100804C90);
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
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

void *sub_10036D1E0()
{
  v1 = v0;
  sub_10028088C(&unk_10097F0E0, &unk_1007FD980);
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

void *sub_10036D330()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_10097A6D0, &unk_1007FD860);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
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
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1003708C4(*(v7 + 48) + v22, v6, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        result = sub_10000ED10(v6, *(v9 + 48) + v22, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_10036D53C()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_10097A6C8, &unk_100804C50);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
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
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1003708C4(*(v7 + 48) + v22, v6, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = sub_10000ED10(v6, *(v9 + 48) + v22, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_10036D770(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_10028088C(a2, a3);
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

void *sub_10036D9BC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
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
        v19 = 32 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v21 = v20[1];
        v22 = v20[2];
        v23 = v20[3];
        v24 = (*(v6 + 48) + v19);
        *v24 = *v20;
        v24[1] = v21;
        v24[2] = v22;
        v24[3] = v23;
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

uint64_t sub_10036DB18(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10036C658();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10036ED98(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_10036DC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1000053E8(&qword_100976170, &type metadata accessor for UUID);
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
      sub_1000053E8(&qword_1009761E0, &type metadata accessor for UUID);
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
      sub_10036D770(&type metadata accessor for UUID, &unk_100977310, &unk_1007FA1A0);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_10036EF5C(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

double sub_10036DF20@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
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
LABEL_64:
    result = 0.0;
    *a3 = xmmword_1007F8A80;
    return result;
  }

  v12 = ~v10;
  if (a1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2 == 0xC000000000000000;
  }

  v14 = !v13;
  v47 = v14;
  v15 = a2 >> 62;
  v16 = __OFSUB__(HIDWORD(a1), a1);
  v44 = v16;
  v42 = a2;
  v43 = HIDWORD(a1) - a1;
  v45 = v12;
  v46 = BYTE6(a2);
  v41 = a1;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      break;
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
        goto LABEL_67;
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
        goto LABEL_68;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v46;
        if (v15)
        {
          v28 = v43;
          if (v44)
          {
            goto LABEL_66;
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
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
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
      goto LABEL_73;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_62;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v49 = v19;
        *&v49[8] = v18;
        v49[10] = BYTE2(v18);
        v49[11] = BYTE3(v18);
        v49[12] = BYTE4(v18);
        v49[13] = BYTE5(v18);
        sub_100294008(v19, v18);
        v12 = v45;
        goto LABEL_61;
      }

      a2 = (v19 >> 32) - v19;
      if (v19 >> 32 < v19)
      {
        goto LABEL_69;
      }

      sub_100294008(v19, v18);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v34))
        {
          goto LABEL_72;
        }

        v32 += v19 - v34;
      }

LABEL_58:
      __DataStorage._length.getter();
      a1 = v41;
      a2 = v42;
      sub_100330108(v32, v41, v42, v49);
      sub_100026AC0(v19, v18);
      v9 = v6 + 56;
      v12 = v45;
      if (v49[0])
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    if (v20 == 2)
    {
      a2 = *(v19 + 16);
      v31 = *(v19 + 24);
      sub_100294008(v19, v18);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v33 = __DataStorage._offset.getter();
        if (__OFSUB__(a2, v33))
        {
          goto LABEL_71;
        }

        v32 += a2 - v33;
      }

      v27 = __OFSUB__(v31, a2);
      a2 = v31 - a2;
      if (v27)
      {
        goto LABEL_70;
      }

      goto LABEL_58;
    }

    *&v49[6] = 0;
    *v49 = 0;
    sub_100294008(v19, v18);
LABEL_61:
    sub_100330108(v49, a1, a2, &v48);
    sub_100026AC0(v19, v18);
    if (v48)
    {
      goto LABEL_62;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18 == 0xC000000000000000;
  }

  v23 = !v21 || v15 < 3;
  if ((v23 | v47))
  {
LABEL_36:
    v24 = 0;
    if (v15 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_62:
  a2 = v39;
  v35 = *v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v39;
  *v49 = *v39;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_63;
  }

LABEL_73:
  sub_10036CDFC();
  v37 = *v49;
LABEL_63:
  *a3 = *(*(v37 + 48) + 16 * v11);
  sub_10036F264(v11);
  *a2 = *v49;
  return result;
}

uint64_t sub_10036E36C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_10036EC40();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for SDAirDropSendConnection();
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10036CF94(&qword_100977360, &qword_1007FA1E0);
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_10036F438(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_10036E504@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(*v1 + 40);
  Hasher.init(_seed:)();
  sub_10032CD80();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v22 = v1;
    v23 = v3;
    v24 = a1;
    v13 = ~v11;
    v14 = *(v4 + 72);
    while (1)
    {
      sub_1003708C4(*(v8 + 48) + v14 * v12, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v15 = sub_100331670();
      sub_10037092C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a1 = v24;
        goto LABEL_10;
      }
    }

    v17 = v22;
    v18 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v17;
    v25 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10036D53C();
      v20 = v25;
    }

    a1 = v24;
    sub_10000ED10(*(v20 + 48) + v14 * v12, v24, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    sub_10036FBA4(v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint, sub_10032CD80, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    v16 = 0;
    *v17 = v25;
LABEL_10:
    v3 = v23;
  }

  else
  {
    v16 = 1;
  }

  return (*(v4 + 56))(a1, v16, 1, v3);
}

uint64_t sub_10036E788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_10032D3D4();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v24 = v2;
    v25 = v5;
    v26 = a2;
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1003708C4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v17 = sub_100331F88(v9, a1);
      sub_10037092C(v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v18 = 1;
        a2 = v26;
        goto LABEL_10;
      }
    }

    v19 = v24;
    v20 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    v27 = *v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10036C7F0();
      v22 = v27;
    }

    a2 = v26;
    sub_10000ED10(*(v22 + 48) + v16 * v14, v26, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10036F5D8(v14);
    v18 = 0;
    *v19 = v27;
LABEL_10:
    v5 = v25;
  }

  else
  {
    v18 = 1;
  }

  return (*(v6 + 56))(a2, v18, 1, v5);
}

uint64_t sub_10036E9BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  v11 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_10032D050();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v24 = v2;
    v25 = v5;
    v26 = a2;
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1003708C4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v17 = sub_100331B60(v9, a1);
      sub_10037092C(v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v18 = 1;
        a2 = v26;
        goto LABEL_10;
      }
    }

    v19 = v24;
    v20 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    v27 = *v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10036D330();
      v22 = v27;
    }

    a2 = v26;
    sub_10000ED10(*(v22 + 48) + v16 * v14, v26, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    sub_10036FBA4(v14, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint, sub_10032D050, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v18 = 0;
    *v19 = v27;
LABEL_10:
    v5 = v25;
  }

  else
  {
    v18 = 1;
  }

  return (*(v6 + 56))(a2, v18, 1, v5);
}

uint64_t sub_10036EC40()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10046FFFC(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for SDAirDropSendConnection();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_10036F438(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10036ED98(unint64_t result)
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
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10036EF5C(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = __chkstk_darwin(v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_1000053E8(&qword_100976170, &type metadata accessor for UUID);
        v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_10036F264(unint64_t result)
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
        sub_100294008(v13, v14);
        Data.hash(into:)();
        v15 = Hasher._finalize()();
        sub_100026AC0(v13, v14);
        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10036F438(unint64_t result)
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
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10036F5D8(unint64_t a1)
{
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v4 = *(*(v3 - 1) + 64);
  __chkstk_darwin(v3);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v12 = *(*(v57 - 8) + 64);
  v13 = __chkstk_darwin(v57);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v13);
  v19 = &v50 - v18;
  v20 = *v1;
  v21 = *v1 + 56;
  v22 = -1 << *(*v1 + 32);
  v23 = (a1 + 1) & ~v22;
  if (((1 << v23) & *(v21 + 8 * (v23 >> 6))) != 0)
  {
    v55 = v17;
    v24 = ~v22;

    v25 = _HashTable.previousHole(before:)();
    v26 = *(v21 + 8 * (v23 >> 6));
    v58 = v20;
    if ((v26 & (1 << v23)) != 0)
    {
      v27 = (v25 + 1) & v24;
      v28 = *(v55 + 72);
      v29 = v51;
      v55 = v24;
      v56 = v21;
      v54 = v28;
      while (1)
      {
        v30 = v58;
        v31 = v28 * v23;
        sub_1003708C4(*(v58 + 48) + v28 * v23, v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v32 = *(v30 + 40);
        Hasher.init(_seed:)();
        sub_1003708C4(v19, v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          break;
        }

        if (EnumCaseMultiPayload != 2)
        {
          v42 = *v15;
          Hasher._combine(_:)(3uLL);
          NSObject.hash(into:)();

LABEL_16:
          v43 = v55;
          goto LABEL_19;
        }

        sub_10000ED10(v15, v29, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        Hasher._combine(_:)(2uLL);
        v36 = *v29;
        v37 = v29[1];
        Data.hash(into:)();
        v38 = v3[5];
        type metadata accessor for UUID();
        sub_1000053E8(&qword_100976170, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v39 = (v29 + v3[7]);
        if (v39[1])
        {
          v40 = v3;
          v41 = *v39;
          Hasher._combine(_:)(1u);
          v3 = v40;
          v29 = v51;
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v43 = v55;
        Hasher._combine(_:)(*(v29 + v3[9]));
        sub_10037092C(v29, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
LABEL_19:
        v44 = Hasher._finalize()();
        sub_10037092C(v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v45 = v44 & v43;
        if (a1 >= v27)
        {
          v28 = v54;
          if (v45 < v27)
          {
            goto LABEL_6;
          }

LABEL_23:
          if (a1 < v45)
          {
            goto LABEL_6;
          }

          goto LABEL_24;
        }

        v28 = v54;
        if (v45 < v27)
        {
          goto LABEL_23;
        }

LABEL_24:
        v46 = v28 * a1;
        if ((v28 * a1) < v31 || *(v58 + 48) + v28 * a1 >= *(v58 + 48) + v31 + v28)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v23;
          if (v46 == v31)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v23;
LABEL_6:
        v23 = (v23 + 1) & v43;
        v21 = v56;
        if (((*(v56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      if (EnumCaseMultiPayload)
      {
        v34 = v53;
        sub_10000ED10(v15, v53, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        Hasher._combine(_:)(1uLL);
        sub_10032D050();
        v35 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      }

      else
      {
        v34 = v52;
        sub_10000ED10(v15, v52, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        Hasher._combine(_:)(0);
        sub_10032CD80();
        v35 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      }

      sub_10037092C(v34, v35);
      goto LABEL_16;
    }

LABEL_30:

    *(v21 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v20 = v58;
  }

  else
  {
    *(v21 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v47 = *(v20 + 16);
  v48 = __OFSUB__(v47, 1);
  v49 = v47 - 1;
  if (v48)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v49;
    ++*(v20 + 36);
  }

  return result;
}

uint64_t sub_10036FBA4(unint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(char *), uint64_t (*a5)(void))
{
  v32 = a4;
  v33 = a5;
  v31 = a3;
  v30 = a2(0);
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v30);
  v11 = &v29 - v10;
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;
    v17 = *v5;

    v18 = _HashTable.previousHole(before:)();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v19 = (v18 + 1) & v16;
      v20 = *(v7 + 72);
      while (1)
      {
        v21 = v20 * v15;
        sub_1003708C4(*(v12 + 48) + v20 * v15, v11, v31);
        v22 = *(v12 + 40);
        Hasher.init(_seed:)();
        v32(v34);
        v23 = Hasher._finalize()();
        sub_10037092C(v11, v33);
        v24 = v23 & v16;
        if (a1 >= v19)
        {
          break;
        }

        if (v24 < v19)
        {
          goto LABEL_11;
        }

LABEL_12:
        v25 = v20 * a1;
        if ((v20 * a1) < v21 || *(v12 + 48) + v20 * a1 >= *(v12 + 48) + v21 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v15;
          if (v25 == v21)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v15;
LABEL_6:
        v15 = (v15 + 1) & v16;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v24 < v19)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v24)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v26 = *(v12 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v28;
    ++*(v12 + 36);
  }

  return result;
}

uint64_t sub_10036FE24(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v15 = sub_10000EBD4(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1002CE534();
      goto LABEL_7;
    }

    sub_100571EF8(v18, a3 & 1);
    v25 = *a4;
    v26 = sub_10000EBD4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *a4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100370800(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *a4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 16 * v15);
  v23 = *v22;
  *v22 = a1;
  v22[1] = &off_1008E5F48;

  return swift_unknownObjectRelease();
}

uint64_t sub_10036FFFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  return static SFAirDrop.TransferIdentifier.== infix(_:_:)() & 1;
}

uint64_t sub_100370040(uint64_t a1)
{
  v3 = *(sub_10028088C(&qword_10097A648, &qword_1007FD778) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SDAirDropServerConnection(0) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100367D90(a1, v7, v1 + v4, v8);
}

uint64_t sub_100370124()
{
  v1 = *(type metadata accessor for SDAirDropServerConnection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for SDAirDropServerConnectionIdentity(0) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_100369958(v0 + v2, v5, v6);
}

uint64_t sub_100370200(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropServerConnectionIdentity(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_100369C7C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1003702F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_10097A648, &qword_1007FD778) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SDAirDropServerConnection(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for NWConnection.State() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100005C04;

  return sub_100368138(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1003704C0(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropServerConnectionIdentity(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_100369FFC(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1003705F0()
{
  v1 = *(type metadata accessor for SDAirDropServerConnectionIdentity(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v8 - 8) + 8))(v0 + v2, v8);
  }

  else if (!EnumCaseMultiPayload)
  {
    v7 = *(v0 + v2);
    swift_unknownObjectRelease();
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100370708(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropServerConnectionIdentity(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_10036A0D8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100370800(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 16 * a1);
  *v11 = a3;
  v11[1] = &off_1008E5F48;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_1003708C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10037092C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100370994(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_10035FF3C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100370A6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036BEAC(a1, v4, v5, v6);
}

uint64_t sub_100370B20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036C10C(a1, v4, v5, v6);
}

uint64_t sub_100370BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036BB10(a1, v4, v5, v6);
}

uint64_t sub_100370C88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C04;

  return sub_1003780A0();
}

uint64_t sub_100370D3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036B594(a1, v4, v5, v6);
}

uint64_t sub_100370DF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036B07C(a1, v4, v5, v6);
}

uint64_t sub_100370EA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036AD0C(a1, v4, v5, v6);
}

uint64_t sub_100370F58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036AB68(a1, v4, v5, v6);
}

uint64_t sub_10037100C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_100371020(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_100371034(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036A8F4(a1, v4, v5, v6);
}

uint64_t sub_1003710F8()
{
  v1 = sub_10028088C(&qword_10097A7E8, &unk_1007FD9C8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v67 - v3;
  v5 = type metadata accessor for NWEndpoint.Port();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NWTXTRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = __chkstk_darwin(v9);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_listener])
  {
    v70 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_listener;
    v71 = v8;
    v72 = v4;
    v73 = v0;
    v69 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_deviceSupportManager];
    v15 = *(v69 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropDeviceSupportManager_deviceStatus);
    if (sub_10002A73C())
    {
      v16 = 62459;
    }

    else
    {
      v16 = 46075;
    }

    v75 = &_swiftEmptyDictionarySingleton;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    v74 = v16;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = &_swiftEmptyDictionarySingleton;
    sub_10057A00C(v20, v22, v17, v19, isUniquelyReferenced_nonNull_native);

    v75 = v74;
    if ([v15 enableStrangers] && (sub_100469838() & 1) != 0 && (v24 = objc_msgSend(*(v69 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropDeviceSupportManager_nearbyAgent), "bleAuthTag")) != 0)
    {
      v25 = v24;
      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v29._countAndFlagsBits;
      object = v29._object;
      sub_100026AC0(v26, v28);
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1002B0B7C(countAndFlagsBits, object, v32, v33);
    NWTXTRecord.init(_:)();
    v34 = NWTXTRecord.data.getter();
    v68 = v35;
    v69 = v34;
    (*(v10 + 8))(v14, v9);
    v36 = v73;
    v37 = *&v73[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_deviceStatus];
    sub_100469844();
    v39 = v38;
    v41 = v40;
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000C4AC(v42, qword_10097A750);

    v43 = v36;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    v46 = os_log_type_enabled(v44, v45);
    v67 = v39;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v75 = v48;
      *v47 = 136315394;
      *(v47 + 4) = sub_10000C4E4(v39, v41, &v75);
      *(v47 + 12) = 1024;
      *(v47 + 14) = v43[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility];

      _os_log_impl(&_mh_execute_header, v44, v45, "Starting AirDrop Bonjour Server %s - legacy %{BOOL}d", v47, 0x12u);
      sub_10000C60C(v48);
    }

    else
    {
    }

    v49 = v43[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_privacyImprovements];
    if (v49 != 1 || (v43[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility] & 1) != 0 || (sub_100469838() & 1) != 0)
    {
      v50 = sub_10046949C();
    }

    else
    {
      v50 = 0;
    }

    v51 = *&v43[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_queue];
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100637CD0(v50, v51, sub_100375550, v52);

    swift_unknownObjectRelease();

    static NWEndpoint.Port.any.getter();
    v53 = type metadata accessor for NWListener();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    v56 = NWListener.init(using:on:)();
    v57 = *&v73[v70];
    *&v73[v70] = v56;

    v58 = swift_allocObject();
    *(v58 + 16) = v43;
    *(v58 + 24) = v56;
    v59 = v43;

    NWListener.stateUpdateHandler.setter();
    *(swift_allocObject() + 16) = v59;
    v60 = v59;
    NWListener.newConnectionHandler.setter();
    if (v49 & 1) != 0 && (sub_10046A478())
    {
      v61 = 0;
      v62 = 0xF000000000000000;
      v63 = v72;
      v65 = v68;
      v64 = v69;
    }

    else
    {
      v65 = v68;
      v64 = v69;
      sub_100294008(v69, v68);
      v61 = v64;
      v62 = v65;
      v63 = v72;
    }

    sub_1002A9924(v61, v62);
    NWListener.Service.init(name:type:domain:txtRecord:)();
    v66 = type metadata accessor for NWListener.Service();
    (*(*(v66 - 8) + 56))(v63, 0, 1, v66);
    NWListener.service.setter();
    NWListener.start(queue:)();
    sub_10028BCC0(v61, v62);

    return sub_100026AC0(v64, v65);
  }

  return result;
}

uint64_t sub_100371854()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A750);
  v1 = sub_10000C4AC(v0, qword_10097A750);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10037191C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v14 = qword_1009735E0;

  swift_unknownObjectRetain();

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v16 = sub_1003759BC(&qword_100977C00, type metadata accessor for AirDropActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v12;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;

  sub_1002B3398(0, 0, v10, &unk_1007FDA20, v17);
}

uint64_t sub_100371B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v7[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_100371BD0, v8, 0);
}

uint64_t sub_100371BD0()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_100371CD0;
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);

    return sub_100371E20(v6, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100371CD0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return _swift_task_switch(sub_100371DF8, v3, 0);
}

uint64_t sub_100371E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[34] = v5;
  v6 = *(v5 - 8);
  v4[35] = v6;
  v7 = *(v6 + 64) + 15;
  v4[36] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v4[37] = v8;
  v9 = *(v8 - 8);
  v4[38] = v9;
  v10 = *(v9 + 64) + 15;
  v4[39] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v4[40] = static AirDropActor.shared;

  return _swift_task_switch(sub_100371F7C, v11, 0);
}

uint64_t sub_100371F7C()
{
  v1 = v0[33];
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_privacyImprovements) != 1 || (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility) & 1) != 0)
  {
    goto LABEL_5;
  }

  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_deviceStatus);
  if (sub_100469838())
  {
    v1 = v0[33];
LABEL_5:
    v4 = v0[38];
    v3 = v0[39];
    v5 = v0[36];
    v6 = v0[34];
    v7 = v0[35];
    v9 = v0[31];
    v8 = v0[32];
    v43 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_queue);
    aBlock = v0[37];
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v0[7] = v10;
    v11 = v0 + 7;
    v0[6] = sub_100375990;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100011678;
    v0[5] = &unk_1008DD878;
    v12 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[26] = _swiftEmptyArrayStorage;
    sub_1003759BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);
    (*(v7 + 8))(v5, v6);
    (*(v4 + 8))(v3, aBlock);
LABEL_6:
    v13 = *v11;

    v14 = v0[39];
    v15 = v0[36];

    v16 = v0[1];

    return v16();
  }

  v18 = sec_trust_copy_ref(v0[30]);
  v19 = sub_10009159C(v18);

  if (v19)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = sub_100638124(v20, v22);
  v25 = v24;
  v0[41] = v23;
  v0[42] = v24;

  if (!v25)
  {
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_10097A750);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Missing altDSID on certificate", v31, 2u);
    }

    v33 = v0[38];
    v32 = v0[39];
    v34 = v0[36];
    v44 = v0[37];
    v35 = v0[34];
    v36 = v0[35];
    v37 = v0[32];
    v38 = v0[33];
    v39 = v0[31];

    v42 = *(v38 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_queue);
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v37;
    v0[13] = v40;
    v11 = v0 + 13;
    v0[12] = sub_100375A04;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100011678;
    v0[11] = &unk_1008DD8C8;
    v41 = _Block_copy(v0 + 8);

    static DispatchQoS.unspecified.getter();
    v0[27] = _swiftEmptyArrayStorage;
    sub_1003759BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);
    (*(v36 + 8))(v34, v35);
    (*(v33 + 8))(v32, v44);
    goto LABEL_6;
  }

  v26 = *(v0[33] + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_idmsService);
  v27 = swift_task_alloc();
  v0[43] = v27;
  *v27 = v0;
  v27[1] = sub_100372510;

  return sub_100375C30(v23, v25);
}

uint64_t sub_100372510(char a1)
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 360) = a1;

  return _swift_task_switch(sub_100372628, v3, 0);
}

uint64_t sub_100372628()
{
  v40 = v0;
  if (*(v0 + 360) == 1)
  {
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v1 = v0[42];
    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097A750);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[41];
      v5 = v0[42];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v39 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10000C4E4(v6, v5, &v39);
      _os_log_impl(&_mh_execute_header, v3, v4, "Matching altDSID found %s - accepting connection", v7, 0xCu);
      sub_10000C60C(v8);
    }

    v9 = v0[42];
    v10 = swift_task_alloc();
    v0[44] = v10;
    *v10 = v0;
    v10[1] = sub_100372B14;
    v11 = v0[41];
    v12 = v0[33];

    return sub_100374D70(v11, v9);
  }

  else
  {
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v14 = v0[42];
    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_10097A750);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[42];
    if (v18)
    {
      v20 = v0[41];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      v23 = sub_10000C4E4(v20, v19, &v39);

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unknown altDSID on certificate %s", v21, 0xCu);
      sub_10000C60C(v22);
    }

    else
    {
    }

    v25 = v0[38];
    v24 = v0[39];
    v26 = v0[36];
    v27 = v0[34];
    v28 = v0[35];
    v29 = v0[32];
    v30 = v0[31];
    v37 = *(v0[33] + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_queue);
    v38 = v0[37];
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v29;
    v0[18] = sub_100375A3C;
    v0[19] = v31;
    v0[14] = _NSConcreteStackBlock;
    v0[15] = 1107296256;
    v0[16] = sub_100011678;
    v0[17] = &unk_1008DD918;
    v32 = _Block_copy(v0 + 14);

    static DispatchQoS.unspecified.getter();
    v0[28] = _swiftEmptyArrayStorage;
    sub_1003759BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);
    (*(v28 + 8))(v26, v27);
    (*(v25 + 8))(v24, v38);
    v33 = v0[19];

    v34 = v0[39];
    v35 = v0[36];

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_100372B14()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 320);
  v5 = *v0;

  return _swift_task_switch(sub_100372C40, v3, 0);
}

uint64_t sub_100372C40()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[31];
  v15 = *(v0[33] + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_queue);
  v16 = v0[37];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v0[24] = sub_100375A3C;
  v0[25] = v8;
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100011678;
  v0[23] = &unk_1008DD968;
  v9 = _Block_copy(v0 + 20);

  static DispatchQoS.unspecified.getter();
  v0[29] = _swiftEmptyArrayStorage;
  sub_1003759BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v16);
  v10 = v0[25];

  v11 = v0[39];
  v12 = v0[36];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100372E58(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v10;
  (*(v3 + 32))(&v13[v12], &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  *&v13[(v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = v11;
  sub_1002B3398(0, 0, v8, &unk_1007FDA00, v13);
}

uint64_t sub_100373094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a1;
  v6[9] = a4;
  return _swift_task_switch(sub_1003730B8, 0, 0);
}

uint64_t sub_1003730B8()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 88);
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    *(v0 + 104) = v4;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_1003731E0;
    v6 = *(v0 + 80);

    return sub_100373338(v6, v4);
  }

  else
  {
    **(v0 + 64) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1003731E0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_100373310, 0, 0);
}

uint64_t sub_100373338(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for NWError();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v8 = type metadata accessor for NWListener.State();
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v3[21] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003734F0, v11, 0);
}

uint64_t sub_1003734F0()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v2 + 16))(v1, v0[8], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for NWListener.State.waiting(_:))
  {
    v5 = v0[20];
    v6 = v0[17];
    v7 = v0[12];
    v8 = v0[13];
    (*(v0[19] + 96))(v5, v0[18]);
    (*(v8 + 32))(v6, v5, v7);
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v9 = v0[16];
    v10 = v0[17];
    v11 = v0[12];
    v12 = v0[13];
    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_10097A750);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[12];
    v21 = v0[13];
    if (v17)
    {
      v92 = v14;
      v22 = swift_slowAlloc();
      v93 = v18;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      sub_1003759BC(&qword_100977BF8, &type metadata accessor for NWError);
      swift_allocError();
      v92(v24, v19, v20);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = *(v21 + 8);
      v26(v19, v20);
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "AirDrop Bonjour server waiting with error %@", v22, 0xCu);
      sub_10028924C(v23);

      v26(v93, v20);
    }

    else
    {

      v47 = *(v21 + 8);
      v47(v19, v20);
      v47(v18, v20);
    }

    goto LABEL_47;
  }

  if (v4 == enum case for NWListener.State.failed(_:))
  {
    v27 = v0[20];
    v28 = v0[15];
    v29 = v0[12];
    v30 = v0[13];
    (*(v0[19] + 96))(v27, v0[18]);
    (*(v30 + 32))(v28, v27, v29);
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v31 = v0[14];
    v32 = v0[15];
    v33 = v0[12];
    v34 = v0[13];
    v35 = type metadata accessor for Logger();
    sub_10000C4AC(v35, qword_10097A750);
    v36 = *(v34 + 16);
    v36(v31, v32, v33);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v41 = v0[13];
    v40 = v0[14];
    v42 = v0[12];
    if (v39)
    {
      v43 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v43 = 138412290;
      sub_1003759BC(&qword_100977BF8, &type metadata accessor for NWError);
      swift_allocError();
      v36(v44, v40, v42);
      v45 = _swift_stdlib_bridgeErrorToNSError();
      v46 = *(v41 + 8);
      v46(v40, v42);
      *(v43 + 4) = v45;
      *v94 = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "AirDrop Bonjour server failed with error %@", v43, 0xCu);
      sub_10028924C(v94);
    }

    else
    {

      v46 = *(v41 + 8);
      v46(v40, v42);
    }

    v0[24] = v46;
    if (v0[9])
    {
      NWListener.cancel()();
    }

    v52 = v0[10];
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      v54 = swift_task_alloc();
      v0[26] = v54;
      *v54 = v0;
      v54[1] = sub_1003741C0;
      v55 = v0[15];

      return sub_10035E6D4(1, v55);
    }

    v71 = v0[13] + 8;
    (v0[24])(v0[15], v0[12]);
LABEL_47:
    v85 = v0[20];
    v86 = v0[16];
    v87 = v0[17];
    v89 = v0[14];
    v88 = v0[15];
    v90 = v0[11];

    v91 = v0[1];

    return v91();
  }

  if (v4 == enum case for NWListener.State.setup(_:))
  {
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000C4AC(v48, qword_10097A750);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "AirDrop Bonjour server setting up", v51, 2u);
    }

    goto LABEL_47;
  }

  if (v4 != enum case for NWListener.State.ready(_:))
  {
    if (v4 == enum case for NWListener.State.cancelled(_:))
    {
      if (qword_1009736B0 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      sub_10000C4AC(v72, qword_10097A750);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "AirDrop Bonjour server stopped", v75, 2u);
      }

      v76 = v0[10];

      if (*(v76 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility) == 1)
      {
        v77 = v0[10];
        sub_1003710F8();
      }
    }

    else
    {
      if (qword_1009736B0 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      sub_10000C4AC(v78, qword_10097A750);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v79, v80, "Unknown AirDrop server state", v81, 2u);
      }

      v83 = v0[19];
      v82 = v0[20];
      v84 = v0[18];

      (*(v83 + 8))(v82, v84);
    }

    goto LABEL_47;
  }

  if (qword_1009736B0 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_10000C4AC(v57, qword_10097A750);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "AirDrop Bonjour server ready", v60, 2u);
  }

  v62 = v0[10];
  v61 = v0[11];

  v63 = *(v62 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_sessionLogger);
  Date.init()();
  v64 = type metadata accessor for Date();
  (*(*(v64 - 8) + 56))(v61, 0, 1, v64);
  v65 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_bonjourServerStartDate;
  swift_beginAccess();
  sub_1003561CC(v61, v63 + v65);
  swift_endAccess();
  v66 = String._bridgeToObjectiveC()();
  v67 = getpid();
  sub_100086D20(@"BonjourAdvertise", @"Start", v66, v67);

  v68 = swift_unknownObjectWeakLoadStrong();
  v0[22] = v68;
  if (!v68)
  {
    goto LABEL_47;
  }

  v69 = *(v68 + 80);
  v70 = swift_task_alloc();
  v0[23] = v70;
  *v70 = v0;
  v70[1] = sub_100373FD0;

  return sub_1005EAAE8();
}

uint64_t sub_100373FD0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_1003740E0, v2, 0);
}

uint64_t sub_1003740E0()
{
  v1 = v0[22];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServerErrors;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v1 + v2) = &_swiftEmptySetSingleton;

  swift_unknownObjectRelease();
  v4 = v0[20];
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003741C0()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 168);
  v5 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1003742EC, v3, 0);
}

uint64_t sub_1003742EC()
{
  v1 = *(v0 + 104) + 8;
  (*(v0 + 192))(*(v0 + 120), *(v0 + 96));
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 88);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003743AC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = a1;

  sub_1002B3398(0, 0, v5, &unk_1007FD9E0, v8);
}

uint64_t sub_1003744E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_100374504, 0, 0);
}

uint64_t sub_100374504()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v3 = static AirDropActor.shared;

    return _swift_task_switch(sub_100374600, v3, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100374600()
{
  v1 = *(v0 + 64);
  sub_10037466C(*(v0 + 56));

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

uint64_t sub_10037466C(uint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  sub_10050180C();
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_connections;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = qword_1009735E0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v12 = sub_1003759BC(&qword_100977C00, type metadata accessor for AirDropActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = a1;
  v13[5] = v9;

  sub_1002B3098(0, 0, v6, &unk_1007FD9F0, v13);
}

void sub_1003748B8()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_listener;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_listener))
  {
    v2 = v0;
    v3 = qword_1009736B0;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097A750);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Stopping AirDrop Bonjour Server", v7, 2u);
    }

    NWListener.cancel()();
    v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_sessionLogger);
    sub_10055D2F8(1);
    sub_100374AC8(&OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_serverType, &OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_connections);
    v9 = *(v2 + v1);
    *(v2 + v1) = 0;

    [*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_deviceStatus) setNextAirDropID:0];
    *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility) = 0;
    if (@"AirDropID")
    {
      CFPreferencesSetValue(@"AirDropID", 0, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
      CFPreferencesSynchronize(kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100374AC8(void *a1, uint64_t a2)
{
  if (qword_100973790 != -1)
  {
LABEL_23:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097AD70);
  v6 = v2;
  v2 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    if (*(&v6->isa + *a1))
    {
      if (*(&v6->isa + *a1) == 1)
      {
        v10 = 0xEE00726576726553;
        v11 = 0x2072756F6A6E6F42;
      }

      else
      {
        v10 = 0xEA0000000000646CLL;
        v11 = 0x656946207261654ELL;
      }
    }

    else
    {
      v10 = 0x800000010078D790;
      v11 = 0xD00000000000001ALL;
    }

    v12 = sub_10000C4E4(v11, v10, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v7, "Cancelling all connections associated with %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  a1 = *a2;
  swift_beginAccess();
  a2 = *(a1 + v6);
  if (a2 >> 62)
  {
    if (a2 < 0)
    {
      v18 = *(a1 + v6);
    }

    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v14 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v2 = *(a2 + 8 * v14 + 32);

        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_20;
        }
      }

      NWConnection.cancel()();

      ++v14;
    }

    while (v15 != v13);
  }

  v16 = *(a1 + v6);
  *(a1 + v6) = _swiftEmptyArrayStorage;
}

uint64_t sub_100374D70(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_100374E10, v4, 0);
}

uint64_t sub_100374E10()
{
  v13 = v0;
  if (qword_1009736B0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097A750);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000C4E4(v6, v5, &v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "Restarting AirDrop Bonjour Server for legacy peer %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v9 = v0[4];
  sub_1003748B8();
  *(v9 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility) = 1;
  v10 = v0[1];

  return v10();
}

uint64_t sub_100374FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for SDAirDropServerConnection(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_100375078, v8, 0);
}

uint64_t sub_100375078()
{
  v22 = v0;
  if (qword_1009736B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097A750);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    v8 = NWConnection.debugDescription.getter();
    v10 = sub_10000C4E4(v8, v9, &v21);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received AirDrop Bonjour connection %s", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v11 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, v14 = swift_unknownObjectWeakLoadStrong(), *(v0 + 72) = v14, v13, v14))
  {
    v15 = *(v0 + 56);
    **(v0 + 64) = *(v0 + 40);
    swift_storeEnumTagMultiPayload();

    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_1003752F0;
    v17 = *(v0 + 64);

    return sub_100359E00(v17);
  }

  else
  {
    v19 = *(v0 + 64);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1003752F0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v8 = *v0;

  swift_unknownObjectRelease();
  sub_100375730(v4);
  v5 = *(v1 + 64);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100375558(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100372E58(a1);
}

uint64_t sub_100375568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1003744E0(a1, v4, v5, v7, v6);
}

uint64_t sub_100375628()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100375670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_100374FAC(a1, v4, v5, v7, v6);
}

uint64_t sub_100375730(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropServerConnection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10037578C(uint64_t a1)
{
  v4 = *(type metadata accessor for NWListener.State() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_100373094(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1003758BC(uint64_t a1)
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
  v10[1] = sub_100005C00;

  return sub_100371B28(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100375990()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

uint64_t sub_1003759BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100375A04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_100375A4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_11:
    v14 = (*(a1 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v6)))));
    v16 = *v14;
    v15 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    swift_bridgeObjectRetain_n();

    sub_10046DAAC(&v24, v16, v15);

    v19 = *a3;
    if (*(*a3 + 16) && (v20 = sub_100012854(v16, v15), (v21 & 1) != 0))
    {
      v25 = *(*(v19 + 56) + 8 * v20);
    }

    else
    {
      v25 = &_swiftEmptySetSingleton;
    }

    v6 &= v6 - 1;

    sub_10046DAAC(&v24, v18, v17);

    v10 = v25;

    v11 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *a3;
    *a3 = 0x8000000000000000;
    sub_10057AEF0(v10, v16, v15, isUniquelyReferenced_nonNull_native);

    *a3 = v24;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v7)
    {
    }

    v6 = *(v3 + 8 * v13);
    ++v9;
    if (v6)
    {
      v9 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100375C30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v3[5] = static AirDropActor.shared;

  return _swift_task_switch(sub_100375CD4, v4, 0);
}

uint64_t sub_100375CD4()
{
  type metadata accessor for SFAirDropUserDefaults();
  v1 = static SFAirDropUserDefaults.shared.getter();
  v2 = SFAirDropUserDefaults.privacyImprovements.getter();

  if ((v2 & 1) == 0)
  {
    v5 = 1;
LABEL_29:
    v26 = v0[1];

    return v26(v5);
  }

  v3 = v0[4];
  v4 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[6] = v4;
  v5 = v4 != 0;
  if (!v4)
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_10097A860);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Store not setup", v21, 2u);
    }

    goto LABEL_28;
  }

  v6 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  if (v6)
  {

    v7 = [v6 altDSID];
    if (v7)
    {
      v9 = v0[2];
      v8 = v0[3];
      v10 = v7;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      if (v11 == v9 && v13 == v8)
      {

LABEL_23:
        if (qword_1009736B8 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_10000C4AC(v23, qword_10097A860);
        v19 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v19, v24, "Found same account match", v25, 2u);
        }

LABEL_28:

        goto LABEL_29;
      }

      v15 = v0[2];
      v16 = v0[3];
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
  }

  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v22 = static IDMSActor.shared;

  return _swift_task_switch(sub_100376010, v22, 0);
}

uint64_t sub_100376010()
{
  v1 = *(v0 + 48);
  *(v0 + 64) = sub_100325AD0(*(v0 + 16), *(v0 + 24)) & 1;
  *(v0 + 56) = 0;
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1003760A8, v2, 0);
}

uint64_t sub_1003760A8()
{
  v16 = v0;
  v1 = *(v0 + 64);
  if (v1 == 1)
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 24);
    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097A860);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 48);
    if (v6)
    {
      v9 = *(v0 + 16);
      v8 = *(v0 + 24);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10000C4E4(v9, v8, &v15);
      _os_log_impl(&_mh_execute_header, v4, v5, "Found match in db entries for altDSID %s", v10, 0xCu);
      sub_10000C60C(v11);

      goto LABEL_9;
    }
  }

  else
  {
    v12 = *(v0 + 48);
  }

LABEL_9:
  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_100376268()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097A860);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[6];
  v6 = v0[7];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to query db %@", v8, 0xCu);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_100376420()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A860);
  v1 = sub_10000C4AC(v0, qword_10097A860);
  if (qword_100973708 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0960);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003764E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_10000FF90(a1, v7, &qword_10097A7F0, &unk_1007FB600);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  v12 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffDateKey);
  v13 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffDateKey + 8);
  v14 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v14];

  swift_unknownObjectRelease();
  return sub_100005508(a1, &qword_10097A7F0, &unk_1007FB600);
}

uint64_t sub_10037668C@<X0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffDateKey);
  v5 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffDateKey + 8);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v3 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v8 = type metadata accessor for Date();
    v9 = swift_dynamicCast();
    return (*(*(v8 - 8) + 56))(a1, v9 ^ 1u, 1, v8);
  }

  else
  {
    sub_100005508(v14, &unk_1009746F0, &qword_1007F90B0);
    v11 = type metadata accessor for Date();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

id sub_100376808(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore] = 0;
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_updateToken;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 56);
  v9(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount] = 0;
  v10 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffDateKey];
  *v10 = 0xD000000000000027;
  *(v10 + 1) = 0x800000010078DB70;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask] = 0;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_queryBatchSize] = 120;
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDAgent;
  *&v3[v11] = [objc_opt_self() sharedAgent];
  v12 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDState];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_osTransaction] = 0;
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_sessionTelemetry;
  v14 = type metadata accessor for SDAirDropIDMSServiceTelemetry();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  v9(&v17[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken], 1, 1, v8);
  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_sessionStart;
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_finishedBatchCount] = 0;
  *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_totalBatchCount] = 0;
  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_log;
  if (qword_100973708 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_10000C4AC(v21, qword_1009A0960);
  (*(*(v21 - 8) + 16))(&v17[v20], v22, v21);
  v40.receiver = v17;
  v40.super_class = v14;
  *&v3[v13] = objc_msgSendSuper2(&v40, "init");
  v23 = type metadata accessor for SDNWPathMonitor();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsPathMonitor] = sub_10041ED68();
  v26 = type metadata accessor for SDContactStore();
  v27 = swift_allocObject();
  v28 = CNContactStoreMeContactDidChangeNotification;
  v27[2] = CNContactStoreDidChangeNotification;
  v27[3] = v28;
  v29 = objc_allocWithZone(CNContactStore);
  v30 = CNContactStoreDidChangeNotification;
  v31 = v28;
  v27[4] = [v29 init];
  v32 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_contactStore];
  *(v32 + 3) = v26;
  *(v32 + 4) = &off_1008E85A0;
  *v32 = v27;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_hashManager] = a1;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_deviceStatus] = a2;
  v33 = objc_opt_self();
  v34 = a1;
  v35 = a2;
  v36 = [v33 defaultCenter];
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_notificationCenter] = v36;
  v39.receiver = v3;
  v39.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v39, "init");
  sub_100376BCC();

  return v37;
}

void sub_100376BCC()
{
  v1 = v0;
  type metadata accessor for SFAirDropUserDefaults();
  v2 = static SFAirDropUserDefaults.shared.getter();
  v3 = SFAirDropUserDefaults.privacyImprovements.getter();

  if (v3)
  {
    v4 = [*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_deviceStatus) myAppleID];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 1;
    }

    v9 = (v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDState);
    v10 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDState);
    v11 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDState + 8);
    *v9 = v6;
    v9[1] = v8;
    sub_10037100C(v10, v11);
    v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_notificationCenter);

    [v12 addObserver:v1 selector:"appleIDChangedWithNotification:" name:@"com.apple.sharingd.AppleIDAccountInfoChanged" object:0];
  }
}

uint64_t sub_100376CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v4[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_100376D9C, v6, 0);
}

uint64_t sub_100376D9C()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[5] = sub_10000C4AC(v1, qword_10097A860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activating SDAirDropIDMSService", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100376EEC;
  v6 = v0[2];

  return sub_1003775AC();
}

uint64_t sub_100376EEC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 56) = v4;
  *v4 = v3;
  v4[1] = sub_10037702C;
  v5 = *(v1 + 16);

  return sub_1003779EC();
}

uint64_t sub_10037702C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_10037713C, v2, 0);
}

uint64_t sub_10037713C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsPathMonitor);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_100377168, v1, 0);
}

uint64_t sub_100377168()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  sub_10041E294();

  return _swift_task_switch(sub_1003771D4, v2, 0);
}

uint64_t sub_1003771D4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[9] = v1;
  if (v1)
  {
    v2 = qword_1009735E8;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = static IDMSActor.shared;

    return _swift_task_switch(sub_1003772C0, v3, 0);
  }

  else
  {
    v4 = v0[3];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1003772C0()
{
  v1 = *(v0 + 72);
  v2 = sub_100324CE8();
  v4 = *(v0 + 32);
  if (v3 >> 60 == 15)
  {
    v5 = sub_1003773B4;
  }

  else
  {
    sub_10028BCC0(v2, v3);
    v5 = sub_10037734C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10037734C()
{
  v1 = v0[9];

  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003773B4()
{
  v1 = v0[5];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running initial service update", v4, 2u);
  }

  type metadata accessor for SFAirDropUserDefaults();
  v5 = static SFAirDropUserDefaults.shared.getter();
  v6 = SFAirDropUserDefaults.privacyImprovements.getter();

  v7 = v0[9];
  if (v6)
  {
    v8 = v0[3];
    v9 = v0[4];
    v10 = v0[2];
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor);
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v12;
    v13[4] = v10;
    v14 = v10;

    sub_1002B3098(0, 0, v8, &unk_1007FDBC0, v13);
  }

  else
  {
    v15 = v0[9];
  }

  v16 = v0[3];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003775AC()
{
  *(v1 + 16) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10037764C, v2, 0);
}

uint64_t sub_10037764C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore;
  v0[4] = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore;
  v3 = *(v1 + v2);
  if (v3)
  {
    v0[6] = v3;

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_1003778DC;

    return sub_100324F0C();
  }

  else
  {
    if (qword_1009735E8 != -1)
    {
      swift_once();
    }

    v6 = static IDMSActor.shared;

    return _swift_task_switch(sub_100377770, v6, 0);
  }
}

uint64_t sub_100377770()
{
  v1 = *(v0 + 24);
  type metadata accessor for SDAirDropIDMSStore();
  swift_allocObject();
  *(v0 + 40) = sub_10032A32C();

  return _swift_task_switch(sub_1003777F4, v1, 0);
}

uint64_t sub_1003777F4()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[5];

  v4 = *(v2 + v1);
  if (v4)
  {
    v0[6] = v4;

    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_1003778DC;

    return sub_100324F0C();
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1003778DC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1003779EC()
{
  *(v1 + 16) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_100377A8C, v2, 0);
}

uint64_t sub_100377A8C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount))
  {
    goto LABEL_2;
  }

  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v0[4] = sub_10000C4AC(v5, qword_10097A860);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching current appleID account", v8, 2u);
  }

  v9 = v0[2];

  v10 = [*(v9 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDAgent) myAccount];
  if (v10)
  {
    v11 = *(v1 + v2);
    *(v1 + v2) = v10;
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to fetch appleID account info", v13, 2u);
    }
  }

  v14 = *(v1 + v2);
  if (!v14)
  {
    goto LABEL_2;
  }

  v15 = [v14 altDSID];
  if (!v15)
  {
    goto LABEL_2;
  }

  v16 = v0[2];
  v17 = v15;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v0[5] = v18;
  v0[6] = v20;
  v21 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore;
  v0[7] = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore;
  v22 = *(v16 + v21);
  v0[8] = v22;
  if (!v22)
  {

LABEL_2:
    v3 = v0[1];

    return v3();
  }

  v23 = qword_1009735E8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = static IDMSActor.shared;

  return _swift_task_switch(sub_100377D3C, v24, 0);
}

uint64_t sub_100377D3C()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = sub_100324DFC();
  v5 = v4;

  v0[9] = v3;
  v0[10] = v5;

  return _swift_task_switch(sub_100377DC4, v2, 0);
}

uint64_t sub_100377DC4()
{
  v1 = v0[10];
  if (!v1)
  {
    v15 = v0[6];
LABEL_15:

    goto LABEL_16;
  }

  if (v0[5] == v0[9] && v1 == v0[6])
  {
    v16 = v0[10];

    goto LABEL_15;
  }

  v3 = v0[6];
  v4 = v0[10];
  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    v6 = v0[4];
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "User change detected - clearing store", v9, 2u);
    }

    v10 = v0[7];
    v11 = v0[2];

    v12 = *(v11 + v10);
    v0[11] = v12;
    if (v12)
    {

      v13 = swift_task_alloc();
      v0[12] = v13;
      *v13 = v0;
      v13[1] = sub_100377F78;

      return sub_100329C34();
    }
  }

LABEL_16:
  v17 = v0[1];

  return v17();
}

uint64_t sub_100377F78()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  v5 = *(v2 + 88);
  if (v0)
  {
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1003780A0()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C04;

  return sub_100378160();
}

uint64_t sub_100378160()
{
  v1[23] = v0;
  v2 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v3 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v1[25] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v5 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v1[31] = v6;
  v7 = *(v6 - 8);
  v1[32] = v7;
  v8 = *(v7 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v1[40] = v10;
  v11 = *(v10 - 8);
  v1[41] = v11;
  v12 = *(v11 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v1[44] = static AirDropActor.shared;

  return _swift_task_switch(sub_100378408, v13, 0);
}

void sub_100378408()
{
  if (*(v0[23] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDState + 8) < 2uLL)
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_10097A860);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Device not logged-in to iCloud, skipping IDMS service update", v4, 2u);
    }

    goto LABEL_24;
  }

  v5 = v0[40];
  v6 = v0[41];
  v7 = v0[39];
  sub_10037668C(v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_100005508(v0[39], &qword_10097A7F0, &unk_1007FB600);
    goto LABEL_19;
  }

  v8 = v0[42];
  v9 = v0[40];
  v10 = v0[41];
  (*(v10 + 32))(v0[43], v0[39], v9);
  static Date.now.getter();
  v11 = static Date.< infix(_:_:)();
  v12 = *(v10 + 8);
  v12(v8, v9);
  if (v11)
  {
    v13 = v0[42];
    v14 = v0[40];
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v16 = v15;
    v12(v13, v14);
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_10097A860);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v18, v19, "Still in IDMS backoff period, checking for scheduled update in %f seconds", v20, 0xCu);
    }

    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -9.22337204e18)
    {
      if (v16 < 9.22337204e18)
      {
        v21 = v0[43];
        v22 = v0[40];
        v23 = v0[23];
        sub_10037A7C4(v16);
        v12(v21, v22);
LABEL_24:
        v49 = v0[42];
        v48 = v0[43];
        v51 = v0[38];
        v50 = v0[39];
        v53 = v0[36];
        v52 = v0[37];
        v55 = v0[34];
        v54 = v0[35];
        v56 = v0[33];
        v57 = v0[30];
        v59 = v0[29];
        v60 = v0[28];
        v61 = v0[27];
        v62 = v0[26];
        v63 = v0[24];

        v58 = v0[1];

        v58();
        return;
      }

LABEL_29:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  v12(v0[43], v0[40]);
LABEL_19:
  v24 = v0[40];
  v25 = v0[41];
  v27 = v0[37];
  v26 = v0[38];
  v28 = v0[31];
  v29 = v0[32];
  v30 = v0[30];
  v31 = v0[23];
  v32 = *(v25 + 56);
  v0[45] = v32;
  v0[46] = (v25 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v32(v26, 1, 1, v24);
  sub_1003764E8(v26);
  v33 = *(v31 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask);
  *(v31 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask) = 0;

  UUID.init()();
  v34 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_updateToken;
  v0[47] = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_updateToken;
  swift_beginAccess();
  sub_10000FF90(v31 + v34, v30, &unk_100976120, &qword_1007F9260);
  v35 = *(v29 + 48);
  v29 += 48;
  v0[48] = v35;
  v0[49] = v29 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v28) = v35(v30, 1, v28);
  sub_100005508(v30, &unk_100976120, &qword_1007F9260);
  v36 = v29 + 8;
  if (v28 != 1)
  {
    v46 = v0[31];
    v47 = v0[29];
    (*(v0[32] + 32))(v47, v0[37], v46);
    (*v36)(v47, 0, 1, v46);
    swift_beginAccess();
    sub_10000C788(v47, v31 + v34, &unk_100976120, &qword_1007F9260);
    swift_endAccess();
    goto LABEL_24;
  }

  v37 = v0[37];
  v39 = v0[31];
  v38 = v0[32];
  v40 = v0[29];
  v41 = v0[23];
  v42 = *(v38 + 16);
  v0[50] = v42;
  v0[51] = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v42(v40, v37, v39);
  v43 = *v36;
  v0[52] = *v36;
  v0[53] = v36 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v43(v40, 0, 1, v39);
  swift_beginAccess();
  sub_10000C788(v40, v31 + v34, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  v44 = *(v41 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_deviceStatus);
  v45 = swift_task_alloc();
  v0[54] = v45;
  *v45 = v0;
  v45[1] = sub_100378AA8;

  sub_10002DCF0();
}

uint64_t sub_100378AA8()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return _swift_task_switch(sub_100378BB8, v2, 0);
}

uint64_t sub_100378BB8()
{
  v24 = v0;
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[31];
  v6 = type metadata accessor for Logger();
  v0[55] = sub_10000C4AC(v6, qword_10097A860);
  v2(v3, v4, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[36];
  v11 = v0[31];
  v12 = v0[32];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 136315138;
    sub_100389AB0(&qword_100978CE0, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000C4E4(v14, v16, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Waiting for reachability for IDMS service update %s", v13, 0xCu);
    sub_10000C60C(v22);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[56] = v17;
  v19 = *(v0[23] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsPathMonitor);
  v20 = swift_task_alloc();
  v0[57] = v20;
  *v20 = v0;
  v20[1] = sub_100378E2C;

  return sub_10041E4B0();
}

uint64_t sub_100378E2C()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return _swift_task_switch(sub_100378F3C, v2, 0);
}

uint64_t sub_100378F3C()
{
  v1 = *(*(v0 + 184) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_sessionTelemetry);
  *(v0 + 464) = v1;
  return _swift_task_switch(sub_100378F68, v1, 0);
}

uint64_t sub_100378F68()
{
  v1 = v0[58];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[50];
  v5 = v0[51];
  v14 = v0[45];
  v15 = v0[46];
  v16 = v0[44];
  v13 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[31];
  v9 = v0[29];
  sub_1005C18F4();
  v4(v9, v7, v8);
  v3(v9, 0, 1, v8);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken;
  swift_beginAccess();
  sub_10000C788(v9, v1 + v10, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  Date.init()();
  v14(v6, 0, 1, v13);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_sessionStart;
  swift_beginAccess();
  sub_10000C788(v6, v1 + v11, &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();

  return _swift_task_switch(sub_1003790E0, v16, 0);
}

uint64_t sub_1003790E0()
{
  v26 = v0;
  v1 = v0[55];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[37];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[23];
  sub_10037AA88();
  v3(v5, v4, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[56];
  v12 = v0[35];
  v13 = v0[31];
  v14 = v0[32];
  if (v10)
  {
    v24 = v0[56];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    sub_100389AB0(&qword_100978CE0, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v24(v12, v13);
    v20 = sub_10000C4E4(v17, v19, &v25);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Starting IDMS service update %s", v15, 0xCu);
    sub_10000C60C(v16);
  }

  else
  {

    v11(v12, v13);
  }

  v21 = swift_task_alloc();
  v0[59] = v21;
  *v21 = v0;
  v21[1] = sub_100379314;
  v22 = v0[23];

  return sub_1003775AC();
}

uint64_t sub_100379314()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 480) = v4;
  *v4 = v3;
  v4[1] = sub_100379454;
  v5 = *(v1 + 184);

  return sub_1003779EC();
}

uint64_t sub_100379454()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[61] = v4;
  *v4 = v3;
  v4[1] = sub_1003795AC;
  v5 = v1[37];
  v6 = v1[23];

  return sub_10037AB94(v5);
}

uint64_t sub_1003795AC()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return _swift_task_switch(sub_1003796BC, v2, 0);
}

uint64_t sub_1003796BC()
{
  v24 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 408);
  (*(v0 + 400))(*(v0 + 272), *(v0 + 296), *(v0 + 248));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v9 = 136315138;
    sub_100389AB0(&qword_100978CE0, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = *(v8 + 8);
    v13(v6, v7);
    v14 = sub_10000C4E4(v10, v12, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished IDMS service update %s", v9, 0xCu);
    sub_10000C60C(v22);
  }

  else
  {

    v13 = *(v8 + 8);
    v13(v6, v7);
  }

  *(v0 + 496) = v13;
  v15 = *(v0 + 304);
  v16 = *(v0 + 184);
  sub_10037DD60();
  sub_10037668C(v15);
  v17 = swift_task_alloc();
  *(v0 + 504) = v17;
  *v17 = v0;
  v17[1] = sub_1003798EC;
  v18 = *(v0 + 464);
  v20 = *(v0 + 296);
  v19 = *(v0 + 304);

  return sub_1005C0C2C(v20, v19);
}

uint64_t sub_1003798EC()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 304);
  v5 = *v0;

  sub_100005508(v3, &qword_10097A7F0, &unk_1007FB600);

  return _swift_task_switch(sub_100379A28, v2, 0);
}

uint64_t sub_100379A28()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 384);
  v74 = *(v0 + 392);
  v5 = *(v0 + 376);
  v6 = *(v0 + 248);
  v7 = *(v0 + 224);
  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  v10 = *(v0 + 184);
  (*(v0 + 400))(v7, *(v0 + 296), v6);
  v2(v7, 0, 1, v6);
  v11 = *(v9 + 48);
  sub_10000FF90(v7, v8, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v10 + v5, v8 + v11, &unk_100976120, &qword_1007F9260);
  v12 = v4(v8, 1, v6);
  v14 = *(v0 + 384);
  v13 = *(v0 + 392);
  v15 = *(v0 + 248);
  if (v12 == 1)
  {
    sub_100005508(*(v0 + 224), &unk_100976120, &qword_1007F9260);
    if (v14(v8 + v11, 1, v15) == 1)
    {
      sub_100005508(*(v0 + 208), &unk_100976120, &qword_1007F9260);
LABEL_14:
      v53 = *(v0 + 416);
      v52 = *(v0 + 424);
      v54 = *(v0 + 376);
      v55 = *(v0 + 248);
      v56 = *(v0 + 232);
      v57 = *(v0 + 184);
      (*(v0 + 496))(*(v0 + 296), v55);
      v53(v56, 1, 1, v55);
      swift_beginAccess();
      sub_10000C788(v56, v57 + v54, &unk_100976120, &qword_1007F9260);
      swift_endAccess();
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  sub_10000FF90(*(v0 + 208), *(v0 + 216), &unk_100976120, &qword_1007F9260);
  v16 = v14(v8 + v11, 1, v15);
  v17 = *(v0 + 496);
  if (v16 == 1)
  {
    v18 = *(v0 + 248);
    v19 = *(v0 + 256);
    v20 = *(v0 + 216);
    sub_100005508(*(v0 + 224), &unk_100976120, &qword_1007F9260);
    v17(v20, v18);
LABEL_6:
    sub_100005508(*(v0 + 208), &unk_100987030, &qword_1007F9330);
    goto LABEL_7;
  }

  v46 = *(v0 + 264);
  v47 = *(v0 + 248);
  v49 = *(v0 + 216);
  v48 = *(v0 + 224);
  v50 = *(v0 + 208);
  (*(*(v0 + 256) + 32))(v46, v8 + v11, v47);
  sub_100389AB0(&qword_1009761E0, &type metadata accessor for UUID);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17(v46, v47);
  sub_100005508(v48, &unk_100976120, &qword_1007F9260);
  v17(v49, v47);
  sub_100005508(v50, &unk_100976120, &qword_1007F9260);
  if (v51)
  {
    goto LABEL_14;
  }

LABEL_7:
  v21 = *(v0 + 440);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Update requested mid-flight - restarting update", v24, 2u);
  }

  v26 = *(v0 + 416);
  v25 = *(v0 + 424);
  v27 = *(v0 + 376);
  v28 = *(v0 + 248);
  v29 = *(v0 + 232);
  v30 = *(v0 + 184);

  v26(v29, 1, 1, v28);
  swift_beginAccess();
  sub_10000C788(v29, v30 + v27, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  type metadata accessor for SFAirDropUserDefaults();
  v31 = static SFAirDropUserDefaults.shared.getter();
  LOBYTE(v28) = SFAirDropUserDefaults.privacyImprovements.getter();

  v32 = *(v0 + 496);
  if (v28)
  {
    v33 = *(v0 + 352);
    v34 = *(v0 + 296);
    v35 = *(v0 + 248);
    v36 = *(v0 + 256);
    v38 = *(v0 + 184);
    v37 = *(v0 + 192);
    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
    v40 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor);
    v41 = swift_allocObject();
    v41[2] = v33;
    v41[3] = v40;
    v41[4] = v38;
    v42 = v38;

    sub_1002B3098(0, 0, v37, &unk_1007FDB30, v41);

    v43 = v34;
    v44 = v35;
  }

  else
  {
    v43 = *(v0 + 296);
    v44 = *(v0 + 248);
    v45 = *(v0 + 256) + 8;
  }

  v32(v43, v44);
LABEL_15:
  v59 = *(v0 + 336);
  v58 = *(v0 + 344);
  v61 = *(v0 + 304);
  v60 = *(v0 + 312);
  v63 = *(v0 + 288);
  v62 = *(v0 + 296);
  v65 = *(v0 + 272);
  v64 = *(v0 + 280);
  v66 = *(v0 + 264);
  v67 = *(v0 + 240);
  v70 = *(v0 + 232);
  v71 = *(v0 + 224);
  v72 = *(v0 + 216);
  v73 = *(v0 + 208);
  v75 = *(v0 + 192);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_10037A014()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_10037A0D4();
}

uint64_t sub_10037A0D4()
{
  v1[2] = v0;
  v2 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v1[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_10037A1AC, v3, 0);
}

uint64_t sub_10037A1AC()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[5] = sub_10000C4AC(v1, qword_10097A860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if local handles need retry", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[6] = v6;
  if (v6)
  {
    v7 = qword_1009735E8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = static IDMSActor.shared;
    v9 = sub_10037A514;
    v10 = 0;

    return _swift_task_switch(v9, v8, v10);
  }

  v11 = _swiftEmptySetSingleton[2];

  v12 = _swiftEmptySetSingleton[2];

  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    return _swift_task_switch(v9, v8, v10);
  }

  if (v13 >= 1)
  {
    v14 = v0[5];
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v15, v16, "%ld needing retry detected", v17, 0xCu);
    }

    type metadata accessor for SFAirDropUserDefaults();
    v18 = static SFAirDropUserDefaults.shared.getter();
    v19 = SFAirDropUserDefaults.privacyImprovements.getter();

    if (v19)
    {
      v21 = v0[3];
      v20 = v0[4];
      v22 = v0[2];
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
      v24 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor);
      v25 = swift_allocObject();
      v25[2] = v20;
      v25[3] = v24;
      v25[4] = v22;
      v26 = v22;

      sub_1002B3098(0, 0, v21, &unk_1007FD900, v25);
    }
  }

  v27 = v0[3];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10037A514()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = sub_100326E88();
  v5 = v4;

  v0[7] = v3;
  v0[8] = v5;

  return _swift_task_switch(sub_10037A59C, v2, 0);
}

uint64_t sub_10037A59C()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[8];
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  if (v1)
  {
    v3 = v0[7];
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  v4 = v3[2];

  v5 = v2[2];

  v7 = v4 + v5;
  if (__OFADD__(v4, v5))
  {
    __break(1u);
  }

  else
  {
    if (v7 >= 1)
    {
      v8 = v0[5];
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        *(v11 + 4) = v7;
        _os_log_impl(&_mh_execute_header, v9, v10, "%ld needing retry detected", v11, 0xCu);
      }

      type metadata accessor for SFAirDropUserDefaults();
      v12 = static SFAirDropUserDefaults.shared.getter();
      v13 = SFAirDropUserDefaults.privacyImprovements.getter();

      if (v13)
      {
        v15 = v0[3];
        v14 = v0[4];
        v16 = v0[2];
        v17 = type metadata accessor for TaskPriority();
        (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
        v18 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor);
        v19 = swift_allocObject();
        v19[2] = v14;
        v19[3] = v18;
        v19[4] = v16;
        v20 = v16;

        sub_1002B3098(0, 0, v15, &unk_1007FD900, v19);
      }
    }

    v21 = v0[3];

    v22 = v0[1];

    return v22();
  }

  return result;
}

void sub_10037A7C4(uint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask))
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_10097A860);
    v21 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v21, v9, "Retry task already scheduled", v10, 2u);
    }

    v11 = v21;
  }

  else
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = qword_1009735E0;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = static AirDropActor.shared;
    v16 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor);
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v16;
    v17[4] = a1;
    v17[5] = v13;

    v18 = sub_1002B3098(0, 0, v6, &unk_1007FDB40, v17);
    v19 = *(v1 + v7);
    *(v1 + v7) = v18;
  }
}

uint64_t sub_10037AA88()
{
  v1 = v0;
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097A860);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Begin IDMS service OSTransaction", v5, 2u);
  }

  v6 = os_transaction_create();
  v7 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_osTransaction);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_osTransaction) = v6;

  return swift_unknownObjectRelease();
}

uint64_t sub_10037AB94(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for Date();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v10 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v2[19] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v12 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v2[23] = static AirDropActor.shared;

  return _swift_task_switch(sub_10037ADBC, v13, 0);
}

uint64_t sub_10037ADBC()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[24] = v1;
  if (v1)
  {
    v2 = qword_1009735E8;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = static IDMSActor.shared;

    return _swift_task_switch(sub_10037AFC8, v3, 0);
  }

  else
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097A860);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "IDMS store not setup", v7, 2u);
    }

    v9 = v0[21];
    v8 = v0[22];
    v10 = v0[20];
    v11 = v0[18];
    v13 = v0[14];
    v12 = v0[15];
    v15 = v0[12];
    v14 = v0[13];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10037AFC8()
{
  v1 = v0[23];
  v2 = v0[24];
  v0[25] = sub_100324CE8();
  v0[26] = v3;

  return _swift_task_switch(sub_10037B034, v1, 0);
}

uint64_t sub_10037B034()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[27] = sub_10000C4AC(v1, qword_10097A860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting contacts query", v4, 2u);
  }

  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[9];

  v8 = *sub_10002CDC0((v7 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_contactStore), *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_contactStore + 24));
  v9 = sub_1005A0840(v6, v5);
  v0[28] = v10;
  v0[29] = v11;
  v12 = v0[9];
  v13 = sub_10054A7D0(120, v9);
  v0[30] = v13;

  v0[31] = *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_sessionTelemetry);
  v14 = v13[2];
  v15 = swift_task_alloc();
  v0[32] = v15;
  *v15 = v0;
  v15[1] = sub_10037B3AC;
  v16 = v0[8];

  return sub_1005C149C(v14, v16);
}

uint64_t sub_10037B3AC()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return _swift_task_switch(sub_10037B4BC, v2, 0);
}

uint64_t sub_10037B4BC()
{
  v1 = v0[31];
  v2 = *(v0[30] + 16);
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken;
  v0[33] = v2;
  v0[34] = v3;
  v0[35] = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_finishedBatchCount;
  swift_beginAccess();
  if (v2)
  {
    result = v0[30];
    v0[36] = 0;
    if (*(result + 16))
    {
      v5 = v0[27];
      v6 = *(result + 32);
      v0[37] = v6;

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      v9 = os_log_type_enabled(v7, v8);
      v10 = v0[30];
      if (v9)
      {
        v11 = swift_slowAlloc();
        *v11 = 134218240;
        *(v11 + 4) = 1;
        *(v11 + 12) = 2048;
        *(v11 + 14) = *(v10 + 16);

        _os_log_impl(&_mh_execute_header, v7, v8, "Processing change event batch %ld of %ld", v11, 0x16u);
      }

      else
      {
        v14 = v0[30];
      }

      v15 = v0[24];
      v16 = swift_task_alloc();
      v0[38] = v16;
      *v16 = v0;
      v16[1] = sub_10037B6F4;

      return sub_100384F38(v6, v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = v0[24];
    v13 = swift_task_alloc();
    v0[45] = v13;
    *v13 = v0;
    v13[1] = sub_10037C35C;

    return sub_100388428(v12);
  }

  return result;
}

uint64_t sub_10037B6F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v5 = *(*v2 + 296);
  v6 = *(*v2 + 184);
  v8 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = a2;

  return _swift_task_switch(sub_10037B828, v6, 0);
}

uint64_t sub_10037B828()
{
  if (*(v0[39] + 16) || *(v0[40] + 16))
  {
    v1 = swift_task_alloc();
    v0[41] = v1;
    *v1 = v0;
    v1[1] = sub_10037BB70;
    v3 = v0[39];
    v2 = v0[40];
    v4 = v0[9];

    return sub_10037E824(v3, v2);
  }

  else
  {
    v6 = v0[27];

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[36] + 1;
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v7, v8, "Nothing to fetch for batch %ld", v10, 0xCu);
    }

    v11 = v0[36];
    v12 = v11 + 1;
    if (v11 + 1 == v0[33])
    {
      v13 = v0[24];
      v14 = swift_task_alloc();
      v0[45] = v14;
      *v14 = v0;
      v14[1] = sub_10037C35C;

      return (sub_100388428)(v13);
    }

    else
    {
      v0[36] = v12;
      result = v0[30];
      if (v12 >= *(result + 16))
      {
        __break(1u);
      }

      else
      {
        v15 = v0[27];
        v16 = *(result + 8 * v12 + 32);
        v0[37] = v16;

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = v11 + 2;
          v20 = v0[30];
          v21 = swift_slowAlloc();
          *v21 = 134218240;
          *(v21 + 4) = v19;
          *(v21 + 12) = 2048;
          *(v21 + 14) = *(v20 + 16);

          _os_log_impl(&_mh_execute_header, v17, v18, "Processing change event batch %ld of %ld", v21, 0x16u);
        }

        else
        {
          v22 = v0[30];
        }

        v23 = v0[24];
        v24 = swift_task_alloc();
        v0[38] = v24;
        *v24 = v0;
        v24[1] = sub_10037B6F4;

        return sub_100384F38(v16, v23);
      }
    }
  }

  return result;
}

uint64_t sub_10037BB70()
{
  v2 = *(*v1 + 328);
  v3 = *v1;
  v3[42] = v0;

  if (v0)
  {
    v4 = v3[30];
    v5 = v3[23];

    return _swift_task_switch(sub_10037D578, v5, 0);
  }

  else
  {
    v6 = v3[39];
    v7 = v3[40];

    v8 = swift_task_alloc();
    v3[43] = v8;
    *v8 = v3;
    v8[1] = sub_10037BCF8;
    v9 = v3[9];

    return sub_10037F0A4();
  }
}

uint64_t sub_10037BCF8()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = v2[30];
    v5 = v2[23];

    v6 = sub_10037D774;
    v7 = v5;
  }

  else
  {
    v7 = v2[31];
    v6 = sub_10037BE20;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10037BE20()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[16];
  v7 = v0[17];
  (*(v7 + 16))(v3, v0[8], v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  v8 = *(v5 + 48);
  sub_10000FF90(v3, v4, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v2 + v1, v4 + v8, &unk_100976120, &qword_1007F9260);
  v9 = *(v7 + 48);
  if (v9(v4, 1, v6) != 1)
  {
    v14 = v0[16];
    sub_10000FF90(v0[20], v0[21], &unk_100976120, &qword_1007F9260);
    v15 = v9(v4 + v8, 1, v14);
    v16 = v0[21];
    v17 = v0[22];
    if (v15 != 1)
    {
      v20 = v0[20];
      v22 = v0[17];
      v21 = v0[18];
      v23 = v0[16];
      (*(v22 + 32))(v21, v4 + v8, v23);
      sub_100389AB0(&qword_1009761E0, &type metadata accessor for UUID);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v22 + 8);
      v25(v21, v23);
      sub_100005508(v17, &unk_100976120, &qword_1007F9260);
      v25(v16, v23);
      v11 = sub_100005508(v20, &unk_100976120, &qword_1007F9260);
      if ((v24 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    v18 = v0[16];
    v19 = v0[17];
    sub_100005508(v0[22], &unk_100976120, &qword_1007F9260);
    (*(v19 + 8))(v16, v18);
LABEL_6:
    sub_100005508(v0[20], &unk_100987030, &qword_1007F9330);
    goto LABEL_10;
  }

  v10 = v0[16];
  sub_100005508(v0[22], &unk_100976120, &qword_1007F9260);
  if (v9(v4 + v8, 1, v10) != 1)
  {
    goto LABEL_6;
  }

  v11 = sub_100005508(v0[20], &unk_100976120, &qword_1007F9260);
LABEL_8:
  v26 = v0[35];
  v27 = v0[31];
  v28 = *(v27 + v26);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
    return _swift_task_switch(v11, v12, v13);
  }

  *(v27 + v26) = v30;
LABEL_10:
  v12 = v0[23];
  v11 = sub_10037C138;
  v13 = 0;

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10037C138()
{
  v1 = v0[36];
  v2 = v1 + 1;
  if (v1 + 1 == v0[33])
  {
    v3 = v0[24];
    v4 = swift_task_alloc();
    v0[45] = v4;
    *v4 = v0;
    v4[1] = sub_10037C35C;

    return (sub_100388428)(v3);
  }

  else
  {
    v0[36] = v2;
    result = v0[30];
    if (v2 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = v0[27];
      v7 = *(result + 8 * v2 + 32);
      v0[37] = v7;

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = v1 + 2;
        v11 = v0[30];
        v12 = swift_slowAlloc();
        *v12 = 134218240;
        *(v12 + 4) = v10;
        *(v12 + 12) = 2048;
        *(v12 + 14) = *(v11 + 16);

        _os_log_impl(&_mh_execute_header, v8, v9, "Processing change event batch %ld of %ld", v12, 0x16u);
      }

      else
      {
        v13 = v0[30];
      }

      v14 = v0[24];
      v15 = swift_task_alloc();
      v0[38] = v15;
      *v15 = v0;
      v15[1] = sub_10037B6F4;

      return sub_100384F38(v7, v14);
    }
  }

  return result;
}

uint64_t sub_10037C35C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 360);
  v7 = *v3;
  v5[46] = a1;
  v5[47] = a2;
  v5[48] = v2;

  v8 = v4[23];
  if (v2)
  {
    v9 = sub_10037C6EC;
  }

  else
  {
    v9 = sub_10037C494;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10037C494()
{
  if (*(v0[46] + 16) || *(v0[47] + 16))
  {
    v1 = swift_task_alloc();
    v0[49] = v1;
    *v1 = v0;
    v1[1] = sub_10037C8E4;
    v3 = v0[46];
    v2 = v0[47];
    v4 = v0[9];

    return sub_10037E824(v3, v2);
  }

  v6 = v0[30];
  v7 = v0[27];

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[30];
  if (v10)
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = *(v11 + 16);

    *(v12 + 4) = v13;

    _os_log_impl(&_mh_execute_header, v8, v9, "Finished processing %ld batch updates", v12, 0xCu);
  }

  else
  {
    v14 = v0[30];
    swift_bridgeObjectRelease_n();
  }

  v15 = *(v0[9] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  v16 = v0[28];
  v17 = v0[29];
  if (!v15)
  {
    sub_100294008(v16, v17);
    goto LABEL_13;
  }

  sub_100294008(v16, v17);
  v18 = [v15 altDSID];
  if (!v18)
  {
LABEL_13:
    v20 = 0;
    v22 = 0;
    goto LABEL_14;
  }

  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

LABEL_14:
  v0[53] = v22;
  v23 = v0[24];
  v24 = swift_task_alloc();
  v0[54] = v24;
  *v24 = v0;
  v24[1] = sub_10037CD48;
  v26 = v0[28];
  v25 = v0[29];

  return sub_1003299F0(v26, v25, v20, v22);
}

uint64_t sub_10037C6EC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  sub_100026AC0(v3, v2);
  v0[55] = v0[48];
  v4 = v0[27];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to finish IDMS update from contacts - %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  v10 = v0[9];

  v11 = *(v10 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  if (v11 && (v12 = [v11 altDSID]) != 0)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v0[56] = v16;
  v17 = v0[24];
  v18 = swift_task_alloc();
  v0[57] = v18;
  *v18 = v0;
  v18[1] = sub_10037CF94;
  v20 = v0[25];
  v19 = v0[26];

  return sub_1003299F0(v20, v19, v14, v16);
}

uint64_t sub_10037C8E4()
{
  v2 = *(*v1 + 392);
  v3 = *v1;
  v3[50] = v0;

  if (v0)
  {
    v4 = v3[23];

    return _swift_task_switch(sub_10037D95C, v4, 0);
  }

  else
  {
    v5 = v3[46];
    v6 = v3[47];

    v7 = swift_task_alloc();
    v3[51] = v7;
    *v7 = v3;
    v7[1] = sub_10037CA60;
    v8 = v3[9];

    return sub_10037F0A4();
  }
}

uint64_t sub_10037CA60()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_10037DB68;
  }

  else
  {
    v6 = sub_10037CB8C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10037CB8C()
{
  v1 = v0[30];
  v2 = v0[27];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[30];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = *(v6 + 16);

    *(v7 + 4) = v8;

    _os_log_impl(&_mh_execute_header, v3, v4, "Finished processing %ld batch updates", v7, 0xCu);
  }

  else
  {
    v9 = v0[30];
    swift_bridgeObjectRelease_n();
  }

  v10 = *(v0[9] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  v11 = v0[28];
  v12 = v0[29];
  if (v10)
  {
    sub_100294008(v11, v12);
    v13 = [v10 altDSID];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      goto LABEL_9;
    }
  }

  else
  {
    sub_100294008(v11, v12);
  }

  v15 = 0;
  v17 = 0;
LABEL_9:
  v0[53] = v17;
  v18 = v0[24];
  v19 = swift_task_alloc();
  v0[54] = v19;
  *v19 = v0;
  v19[1] = sub_10037CD48;
  v21 = v0[28];
  v20 = v0[29];

  return sub_1003299F0(v21, v20, v15, v17);
}

uint64_t sub_10037CD48()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 224);
  v5 = *(*v0 + 184);
  v7 = *v0;

  sub_100026AC0(v4, v3);

  return _swift_task_switch(sub_10037CEB0, v5, 0);
}

uint64_t sub_10037CEB0()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[24];
  sub_10028BCC0(v0[25], v0[26]);

  sub_100026AC0(v1, v2);
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v0[18];
  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[12];
  v10 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10037CF94()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return _swift_task_switch(sub_10037D0C0, v3, 0);
}

uint64_t sub_10037D0C0()
{
  *(v0 + 56) = *(v0 + 440);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      v7 = v2;
      if (v3)
      {
        type metadata accessor for SFAirDropUserDefaults();
        v8 = static SFAirDropUserDefaults.shared.getter();
        v7 = SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();
      }

      *(v6 + 4) = v7 / 1000;
      _os_log_impl(&_mh_execute_header, v4, v5, "Scheduling server backoff retry in %ld seconds", v6, 0xCu);
    }

    v9 = *(v0 + 104);

    static Date.now.getter();
    if (v3)
    {
      type metadata accessor for SFAirDropUserDefaults();
      v10 = static SFAirDropUserDefaults.shared.getter();
      SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();
    }

    v11 = *(v0 + 120);
    v12 = *(v0 + 104);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    v15 = *(v0 + 72);
    Date.addingTimeInterval(_:)();
    (*(v14 + 8))(v12, v13);
    (*(v14 + 56))(v11, 0, 1, v13);
    sub_1003764E8(v11);
    if (v3)
    {
      type metadata accessor for SFAirDropUserDefaults();
      v16 = static SFAirDropUserDefaults.shared.getter();
      v2 = SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();
    }

    v17 = *(v0 + 440);
    v19 = *(v0 + 200);
    v18 = *(v0 + 208);
    v20 = *(v0 + 192);
    v21 = *(v0 + 72);
    sub_10037A7C4(v2 / 1000);
    sub_10028BCC0(v19, v18);
  }

  else
  {
    v22 = *(v0 + 440);
    v23 = *(v0 + 216);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 440);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unexpected error type %@", v27, 0xCu);
      sub_100005508(v28, &qword_100975400, &qword_1007F65D0);
    }

    v30 = *(v0 + 440);
    v31 = *(v0 + 200);
    v49 = *(v0 + 208);
    v50 = *(v0 + 192);
    v32 = *(v0 + 112);
    v33 = *(v0 + 88);
    v34 = *(v0 + 96);
    v35 = *(v0 + 72);
    v36 = *(v0 + 80);

    type metadata accessor for SFAirDropUserDefaults();
    v37 = static SFAirDropUserDefaults.shared.getter();
    v38 = SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();

    static Date.now.getter();
    Date.addingTimeInterval(_:)();
    (*(v33 + 8))(v34, v36);
    (*(v33 + 56))(v32, 0, 1, v36);
    sub_1003764E8(v32);
    sub_10037A7C4(v38 / 1000);

    sub_10028BCC0(v31, v49);
  }

  v40 = *(v0 + 168);
  v39 = *(v0 + 176);
  v41 = *(v0 + 160);
  v42 = *(v0 + 144);
  v44 = *(v0 + 112);
  v43 = *(v0 + 120);
  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_10037D578()
{
  v1 = v0[39];
  v2 = v0[40];
  sub_100026AC0(v0[28], v0[29]);

  v0[55] = v0[42];
  v3 = v0[27];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to finish IDMS update from contacts - %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  v9 = v0[9];

  v10 = *(v9 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  if (v10 && (v11 = [v10 altDSID]) != 0)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v0[56] = v15;
  v16 = v0[24];
  v17 = swift_task_alloc();
  v0[57] = v17;
  *v17 = v0;
  v17[1] = sub_10037CF94;
  v19 = v0[25];
  v18 = v0[26];

  return sub_1003299F0(v19, v18, v13, v15);
}

uint64_t sub_10037D774()
{
  sub_100026AC0(v0[28], v0[29]);
  v0[55] = v0[44];
  v1 = v0[27];
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to finish IDMS update from contacts - %@", v4, 0xCu);
    sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
  }

  v7 = v0[9];

  v8 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  if (v8 && (v9 = [v8 altDSID]) != 0)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v0[56] = v13;
  v14 = v0[24];
  v15 = swift_task_alloc();
  v0[57] = v15;
  *v15 = v0;
  v15[1] = sub_10037CF94;
  v17 = v0[25];
  v16 = v0[26];

  return sub_1003299F0(v17, v16, v11, v13);
}

uint64_t sub_10037D95C()
{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];

  sub_100026AC0(v5, v4);
  v0[55] = v0[50];
  v6 = v0[27];
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to finish IDMS update from contacts - %@", v9, 0xCu);
    sub_100005508(v10, &qword_100975400, &qword_1007F65D0);
  }

  v12 = v0[9];

  v13 = *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  if (v13 && (v14 = [v13 altDSID]) != 0)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v0[56] = v18;
  v19 = v0[24];
  v20 = swift_task_alloc();
  v0[57] = v20;
  *v20 = v0;
  v20[1] = sub_10037CF94;
  v22 = v0[25];
  v21 = v0[26];

  return sub_1003299F0(v22, v21, v16, v18);
}

uint64_t sub_10037DB68()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  sub_100026AC0(v3, v2);
  v0[55] = v0[52];
  v4 = v0[27];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to finish IDMS update from contacts - %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  v10 = v0[9];

  v11 = *(v10 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  if (v11 && (v12 = [v11 altDSID]) != 0)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v0[56] = v16;
  v17 = v0[24];
  v18 = swift_task_alloc();
  v0[57] = v18;
  *v18 = v0;
  v18[1] = sub_10037CF94;
  v20 = v0[25];
  v19 = v0[26];

  return sub_1003299F0(v20, v19, v14, v16);
}

void sub_10037DD60()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_osTransaction;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_osTransaction))
  {
    v2 = v0;
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097A860);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Clearing IDMS service OSTransaction", v6, 2u);
    }

    v7 = *(v2 + v1);
    *(v2 + v1) = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10037DE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v5[12] = v8;
  v9 = *(v8 - 8);
  v5[13] = v9;
  v10 = *(v9 + 64) + 15;
  v5[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v5[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_10037DFEC, v11, 0);
}

uint64_t sub_10037DFEC()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  v5 = (v2 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_10037E0E0;
  v7 = v0[14];

  return sub_10002ED10(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_10037E0E0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 136) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 120);
  if (v0)
  {
    v9 = sub_10037E540;
  }

  else
  {
    v9 = sub_10037E268;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10037E268()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrying update after backoff", v4, 2u);
  }

  v5 = v0[9];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = v0[11];
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_1003764E8(v8);
  }

  v10 = v0[9];
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    type metadata accessor for SFAirDropUserDefaults();
    v13 = static SFAirDropUserDefaults.shared.getter();
    v14 = SFAirDropUserDefaults.privacyImprovements.getter();

    if (v14)
    {
      v15 = v0[15];
      v16 = v0[10];
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
      v18 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor);
      v19 = swift_allocObject();
      v19[2] = v15;
      v19[3] = v18;
      v19[4] = v12;

      sub_1002B3098(0, 0, v16, &unk_1007FDB48, v19);
    }

    else
    {
    }
  }

  v20 = v0[14];
  v21 = v0[10];
  v22 = v0[11];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10037E540()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[17];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Backoff task failed", v6, 2u);
  }

  v7 = v0[9];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = v0[11];
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    sub_1003764E8(v10);
  }

  v12 = v0[9];
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    type metadata accessor for SFAirDropUserDefaults();
    v15 = static SFAirDropUserDefaults.shared.getter();
    v16 = SFAirDropUserDefaults.privacyImprovements.getter();

    if (v16)
    {
      v17 = v0[15];
      v18 = v0[10];
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
      v20 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor);
      v21 = swift_allocObject();
      v21[2] = v17;
      v21[3] = v20;
      v21[4] = v14;

      sub_1002B3098(0, 0, v18, &unk_1007FDB48, v21);
    }

    else
    {
    }
  }

  v22 = v0[14];
  v23 = v0[10];
  v24 = v0[11];

  v25 = v0[1];

  return v25();
}

uint64_t sub_10037E824(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v3[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_10037E8C8, v4, 0);
}

uint64_t sub_10037E8C8()
{
  v27 = v0;
  v1 = v0[5];
  v2 = v0[6];
  if (*(v1 + 16) || *(v2 + 16))
  {
    v0[2] = &_swiftEmptySetSingleton;
    v0[3] = &_swiftEmptySetSingleton;
    v0[4] = &_swiftEmptyDictionarySingleton;
    sub_100375A4C(v1, (v0 + 2), v0 + 4);
    sub_100375A4C(v2, (v0 + 3), v0 + 4);
    v3 = v0[2];
    v0[9] = v3;
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = sub_10028F5DC(*(v3 + 16), 0);
      v6 = sub_100291F68(&v26, v5 + 4, v4, v3);

      result = sub_100027D64();
      if (v6 != v4)
      {
        __break(1u);
        goto LABEL_28;
      }

      v8 = v5;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v9 = v0[3];
    v0[10] = v8;
    v0[11] = v9;
    v10 = *(v9 + 16);
    if (!v10)
    {
      v11 = _swiftEmptyArrayStorage;
      goto LABEL_11;
    }

    v11 = sub_10028F5DC(v10, 0);
    v12 = sub_100291F68(&v26, v11 + 4, v10, v9);

    result = sub_100027D64();
    if (v12 == v10)
    {
LABEL_11:
      v0[12] = v11;
      v13 = v8[2];
      v14 = v11[2];
      v15 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        __break(1u);
      }

      else if (qword_1009736B8 == -1)
      {
LABEL_13:
        v16 = type metadata accessor for Logger();
        sub_10000C4AC(v16, qword_10097A860);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 134217984;
          *(v19 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v17, v18, "Requesting %ld handles", v19, 0xCu);
        }

        v20 = v0[4];
        v0[13] = v20;
        if (v15 <= 120)
        {
          v23 = swift_task_alloc();
          v0[14] = v23;
          *v23 = v0;
          v23[1] = sub_10037EC88;
          v24 = v0[7];

          return sub_10038009C(v8, v11, v20);
        }

        else
        {
          v21 = swift_task_alloc();
          v0[16] = v21;
          *v21 = v0;
          v21[1] = sub_10037EE38;
          v22 = v0[7];

          return sub_10037F650(v8, v11, v20);
        }
      }

      swift_once();
      goto LABEL_13;
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_10037EC88()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = sub_10037F008;
  }

  else
  {
    v6 = v2[12];
    v7 = v2[10];
    v8 = v2[8];

    v5 = sub_10037EDBC;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10037EDBC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10037EE38()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = sub_10037EF6C;
  }

  else
  {
    v6 = v2[12];
    v7 = v2[10];
    v8 = v2[8];

    v5 = sub_100389CAC;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10037EF6C()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10037F008()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10037F0A4()
{
  *(v1 + 16) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10037F144, v2, 0);
}

uint64_t sub_10037F144()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[4] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_10037F2E8;

    return sub_1003276F0();
  }

  else
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097A860);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Store not setup", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10037F2E8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_10037F478;
  }

  else
  {
    v6 = sub_10037F414;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10037F414()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10037F478()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097A860);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "DB write failed %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  v9 = v0[6];
  v10 = v0[4];

  sub_10032B0C0();
  swift_allocError();
  *v11 = 0;
  *(v11 + 8) = 1;
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10037F650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v4[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_10037F6F4, v5, 0);
}

void sub_10037F6F4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v2 + 2);

  if (v3)
  {
    if (v3 > 0x77)
    {
      if (v3 == 120)
      {

        v12 = 120;
        v11 = v2;
        goto LABEL_18;
      }

LABEL_40:
      sub_1002AF124(v2, (v2 + 32), 0, 0xF1uLL);
      v11 = v27;
      v12 = *(v27 + 16);
      if (!v12)
      {
LABEL_25:

        v6 = _swiftEmptyArrayStorage;
        goto LABEL_26;
      }

      v3 = *(v2 + 2);
      if (v3 < v12)
      {
        __break(1u);
        return;
      }

LABEL_18:
      v13 = v3 - v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[2] = v2;
      if (!isUniquelyReferenced_nonNull_native || v13 > *(v2 + 3) >> 1)
      {
        if (v3 <= v13)
        {
          v15 = v3 - v12;
        }

        else
        {
          v15 = v3;
        }

        v2 = sub_10028E1C8(isUniquelyReferenced_nonNull_native, v15, 1, v2);
        v0[2] = v2;
      }

      sub_10057EB2C(0, v12, 0);
      goto LABEL_25;
    }

    v4 = *(v1 + 2);
LABEL_5:
    v5 = 120 - v3;
    swift_unknownObjectRetain();
    v6 = v1;
    if (v4 > v5)
    {
      sub_1002AF124(v1, (v1 + 32), 0, (2 * v5) | 1);
      v6 = v26;

      v4 = *(v6 + 2);
      if (v4)
      {
        goto LABEL_7;
      }
    }

    else if (v4)
    {
LABEL_7:
      v7 = *(v1 + 2);
      v8 = v7 - v4;
      if (v7 >= v4)
      {
        v9 = swift_isUniquelyReferenced_nonNull_native();
        v0[3] = v1;
        if (!v9 || v8 > *(v1 + 3) >> 1)
        {
          if (v7 <= v8)
          {
            v10 = v7 - v4;
          }

          else
          {
            v10 = v7;
          }

          v1 = sub_10028E1C8(v9, v10, 1, v1);
          v0[3] = v1;
        }

        sub_10057EB2C(0, v4, 0);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_15:

    v11 = v2;
    v2 = _swiftEmptyArrayStorage;
LABEL_26:
    v0[13] = v2;
    v0[14] = v1;
    v0[11] = v11;
    v0[12] = v1;
    v0[9] = 1;
    v0[10] = v6;
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_10097A860);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218496;
      *(v19 + 4) = 1;
      *(v19 + 12) = 2048;
      v20 = *(v11 + 16);

      *(v19 + 14) = v20;

      *(v19 + 22) = 2048;
      v21 = *(v6 + 2);

      *(v19 + 24) = v21;

      _os_log_impl(&_mh_execute_header, v17, v18, "Fetching batch %ld with %ld emails and %ld phone numbers", v19, 0x20u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v22 = swift_task_alloc();
    v0[15] = v22;
    *v22 = v0;
    v22[1] = sub_10037FAD8;
    v23 = v0[6];
    v24 = v0[7];

    sub_10038009C(v11, v6, v23);
    return;
  }

  v4 = *(v1 + 2);
  if (v4)
  {
    goto LABEL_5;
  }

  v25 = v0[1];

  v25();
}

uint64_t sub_10037FAD8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v12 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = v2[10];
    v6 = v2[11];
    v7 = v2[8];

    v8 = sub_100380038;
  }

  else
  {
    v9 = v2[10];
    v10 = v2[11];
    v7 = v2[8];

    v8 = sub_10037FC28;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_10037FC28()
{
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[9];
  v6 = *(v3 + 2);
  if (v6)
  {
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      v2 = v1[12];
      if (v6 > 0x77)
      {
        if (v6 == 120)
        {
          v14 = v1[13];

          v15 = 120;
          v13 = v3;
          v16 = 120;
          goto LABEL_20;
        }

LABEL_43:
        sub_1002AF124(v3, (v3 + 32), 0, 0xF1uLL);
        v13 = v32;
        v15 = *(v32 + 16);
        if (!v15)
        {
LABEL_27:

          v9 = _swiftEmptyArrayStorage;
LABEL_34:
          v1[13] = v3;
          v1[14] = v4;
          v1[11] = v13;
          v1[12] = v2;
          v1[9] = v7;
          v1[10] = v9;
          if (qword_1009736B8 != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          sub_10000C4AC(v23, qword_10097A860);

          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 134218496;
            *(v26 + 4) = v7;
            *(v26 + 12) = 2048;
            v27 = *(v13 + 16);

            *(v26 + 14) = v27;

            *(v26 + 22) = 2048;
            v28 = *(v9 + 2);

            *(v26 + 24) = v28;

            _os_log_impl(&_mh_execute_header, v24, v25, "Fetching batch %ld with %ld emails and %ld phone numbers", v26, 0x20u);
          }

          else
          {
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v29 = swift_task_alloc();
          v1[15] = v29;
          *v29 = v1;
          v29[1] = sub_10037FAD8;
          v30 = v1[6];
          v31 = v1[7];

          sub_10038009C(v13, v9, v30);
          return;
        }

        v16 = *(v3 + 2);
        if (v16 < v15)
        {
          __break(1u);
          return;
        }

LABEL_20:
        v17 = v16 - v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v1[2] = v3;
        if (!isUniquelyReferenced_nonNull_native || v17 > *(v3 + 3) >> 1)
        {
          if (v16 <= v17)
          {
            v19 = v16 - v15;
          }

          else
          {
            v19 = v16;
          }

          v3 = sub_10028E1C8(isUniquelyReferenced_nonNull_native, v19, 1, v3);
          v1[2] = v3;
        }

        sub_10057EB2C(0, v15, 0);
        goto LABEL_27;
      }

      v8 = *(v2 + 2);
LABEL_8:
      v0 = 120 - v6;
      swift_unknownObjectRetain();
      v9 = v2;
      if (v8 <= v0)
      {
        if (v8)
        {
LABEL_10:
          v10 = *(v2 + 2);
          v4 = (v10 - v8);
          if (v10 >= v8)
          {
            v11 = swift_isUniquelyReferenced_nonNull_native();
            v1[3] = v2;
            if (!v11 || v4 > *(v2 + 3) >> 1)
            {
              if (v10 <= v4)
              {
                v12 = v10 - v8;
              }

              else
              {
                v12 = v10;
              }

              v2 = sub_10028E1C8(v11, v12, 1, v2);
              v1[3] = v2;
            }

            sub_10057EB2C(0, v8, 0);

            v13 = v3;
            v3 = _swiftEmptyArrayStorage;
            v4 = v2;
            goto LABEL_34;
          }

          __break(1u);
          goto LABEL_43;
        }

LABEL_33:

        v13 = v3;
        v3 = _swiftEmptyArrayStorage;
        goto LABEL_34;
      }

LABEL_32:
      sub_1002AF124(v2, (v2 + 32), 0, (2 * v0) | 1);
      v9 = v22;

      v8 = *(v9 + 2);
      if (v8)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v8 = *(v4 + 2);
  if (v8)
  {
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      v2 = v1[14];
      goto LABEL_8;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v20 = v1[13];

  v21 = v1[1];

  v21();
}

uint64_t sub_100380038()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_10038009C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[101] = v3;
  v4[100] = a3;
  v4[99] = a2;
  v4[98] = a1;
  v5 = type metadata accessor for Date();
  v4[102] = v5;
  v6 = *(v5 - 8);
  v4[103] = v6;
  v7 = *(v6 + 64) + 15;
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v4[106] = swift_task_alloc();
  v8 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v4[107] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;
  v4[108] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003801F4, v9, 0);
}

uint64_t sub_1003801F4()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = *(v0[101] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDAgent);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[109] = isa;
  v5 = Array._bridgeToObjectiveC()().super.isa;
  v0[110] = v5;
  v0[2] = v0;
  v0[7] = v0 + 94;
  v0[3] = sub_100380368;
  v6 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097A958, &unk_1007FDBA8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100383400;
  v0[13] = &unk_1008DDA58;
  v0[14] = v6;
  [v3 altDSIDLookupWithEmails:isa phoneNumbers:v5 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100380368()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 888) = v3;
  v4 = *(v1 + 864);
  if (v3)
  {
    v5 = sub_100382C8C;
  }

  else
  {
    v5 = sub_100380488;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100380488()
{
  v138 = v0;
  v1 = *(v0 + 872);
  v2 = *(v0 + 752);

  type metadata accessor for SFAirDropUserDefaults();

  v3 = static SFAirDropUserDefaults.shared.getter();
  v4 = SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();

  sub_100285A50(v2, v4, (v0 + 232));
  v5 = *(v0 + 264);
  if (!v5)
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v133 = type metadata accessor for Logger();
    sub_10000C4AC(v133, qword_10097A860);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v137[0] = v18;
      *v17 = 136315138;
      v19 = Dictionary.description.getter();
      v21 = v20;

      v22 = sub_10000C4E4(v19, v21, v137);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unable to parse response %s", v17, 0xCu);
      sub_10000C60C(v18);
    }

    else
    {
    }

    sub_10032B0C0();
    swift_allocError();
    *v65 = 1;
    *(v65 + 8) = 1;
    swift_willThrow();
    v66 = _convertErrorToNSError(_:)();
    v67 = [v66 domain];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v136 = v66;
    if (v68 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v70 == v71)
    {
    }

    else
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v72 & 1) == 0)
      {
        if (qword_1009736B8 != -1)
        {
          swift_once();
        }

        sub_10000C4AC(v133, qword_10097A860);
        swift_errorRetain();
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          *v122 = 138412290;
          swift_errorRetain();
          v124 = _swift_stdlib_bridgeErrorToNSError();
          *(v122 + 4) = v124;
          *v123 = v124;
          _os_log_impl(&_mh_execute_header, v120, v121, "Unknown altDSID fetch error %@", v122, 0xCu);
          sub_100005508(v123, &qword_100975400, &qword_1007F65D0);
        }

        swift_allocError();
        *v125 = 2;
        *(v125 + 8) = 1;
        goto LABEL_73;
      }
    }

    v73 = [v66 userInfo];
    v74 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = sub_1003CE294(v74);

    v76 = static SFAirDropUserDefaults.shared.getter();
    v77 = SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();

    sub_100285A50(v75, v77, (v0 + 192));
    v78 = *(v0 + 224);
    if (v78)
    {
      v79 = *(v0 + 208);
      *(v0 + 312) = *(v0 + 192);
      *(v0 + 328) = v79;
      *(v0 + 344) = v78;
      if (qword_1009736B8 != -1)
      {
        swift_once();
      }

      sub_10000C4AC(v133, qword_10097A860);
      *(v0 + 576) = *(v0 + 320);
      *(v0 + 744) = *(v0 + 344);
      sub_10000FF90(v0 + 576, v0 + 688, &qword_100975100, &qword_1007FBA10);
      sub_10000FF90(v0 + 744, v0 + 776, &qword_100974C10, &qword_1007F7E58);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      sub_100005508(v0 + 576, &qword_100975100, &qword_1007FBA10);
      sub_100005508(v0 + 744, &qword_100974C10, &qword_1007F7E58);
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v137[0] = v83;
        *v82 = 136315138;
        sub_10000FF90(v0 + 576, v0 + 496, &qword_100975100, &qword_1007FBA10);
        sub_10000FF90(v0 + 744, v0 + 768, &qword_100974C10, &qword_1007F7E58);
        v84 = sub_100284AC4();
        v86 = v85;
        sub_100005508(v0 + 576, &qword_100975100, &qword_1007FBA10);
        sub_100005508(v0 + 744, &qword_100974C10, &qword_1007F7E58);
        v87 = sub_10000C4E4(v84, v86, v137);

        *(v82 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v80, v81, "Server altDSID fetch failure %s", v82, 0xCu);
        sub_10000C60C(v83);
      }

      v88 = *(v0 + 336);
      swift_allocError();
      *v89 = v88;
      *(v89 + 8) = 0;
      swift_willThrow();
      sub_100005508(v0 + 576, &qword_100975100, &qword_1007FBA10);
      sub_100005508(v0 + 744, &qword_100974C10, &qword_1007F7E58);
      goto LABEL_74;
    }

    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v133, qword_10097A860);
    v110 = v66;
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v137[0] = v114;
      *v113 = 136315138;
      v115 = [v110 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v116 = Dictionary.description.getter();
      v118 = v117;

      v119 = sub_10000C4E4(v116, v118, v137);

      *(v113 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v111, v112, "Unable to parse error response %s", v113, 0xCu);
      sub_10000C60C(v114);
    }

    swift_allocError();
    *v127 = 1;
    *(v127 + 8) = 1;
LABEL_73:
    swift_willThrow();
LABEL_74:
    v128 = *(v0 + 856);
    v129 = *(v0 + 848);
    v130 = *(v0 + 840);
    v131 = *(v0 + 832);

    v103 = *(v0 + 8);
LABEL_75:

    return v103();
  }

  v6 = *(v0 + 248);
  *(v0 + 272) = *(v0 + 232);
  *(v0 + 288) = v6;
  *(v0 + 304) = v5;

  if (qword_1009736B8 != -1)
  {
LABEL_80:
    swift_once();
  }

  v7 = *(v0 + 800);
  v8 = type metadata accessor for Logger();
  *(v0 + 896) = v8;
  *(v0 + 904) = sub_10000C4AC(v8, qword_10097A860);
  *(v0 + 448) = *(v0 + 280);
  v9 = *(v0 + 304);
  *(v0 + 912) = v9;
  *(v0 + 736) = v9;
  sub_10000FF90(v0 + 448, v0 + 528, &qword_100975100, &qword_1007FBA10);
  sub_10000FF90(v0 + 736, v0 + 760, &qword_100974C10, &qword_1007F7E58);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 800);
  if (v12)
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = *(v9 + 16);
    sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
    sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
    *(v14 + 12) = 2048;
    *(v14 + 14) = *(v13 + 16);

    _os_log_impl(&_mh_execute_header, v10, v11, "Processing %ld results - contactSet %ld", v14, 0x16u);
  }

  else
  {
    v23 = *(v0 + 800);

    sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
    sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
  }

  v24 = static SFAirDropUserDefaults.shared.getter();
  *(v0 + 920) = SFAirDropUserDefaults.idmsHandleRetryDelaySeconds.getter();

  v25 = *(v9 + 16);
  *(v0 + 928) = v25;
  if (!v25)
  {
LABEL_50:
    v90 = *(v0 + 904);
    sub_10000FF90(v0 + 448, v0 + 592, &qword_100975100, &qword_1007FBA10);
    sub_10000FF90(v0 + 736, v0 + 720, &qword_100974C10, &qword_1007F7E58);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
    sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v137[0] = v94;
      *v93 = 136315138;
      v95 = sub_100284AC4();
      v97 = v96;
      sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
      sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
      v98 = sub_10000C4E4(v95, v97, v137);

      *(v93 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v91, v92, "Batch success: %s", v93, 0xCu);
      sub_10000C60C(v94);
    }

    else
    {

      sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
      sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
    }

    v99 = *(v0 + 856);
    v100 = *(v0 + 848);
    v101 = *(v0 + 840);
    v102 = *(v0 + 832);

    v103 = *(v0 + 8);
    goto LABEL_75;
  }

  *(v0 + 936) = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore;

  v26 = 0;
  while (1)
  {
    *(v0 + 944) = v26;
    v27 = *(v0 + 912);
    if (v26 >= *(v27 + 16))
    {
      goto LABEL_79;
    }

    v28 = *(v0 + 904);
    v29 = v27 + 48 * v26;
    v30 = *(v29 + 32);
    *(v0 + 952) = v30;
    v31 = *(v29 + 40);
    *(v0 + 960) = v31;
    v32 = *(v29 + 48);
    *(v0 + 968) = v32;
    v33 = *(v29 + 56);
    *(v0 + 976) = v33;
    v34 = *(v29 + 64);
    v135 = *(v29 + 72);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v134 = v34;
      v38 = swift_slowAlloc();
      v137[0] = v38;
      *v37 = 136315138;
      *(v0 + 512) = 0;
      *(v0 + 520) = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v39 = *(v0 + 520);
      *(v0 + 544) = *(v0 + 512);
      *(v0 + 552) = v39;
      v40._object = 0x8000000100788E90;
      v40._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v40);
      v41._countAndFlagsBits = v30;
      v41._object = v31;
      String.append(_:)(v41);
      v42._countAndFlagsBits = 0x44495344746C6120;
      v42._object = 0xE900000000000020;
      String.append(_:)(v42);
      *(v0 + 480) = v32;
      *(v0 + 488) = v33;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v43._countAndFlagsBits = 0x6F43726F72726520;
      v43._object = 0xEC000000203A6564;
      String.append(_:)(v43);
      *(v0 + 704) = v134;
      *(v0 + 712) = v135;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v44 = sub_10000C4E4(*(v0 + 544), *(v0 + 552), v137);

      *(v37 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "Parsing %s", v37, 0xCu);
      sub_10000C60C(v38);
    }

    if (!v33)
    {
      break;
    }

    if (*(*(v0 + 800) + 16))
    {

      v45 = sub_100012854(v30, v31);
      v47 = v46;

      if (v47)
      {
        v48 = *(*(*(v0 + 800) + 56) + 8 * v45);
        *(v0 + 984) = v48;
        v49 = *(v48 + 32);
        *(v0 + 713) = v49;
        v50 = 1 << v49;
        if (v50 < 64)
        {
          v51 = ~(-1 << v50);
        }

        else
        {
          v51 = -1;
        }

        v52 = v51 & *(v48 + 56);
        v53 = (v50 + 63) >> 6;

        v54 = 0;
        while (v52)
        {
          v55 = v52;
LABEL_30:
          *(v0 + 1000) = v54;
          *(v0 + 992) = v55;
          v52 = (v55 - 1) & v55;
          v57 = *(*(v0 + 808) + *(v0 + 936));
          *(v0 + 1008) = v57;
          if (v57)
          {
            v104 = *(v0 + 976);
            v105 = *(v0 + 960);
            v106 = (*(v48 + 48) + ((v54 << 10) | (16 * __clz(__rbit64(v55)))));
            *(v0 + 1016) = *v106;
            *(v0 + 1024) = v106[1];
            v107 = qword_1009735E8;

            if (v107 != -1)
            {
              swift_once();
            }

            v108 = static IDMSActor.shared;
            v109 = sub_1003816E8;
            goto LABEL_69;
          }
        }

        while (1)
        {
          v56 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            break;
          }

          if (v56 >= v53)
          {
            v63 = *(v0 + 976);
            v64 = *(v0 + 960);

            swift_bridgeObjectRelease_n();
            goto LABEL_13;
          }

          v55 = *(v48 + 56 + 8 * v56);
          ++v54;
          if (v55)
          {
            v54 = v56;
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }
    }

    v59 = *(v0 + 904);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "No contactID match for handle response", v62, 2u);
    }

LABEL_13:
    v26 = *(v0 + 944) + 1;
    if (v26 == *(v0 + 928))
    {
      sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
      goto LABEL_50;
    }
  }

  v58 = *(*(v0 + 808) + *(v0 + 936));
  *(v0 + 1032) = v58;
  if (!v58)
  {

    goto LABEL_13;
  }

  v126 = qword_1009735E8;

  if (v126 != -1)
  {
    swift_once();
  }

  v108 = static IDMSActor.shared;
  v109 = sub_100382238;
LABEL_69:

  return _swift_task_switch(v109, v108, 0);
}

uint64_t sub_1003816E8()
{
  v1 = *(v0 + 960);
  *(v0 + 624) = *(v0 + 952);
  *(v0 + 632) = v1;
  *(v0 + 640) = 124;
  *(v0 + 648) = 0xE100000000000000;
  sub_10001229C();
  if (StringProtocol.contains<A>(_:)())
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 976);
  *(v0 + 656) = *(v0 + 968);
  *(v0 + 664) = v2;
  *(v0 + 672) = 124;
  *(v0 + 680) = 0xE100000000000000;
  if (StringProtocol.contains<A>(_:)() & 1) != 0 || (v3 = *(v0 + 1024), *(v0 + 464) = *(v0 + 1016), *(v0 + 472) = v3, *(v0 + 608) = 124, *(v0 + 616) = 0xE100000000000000, (StringProtocol.contains<A>(_:)()))
  {
LABEL_4:
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(*(v0 + 896), qword_100978850);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 1024);
    v8 = *(v0 + 1008);
    v9 = *(v0 + 976);
    v10 = *(v0 + 960);
    if (!v6)
    {

      goto LABEL_11;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Invalid entry - skipping store", v11, 2u);
  }

  else
  {
    v12 = *(v0 + 1024);
    v13 = *(v0 + 1016);
    v14 = *(v0 + 1008);
    v15 = *(v0 + 976);
    v16 = *(v0 + 960);
    v17 = *(v0 + 952);
    v18 = *(v0 + 856);
    v19 = *(v0 + 824);
    v25 = *(v0 + 816);
    v26 = *(v0 + 968);
    *(v0 + 144) = v17;
    *(v0 + 152) = v16;
    *(v0 + 160) = v26;
    *(v0 + 168) = v15;
    *(v0 + 176) = v13;
    *(v0 + 184) = v12;
    swift_beginAccess();

    v20 = *(v14 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v14 + 56);
    *(v14 + 56) = 0x8000000000000000;
    sub_10057AAF4((v0 + 144), v13, v12, isUniquelyReferenced_nonNull_native);
    *(v14 + 56) = v27;
    swift_endAccess();
    (*(v19 + 56))(v18, 1, 1, v25);
    swift_beginAccess();

    sub_1002B1544(v18, v17, v16);
    swift_endAccess();
    swift_beginAccess();

    sub_10046DAAC((v0 + 560), v26, v15);
    swift_endAccess();
    v22 = *(v0 + 568);
  }

LABEL_11:
  v23 = *(v0 + 864);

  return _swift_task_switch(sub_100381A98, v23, 0);
}

uint64_t sub_100381A98()
{
  v64 = v0;
  v1 = (*(v0 + 992) - 1) & *(v0 + 992);
  v2 = *(v0 + 1000);
LABEL_2:
  while (v1)
  {
    v3 = v1;
LABEL_8:
    *(v0 + 1000) = v2;
    *(v0 + 992) = v3;
    v1 = (v3 - 1) & v3;
    v5 = *(*(v0 + 808) + *(v0 + 936));
    *(v0 + 1008) = v5;
    if (v5)
    {
      v57 = *(v0 + 976);
      v58 = *(v0 + 960);
      v59 = (*(*(v0 + 984) + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v3)))));
      *(v0 + 1016) = *v59;
      *(v0 + 1024) = v59[1];
      v60 = qword_1009735E8;

      if (v60 != -1)
      {
        swift_once();
      }

      v55 = static IDMSActor.shared;
      v56 = sub_1003816E8;
      goto LABEL_39;
    }
  }

  while (1)
  {
    v4 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      swift_once();
      goto LABEL_35;
    }

    if (v4 >= (((1 << *(v0 + 713)) + 63) >> 6))
    {
      break;
    }

    v3 = *(*(v0 + 984) + 8 * v4 + 56);
    ++v2;
    if (v3)
    {
      v2 = v4;
      goto LABEL_8;
    }
  }

  v6 = *(v0 + 976);
  v7 = *(v0 + 960);

  swift_bridgeObjectRelease_n();
  while (1)
  {
    while (1)
    {
      v8 = *(v0 + 944) + 1;
      if (v8 == *(v0 + 928))
      {
        sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
        v39 = *(v0 + 904);
        sub_10000FF90(v0 + 448, v0 + 592, &qword_100975100, &qword_1007FBA10);
        sub_10000FF90(v0 + 736, v0 + 720, &qword_100974C10, &qword_1007F7E58);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
        sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v63 = v43;
          *v42 = 136315138;
          v44 = sub_100284AC4();
          v46 = v45;
          sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
          sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
          v47 = sub_10000C4E4(v44, v46, &v63);

          *(v42 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v40, v41, "Batch success: %s", v42, 0xCu);
          sub_10000C60C(v43);
        }

        else
        {

          sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
          sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
        }

        v48 = *(v0 + 856);
        v49 = *(v0 + 848);
        v50 = *(v0 + 840);
        v51 = *(v0 + 832);

        v52 = *(v0 + 8);

        return v52();
      }

      *(v0 + 944) = v8;
      v9 = *(v0 + 912);
      if (v8 >= *(v9 + 16))
      {
        goto LABEL_43;
      }

      v10 = *(v0 + 904);
      v11 = v9 + 48 * v8;
      v12 = *(v11 + 32);
      *(v0 + 952) = v12;
      v13 = *(v11 + 40);
      *(v0 + 960) = v13;
      v14 = *(v11 + 48);
      *(v0 + 968) = v14;
      v15 = *(v11 + 56);
      *(v0 + 976) = v15;
      v16 = *(v11 + 64);
      v62 = *(v11 + 72);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v61 = v16;
        v20 = swift_slowAlloc();
        v63 = v20;
        *v19 = 136315138;
        *(v0 + 512) = 0;
        *(v0 + 520) = 0xE000000000000000;
        _StringGuts.grow(_:)(51);
        v21 = *(v0 + 520);
        *(v0 + 544) = *(v0 + 512);
        *(v0 + 552) = v21;
        v22._object = 0x8000000100788E90;
        v22._countAndFlagsBits = 0xD000000000000018;
        String.append(_:)(v22);
        v23._countAndFlagsBits = v12;
        v23._object = v13;
        String.append(_:)(v23);
        v24._countAndFlagsBits = 0x44495344746C6120;
        v24._object = 0xE900000000000020;
        String.append(_:)(v24);
        *(v0 + 480) = v14;
        *(v0 + 488) = v15;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v25._countAndFlagsBits = 0x6F43726F72726520;
        v25._object = 0xEC000000203A6564;
        String.append(_:)(v25);
        *(v0 + 704) = v61;
        *(v0 + 712) = v62;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v26 = sub_10000C4E4(*(v0 + 544), *(v0 + 552), &v63);

        *(v19 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v17, v18, "Parsing %s", v19, 0xCu);
        sub_10000C60C(v20);
      }

      if (!v15)
      {
        break;
      }

      if (*(*(v0 + 800) + 16))
      {

        v27 = sub_100012854(v12, v13);
        v29 = v28;

        if (v29)
        {
          v35 = *(*(*(v0 + 800) + 56) + 8 * v27);
          *(v0 + 984) = v35;
          v36 = *(v35 + 32);
          *(v0 + 713) = v36;
          v37 = 1 << v36;
          if (v37 < 64)
          {
            v38 = ~(-1 << v37);
          }

          else
          {
            v38 = -1;
          }

          v1 = v38 & *(v35 + 56);

          v2 = 0;
          goto LABEL_2;
        }
      }

      v30 = *(v0 + 904);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "No contactID match for handle response", v33, 2u);
      }
    }

    v34 = *(*(v0 + 808) + *(v0 + 936));
    *(v0 + 1032) = v34;
    if (v34)
    {
      break;
    }
  }

  v54 = qword_1009735E8;

  if (v54 != -1)
  {
    goto LABEL_44;
  }

LABEL_35:
  v55 = static IDMSActor.shared;
  v56 = sub_100382238;
LABEL_39:

  return _swift_task_switch(v56, v55, 0);
}

uint64_t sub_100382238()
{
  v1 = v0[129];
  v2 = v0[120];
  v3 = v0[119];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[102];
  v9 = v0[115];
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v7 + 8))(v5, v8);
  swift_beginAccess();
  v10 = *(v7 + 32);
  v10(v6, v4, v8);
  v11 = *(v1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v1 + 72);
  v0[91] = v13;
  *(v1 + 72) = 0x8000000000000000;
  v14 = sub_100012854(v3, v2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v2) = v15;
  v3 = v0 + 91;
  if (*(v13 + 24) >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_8:
      v25 = *v3;
      if (v2)
      {
LABEL_9:
        (*(v0[103] + 40))(v25[7] + *(v0[103] + 72) * v14, v0[104], v0[102]);
        goto LABEL_14;
      }

LABEL_12:
      v27 = v0[120];
      v28 = v0[119];
      v29 = v0[104];
      v30 = v0[103];
      v31 = v0[102];
      v25[(v14 >> 6) + 8] |= 1 << v14;
      v32 = (v25[6] + 16 * v14);
      *v32 = v28;
      v32[1] = v27;
      v33 = v10(v25[7] + *(v30 + 72) * v14, v29, v31);
      v36 = v25[2];
      v18 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v18)
      {
        __break(1u);
        return _swift_task_switch(v33, v34, v35);
      }

      v38 = v0[120];
      v25[2] = v37;

LABEL_14:
      v39 = v0[129];
      v40 = v0[120];
      v41 = v0[108];
      v42 = *(v1 + 72);
      *(v1 + 72) = v25;

      swift_endAccess();

      v33 = sub_1003824F4;
      v34 = v41;
      v35 = 0;

      return _swift_task_switch(v33, v34, v35);
    }

LABEL_11:
    v26 = v14;
    sub_1002CFFF4();
    v14 = v26;
    v25 = *v3;
    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v0[120];
  v21 = v0[119];
  sub_100574A1C(v19, isUniquelyReferenced_nonNull_native);
  v22 = v0[91];
  v14 = sub_100012854(v21, v20);
  if ((v2 & 1) == (v23 & 1))
  {
    goto LABEL_8;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1003824F4()
{
  v65 = v0;
  v1 = *(v0 + 944) + 1;
  if (v1 == *(v0 + 928))
  {
LABEL_2:
    sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
    v2 = *(v0 + 904);
    sub_10000FF90(v0 + 448, v0 + 592, &qword_100975100, &qword_1007FBA10);
    sub_10000FF90(v0 + 736, v0 + 720, &qword_100974C10, &qword_1007F7E58);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
    sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v64 = v6;
      *v5 = 136315138;
      v7 = sub_100284AC4();
      v9 = v8;
      sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
      sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
      v10 = sub_10000C4E4(v7, v9, &v64);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Batch success: %s", v5, 0xCu);
      sub_10000C60C(v6);
    }

    else
    {

      sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
      sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
    }

    v49 = *(v0 + 856);
    v50 = *(v0 + 848);
    v51 = *(v0 + 840);
    v52 = *(v0 + 832);

    v53 = *(v0 + 8);

    return v53();
  }

  while (1)
  {
    *(v0 + 944) = v1;
    v11 = *(v0 + 912);
    if (v1 >= *(v11 + 16))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      swift_once();
LABEL_36:
      v59 = static IDMSActor.shared;
      v60 = sub_1003816E8;
      goto LABEL_40;
    }

    v12 = *(v0 + 904);
    v13 = v11 + 48 * v1;
    v14 = *(v13 + 32);
    *(v0 + 952) = v14;
    v15 = *(v13 + 40);
    *(v0 + 960) = v15;
    v16 = *(v13 + 48);
    *(v0 + 968) = v16;
    v17 = *(v13 + 56);
    *(v0 + 976) = v17;
    v18 = *(v13 + 64);
    v63 = *(v13 + 72);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v62 = v18;
      v22 = swift_slowAlloc();
      v64 = v22;
      *v21 = 136315138;
      *(v0 + 512) = 0;
      *(v0 + 520) = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v23 = *(v0 + 520);
      *(v0 + 544) = *(v0 + 512);
      *(v0 + 552) = v23;
      v24._object = 0x8000000100788E90;
      v24._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v24);
      v25._countAndFlagsBits = v14;
      v25._object = v15;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 0x44495344746C6120;
      v26._object = 0xE900000000000020;
      String.append(_:)(v26);
      *(v0 + 480) = v16;
      *(v0 + 488) = v17;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v27._countAndFlagsBits = 0x6F43726F72726520;
      v27._object = 0xEC000000203A6564;
      String.append(_:)(v27);
      *(v0 + 704) = v62;
      *(v0 + 712) = v63;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v28 = sub_10000C4E4(*(v0 + 544), *(v0 + 552), &v64);

      *(v21 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Parsing %s", v21, 0xCu);
      sub_10000C60C(v22);
    }

    if (!v17)
    {
      break;
    }

    if (*(*(v0 + 800) + 16))
    {

      v29 = sub_100012854(v14, v15);
      v31 = v30;

      if (v31)
      {
        v32 = *(*(*(v0 + 800) + 56) + 8 * v29);
        *(v0 + 984) = v32;
        v33 = *(v32 + 32);
        *(v0 + 713) = v33;
        v34 = 1 << v33;
        if (v34 < 64)
        {
          v35 = ~(-1 << v34);
        }

        else
        {
          v35 = -1;
        }

        v36 = v35 & *(v32 + 56);
        v37 = (v34 + 63) >> 6;

        v38 = 0;
        do
        {
          if (!v36)
          {
            while (1)
            {
              v40 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                break;
              }

              if (v40 >= v37)
              {
                v47 = *(v0 + 976);
                v48 = *(v0 + 960);

                swift_bridgeObjectRelease_n();
                goto LABEL_6;
              }

              v39 = *(v32 + 56 + 8 * v40);
              ++v38;
              if (v39)
              {
                v38 = v40;
                goto LABEL_23;
              }
            }

            __break(1u);
            goto LABEL_44;
          }

          v39 = v36;
LABEL_23:
          *(v0 + 1000) = v38;
          *(v0 + 992) = v39;
          v36 = (v39 - 1) & v39;
          v41 = *(*(v0 + 808) + *(v0 + 936));
          *(v0 + 1008) = v41;
        }

        while (!v41);
        v55 = *(v0 + 976);
        v56 = *(v0 + 960);
        v57 = (*(v32 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v39)))));
        *(v0 + 1016) = *v57;
        *(v0 + 1024) = v57[1];
        v58 = qword_1009735E8;

        if (v58 != -1)
        {
          goto LABEL_45;
        }

        goto LABEL_36;
      }
    }

    v43 = *(v0 + 904);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "No contactID match for handle response", v46, 2u);
    }

LABEL_6:
    v1 = *(v0 + 944) + 1;
    if (v1 == *(v0 + 928))
    {
      goto LABEL_2;
    }
  }

  v42 = *(*(v0 + 808) + *(v0 + 936));
  *(v0 + 1032) = v42;
  if (!v42)
  {

    goto LABEL_6;
  }

  v61 = qword_1009735E8;

  if (v61 != -1)
  {
    swift_once();
  }

  v59 = static IDMSActor.shared;
  v60 = sub_100382238;
LABEL_40:

  return _swift_task_switch(v60, v59, 0);
}