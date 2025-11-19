Swift::Int sub_100108C0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100068FC4(&qword_100503640, &qword_10040AA00);
    v2 = static _SetStorage.convert(_:capacity:)();
    v18 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for DSKExpress.ExpressKey();
      do
      {
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10010A5C0(v12 + 1, &qword_100503640, &qword_10040AA00, &Data.hash(into:));
        }

        v2 = v18;
        v3 = *(v18 + 40);
        Hasher.init(_seed:)();
        v4 = *(v17 + 16);
        v5 = *(v17 + 24);
        Data.hash(into:)();
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

Swift::Int sub_100108E38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100068FC4(&unk_100503E80, &unk_10040B250);
    v2 = static _SetStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      do
      {
        swift_dynamicCast();
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_10010A814(v11 + 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        Hasher.init(_seed:)();
        v4 = *(v16 + 16);
        type metadata accessor for UUID();
        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v6 = v17 + 56;
        v7 = -1 << *(v17 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v9 == v13;
            if (v9 == v13)
            {
              v9 = 0;
            }

            v12 |= v14;
            v15 = *(v6 + 8 * v9);
          }

          while (v15 == -1);
          v10 = __clz(__rbit64(~v15)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v17 + 48) + 8 * v10) = v16;
        ++*(v17 + 16);
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

Swift::Int sub_100109094(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100068FC4(&qword_100503678, &qword_10040AA28);
    v8 = static _SetStorage.convert(_:capacity:)();
    v27 = v8;
    __CocoaSet.makeIterator()();
    v9 = __CocoaSet.Iterator.next()();
    if (v9)
    {
      v10 = v9;
      type metadata accessor for DSKBLE.BLEPeripheral();
      v11 = v10;
      do
      {
        v26[1] = v11;
        swift_dynamicCast();
        v21 = *(v8 + 16);
        if (*(v8 + 24) <= v21)
        {
          sub_10010ACF0(v21 + 1);
        }

        v12 = v26[10];
        v8 = v27;
        v13 = *(v27 + 40);
        Hasher.init(_seed:)();
        v14 = [*(v12 + 24) identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*(v4 + 8))(v7, v3);
        result = Hasher._finalize()();
        v16 = v8 + 56;
        v17 = -1 << *(v8 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v8 + 56 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v8 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = 0;
          v23 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v23 && (v22 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v24 = v19 == v23;
            if (v19 == v23)
            {
              v19 = 0;
            }

            v22 |= v24;
            v25 = *(v16 + 8 * v19);
          }

          while (v25 == -1);
          v20 = __clz(__rbit64(~v25)) + (v19 << 6);
        }

        *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v8 + 48) + 8 * v20) = v12;
        ++*(v8 + 16);
        v11 = __CocoaSet.Iterator.next()();
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v8;
}

Swift::Int sub_1001093E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    sub_100068FC4(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v21 = v8;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_10010BC14(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = NSObject._rawHashValue(seed:)(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v8;
}

uint64_t sub_1001095F0(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100068FC4(&unk_100503F30, &unk_10040B2B0);
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
      sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
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

uint64_t sub_10010998C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&qword_100503620, &unk_10040B2C0);
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
      Hasher._combine(_:)(v18);
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

uint64_t sub_100109BDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&unk_100507CE0, &unk_10040B260);
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
      type metadata accessor for UUID();
      sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
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

uint64_t sub_100109E88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&unk_100503F40, &unk_1004101B0);
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

uint64_t sub_10010A0D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&unk_100503EF0, &unk_10040B280);
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

uint64_t sub_10010A338(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&qword_100503618, &unk_10040B290);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v29 = *v19;
      v30 = v19[1];
      v20 = *(v6 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v29;
      v15[1] = v30;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10010A5C0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, void, void))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  sub_100068FC4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v6 + 16))
  {
    v31 = v5;
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(*(v6 + 48) + 8 * (v18 | (v10 << 6)));
      v22 = *(v9 + 40);
      Hasher.init(_seed:)();
      a4(v33, *(v21 + 16), *(v21 + 24));
      result = Hasher._finalize()();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero((v6 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v30;
    }

    v5 = v31;
    *(v6 + 16) = 0;
  }

  *v5 = v9;
  return result;
}

uint64_t sub_10010A814(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&unk_100503E80, &unk_10040B250);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
      v20 = *(v18 + 16);
      type metadata accessor for UUID();
      sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10010AAC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&qword_100503F90, &qword_10040A9F8);
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
      v18 = *(*(v3 + 48) + 2 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
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
      *(*(v6 + 48) + 2 * v14) = v18;
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

uint64_t sub_10010ACF0(uint64_t a1)
{
  v2 = v1;
  v39 = type metadata accessor for UUID();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v39);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_100503678, &qword_10040AA28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
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
    v36 = (v4 + 8);
    v37 = v7;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      Hasher.init(_seed:)();
      v24 = [*(v22 + 24) identifier];
      v25 = v38;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
      v26 = v39;
      dispatch thunk of Hashable.hash(into:)();
      (*v36)(v25, v26);
      result = Hasher._finalize()();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v7 = v37;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v7 = v37;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
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

    v34 = 1 << *(v7 + 32);
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_10010B074(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&qword_100503648, &qword_10040AA08);
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

uint64_t sub_10010B2D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&qword_100503658, &qword_10040AA18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = (*(v3 + 48) + 40 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v34 = v19[4];
      v35 = v19[3];
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 40 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v35;
      v15[4] = v34;
      ++*(v6 + 16);
      v3 = v33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10010B558(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&unk_100503FD0, &unk_10040B320);
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
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
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
      *(*(v6 + 48) + v14) = v18;
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

uint64_t sub_10010B7A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&unk_100503FE0, &unk_10040B330);
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

uint64_t sub_10010B9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&qword_100503650, &qword_10040AA10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v18 = v15 | (v7 << 6);
      v19 = *(v3 + 48);
      v20 = *(v19 + 8 * v18);
      v21 = *(v6 + 40);
      if (v20 != 0.0)
      {
        v22 = *(v19 + 8 * v18);
      }

      result = static Hasher._hash(seed:_:)();
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

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
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

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10010BC14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_100068FC4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_10010BE50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10010BF4C(uint64_t a1, uint64_t a2)
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

unint64_t sub_10010C008(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, void, void))
{
  v6 = *(a2 + 40);
  Hasher.init(_seed:)();
  a3(v9, *(a1 + 16), *(a1 + 24));
  Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10010C0B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = *(a1 + 16);
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10010C1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 40);
  Hasher.init(_seed:)();
  v10 = [*(a1 + 24) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v5 + 8))(v8, v4);
  Hasher._finalize()();
  v11 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10010C35C(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_10010C3F4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&unk_100503F30, &unk_10040B2B0);
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

void *sub_10010C640()
{
  v1 = v0;
  sub_100068FC4(&qword_100503620, &unk_10040B2C0);
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

void *sub_10010C7BC()
{
  v1 = v0;
  sub_100068FC4(&unk_100503EF0, &unk_10040B280);
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

void *sub_10010C918()
{
  v1 = v0;
  sub_100068FC4(&qword_100503618, &unk_10040B290);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = (*(v4 + 48) + v17);
        v20 = *v18;
        v21 = v18[1];
        *v19 = *v18;
        v19[1] = v21;
        sub_100069E2C(v20, *(&v20 + 1));
        result = sub_100069E2C(v21, *(&v21 + 1));
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

void *sub_10010CAC0()
{
  v1 = v0;
  sub_100068FC4(&qword_100503F90, &qword_10040A9F8);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
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

void *sub_10010CC14(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
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

void *sub_10010CD68()
{
  v1 = v0;
  sub_100068FC4(&qword_100503648, &qword_10040AA08);
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

void *sub_10010CEC4()
{
  v1 = v0;
  sub_100068FC4(&qword_100503658, &qword_10040AA18);
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
        v20 = *(v18 + 32);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v19;
        *(v21 + 16) = v22;
        *(v21 + 32) = v20;
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

void *sub_10010D03C()
{
  v1 = v0;
  sub_100068FC4(&unk_100503FD0, &unk_10040B320);
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

void *sub_10010D17C()
{
  v1 = v0;
  sub_100068FC4(&unk_100503FE0, &unk_10040B330);
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

void *sub_10010D2BC()
{
  v1 = v0;
  sub_100068FC4(&qword_100503650, &qword_10040AA10);
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

id sub_10010D410(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
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

uint64_t sub_10010D550(void *a1)
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
      v8 = sub_10010E900();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for UWBSession();
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
    sub_10010D410(&unk_100503E90, &qword_10040A9E0);
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_100110210(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_10010D6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
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
      sub_1001081DC(&qword_100502C18, 255, &type metadata accessor for UUID);
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
      sub_10010C3F4();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_10010F268(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_10010D998(Swift::UInt a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10010C640();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_10010F574(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_10010DAA4()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = __CocoaSet.contains(_:)();

    if (v4)
    {
      v5 = sub_10010EA7C();

      return v5;
    }

    return 0;
  }

  v18 = v0;
  v7 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(v1 + 48) + 8 * v10);

    v13 = static UUID.== infix(_:_:)();

    if (v13)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v18;
  v19 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10010CC14(&unk_100507CE0, &unk_10040B260);
    v16 = v19;
  }

  v17 = *(*(v16 + 48) + 8 * v10);
  sub_10010F71C(v10);
  result = v17;
  *v18 = v19;
  return result;
}

uint64_t sub_10010DCAC(uint64_t a1)
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
      v7 = sub_10010EC44(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  Hasher.init(_seed:)();
  v10 = *(a1 + 16);
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(*(v3 + 48) + 8 * v13) + 16);

    LOBYTE(v15) = static UUID.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v1;
  v20 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10010CC14(&unk_100503E80, &unk_10040B250);
    v18 = v20;
  }

  v19 = *(*(v18 + 48) + 8 * v13);
  sub_10010F93C(v13);
  result = v19;
  *v1 = v20;
  return result;
}

double sub_10010DEBC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
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
    *a3 = xmmword_1004098E0;
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
        sub_100069E2C(v19, v18);
        v12 = v45;
        goto LABEL_61;
      }

      a2 = (v19 >> 32) - v19;
      if (v19 >> 32 < v19)
      {
        goto LABEL_69;
      }

      sub_100069E2C(v19, v18);
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
      sub_10019F024(v32, v41, v42, v49);
      sub_10006A178(v19, v18);
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
      sub_100069E2C(v19, v18);
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
    sub_100069E2C(v19, v18);
LABEL_61:
    sub_10019F024(v49, a1, a2, &v48);
    sub_10006A178(v19, v18);
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
  sub_10010C7BC();
  v37 = *v49;
LABEL_63:
  *a3 = *(*(v37 + 48) + 16 * v11);
  sub_10010FB9C(v11);
  *a2 = *v49;
  return result;
}

uint64_t sub_10010E308(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *v1;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *v1;

    v12 = __CocoaSet.contains(_:)();

    if (v12)
    {
      sub_10010EE1C(v10, a1);
      v14 = v13;

      return v14;
    }

    return 0;
  }

  v33 = v1;
  v16 = *(v9 + 40);
  v17 = v6;
  Hasher.init(_seed:)();
  v18 = [*(a1 + 24) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v4 + 8))(v8, v17);
  v19 = Hasher._finalize()();
  v20 = -1 << *(v9 + 32);
  v21 = v19 & ~v20;
  if (((*(v9 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return 0;
  }

  v22 = ~v20;
  sub_10009393C(0, &qword_100502D20, NSObject_ptr);
  while (1)
  {
    v23 = *(*(*(v9 + 48) + 8 * v21) + 24);
    v24 = *(a1 + 24);

    v25 = v23;
    v26 = v24;
    v27 = static NSObject.== infix(_:_:)();

    if (v27)
    {
      break;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v9 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 0;
    }
  }

  v28 = v33;
  v29 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v28;
  v34 = *v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10010CC14(&qword_100503678, &qword_10040AA28);
    v31 = v34;
  }

  v32 = *(*(v31 + 48) + 8 * v21);
  sub_10010FD70(v21);
  result = v32;
  *v33 = v34;
  return result;
}

uint64_t sub_10010E5EC(void *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v12 = *v5;
    }

    else
    {
      v12 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = *v5;

    v14 = a1;
    v15 = __CocoaSet.contains(_:)();

    if (v15)
    {
      v16 = sub_10010F0E8(v12, v14, a4, a5, a2, a3);

      return v16;
    }

    return 0;
  }

  v28 = v5;
  sub_10009393C(0, a2, a3);
  v18 = NSObject._rawHashValue(seed:)(*(v9 + 40));
  v19 = -1 << *(v9 + 32);
  v20 = v18 & ~v19;
  if (((*(v9 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v9 + 48) + 8 * v20);
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v9 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  v24 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v28;
  v29 = *v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10010D410(a4, a5);
    v26 = v29;
  }

  v27 = *(*(v26 + 48) + 8 * v20);
  sub_100110210(v20);
  result = v27;
  *v28 = v29;
  return result;
}

uint64_t sub_10010E7A0(uint64_t a1, uint64_t a2)
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
    sub_10010CD68();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10011004C(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_10010E900()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1001093E4(v4, v3, &unk_100503E90, &qword_10040A9E0, type metadata accessor for UWBSession);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for UWBSession();
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
  sub_100110210(v9);
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

uint64_t sub_10010EA7C()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10010857C(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);

  dispatch thunk of Hashable.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);

      v12 = static UUID.== infix(_:_:)();

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
  sub_10010F71C(v9);
  result = static UUID.== infix(_:_:)();
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

uint64_t sub_10010EC44(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = sub_100108E38(v6, v5);
  v19 = v7;
  v8 = *(v7 + 40);
  Hasher.init(_seed:)();
  v9 = *(a2 + 16);
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);

  dispatch thunk of Hashable.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(*(*(v7 + 48) + 8 * v12) + 16);

      LOBYTE(v14) = static UUID.== infix(_:_:)();

      if (v14)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
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

  v15 = *(*(v7 + 48) + 8 * v12);
  sub_10010F93C(v12);
  v16 = *(v15 + 16);
  result = static UUID.== infix(_:_:)();
  if (result)
  {
    *v18 = v19;
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10010EE1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v2;
  v9 = *v2;

  v10 = __CocoaSet.count.getter();
  v11 = swift_unknownObjectRetain();
  v12 = sub_100109094(v11, v10);
  v31 = v12;
  v13 = *(v12 + 40);
  Hasher.init(_seed:)();
  v14 = *(a2 + 24);

  v15 = [v14 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v5 + 8))(v8, v4);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v12 + 32);
  v18 = v16 & ~v17;
  if ((*(v12 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    sub_10009393C(0, &qword_100502D20, NSObject_ptr);
    while (1)
    {
      v20 = *(*(*(v12 + 48) + 8 * v18) + 24);
      v21 = *(a2 + 24);

      v22 = v20;
      v23 = v21;
      LOBYTE(v20) = static NSObject.== infix(_:_:)();

      if (v20)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v12 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
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

  v24 = *(*(v31 + 48) + 8 * v18);
  sub_10010FD70(v18);
  v25 = *(v24 + 24);
  v26 = *(a2 + 24);
  v27 = v25;
  v28 = static NSObject.== infix(_:_:)();

  if (v28)
  {
    *v30 = v31;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10010F0E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v12 = *v6;

  v13 = __CocoaSet.count.getter();
  v14 = swift_unknownObjectRetain();
  v15 = sub_10010837C(v14, v13, a3, a4, a5, a6);
  v25 = v15;
  v16 = *(v15 + 40);

  v17 = NSObject._rawHashValue(seed:)(v16);
  v18 = -1 << *(v15 + 32);
  v19 = v17 & ~v18;
  if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    sub_10009393C(0, a5, a6);
    while (1)
    {
      v21 = *(*(v15 + 48) + 8 * v19);
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
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

  v23 = *(*(v15 + 48) + 8 * v19);
  sub_100110210(v19);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v11 = v25;
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010F268(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = __chkstk_darwin();
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
        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
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

unint64_t sub_10010F574(unint64_t result)
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
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v12);
        v13 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10010F71C(unint64_t result)
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
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);

        dispatch thunk of Hashable.hash(into:)();
        v13 = Hasher._finalize()();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 8 * v2);
          v17 = (v15 + 8 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10010F93C(unint64_t result)
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
      v25 = v4;
      do
      {
        v11 = *(v3 + 40);
        v12 = v3;
        v13 = v7;
        v14 = *(*(v3 + 48) + 8 * v6);
        v15 = v10;
        Hasher.init(_seed:)();
        v16 = *(v14 + 16);
        type metadata accessor for UUID();
        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);

        dispatch thunk of Hashable.hash(into:)();
        v17 = Hasher._finalize()();
        v7 = v13;

        v10 = v15;
        v18 = v17 & v13;
        if (v2 >= v15)
        {
          if (v18 < v15)
          {
            v4 = v25;
            v3 = v12;
          }

          else
          {
            v4 = v25;
            v3 = v12;
            if (v2 >= v18)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v25;
          v3 = v12;
          if (v18 >= v10 || v2 >= v18)
          {
LABEL_12:
            v19 = *(v3 + 48);
            v20 = (v19 + 8 * v2);
            v21 = (v19 + 8 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v13;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v22 = *(v3 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v24;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10010FB9C(unint64_t result)
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
        sub_100069E2C(v13, v14);
        Data.hash(into:)();
        v15 = Hasher._finalize()();
        sub_10006A178(v13, v14);
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

uint64_t sub_10010FD70(unint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      v30 = v10;
      v16 = (v15 + 1) & v13;
      v17 = (v4 + 8);
      while (1)
      {
        v18 = *(v9 + 40);
        v19 = *(*(v9 + 48) + 8 * v12);
        Hasher.init(_seed:)();
        v20 = *(v19 + 24);

        v21 = [v20 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*v17)(v8, v3);
        v22 = Hasher._finalize()();

        v23 = v22 & v13;
        if (a1 >= v16)
        {
          if (v23 < v16)
          {
            goto LABEL_5;
          }
        }

        else if (v23 >= v16)
        {
          goto LABEL_11;
        }

        if (a1 >= v23)
        {
LABEL_11:
          v24 = *(v9 + 48);
          v25 = (v24 + 8 * a1);
          v26 = (v24 + 8 * v12);
          if (a1 != v12 || v25 >= v26 + 1)
          {
            *v25 = *v26;
            a1 = v12;
          }
        }

LABEL_5:
        v12 = (v12 + 1) & v13;
        if (((*(v30 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          v10 = v30;
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v27 = *(v9 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v29;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_10011004C(unint64_t result)
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

unint64_t sub_100110210(unint64_t result)
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

unint64_t *sub_1001103B0(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    sub_1001115B8(v7, a2, a3);
    v10 = v9;

    return v10;
  }

  return result;
}

void *sub_100110448(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_100114FB0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1001104E4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1000DF7F0(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

void sub_100110574(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v21 = a2;
    v7 = 1 << *(a3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a3 + 56);
    v10 = (v7 + 63) >> 6;
    v23 = a4;
    v11 = 0;
    v12 = 0;
    while (2)
    {
      v22 = v11;
      do
      {
        if (!v9)
        {
          v14 = v12;
          while (1)
          {
            v12 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v12 >= v10)
            {
              goto LABEL_20;
            }

            v15 = *(a3 + 56 + 8 * v12);
            ++v14;
            if (v15)
            {
              v13 = __clz(__rbit64(v15));
              v9 = (v15 - 1) & v15;
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_22;
        }

        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_15:
        v16 = v13 | (v12 << 6);
        v17 = *(*(*(a3 + 48) + 8 * v16) + 56);
        if (!v17)
        {
          break;
        }

        sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr);
        v18 = v23;

        v19 = v17;
        v20 = static NSObject.== infix(_:_:)();
      }

      while ((v20 & 1) != 0);
      *&a1[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
      v11 = v22 + 1;
      if (!__OFADD__(v22, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
LABEL_20:
    sub_10024B00C(a1, v21, v22, a3);
  }
}

uint64_t sub_100110740(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    v7 = a1;
    goto LABEL_8;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaSet.count.getter();
  if (!__OFADD__(result, 1))
  {
    v9 = sub_100108E38(v5, result + 1);
    v7 = a1;
    isUniquelyReferenced_nonNull_native = 1;
LABEL_8:
    result = sub_1001108A0(v7, isUniquelyReferenced_nonNull_native);
    *v2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001107E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    v7 = a1;
    goto LABEL_8;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaSet.count.getter();
  if (!__OFADD__(result, 1))
  {
    v9 = sub_10010837C(v5, result + 1, &unk_100507D10, &qword_10040A9E8, &qword_100503F00, SEEndPoint_ptr);
    v7 = a1;
    isUniquelyReferenced_nonNull_native = 1;
LABEL_8:
    result = sub_100110BBC(v7, isUniquelyReferenced_nonNull_native);
    *v2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001108A0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v8 = *(a1 + 16);
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  v37 = v3;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v35 = a2;
    v12 = ~v10;
    while (1)
    {
      v13 = *(*(*(v6 + 48) + 8 * v11) + 16);
      v14 = *(a1 + 16);

      v15 = static UUID.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        v16 = 1;
        goto LABEL_8;
      }
    }

    v16 = 0;
LABEL_8:
    v17 = v15 ^ 1;
    a2 = v35;
  }

  else
  {
    v17 = 1;
    v16 = 1;
  }

  v18 = *(v6 + 16);
  v19 = v18 + v16;
  if (__OFADD__(v18, v16))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v20 = *(v6 + 24);
  if (v20 < v19 || (a2 & 1) == 0)
  {
    if (a2)
    {
      v36 = v17;
      sub_10010A814(v19);
    }

    else
    {
      if (v20 >= v19)
      {
        sub_10010CC14(&unk_100503E80, &unk_10040B250);
        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      v36 = v17;
      sub_1000DBAE8(v19);
    }

    v21 = *v3;
    v22 = *(*v3 + 40);
    Hasher.init(_seed:)();
    v23 = *(a1 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    dispatch thunk of Hashable.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v21 + 32);
    v11 = v24 & ~v25;
    if ((*(v21 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v26 = ~v25;
      while (1)
      {
        v27 = *(*(*(v21 + 48) + 8 * v11) + 16);
        v28 = *(a1 + 16);

        LOBYTE(v27) = static UUID.== infix(_:_:)();

        if (v27)
        {
          break;
        }

        v11 = (v11 + 1) & v26;
        if (((*(v21 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v3 = v37;
      if ((v36 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_24:
      v3 = v37;
      if (v36)
      {
LABEL_25:
        v29 = *v3;
        *(*v3 + 8 * (v11 >> 6) + 56) |= 1 << v11;
        *(*(v29 + 48) + 8 * v11) = a1;
        v30 = *(v29 + 16);
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (!v31)
        {
          result = 0;
          *(v29 + 16) = v32;
          return result;
        }

        goto LABEL_31;
      }
    }

LABEL_32:
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  if (v17)
  {
    goto LABEL_25;
  }

LABEL_28:
  v34 = *(*v3 + 48);
  result = *(v34 + 8 * v11);
  *(v34 + 8 * v11) = a1;
  return result;
}

uint64_t sub_100110BBC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = NSObject._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    v11 = 1;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v9);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
LABEL_8:
    v14 = v13 ^ 1;
    v3 = v2;
  }

  else
  {
    v14 = 1;
    v11 = 1;
  }

  v15 = *(v6 + 16);
  v16 = v15 + v11;
  if (__OFADD__(v15, v11))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = *(v6 + 24);
  if (v17 >= v16 && (a2 & 1) != 0)
  {
    if ((v14 & 1) == 0)
    {
LABEL_28:
      v29 = *(*v3 + 48);
      result = *(v29 + 8 * v9);
      *(v29 + 8 * v9) = a1;
      return result;
    }

    goto LABEL_25;
  }

  if (a2)
  {
    sub_10010BC14(v16, &unk_100507D10, &qword_10040A9E8);
  }

  else
  {
    if (v17 >= v16)
    {
      sub_10010D410(&unk_100507D10, &qword_10040A9E8);
      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    sub_1000DAD34(v16);
  }

  v18 = *v3;
  v19 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v20 = -1 << *(v18 + 32);
  v9 = v19 & ~v20;
  if (((*(v18 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_24:
    if ((v14 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_25:
    v24 = *v3;
    *(*v3 + 8 * (v9 >> 6) + 56) |= 1 << v9;
    *(*(v24 + 48) + 8 * v9) = a1;
    v25 = *(v24 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (!v26)
    {
      result = 0;
      *(v24 + 16) = v27;
      return result;
    }

    goto LABEL_30;
  }

  v21 = ~v20;
  sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
  while (1)
  {
    v22 = *(*(v18 + 48) + 8 * v9);
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      break;
    }

    v9 = (v9 + 1) & v21;
    if (((*(v18 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100110E54(uint64_t result)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
  v6 = 0;
  while (LOBYTE(v2[v5 + 4]) == 1)
  {
    ++v6;
    v5 += 3;
    if (v3 == v6)
    {
      return *(*result + 16);
    }
  }

  if (v1)
  {
    return v6;
  }

  v7 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    if (v7 == v3)
    {
      return v6;
    }

    while (v7 < v3)
    {
      if (v2[v5 + 7])
      {
        if (v7 != v6)
        {
          if (v6 >= v3)
          {
            goto LABEL_23;
          }

          v8 = &v2[3 * v6 + 4];
          v17 = *v8;
          v10 = *(v8 + 8);
          v9 = *(v8 + 16);
          v12 = v2[v5 + 8];
          v11 = v2[v5 + 9];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1001A1620(v2);
          }

          v13 = &v2[3 * v6];
          v14 = v13[6];
          *(v13 + 32) = 1;
          v13[5] = v12;
          v13[6] = v11;

          if (v7 >= v2[2])
          {
            goto LABEL_24;
          }

          v15 = &v2[v5];
          v16 = v2[v5 + 9];
          *(v15 + 56) = v17;
          v15[8] = v10;
          v15[9] = v9;

          *v4 = v2;
        }

        ++v6;
      }

      ++v7;
      v3 = v2[2];
      v5 += 3;
      if (v7 == v3)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100110FE4(uint64_t result)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
  v6 = 0;
  while ((v2[v5 + 4] & 1) == 0)
  {
    ++v6;
    v5 += 3;
    if (v3 == v6)
    {
      return *(*result + 16);
    }
  }

  if (v1)
  {
    return v6;
  }

  v7 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    if (v7 == v3)
    {
      return v6;
    }

    while (v7 < v3)
    {
      if ((v2[v5 + 7] & 1) == 0)
      {
        if (v7 != v6)
        {
          if (v6 >= v3)
          {
            goto LABEL_23;
          }

          v8 = &v2[3 * v6 + 4];
          v17 = *v8;
          v10 = *(v8 + 8);
          v9 = *(v8 + 16);
          v12 = v2[v5 + 8];
          v11 = v2[v5 + 9];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1001A1620(v2);
          }

          v13 = &v2[3 * v6];
          v14 = v13[6];
          *(v13 + 32) = 0;
          v13[5] = v12;
          v13[6] = v11;

          if (v7 >= v2[2])
          {
            goto LABEL_24;
          }

          v15 = &v2[v5];
          v16 = v2[v5 + 9];
          *(v15 + 56) = v17;
          v15[8] = v10;
          v15[9] = v9;

          *v4 = v2;
        }

        ++v6;
      }

      ++v7;
      v3 = v2[2];
      v5 += 3;
      if (v7 == v3)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001111C0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v17[3] = type metadata accessor for DSKBLE(0);
  v17[4] = &off_1004C7070;
  v17[0] = a1;
  v9 = qword_100501D90;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v11)
  {
    sub_1000BC094(v17, v16);
    v14 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_delegate;
    swift_beginAccess();
    sub_10011F438(v16, a2 + v14);
    swift_endAccess();
    return sub_1000752F4(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100111368(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[3] = type metadata accessor for DSKBLE.BLEScanRequest();
  v12[4] = &off_1004C7108;
  v12[0] = a3;
  type metadata accessor for DSKBLE.BLEPeripheral();
  v8 = swift_allocObject();
  *(v8 + 80) = 0;
  *(v8 + 88) = &_swiftEmptySetSingleton;
  *(v8 + 96) = &_swiftEmptyDictionarySingleton;
  *(v8 + 104) = xmmword_1004098E0;
  *(v8 + 120) = 0;
  *(v8 + 122) = 1;
  *(v8 + 128) = 0;
  v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v9 + 16) = 4096;
  bzero((v9 + 32), 0x1000uLL);
  *(v8 + 136) = v9;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = _swiftEmptyArrayStorage;
  *(v8 + 168) = 2;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 192) = 1;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  sub_1000BC094(v12, v8 + 40);
  *(v8 + 16) = a4;
  v10 = *(a3 + 88);
  *(v8 + 176) = *(a3 + 72);
  *(v8 + 192) = v10;
  sub_1000752F4(v12);
  return v8;
}

uint64_t sub_100111490(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[3] = type metadata accessor for DSKBLE.BLEConnectionRequest();
  v12[4] = &off_1004C7088;
  v12[0] = a3;
  type metadata accessor for DSKBLE.BLEPeripheral();
  v8 = swift_allocObject();
  *(v8 + 80) = 0;
  *(v8 + 88) = &_swiftEmptySetSingleton;
  *(v8 + 96) = &_swiftEmptyDictionarySingleton;
  *(v8 + 104) = xmmword_1004098E0;
  *(v8 + 120) = 0;
  *(v8 + 122) = 1;
  *(v8 + 128) = 0;
  v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v9 + 16) = 4096;
  bzero((v9 + 32), 0x1000uLL);
  *(v8 + 136) = v9;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = _swiftEmptyArrayStorage;
  *(v8 + 168) = 2;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 192) = 1;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  sub_1000BC094(v12, v8 + 40);
  *(v8 + 16) = a4;
  v10 = *(a3 + 80);
  *(v8 + 176) = *(a3 + 64);
  *(v8 + 192) = v10;
  sub_1000752F4(v12);
  return v8;
}

void sub_1001115B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v3 = 0;
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 48) + 8 * v12);
    v15 = *(v13 + 16);
    v14 = *(v13 + 24);

    v16 = String._bridgeToObjectiveC()();
    v17 = [objc_opt_self() UUIDWithString:v16];

    sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
    LOBYTE(v16) = static NSObject.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:

        sub_10024A434(a1, a2, v21, a3);
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100111770(int64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v33 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28 = v7;
    v29 = v3;
    v27 = &v27;
    __chkstk_darwin(v9);
    v30 = &v27 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v8);
    v31 = 0;
    v32 = v4;
    v10 = 0;
    v3 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(v4 + 56);
    v4 = (v11 + 63) >> 6;
    while (v7)
    {
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v16 = v13 | (v10 << 6);
      v17 = *(*(v32 + 48) + 8 * v16);
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);

      v20 = String._bridgeToObjectiveC()();
      v21 = [objc_opt_self() UUIDWithString:v20];

      sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
      v8 = static NSObject.== infix(_:_:)();

      if ((v8 & 1) == 0)
      {
        *&v30[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_16:
          v23 = sub_10024A434(v30, v28, v31, v32);

          return v23;
        }
      }
    }

    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10 >= v4)
      {
        goto LABEL_16;
      }

      v15 = *(v3 + 8 * v10);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v7 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = v33;
  v23 = sub_1001103B0(v25, v7, v4, v26);

  return v23;
}

Swift::Int sub_100111A50(int64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_100111770(a1, a2);
  }

  v2 = a2;
  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for DSKBLE.BLEScanRequest();
    do
    {
      swift_dynamicCast();
      v3 = *(v21 + 16);
      v4 = *(v21 + 24);
      v5 = String._bridgeToObjectiveC()();
      v6 = [objc_opt_self() UUIDWithString:v5];

      sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
      LOBYTE(v5) = static NSObject.== infix(_:_:)();

      if (v5)
      {
      }

      else
      {
        v7 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v7)
        {
          sub_10010A5C0(v7 + 1, &unk_100507CF0, &qword_10040B270, &String.hash(into:));
        }

        v8 = *(&_swiftEmptySetSingleton + 5);
        Hasher.init(_seed:)();
        v9 = *(v21 + 16);
        v10 = *(v21 + 24);
        String.hash(into:)();
        result = Hasher._finalize()();
        v12 = &_swiftEmptySetSingleton + 56;
        v13 = -1 << *(&_swiftEmptySetSingleton + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(&_swiftEmptySetSingleton + (v14 >> 6) + 7)) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(&_swiftEmptySetSingleton + (v14 >> 6) + 7))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v15 == v18;
            if (v15 == v18)
            {
              v15 = 0;
            }

            v17 |= v19;
            v20 = *&v12[8 * v15];
          }

          while (v20 == -1);
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
        }

        *&v12[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v16) = v21;
        ++*(&_swiftEmptySetSingleton + 2);
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100111CE0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v19 = a3;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a1 + 48) + ((v13 << 11) | (32 * __clz(__rbit64(v9)))));
      v16 = v14[1];
      v17 = *v14;
      v18 = v16;
      sub_100069E2C(v17, *(&v17 + 1));
      sub_100069E2C(v16, *(&v16 + 1));
      sub_1000F0C4C(&v17, a2, v19);
      v15 = v18;
      sub_10006A178(v17, *(&v17 + 1));
      result = sub_10006A178(v15, *(&v15 + 1));
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100111E28(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void (*a8)(char *, uint64_t))
{
  v173 = a1;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v170 = *(v15 - 8);
  v171 = v15;
  v16 = *(v170 + 64);
  __chkstk_darwin(v15);
  v168 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for DispatchQoS();
  v167 = *(v169 - 8);
  v18 = *(v167 + 64);
  __chkstk_darwin(v169);
  v166 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for DispatchTimeInterval();
  v162 = *(v163 - 8);
  v20 = *(v162 + 64);
  __chkstk_darwin(v163);
  v161 = (&v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v172 = type metadata accessor for DispatchTime();
  v165 = *(v172 - 8);
  v22 = *(v165 + 64);
  v23 = __chkstk_darwin(v172);
  v160 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v164 = &v150 - v25;
  v159 = type metadata accessor for UUID();
  v158 = *(v159 - 8);
  v26 = *(v158 + 64);
  __chkstk_darwin(v159);
  v157 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 1);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = swift_allocObject();
  v33[2] = a4;
  v33[3] = a5;
  v33[4] = a6;
  v33[5] = a7;
  v178 = v33;
  v33[6] = a8;

  v177 = a8;

  v175 = a4;
  v176 = a5;
  sub_100069E2C(a4, a5);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v34 = qword_10051B7F0;
  *v32 = qword_10051B7F0;
  (*(v29 + 104))(v32, enum case for DispatchPredicate.onQueue(_:), v28);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v37 = *(v29 + 8);
  v36 = (v29 + 8);
  v37(v32, v28);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v174 = a7;
  a4 = a3;
  a7 = *(a3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  if (!a7)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Not running", v40, 2u);
    }

    sub_1000A5DD4(3, 1, v175, v176, a6, v174, v177);

    return;
  }

  v156 = v35;
  v35 = a2;
  v28 = (a2 >> 62);
  if ((a2 >> 62) <= 1)
  {
    a3 = v173;
    if (!v28)
    {
      v32 = BYTE6(a2);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  a3 = v173;
  if (v28 != 2)
  {
    v45 = a7;
LABEL_20:
    sub_100069E2C(a3, v35);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    sub_10006A178(a3, v35);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v48 = 136315138;
      v180 = sub_100288788(a3, v35);
      v50 = a6;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v51 = BidirectionalCollection<>.joined(separator:)();
      v53 = v52;

      v54 = sub_1002FFA0C(v51, v53, aBlock);
      a6 = v50;

      *(v48 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v46, v47, "Wrong address %s", v48, 0xCu);
      sub_1000752F4(v49);
    }

    sub_1000A5DD4(8, 1, v175, v176, a6, v174, v177);

    return;
  }

  v42 = *(v173 + 16);
  v41 = *(v173 + 24);
  v32 = v41 - v42;
  if (__OFSUB__(v41, v42))
  {
    __break(1u);
LABEL_15:
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v32 = HIDWORD(a3) - a3;
      goto LABEL_17;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_17:
  v43 = a7;
  if (v32 != 7)
  {
    goto LABEL_20;
  }

  a2 = v43;
  sub_100069E2C(a3, v35);
  v32 = 0;
  if (sub_1000939AC(a3, v35, 0, 0, 0))
  {
    goto LABEL_20;
  }

  if (v28 == 2)
  {
    v57 = *(a3 + 16);
    v56 = *(a3 + 24);
    v55 = v56 - v57;
    if (!__OFSUB__(v56, v57))
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  else if (v28 == 1)
  {
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
LABEL_66:
      swift_once();
LABEL_44:
      v83 = v153;
      v84 = [v153 identifier];

      v85 = v157;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v86 = swift_allocObject();
      v86[2] = a4;
      v86[3] = a3;
      v86[4] = v35;
      v86[5] = sub_100114CC4;
      v86[6] = v178;
      v87 = type metadata accessor for DSKBLEPairing.BLEUnpairingRequest(0);
      v88 = *(v87 + 48);
      v89 = *(v87 + 52);
      v90 = swift_allocObject();
      (*(v158 + 32))(v90 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v85, v159);
      v91 = (v90 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag);
      *v91 = 0;
      v91[1] = 0;
      v92 = (v90 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
      *v92 = sub_100114D2C;
      v92[1] = v86;
      sub_100069E2C(a3, v35);
      v93 = a4;

      sub_1000E82EC();

LABEL_54:
      return;
    }

    v55 = HIDWORD(a3) - a3;
    goto LABEL_32;
  }

  v55 = BYTE6(v35);
LABEL_32:
  v154 = a6;
  if (v55 < 1)
  {
    goto LABEL_68;
  }

  v58 = Data.subdata(in:)();
  v60 = v59;
  v61 = sub_1000E3F84(v58, v59);
  sub_10006A178(v58, v60);
  aBlock[0] = v61;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  v62 = BidirectionalCollection<>.joined(separator:)();
  a6 = v63;

  v64 = String._bridgeToObjectiveC()();
  v65 = [a2 retrievePeripheralWithAddress:v64];

  if (v65)
  {
    v173 = v62;
    v67 = __chkstk_darwin(v66);
    v28 = &v150 - 4;
    a7 = v65;
    *(&v150 - 2) = v65;
    if (qword_100501D78 == -1)
    {
LABEL_35:
      v68 = __chkstk_darwin(v67);
      *(&v150 - 2) = sub_100114CD8;
      *(&v150 - 1) = v28;
      v36 = *(v69 + 24);
      __chkstk_darwin(v68);
      *(&v150 - 2) = sub_10006A280;
      *(&v150 - 1) = v70;
      os_unfair_lock_lock(v36 + 8);
      sub_1000B3514(&v36[4], aBlock);
      if (v32)
      {
LABEL_69:
        sub_10006A178(v175, v176);

        os_unfair_lock_unlock(v36 + 8);
        __break(1u);
        return;
      }

      os_unfair_lock_unlock(v36 + 8);
      if ((aBlock[0] & 1) == 0)
      {
        v71 = [a2 sharedPairingAgent];
        if (v71)
        {
          v72 = v71;
          v73 = [v71 retrievePairedPeers];
          if (v73)
          {
            v74 = v73;
            v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v76 = sub_1000F1970(v75);

            if (v76)
            {
              v152 = v72;
              aBlock[0] = a7;
              __chkstk_darwin(v77);
              *(&v150 - 2) = aBlock;
              v153 = v78;
              v79 = sub_1002FB068(sub_100114CFC, (&v150 - 4), v76);

              if (v79)
              {

                v80 = Logger.logObject.getter();
                v81 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v80, v81))
                {
                  v82 = swift_slowAlloc();
                  *v82 = 0;
                  _os_log_impl(&_mh_execute_header, v80, v81, "Trying to unpair since we're paired but the peripheral unpaired from us", v82, 2u);
                }

                if (qword_100501968 == -1)
                {
                  goto LABEL_44;
                }

                goto LABEL_66;
              }

              v72 = v153;
            }
          }
        }
      }

      v114 = a7;

      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();

      v117 = os_log_type_enabled(v115, v116);
      v155 = a6;
      if (!v117)
      {
        v129 = a2;

        goto LABEL_61;
      }

      v151 = v116;
      v152 = v115;
      v118 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      aBlock[0] = v150;
      *v118 = 136315650;
      v119 = [(os_unfair_lock_s *)v114 identifier];
      v120 = v114;
      v121 = v157;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v122 = UUID.uuidString.getter();
      v124 = v123;
      v125 = v121;
      v36 = v120;
      (*(v158 + 8))(v125, v159);
      v126 = sub_1002FFA0C(v122, v124, aBlock);

      *(v118 + 4) = v126;
      *(v118 + 12) = 2080;
      v127 = [(os_unfair_lock_s *)v120 getTags];
      if (v127)
      {
        v128 = v127;
        v129 = a2;

        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v130 = Array.description.getter();
        v132 = v131;
        v114 = v120;

        v133 = sub_1002FFA0C(v130, v132, aBlock);

        *(v118 + 14) = v133;
        *(v118 + 22) = 2080;
        *(v118 + 24) = sub_1002FFA0C(v173, v155, aBlock);
        v115 = v152;
        _os_log_impl(&_mh_execute_header, v152, v151, "Deleting existing peripheral %s with tags %s for %s", v118, 0x20u);
        swift_arrayDestroy();

LABEL_61:

        v153 = v114;
        v134 = String._bridgeToObjectiveC()();
        [(os_unfair_lock_s *)v114 tag:v134];

        v135 = String._bridgeToObjectiveC()();
        [(os_unfair_lock_s *)v114 tag:v135];

        v136 = v160;
        static DispatchTime.now()();
        v137 = v161;
        *v161 = 5;
        v138 = v162;
        v139 = v163;
        (*(v162 + 104))(v137, enum case for DispatchTimeInterval.seconds(_:), v163);
        v140 = v164;
        + infix(_:_:)();
        (*(v138 + 8))(v137, v139);
        v177 = *(v165 + 8);
        v177(v136, v172);
        v141 = swift_allocObject();
        v141[2] = a4;
        v141[3] = v129;
        v141[4] = a3;
        v141[5] = v35;
        v142 = v155;
        v141[6] = v173;
        v141[7] = v142;
        v143 = a3;
        v144 = v178;
        v141[8] = sub_100114CC4;
        v141[9] = v144;
        aBlock[4] = sub_100114CE4;
        aBlock[5] = v141;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100080830;
        aBlock[3] = &unk_1004C74A8;
        v145 = _Block_copy(aBlock);
        v176 = v129;
        sub_100069E2C(v143, v35);
        v146 = a4;

        v147 = v166;
        static DispatchQoS.unspecified.getter();
        v180 = &_swiftEmptyArrayStorage;
        sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
        v148 = v168;
        v149 = v171;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v145);

        (*(v170 + 8))(v148, v149);
        (*(v167 + 8))(v147, v169);
        v177(v140, v172);

        return;
      }

      sub_10006A178(v175, v176);

      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

LABEL_64:
    v67 = swift_once();
    goto LABEL_35;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v95 = [a2 createPeripheralWithAddress:isa andIdentifier:0];

  v96 = Logger.logObject.getter();
  if (!v95)
  {
    v103 = static os_log_type_t.error.getter();

    v104 = os_log_type_enabled(v96, v103);
    v105 = v177;
    if (v104)
    {
      v106 = v62;
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      aBlock[0] = v108;
      *v107 = 136315138;
      v109 = sub_1002FFA0C(v106, a6, aBlock);

      *(v107 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v96, v103, "Failed to create peripheral for %s", v107, 0xCu);
      sub_1000752F4(v108);
    }

    else
    {
    }

    sub_1000A5DD4(2, 1, v175, v176, v154, v174, v105);

    goto LABEL_54;
  }

  v97 = v62;
  v98 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v96, v98))
  {
    v99 = swift_slowAlloc();
    v100 = a6;
    v101 = swift_slowAlloc();
    aBlock[0] = v101;
    *v99 = 136315138;
    v102 = sub_1002FFA0C(v97, v100, aBlock);

    *(v99 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v96, v98, "Created new peripheral for %s", v99, 0xCu);
    sub_1000752F4(v101);
  }

  else
  {
  }

  v110 = v154;
  v112 = v176;
  v111 = v177;
  v113 = v95;
  sub_1000A5DD4(v95, 0, v175, v112, v110, v174, v111);
}

void sub_10011333C(int64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = qword_100501D90;

  if (v17 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v18 = qword_10051B7F0;
    *v15 = qword_10051B7F0;
    (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
    v19 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    (*(v12 + 8))(v15, v11);
    if ((v18 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v20 = *(a2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v20)
    {
      sub_1000D1840(65539, a3, a4);

      return;
    }

    v48 = v8;
    v52 = a3;
    v53 = a4;
    v21 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v51 = a2;
    v22 = *(a2 + v21);
    v56 = v20;
    v57 = v16;
    v58 = a1;
    v55 = v22;
    if ((v22 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      v23 = v20;
      v15 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      a4 = aBlock[11];
      a2 = aBlock[12];
      v12 = aBlock[13];
      a3 = aBlock[14];
      v11 = aBlock[15];
    }

    else
    {
      v24 = -1 << *(v22 + 32);
      a2 = v22 + 56;
      v12 = ~v24;
      v25 = -v24;
      v26 = v25 < 64 ? ~(-1 << v25) : -1;
      v11 = v26 & *(v22 + 56);
      a4 = v22;
      swift_bridgeObjectRetain_n();
      v27 = v20;
      a3 = 0;
    }

    v54 = v12;
    a1 = (v12 + 64) >> 6;
    if ((a4 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_12:
    v28 = a3;
    v29 = v11;
    v30 = a3;
    if (v11)
    {
LABEL_16:
      v16 = (v29 - 1) & v29;
      v12 = *(*(a4 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));

      if (v12)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= a1)
      {
        goto LABEL_23;
      }

      v29 = *(a2 + 8 * v30);
      v28 = (v28 + 1);
      if (v29)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  while (1)
  {
    v31 = __CocoaSet.Iterator.next()();
    if (!v31)
    {
      break;
    }

    v59 = v31;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v12 = aBlock[0];
    v30 = a3;
    v16 = v11;
    if (!aBlock[0])
    {
      break;
    }

LABEL_20:
    v15 = *(v12 + 16);

    v8 = static UUID.== infix(_:_:)();

    if (v8)
    {
      sub_100093854();

      v39 = v50;
      v40 = v49;
      v41 = v48;
      (*(v50 + 16))(v49, *(v12 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v48);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v39 + 8))(v40, v41);
      v43 = swift_allocObject();
      v44 = v57;
      *(v43 + 16) = sub_100113AC4;
      *(v43 + 24) = v44;
      aBlock[4] = sub_100113AD8;
      aBlock[5] = v43;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000F8460;
      aBlock[3] = &unk_1004C71D8;
      v45 = _Block_copy(aBlock);

      v46 = v56;
      [v56 retrieveConnectionHandleWithIdentifier:isa completion:v45];
      _Block_release(v45);

      return;
    }

    a3 = v30;
    v11 = v16;
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  sub_100093854();

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315138;
    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = sub_1002FFA0C(v36, v37, aBlock);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "Peripheral not connected %s", v34, 0xCu);
    sub_1000752F4(v35);
  }

  sub_1000D1840(65540, v52, v53);
}

uint64_t sub_100113AD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    a1 = 65538;
  }

  else
  {
    a1 = a1;
  }

  return v3(a1);
}

uint64_t sub_100113B1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100113B54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100113BA8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 72);
  return (*(v2 + 64))(v1, *(v2 + 32));
}

uint64_t sub_100113BD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100113C1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100113C60(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v31 = a4;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_8:
        v13 = (*(a1 + 48) + ((v11 << 11) | (32 * __clz(__rbit64(v8)))));
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v18 = objc_allocWithZone(CBServiceUUIDParamInfo);
        v37 = v14;
        v19 = v14;
        v20 = v15;
        sub_100069E2C(v19, v15);
        v35 = v16;
        v36 = v17;
        sub_100069E2C(v16, v17);
        v21 = [v18 init];

        v22 = sub_10013044C(a2, a3);
        if (v23 >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          v25 = v22;
          v26 = v23;
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10006A2D0(v25, v26);
        }

        [v21 setServiceUUID:isa];

        v27 = Data._bridgeToObjectiveC()().super.isa;
        [v21 setMaskData:v27];

        v28 = Data._bridgeToObjectiveC()().super.isa;
        [v21 setBlobData:v28];

        v29 = v21;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v30 = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v8 &= v8 - 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        sub_10006A178(v37, v20);
        result = sub_10006A178(v35, v36);
      }

      while (v8);
    }
  }

  __break(1u);
  return result;
}

void sub_100113EC4(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v6 = a1;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = 0;

  {
    while (1)
    {
LABEL_10:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(v6 + 56) + ((v12 << 11) | (32 * v15));
      v18 = *v16;
      v17 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      v21 = *a2;
      if (v19 < v21)
      {
        LOBYTE(v21) = v19;
      }

      *a2 = v21;
      if (!*(v20 + 16) || a3 >= 9)
      {
        break;
      }

      sub_100113C60(v13, v18, v17, a4);

      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v33 = v5;
    v23 = objc_allocWithZone(CBServiceUUIDParamInfo);

    v32 = [v23 init];

    v24 = sub_10013044C(v18, v17);
    if (v25 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v27 = v24;
      v28 = v25;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A2D0(v27, v28);
    }

    [v32 setServiceUUID:isa];

    v29 = v32;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v30 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v5 = v33;
  }

LABEL_6:
  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_10011412C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1001141A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v52 = a3;
  v53 = type metadata accessor for UUID();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v53);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v13 = qword_10051B7F0;
    *v12 = qword_10051B7F0;
    (v9[13])(v12, enum case for DispatchPredicate.onQueue(_:), v8);
    v14 = v13;
    v15 = _dispatchPreconditionTest(_:)();
    (v9[1])(v12, v8);
    if (v15)
    {
      if (qword_100501960 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    v16 = *(qword_10051B288 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    v17 = v54;
    if (!v16)
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Failed to retrieve central manager", v31, 2u);
      }

      return;
    }

    v9 = v16;
    v18 = [v9 sharedPairingAgent];
    if (!v18)
    {
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Failed to retrieve shared pairing agent", v37, 2u);
      }

      return;
    }

    v19 = v18;
    v20 = [v18 retrievePairedPeers];
    if (!v20 || (v21 = v20, v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v21, v23 = sub_1000F1970(v22), , !v23))
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Failed to retrieve paired peers", v34, 2u);
      }

      return;
    }

    v49 = a4;
    v50 = v9;
    v55 = _swiftEmptyArrayStorage;
    a4 = v23 & 0xFFFFFFFFFFFFFF8;
    v12 = v23 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v48 = v19;
    if (!v12)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v25 = *(v23 + 8 * v8 + 32);
      }

      v26 = v25;
      v27 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v28 = String._bridgeToObjectiveC()();
      v9 = [v26 hasTag:{v28, v48, v49, v50, v51, v52}];

      if (v9)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = v55[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      v24 = v27 == v12;
      v17 = v54;
      if (v24)
      {
        v38 = v55;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v38 = _swiftEmptyArrayStorage;
LABEL_32:

  if ((v38 & 0x8000000000000000) == 0 && (v38 & 0x4000000000000000) == 0)
  {
    v39 = *(v38 + 16);
    if (v39)
    {
      goto LABEL_35;
    }

LABEL_51:

    v41 = _swiftEmptyArrayStorage;
LABEL_52:
    v47 = sub_1000E0348(v41);

    sub_1000A9CF4(v47, v49);

    return;
  }

  v39 = _CocoaArrayWrapper.endIndex.getter();
  if (!v39)
  {
    goto LABEL_51;
  }

LABEL_35:
  v55 = _swiftEmptyArrayStorage;
  sub_10019F420(0, v39 & ~(v39 >> 63), 0);
  if ((v39 & 0x8000000000000000) == 0)
  {
    v40 = 0;
    v41 = v55;
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v42 = *(v38 + 8 * v40 + 32);
      }

      v43 = v42;
      v44 = [v42 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = v41;
      v46 = v41[2];
      v45 = v41[3];
      if (v46 >= v45 >> 1)
      {
        sub_10019F420(v45 > 1, v46 + 1, 1);
        v41 = v55;
      }

      ++v40;
      v41[2] = v46 + 1;
      (*(v5 + 32))(v41 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v46, v17, v53);
    }

    while (v39 != v40);

    goto LABEL_52;
  }

  __break(1u);
}

uint64_t sub_100114834(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v38 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = qword_100501D90;
  v39 = a4;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  v14 = enum case for DispatchPredicate.onQueue(_:);
  v16 = v8 + 13;
  v15 = v8[13];
  v15(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v37 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v19 = v8[1];
  v17 = (v8 + 1);
  v18 = v19;
  v19(v11, v7);
  if (v13)
  {
    v35 = v18;
    v36 = v15;
    v18 = a3;
    if (qword_100501960 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v20 = qword_10051B288;
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = a1;
  v34 = a1;
  v22 = v39;
  v21[4] = v38;
  v21[5] = sub_100114BDC;
  v21[6] = v22;
  v23 = v36;
  *v11 = v37;
  v23(v11, v14, v7);

  v24 = v18;
  v25 = _dispatchPreconditionTest(_:)();
  v35(v11, v7);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    v16 = sub_10012E6B0(0, v16[2] + 1, 1, v16);
    *&v24[v20] = v16;
    goto LABEL_10;
  }

  v26 = *(v20 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  if (v26 == 10 || v26 == 5)
  {
    v27 = v39;

    sub_1001141A0(v24, v34, v38, v27);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_100114C2C;
  *(v17 + 24) = v21;
  v24 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
  swift_beginAccess();
  v16 = *&v24[v20];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v24[v20] = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v31 = v16[2];
  v30 = v16[3];
  if (v31 >= v30 >> 1)
  {
    v16 = sub_10012E6B0((v30 > 1), v31 + 1, 1, v16);
  }

  v16[2] = v31 + 1;
  v32 = &v16[3 * v31];
  *(v32 + 32) = 1;
  v32[5] = sub_1000B3564;
  v32[6] = v17;
  *&v24[v20] = v16;
  swift_endAccess();
}

uint64_t sub_100114BE4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100114C3C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100114C74()
{
  sub_10006A178(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100114D30()
{
  sub_10006A178(*(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100114DA0()
{
  sub_10006A178(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100114E14(uint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v4 = *(v3 + 16);
  v5 = *a1;
  v6 = *v4;
  sub_10009393C(0, a2, a3);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_100114E6C()
{
  sub_10006A178(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100114EC4()
{
  v0 = _convertErrorToNSError(_:)();
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {

      LOBYTE(v8) = 0;
      return v8 & 1;
    }
  }

  v9 = [v0 code];

  v8 = 0x6104u >> v9;
  if (v9 >= 0xF)
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_100114FB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v18 = *(*(a3 + 48) + 8 * v17);
    result = *(v18 + 16);
    if (result != *(a4 + 16) || *(v18 + 24) != *(a4 + 24))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
LABEL_19:

          return sub_10024A434(v6, a2, v7, a3);
        }
      }
    }
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

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001150F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v26 = v8;
    v27 = v3;
    v25 = &v25;
    __chkstk_darwin(v10);
    v11 = &v25 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v9);
    v9 = 0;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v3 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v8 = v16 | (v12 << 6);
      v19 = *(*(a1 + 48) + 8 * v8);
      if ((*(v19 + 16) != *(a2 + 16) || *(v19 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        *&v11[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_20:
          v22 = sub_10024A434(v11, v26, v9, a1);

          return v22;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v3)
      {
        goto LABEL_20;
      }

      v18 = *(a1 + 56 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();

  v22 = sub_100110448(v24, v8, a1, a2);

  return v22;
}

Swift::Int sub_10011536C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1001150F8(a1, a2);
  }

  __CocoaSet.makeIterator()();
  while (__CocoaSet.Iterator.next()())
  {
    swift_dynamicCast();
    v4 = *(v19 + 16) == a2[2] && *(v19 + 24) == a2[3];
    if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    else
    {
      v5 = *(&_swiftEmptySetSingleton + 2);
      if (*(&_swiftEmptySetSingleton + 3) <= v5)
      {
        sub_10010A5C0(v5 + 1, &unk_100507CF0, &qword_10040B270, &String.hash(into:));
      }

      v6 = *(&_swiftEmptySetSingleton + 5);
      Hasher.init(_seed:)();
      v7 = *(v19 + 16);
      v8 = *(v19 + 24);
      String.hash(into:)();
      result = Hasher._finalize()();
      v10 = &_swiftEmptySetSingleton + 56;
      v11 = -1 << *(&_swiftEmptySetSingleton + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(&_swiftEmptySetSingleton + (v12 >> 6) + 7)) != 0)
      {
        v14 = __clz(__rbit64((-1 << v12) & ~*(&_swiftEmptySetSingleton + (v12 >> 6) + 7))) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = 0;
        v16 = (63 - v11) >> 6;
        do
        {
          if (++v13 == v16 && (v15 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v17 = v13 == v16;
          if (v13 == v16)
          {
            v13 = 0;
          }

          v15 |= v17;
          v18 = *&v10[8 * v13];
        }

        while (v18 == -1);
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
      }

      *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
      *(*(&_swiftEmptySetSingleton + 6) + 8 * v14) = v19;
      ++*(&_swiftEmptySetSingleton + 2);
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1001155CC(void *a1, uint64_t *a2, void *a3)
{
  v261 = a2;
  v262 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v247 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  isa = v10[-1].isa;
  v12 = *(isa + 8);
  __chkstk_darwin(v10);
  v14 = (&v247 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(isa + 13))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(isa + 1))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_127:

LABEL_90:

    goto LABEL_142;
  }

  v17 = *(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  if (!v17)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Not running", v28, 2u);
    }

    goto LABEL_9;
  }

  v18 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  swift_beginAccess();
  v260 = v3;
  v252 = v18;
  v19 = *(v3 + v18);
  v255 = v5;
  v254 = v6;
  v256 = v9;
  v257 = v17;
  v253 = a3;
  v259 = v19;
  if ((v19 & 0xC000000000000001) != 0)
  {
    swift_bridgeObjectRetain_n();
    v20 = v17;
    __CocoaSet.makeIterator()();
    v3 = type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
    Set.Iterator.init(_cocoa:)();
    v22 = v268;
    v21 = v269;
    v23 = v270;
    v24 = v271;
    v25 = v272;
  }

  else
  {
    v29 = -1 << *(v19 + 32);
    v21 = v19 + 56;
    v23 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v25 = v31 & *(v19 + 56);
    v22 = v19;
    swift_bridgeObjectRetain_n();
    v32 = v17;
    v24 = 0;
  }

  v258 = v23;
  while ((v22 & 0x8000000000000000) == 0)
  {
    v33 = v24;
    v34 = v25;
    if (!v25)
    {
      while (1)
      {
        v24 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v24 >= ((v23 + 64) >> 6))
        {
          goto LABEL_26;
        }

        v34 = *(v21 + 8 * v24);
        ++v33;
        if (v34)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_66;
    }

LABEL_20:
    v25 = (v34 - 1) & v34;
    v35 = *(*(v22 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v34)))));

    if (!v35)
    {
      goto LABEL_26;
    }

LABEL_24:
    sub_10009393C(0, &qword_100502D20, NSObject_ptr);
    v17 = *(v35 + 24);
    v3 = static NSObject.== infix(_:_:)();

    if (v3)
    {

      sub_100093854();

      return;
    }
  }

  v36 = __CocoaSet.Iterator.next()();
  if (v36)
  {
    *&v263 = v36;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v35 = v265;
    if (v265)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  sub_100093854();

  v37 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
  v38 = v262;
  v39 = v261;

  v40 = v260;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();

  v43 = os_log_type_enabled(v41, v42);
  v262 = v38;
  if (v43)
  {
    v44 = swift_slowAlloc();
    *&v265 = swift_slowAlloc();
    *v44 = 136315394;
    v45 = [v38 identifier];
    v46 = v256;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
    v47 = v255;
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    (*(v254 + 8))(v46, v47);
    v51 = sub_1002FFA0C(v48, v50, &v265);

    *(v44 + 4) = v51;
    *(v44 + 12) = 2080;
    v52 = Dictionary.description.getter();
    v54 = sub_1002FFA0C(v52, v53, &v265);

    *(v44 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v41, v42, "Discovered new peripheral %s with advertisement data %s", v44, 0x16u);
    swift_arrayDestroy();
    v39 = v261;
  }

  v55 = OBJC_IVAR____TtC10seserviced6DSKBLE_scanRequests;
  swift_beginAccess();
  v56 = *&v40[v55];

  v17 = 0;
  v58 = sub_1000E42E0(v57);

  if (!(v58 >> 62))
  {
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_138:

    v10 = Logger.logObject.getter();
    v243 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v243))
    {
      v244 = swift_slowAlloc();
      *v244 = 0;
      _os_log_impl(&_mh_execute_header, v10, v243, "Discovered a peripheral but there's no scan request", v244, 2u);
LABEL_140:
    }

    goto LABEL_141;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_138;
  }

LABEL_30:
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v39[2])
  {

    goto LABEL_46;
  }

  v61 = sub_10008C908(v59, v60);
  v63 = v62;

  if ((v63 & 1) == 0 || (sub_1000754F0(v39[7] + 32 * v61, &v265), sub_100068FC4(&qword_100504070, &qword_10040B380), (swift_dynamicCast() & 1) == 0))
  {
LABEL_46:
    if (!v39[2])
    {
      goto LABEL_61;
    }

    goto LABEL_47;
  }

  v64 = v263;
  if (v263 >> 62)
  {
    v65 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v65 = *((v263 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v258 = v55;
  v259 = v37;
  if (v65)
  {
    v66 = 0;
    v67 = v64 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v66 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_144;
        }

        v68 = *(v64 + 8 * v66 + 32);
      }

      v3 = v68;
      v69 = (v66 + 1);
      if (__OFADD__(v66, 1))
      {
        break;
      }

      *&v265 = v68;
      __chkstk_darwin(v68);
      *(&v247 - 2) = &v265;
      if (sub_1002FB068(sub_10011F7D0, (&v247 - 4), v58))
      {

        goto LABEL_67;
      }

      ++v66;
      if (v69 == v65)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:

    goto LABEL_147;
  }

LABEL_60:

  v40 = v260;
  v37 = v259;
  v55 = v258;
  v39 = v261;
  if (v261[2])
  {
LABEL_47:
    v70 = sub_10008C908(0xD000000000000015, 0x8000000100463440);
    if ((v71 & 1) == 0)
    {
      goto LABEL_61;
    }

    sub_1000754F0(v39[7] + 32 * v70, &v265);
    sub_100068FC4(&qword_100504068, &qword_10040B378);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_61;
    }

    v258 = v55;
    v259 = v37;
    v72 = v263;
    v73 = v263 + 64;
    v74 = 1 << *(v263 + 32);
    v75 = -1;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    v76 = v75 & *(v263 + 64);
    v77 = (v74 + 63) >> 6;

    v79 = 0;
    if (v76)
    {
      while (1)
      {
        v80 = v79;
LABEL_56:
        v39 = &v247;
        *&v265 = *(*(v72 + 48) + ((v80 << 9) | (8 * __clz(__rbit64(v76)))));
        __chkstk_darwin(v78);
        *(&v247 - 2) = &v265;
        v3 = v81;
        if (sub_1002FB068(sub_10011F7D0, (&v247 - 4), v58))
        {
          break;
        }

        v76 &= v76 - 1;

        v79 = v80;
        if (!v76)
        {
          goto LABEL_53;
        }
      }

LABEL_66:

LABEL_67:

      v92 = v3;
      v93 = v260;
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.info.getter();
      v251 = v92;

      v96 = os_log_type_enabled(v94, v95);
      v97 = v258;
      if (v96)
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v98 = 138412290;
        v100 = v251;
        *(v98 + 4) = v251;
        *v99 = v100;
        v101 = v100;
        _os_log_impl(&_mh_execute_header, v94, v95, "Discovered service %@", v98, 0xCu);
        sub_100075768(v99, &unk_100503F70, &unk_10040B2E0);
      }

      v248 = *&v93[v97];
      if ((v248 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for DSKBLE.BLEScanRequest();
        sub_1001081DC(&qword_100503EB8, v102, type metadata accessor for DSKBLE.BLEScanRequest);
        Set.Iterator.init(_cocoa:)();
        v67 = v273;
        v103 = v274;
        v104 = v275;
        v105 = v276;
        v106 = v277;
      }

      else
      {
        v107 = -1 << *(v248 + 32);
        v103 = v248 + 56;
        v104 = ~v107;
        v108 = -v107;
        if (v108 < 64)
        {
          v109 = ~(-1 << v108);
        }

        else
        {
          v109 = -1;
        }

        v106 = (v109 & *(v248 + 56));
        v67 = v248;
        swift_bridgeObjectRetain_n();
        v105 = 0;
      }

      v247 = v104;
      v110 = (v104 + 64) >> 6;
      while (1)
      {
        v250 = v105;
        if (v67 < 0)
        {
          v114 = __CocoaSet.Iterator.next()();
          if (!v114)
          {
            goto LABEL_87;
          }

          *&v263 = v114;
          type metadata accessor for DSKBLE.BLEScanRequest();
          swift_dynamicCast();
          v113 = v265;
          v64 = v105;
          v249 = v106;
        }

        else
        {
          v111 = v105;
          v112 = v106;
          v64 = v105;
          v65 = v259;
          if (!v106)
          {
            do
            {
              v64 = &v111->isa + 1;
              if (__OFADD__(v111, 1))
              {
                goto LABEL_145;
              }

              if (v64 >= v110)
              {
                goto LABEL_87;
              }

              v112 = *(v103 + 8 * v64);
              v111 = (v111 + 1);
            }

            while (!v112);
          }

          v249 = v106;
          v106 = ((v112 - 1) & v112);
          v113 = *(*(v67 + 48) + ((v64 << 9) | (8 * __clz(__rbit64(v112)))));
        }

        if (!v113)
        {
LABEL_87:
          sub_100093854();

          v10 = Logger.logObject.getter();
          v121 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v10, v121))
          {
            v122 = swift_slowAlloc();
            *v122 = 0;
            _os_log_impl(&_mh_execute_header, v10, v121, "Failed to retrieve scan request", v122, 2u);

            goto LABEL_141;
          }

          goto LABEL_90;
        }

        sub_10009393C(0, &qword_100502D20, NSObject_ptr);
        v115 = *(v113 + 16);
        v116 = *(v113 + 24);
        v117 = String._bridgeToObjectiveC()();
        v118 = v113;
        v119 = [objc_opt_self() UUIDWithString:{v117, v247, v248}];

        v120 = static NSObject.== infix(_:_:)();
        if (v120)
        {
          break;
        }

        v105 = v64;
      }

      sub_100093854();

      v123 = v253;
      v39 = v118;
      if ([v253 integerValue] < *(v118 + 32))
      {
        swift_retain_n();
        v124 = v123;
        v125 = v262;
        v126 = v124;
        v10 = Logger.logObject.getter();
        v127 = static os_log_type_t.info.getter();

        v128 = os_log_type_enabled(v10, v127);
        v129 = v256;
        if (v128)
        {
          v130 = v118;
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          *&v265 = v132;
          *v131 = 136315650;
          v133 = [v125 identifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
          v134 = v255;
          v135 = dispatch thunk of CustomStringConvertible.description.getter();
          v137 = v136;
          (*(v254 + 8))(v129, v134);
          v138 = sub_1002FFA0C(v135, v137, &v265);

          *(v131 + 4) = v138;
          *(v131 + 12) = 2048;
          v139 = [v126 integerValue];

          *(v131 + 14) = v139;
          *(v131 + 22) = 256;
          LOBYTE(v139) = *(v130 + 32);

          *(v131 + 24) = v139;

          _os_log_impl(&_mh_execute_header, v10, v127, "Ignoring %s due to RSSI %ld minimum %hhd", v131, 0x19u);
          sub_1000752F4(v132);

          goto LABEL_141;
        }

        return;
      }

      v140 = *(v118 + 40);
      v141 = *(v140 + 16);
      v253 = v118;
      if (!v141)
      {
        goto LABEL_110;
      }

      v142 = 0;
      v143 = (v140 + 40);
      v144 = _swiftEmptyArrayStorage;
      while (v142 < *(v140 + 16))
      {
        if (v261[2])
        {
          v146 = *(v143 - 1);
          v145 = *v143;

          v147 = v261;
          v148 = sub_10008C908(v146, v145);
          if (v149)
          {
            sub_1000754F0(v147[7] + 32 * v148, &v265);
            *&v263 = v146;
            *(&v263 + 1) = v145;
            sub_100075D50(&v265, v264);
            v265 = v263;
            v266 = v264[0];
            v267 = v264[1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v144 = sub_10012F07C(0, v144[2] + 1, 1, v144);
            }

            v39 = v253;
            v151 = v144[2];
            v150 = v144[3];
            if (v151 >= v150 >> 1)
            {
              v144 = sub_10012F07C((v150 > 1), v151 + 1, 1, v144);
            }

            v144[2] = v151 + 1;
            v152 = &v144[6 * v151];
            v153 = v265;
            v154 = v267;
            v152[3] = v266;
            v152[4] = v154;
            v152[2] = v153;
          }

          else
          {

            v39 = v253;
          }
        }

        ++v142;
        v143 += 2;
        if (v141 == v142)
        {
          goto LABEL_111;
        }
      }

      __break(1u);
      goto LABEL_152;
    }

LABEL_53:
    while (1)
    {
      v80 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        break;
      }

      if (v80 >= v77)
      {

        v40 = v260;
        v55 = v258;
        goto LABEL_62;
      }

      v76 = *(v73 + 8 * v80);
      ++v79;
      if (v76)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_110:
    v144 = _swiftEmptyArrayStorage;
LABEL_111:
    if (v144[2])
    {
      sub_100068FC4(&unk_100504000, &unk_10040B350);
      v155 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v155 = &_swiftEmptyDictionarySingleton;
    }

    v156 = v259;
    *&v265 = v155;

    sub_1002699FC(v157, 1, &v265);
    if (v17)
    {
      goto LABEL_153;
    }

    v158 = v265;
    v159 = *(v39[5] + 16);
    v160 = *(v265 + 16);

    if (v159 != v160)
    {

      v10 = Logger.logObject.getter();
      v216 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v10, v216))
      {
        goto LABEL_127;
      }

      v217 = swift_slowAlloc();
      *&v265 = swift_slowAlloc();
      *v217 = 136315394;
      v218 = v39[5];

      v219 = Array.description.getter();
      v221 = v220;

      v222 = sub_1002FFA0C(v219, v221, &v265);

      *(v217 + 4) = v222;
      *(v217 + 12) = 2080;
      v223 = Dictionary.Keys.description.getter();
      v225 = v224;

      v226 = sub_1002FFA0C(v223, v225, &v265);

      *(v217 + 14) = v226;
      _os_log_impl(&_mh_execute_header, v10, v216, "Missing advertisements requested %s found %s", v217, 0x16u);
      swift_arrayDestroy();

      goto LABEL_141;
    }

    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.info.getter();

    v163 = os_log_type_enabled(v161, v162);
    v259 = v156;
    v261 = 0;
    if (v163)
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      *&v265 = v165;
      *v164 = 136315138;
      v166 = Dictionary.description.getter();
      v168 = sub_1002FFA0C(v166, v167, &v265);

      *(v164 + 4) = v168;
      _os_log_impl(&_mh_execute_header, v161, v162, "Found advertisements %s", v164, 0xCu);
      sub_1000752F4(v165);
      v39 = v253;
    }

    v169 = v262;
    v170 = [v262 identifier];
    v171 = v256;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v172 = type metadata accessor for Peer();
    v173 = *(v172 + 48);
    v174 = *(v172 + 52);
    swift_allocObject();
    v175 = sub_10025CF18(v171);
    v176 = v169;

    v177 = sub_100111368(v176, 0, v39, v175);
    swift_beginAccess();

    sub_1000D730C(&v263, v177);
    swift_endAccess();

    v178 = voucher_copy();
    v179 = v177[18];
    v177[18] = v178;

    v180 = v176;

    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.info.getter();

    v183 = os_log_type_enabled(v181, v182);
    v262 = v177;
    if (v183)
    {
      v184 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v250 = v175;
      v186 = v185;
      v249 = swift_slowAlloc();
      *&v265 = v249;
      *v184 = 138412546;
      v187 = v177[18];
      *(v184 + 4) = v187;
      *v186 = v187;
      *(v184 + 12) = 2080;
      v188 = v187;
      v189 = [v180 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
      v190 = v255;
      v191 = dispatch thunk of CustomStringConvertible.description.getter();
      v193 = v192;
      (*(v254 + 8))(v171, v190);
      v194 = sub_1002FFA0C(v191, v193, &v265);

      *(v184 + 14) = v194;
      _os_log_impl(&_mh_execute_header, v181, v182, "Got voucher (BT) %@ for %s", v184, 0x16u);
      sub_100075768(v186, &unk_100503F70, &unk_10040B2E0);
      v175 = v250;

      sub_1000752F4(v249);

      v39 = v253;
    }

    v195 = v39;
    v196 = v39[13];
    v197 = v195[14];
    v199 = v195[2];
    v198 = v195[3];

    v200 = v261;
    v196(v199, v198, v158, v175);
    if (!v200)
    {

      v227 = v253;
      if ((*(v253 + 33) & 1) == 0)
      {
        v228 = v260;
        v229 = v258;
        v230 = *&v260[v258];

        v232 = sub_10011536C(v231, v227);

        v233 = *&v228[v229];
        *&v228[v229] = v232;

        sub_1000EE338();
      }

      v234 = v227[12];
      if (v234)
      {
        v235 = *(v234 + 16);

        if (v235)
        {
          v236 = 0;
          v237 = (v234 + 40);
          while (v236 < *(v234 + 16))
          {
            ++v236;
            v239 = *(v237 - 1);
            v238 = *v237;

            v240 = String._bridgeToObjectiveC()();
            [v180 tag:v240];

            v237 += 2;
            if (v235 == v236)
            {
              goto LABEL_135;
            }
          }

LABEL_152:
          __break(1u);
LABEL_153:
          swift_unexpectedError();
          __break(1u);
          return;
        }

LABEL_135:

        v227 = v253;
      }

      v241 = v227[8];

      v242 = Dictionary._bridgeToObjectiveC()().super.isa;

      v26 = v257;
      [v257 connectPeripheral:v180 options:v242];

      goto LABEL_9;
    }

    v67 = v262;
    v201 = *(v262 + 18);
    if (v201)
    {
      v202 = v201;
      v203 = v180;
      v65 = v202;
      v64 = Logger.logObject.getter();
      v204 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v64, v204))
      {
        goto LABEL_146;
      }

      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v250 = v175;
      v207 = v206;
      v208 = swift_slowAlloc();
      *&v265 = v208;
      *v205 = 138412546;
      *(v205 + 4) = v65;
      *v207 = v201;
      *(v205 + 12) = 2080;
      v261 = v65;
      v209 = [v203 identifier];
      v210 = v256;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
      v211 = v255;
      v212 = dispatch thunk of CustomStringConvertible.description.getter();
      v214 = v213;
      (*(v254 + 8))(v210, v211);
      v215 = sub_1002FFA0C(v212, v214, &v265);

      *(v205 + 14) = v215;
      _os_log_impl(&_mh_execute_header, v64, v204, "Releasing voucher (BT) %@ for %s", v205, 0x16u);
      sub_100075768(v207, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v208);
      v67 = v262;
    }

LABEL_147:
    swift_beginAccess();
    sub_10010E308(v67);
    swift_endAccess();

    v26 = Logger.logObject.getter();
    v245 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v245))
    {
      v246 = swift_slowAlloc();
      *v246 = 0;
      _os_log_impl(&_mh_execute_header, v26, v245, "Ignoring discovery as requested by client", v246, 2u);
    }

    else
    {
    }

LABEL_9:

    return;
  }

LABEL_61:

LABEL_62:
  v82 = v40;
  v10 = Logger.logObject.getter();
  v83 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *&v265 = v85;
    *v84 = 136315138;
    v86 = *&v40[v55];

    sub_1000E5B18(v87);

    v88 = Array.description.getter();
    v90 = v89;

    v91 = sub_1002FFA0C(v88, v90, &v265);

    *(v84 + 4) = v91;
    _os_log_impl(&_mh_execute_header, v10, v83, "Discovered a peripheral which does not include any service we're scanning for %s", v84, 0xCu);
    sub_1000752F4(v85);

    goto LABEL_140;
  }

LABEL_141:

LABEL_142:
}

void sub_100117630(void *a1)
{
  v179 = a1;
  v177 = type metadata accessor for UUID();
  v168 = *(v177 - 8);
  v3 = *(v168 + 64);
  v4 = __chkstk_darwin(v177);
  v175 = v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v176 = v163 - v6;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_94;
  }

  while (1)
  {
    v12 = qword_10051B7F0;
    *v11 = qword_10051B7F0;
    (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
    v13 = v12;
    LOBYTE(v12) = _dispatchPreconditionTest(_:)();
    (*(v8 + 8))(v11, v7);
    if ((v12 & 1) == 0)
    {
      __break(1u);
      goto LABEL_96;
    }

    v14 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v14)
    {
      break;
    }

    v15 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v166 = v15;
    v16 = *(v1 + v15);
    v171 = v1;
    v167 = v14;
    v178 = v16;
    if ((v16 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      v17 = v14;
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v7 = v182[7];
      v18 = v182[8];
      v1 = v182[9];
      v8 = v182[10];
      v2 = v182[11];
    }

    else
    {
      v22 = -1 << *(v16 + 32);
      v18 = v16 + 56;
      v1 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v2 = v24 & *(v16 + 56);
      v7 = v16;
      swift_bridgeObjectRetain_n();
      v25 = v14;
      v8 = 0;
    }

    v174 = v1;
    v11 = ((v1 + 64) >> 6);
    while (1)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        v26 = v8;
        v27 = v2;
        if (!v2)
        {
          while (1)
          {
            v8 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v8 >= v11)
            {
              goto LABEL_29;
            }

            v27 = *(v18 + 8 * v8);
            ++v26;
            if (v27)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

LABEL_20:
        v2 = (v27 - 1) & v27;
        v28 = *(*(v7 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v27)))));

        if (!v28)
        {
          break;
        }

        goto LABEL_24;
      }

      v29 = __CocoaSet.Iterator.next()();
      if (!v29)
      {
        break;
      }

      v183 = v29;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v28 = v188[0];
      if (!v188[0])
      {
        break;
      }

LABEL_24:
      sub_10009393C(0, &qword_100502D20, NSObject_ptr);
      v30 = *(v28 + 24);
      v1 = static NSObject.== infix(_:_:)();

      if (v1)
      {
        v1 = *(v28 + 32);

        if (v1)
        {
          sub_100093854();

          v31 = v179;
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v188[0] = v35;
            *v34 = 136315138;
            v36 = [v31 identifier];
            v37 = v176;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
            v38 = v177;
            v39 = dispatch thunk of CustomStringConvertible.description.getter();
            v41 = v40;
            (*(v168 + 8))(v37, v38);
            v42 = sub_1002FFA0C(v39, v41, v188);

            *(v34 + 4) = v42;
            _os_log_impl(&_mh_execute_header, v32, v33, "Ignoring unexpected connection to already connected peripheral %s", v34, 0xCu);
            sub_1000752F4(v35);
          }

LABEL_72:
          return;
        }
      }

      else
      {
      }
    }

LABEL_29:
    sub_100093854();

    v43 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
    v44 = v179;
    v45 = v171;
    v165 = v43;
    v1 = v171 + v43;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();

    v48 = os_log_type_enabled(v46, v47);
    v179 = v44;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v188[0] = v50;
      *v49 = 136315138;
      v51 = [v44 identifier];
      v2 = v176;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
      v52 = v177;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v168 + 8))(v2, v52);
      v1 = sub_1002FFA0C(v53, v55, v188);

      *(v49 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v46, v47, "New connection to peripheral %s", v49, 0xCu);
      sub_1000752F4(v50);
    }

    v178 = *(v45 + v166);
    if ((v178 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      v1 = type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v56 = v183;
      v7 = v184;
      v57 = v185;
      v8 = v186;
      v58 = v187;
    }

    else
    {
      v59 = -1 << *(v178 + 32);
      v7 = v178 + 56;
      v57 = ~v59;
      v60 = -v59;
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      else
      {
        v61 = -1;
      }

      v58 = v61 & *(v178 + 56);
      v56 = v178;
      swift_bridgeObjectRetain_n();
      v8 = 0;
    }

    v174 = v57;
    v11 = ((v57 + 64) >> 6);
    while (2)
    {
      if ((v56 & 0x8000000000000000) == 0)
      {
        v62 = v8;
        v63 = v58;
        for (i = v8; !v63; ++v62)
        {
          i = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_92;
          }

          if (i >= v11)
          {
            goto LABEL_51;
          }

          v63 = *(v7 + 8 * i);
        }

        v65 = (v63 - 1) & v63;
        v2 = *(*(v56 + 48) + ((i << 9) | (8 * __clz(__rbit64(v63)))));

        if (!v2)
        {
          goto LABEL_51;
        }

LABEL_48:
        sub_10009393C(0, &qword_100502D20, NSObject_ptr);
        v67 = *(v2 + 24);
        v1 = static NSObject.== infix(_:_:)();

        if ((v1 & 1) == 0 || *(v2 + 32))
        {

          v8 = i;
          v58 = v65;
          continue;
        }

        sub_100093854();

        *(v2 + 32) = 1;

        v68 = v179;
LABEL_74:
        v103 = [v167 advertisingAddress];
        if (v103)
        {
          v104 = v103;
          v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v107 = v106;
        }

        else
        {
          v105 = 0;
          v107 = 0xF000000000000000;
        }

        v108 = *(v2 + 104);
        v109 = *(v2 + 112);
        *(v2 + 104) = v105;
        *(v2 + 112) = v107;
        sub_10006A2D0(v108, v109);

        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v180 = v113;
          *v112 = 136315138;
          v114 = *(v2 + 112);
          if (v114 >> 60 == 15)
          {
            v115 = 0xE300000000000000;
            v116 = 7104878;
          }

          else
          {
            v117 = *(v2 + 104);
            sub_100069E2C(v117, *(v2 + 112));
            v182[0] = sub_100288788(v117, v114);
            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
            v118 = BidirectionalCollection<>.joined(separator:)();
            v115 = v119;
            sub_10006A2D0(v117, v114);

            v116 = v118;
          }

          v68 = v179;
          v120 = sub_1002FFA0C(v116, v115, &v180);

          *(v112 + 4) = v120;
          _os_log_impl(&_mh_execute_header, v110, v111, "Advertising address %s", v112, 0xCu);
          sub_1000752F4(v113);
        }

        v180 = 0;
        v181 = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        v180 = 0xD00000000000002ELL;
        v181 = 0x8000000100463410;
        v121 = [v68 identifier];
        v122 = v176;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
        v123 = v177;
        v124._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v124);

        v125 = (v168 + 8);
        v178 = *(v168 + 8);
        (v178)(v122, v123);
        String.utf8CString.getter();

        v126 = os_transaction_create();

        v127 = *(v2 + 152);
        *(v2 + 152) = v126;
        swift_unknownObjectRelease();
        v128 = *(v2 + 144);
        v129 = v128;

        v175 = v125;
        if (v128)
        {
        }

        else
        {
          v130 = voucher_copy();
          v131 = *(v2 + 144);
          *(v2 + 144) = v130;

          v132 = v68;

          v133 = Logger.logObject.getter();
          v134 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            v173 = v136;
            v174 = swift_slowAlloc();
            v180 = v174;
            *v135 = 138412546;
            v137 = *(v2 + 144);
            *(v135 + 4) = v137;
            *v136 = v137;
            *(v135 + 12) = 2080;
            v138 = v137;
            v139 = [v132 identifier];
            v140 = v176;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v141 = v177;
            v142 = dispatch thunk of CustomStringConvertible.description.getter();
            v143 = v68;
            v145 = v144;
            (v178)(v140, v141);
            v146 = sub_1002FFA0C(v142, v145, &v180);
            v68 = v143;

            *(v135 + 14) = v146;
            _os_log_impl(&_mh_execute_header, v133, v134, "Got voucher (BT) %@ for %s", v135, 0x16u);
            sub_100075768(v173, &unk_100503F70, &unk_10040B2E0);

            sub_1000752F4(v174);
          }
        }

        [v68 setDelegate:v171];
        sub_100068FC4(&qword_100504060, &qword_10040B370);
        v147 = swift_allocObject();
        *(v147 + 16) = xmmword_100409E40;
        swift_beginAccess();
        v148 = *(v2 + 64);
        v149 = *(v2 + 72);
        v150 = sub_1000752B0((v2 + 40), v148);
        v151 = *(v148 - 8);
        v152 = *(v151 + 64);
        __chkstk_darwin(v150);
        v154 = v163 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v151 + 16))(v154);
        (*(v149 + 8))(v148, v149);
        (*(v151 + 8))(v154, v148);
        v155 = String._bridgeToObjectiveC()();

        v156 = [objc_opt_self() UUIDWithString:v155];

        *(v147 + 32) = v156;
        sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v68 discoverServices:isa];

        if ((*(v2 + 192) & 1) == 0)
        {
          v159 = *(v2 + 176);
          v158 = *(v2 + 184);
          v160 = *(v2 + 16);

          sub_1000F3B5C(v159, v158, 0, 0x100u, v160);
        }

        v7 = v167;
        if (qword_100501DA0 == -1)
        {
LABEL_90:
          v161 = v176;
          v162 = v177;
          (*(v168 + 16))(v176, *(v2 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v177);
          sub_100338184(v161);

          (v178)(v161, v162);

          return;
        }

LABEL_96:
        swift_once();
        goto LABEL_90;
      }

      break;
    }

    v66 = __CocoaSet.Iterator.next()();
    if (v66)
    {
      v182[1] = v66;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v2 = v188[0];
      i = v8;
      v65 = v58;
      if (v188[0])
      {
        goto LABEL_48;
      }
    }

LABEL_51:
    sub_100093854();

    v7 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
    v69 = v171;
    swift_beginAccess();
    v164 = *(v69 + v7);
    if ((v164 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v7 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      sub_1001081DC(&unk_100503E70, v70, type metadata accessor for DSKBLE.BLEConnectionRequest);
      Set.Iterator.init(_cocoa:)();
      v72 = v188[0];
      v71 = v188[1];
      v1 = v188[2];
      v2 = v188[3];
      v73 = v188[4];
    }

    else
    {
      v74 = -1 << *(v164 + 32);
      v71 = v164 + 56;
      v1 = ~v74;
      v75 = -v74;
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      else
      {
        v76 = -1;
      }

      v73 = v76 & *(v164 + 56);
      v72 = v164;
      swift_bridgeObjectRetain_n();
      v2 = 0;
    }

    v163[1] = v1;
    v11 = ((v1 + 64) >> 6);
    v173 = (v168 + 16);
    v174 = (v168 + 8);
    v172 = v71;
    for (j = v175; v72 < 0; v71 = v172)
    {
      v83 = __CocoaSet.Iterator.next()();
      if (!v83)
      {
        goto LABEL_69;
      }

      v182[0] = v83;
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      swift_dynamicCast();
      v82 = v180;
      v8 = v2;
      v80 = v73;
      if (!v180)
      {
        goto LABEL_69;
      }

LABEL_66:
      v169 = v2;
      v170 = v73;
      v178 = v82;
      v84 = v176;
      v85 = v177;
      (*v173)(v176, *(v82 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v177);
      v86 = [v179 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v1 = static UUID.== infix(_:_:)();
      v7 = v174;
      v87 = *v174;
      (*v174)(j, v85);
      v87(v84, v85);
      if (v1)
      {
        sub_100093854();

        v100 = v178;
        v101 = *(v178 + 16);
        v68 = v179;
        v102 = v179;

        v2 = sub_100111490(v102, 1, v100, v101);
        swift_beginAccess();
        swift_retain_n();
        sub_1000D730C(v182, v2);
        swift_endAccess();

        goto LABEL_74;
      }

      v2 = v8;
      v73 = v80;
    }

    v78 = v2;
    v79 = v73;
    v8 = v2;
    if (v73)
    {
LABEL_62:
      v80 = (v79 - 1) & v79;
      v81 = *(*(v72 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v79)))));

      if (v82)
      {
        goto LABEL_66;
      }

LABEL_69:
      sub_100093854();

      v88 = v179;
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v180 = v92;
        *v91 = 136315138;
        v93 = [v88 identifier];
        v94 = v176;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
        v95 = v177;
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v97;
        (*v174)(v94, v95);
        v99 = sub_1002FFA0C(v96, v98, &v180);

        *(v91 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v89, v90, "Cancelling connection to unknown peripheral %s", v91, 0xCu);
        sub_1000752F4(v92);
      }

      sub_1000EF154(v88);
      goto LABEL_72;
    }

    while (1)
    {
      v8 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        break;
      }

      if (v8 >= v11)
      {
        goto LABEL_69;
      }

      v79 = *(v71 + 8 * v8);
      ++v78;
      if (v79)
      {
        goto LABEL_62;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    swift_once();
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
  }
}