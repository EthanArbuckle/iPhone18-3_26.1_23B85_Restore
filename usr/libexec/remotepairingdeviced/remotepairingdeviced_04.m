void sub_1000669F8()
{
  sub_10006A3E4();
  v1 = v0;
  sub_100013414(v2, v3);
  v4 = *v0;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
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

      ++v17;
      if (*(v4 + 56 + 8 * v10))
      {
        sub_100040048();
        v14 = v19 & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v6;
    sub_10006A348();
  }
}

uint64_t sub_100066B28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100013414(&qword_10009BE20, &qword_100078B50);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
        v29 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        type metadata accessor for ControlChannelConnection();
        sub_10000D200(&unk_10009BE10, &type metadata accessor for ControlChannelConnection);

        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v6 + 48) + 8 * v22) = v17;
        ++*(v6 + 16);
        v3 = v28;
        v11 = v29;
        if (!v29)
        {
          goto LABEL_9;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
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

          v2 = v27;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v29 = (v16 - 1) & v16;
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

uint64_t sub_100066D9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100013414(&qword_10009B9F0, &qword_100078BD0);
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
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        Hasher.init(_seed:)();
        type metadata accessor for PairableHostsBrowseRegistration();
        sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration);

        HashableByObjectIdentity.hash(into:)();
        result = Hasher._finalize()();
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
        *(*(v6 + 48) + 8 * v21) = v16;
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

uint64_t sub_100067010(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100013414(&unk_10009BF20, &unk_100078BC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
        v29 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        type metadata accessor for BluetoothLEConnectionControlChannelTransport();
        sub_10000D200(&qword_10009BF10, &type metadata accessor for BluetoothLEConnectionControlChannelTransport);

        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v6 + 48) + 8 * v22) = v17;
        ++*(v6 + 16);
        v3 = v28;
        v11 = v29;
        if (!v29)
        {
          goto LABEL_9;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
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

          v2 = v27;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v29 = (v16 - 1) & v16;
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

uint64_t sub_100067284(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100013414(&qword_10009BE80, &unk_1000788B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
        v29 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        type metadata accessor for SystemXPCPeerConnection();
        sub_10000D200(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection);

        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v6 + 48) + 8 * v22) = v17;
        ++*(v6 + 16);
        v3 = v28;
        v11 = v29;
        if (!v29)
        {
          goto LABEL_9;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
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

          v2 = v27;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v29 = (v16 - 1) & v16;
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

uint64_t sub_1000674F8()
{
  v1 = v0;
  v2 = *v0;
  if ((*v0 & 0xC000000000000001) == 0)
  {
    v5 = *(v2 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for PairableHostsBrowseRegistration();
    sub_10000D3F4();
    sub_10000D200(v6, v7);
    HashableByObjectIdentity.hash(into:)();
    Hasher._finalize()();
    v8 = *(v2 + 32);
    sub_10006A00C();
    v11 = ~v10;
    while (1)
    {
      v12 = v9 & v11;
      if (((*(v2 + 56 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v2 + 48) + 8 * v12);

      v14 = static HashableByObjectIdentity.== infix(_:_:)();

      if (v14)
      {
        v15 = *v1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v1;
        v19 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000669F8();
          v17 = v19;
        }

        v4 = *(*(v17 + 48) + 8 * v12);
        sub_1000681FC(v12);
        *v1 = v19;
        return v4;
      }

      v9 = v12 + 1;
    }

    return 0;
  }

  sub_10006A374();

  v3 = __CocoaSet.contains(_:)();

  if ((v3 & 1) == 0)
  {

    return 0;
  }

  sub_10000D048();
  v4 = sub_100067BD4();

  return v4;
}

void sub_1000676B4()
{
  sub_10006A318();
  sub_10006A094();
  if (v2)
  {
    type metadata accessor for BluetoothLEConnectionControlChannelTransport();
    v4 = *(v1 + 40);
    sub_100069E98();
    sub_10000D200(v5, v6);
    sub_10006A030();
    sub_10000CC14();
    dispatch thunk of Hashable._rawHashValue(seed:)();
    sub_100069FB4();
    while (1)
    {
      sub_10000D4F8(v7);
      if ((v8 & 1) == 0)
      {
        break;
      }

      sub_10006A284();
      sub_100069E98();
      sub_10000D200(&qword_10009BF18, v9);
      if (sub_10006A0C8())
      {
        v10 = *v0;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *v0;
        v14 = *v0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000669F8();
          v12 = v14;
        }

        v13 = *(*(v12 + 48) + 8 * v4);
        sub_10000D6B4(v4, &type metadata accessor for BluetoothLEConnectionControlChannelTransport, &qword_10009BF10, &type metadata accessor for BluetoothLEConnectionControlChannelTransport);
        *v0 = v14;
        break;
      }

      v7 = v4 + 1;
    }
  }

  else
  {
    sub_10006A05C();

    v3 = __CocoaSet.contains(_:)();

    if (v3)
    {
      sub_10006A200();
      sub_100067D84();
    }

    else
    {
    }
  }

  sub_10006A330();
}

void sub_100067860()
{
  sub_10006A318();
  sub_10006A094();
  if (v2)
  {
    type metadata accessor for SystemXPCPeerConnection();
    v4 = *(v1 + 40);
    sub_10000EECC();
    sub_10000D200(v5, v6);
    sub_10006A030();
    sub_10000CC14();
    dispatch thunk of Hashable._rawHashValue(seed:)();
    sub_100069FB4();
    while (1)
    {
      sub_10000D4F8(v7);
      if ((v8 & 1) == 0)
      {
        break;
      }

      sub_10006A284();
      sub_10000EECC();
      sub_10000D200(&qword_10009B9E8, v9);
      if (sub_10006A0C8())
      {
        v10 = *v0;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *v0;
        v14 = *v0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000669F8();
          v12 = v14;
        }

        v13 = *(*(v12 + 48) + 8 * v4);
        sub_10000D6B4(v4, &type metadata accessor for SystemXPCPeerConnection, &unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection);
        *v0 = v14;
        break;
      }

      v7 = v4 + 1;
    }
  }

  else
  {
    sub_10006A05C();

    v3 = __CocoaSet.contains(_:)();

    if (v3)
    {
      sub_10006A200();
      sub_100067F9C();
    }

    else
    {
    }
  }

  sub_10006A330();
}

void sub_100067A0C()
{
  sub_10006A294();
  sub_10000D890();
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_100064DD0(v3, v2);
  v5 = *(v4 + 40);
  type metadata accessor for ControlChannelConnection();
  sub_10000D31C();
  sub_10000D200(v6, v7);

  dispatch thunk of Hashable._rawHashValue(seed:)();
  v8 = *(v4 + 32);
  sub_10006A00C();
  v11 = ~v10;
  while (1)
  {
    v12 = v9 & v11;
    if (((*(v4 + 56 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v11)) & 1) == 0)
    {
      break;
    }

    v16 = *(*(v4 + 48) + 8 * v12);
    sub_10000D31C();
    sub_10000D200(&qword_10009B9E0, v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {

      v17 = *(*(v4 + 48) + 8 * v12);
      sub_100069EC4();
      sub_10000D6B4(v12, v14, v15, &type metadata accessor for ControlChannelConnection);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        *v0 = v4;
        sub_100022960();
        return;
      }

      __break(1u);
      break;
    }

    v9 = v12 + 1;
  }

  __break(1u);
}

uint64_t sub_100067BD4()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_100064FE4(v4, v3);
  v14 = v5;
  v6 = *(v5 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for PairableHostsBrowseRegistration();
  sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration);

  HashableByObjectIdentity.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    v10 = *(*(v5 + 48) + 8 * v9);

    v11 = static HashableByObjectIdentity.== infix(_:_:)();

    if (v11)
    {

      v12 = *(*(v5 + 48) + 8 * v9);
      sub_1000681FC(v9);
      if (static HashableByObjectIdentity.== infix(_:_:)())
      {
        *v1 = v14;
        return v12;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100067D84()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_100065204(v3, v2);
  v11 = v4;
  v5 = *(v4 + 40);
  type metadata accessor for BluetoothLEConnectionControlChannelTransport();
  sub_10000D200(&qword_10009BF10, &type metadata accessor for BluetoothLEConnectionControlChannelTransport);

  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    v12 = *(*(v4 + 48) + 8 * v8);
    sub_10000D200(&qword_10009BF18, &type metadata accessor for BluetoothLEConnectionControlChannelTransport);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {

      v9 = *(*(v4 + 48) + 8 * v8);
      sub_10000D6B4(v8, &type metadata accessor for BluetoothLEConnectionControlChannelTransport, &qword_10009BF10, &type metadata accessor for BluetoothLEConnectionControlChannelTransport);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        *v0 = v11;
        return v9;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100067F9C()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_100065418(v3, v2);
  v11 = v4;
  v5 = *(v4 + 40);
  type metadata accessor for SystemXPCPeerConnection();
  sub_10000D200(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection);

  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    v12 = *(*(v4 + 48) + 8 * v8);
    sub_10000D200(&qword_10009B9E8, &type metadata accessor for SystemXPCPeerConnection);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {

      v9 = *(*(v4 + 48) + 8 * v8);
      sub_10000D6B4(v8, &type metadata accessor for SystemXPCPeerConnection, &unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        *v0 = v11;
        return v9;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000681FC(unint64_t result)
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
        type metadata accessor for PairableHostsBrowseRegistration();
        sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration);

        HashableByObjectIdentity.hash(into:)();
        v13 = Hasher._finalize()();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_15:
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

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10006889C()
{
  sub_10006A40C();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v7 = sub_10004FEF0(v5, v6);
  if (v8)
  {
    v9 = v7;
    v10 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v1;
    v12 = *(*v1 + 24);
    sub_100013414(&qword_10009BE60, &qword_100078B68);
    sub_10006A030();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
    v13 = *(*(v23 + 48) + 16 * v9 + 8);

    v14 = *(v23 + 56);
    v15 = type metadata accessor for XPCEventPublisher.Token();
    sub_10000CC04(v15);
    (*(v16 + 32))(v3, v14 + *(v16 + 72) * v9, v15);
    _NativeDictionary._delete(at:)();
    *v1 = v23;
  }

  else
  {
    type metadata accessor for XPCEventPublisher.Token();
  }

  sub_10006A3F8();

  return sub_1000223E8(v17, v18, v19, v20);
}

_OWORD *sub_100068B8C()
{
  sub_10006A3E4();
  v4 = v1;
  v8 = sub_10006A1C8(v5, v6, v7);
  sub_10000CCA4(v8, v9);
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  sub_100013414(&qword_10009B0C0, &unk_100077550);
  v15 = sub_10006A0A8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16))
  {
    v17 = *v1;
    sub_10004FEF0(v3, v2);
    sub_100069FCC();
    if (!v19)
    {
      goto LABEL_14;
    }

    v13 = v18;
  }

  v20 = *v4;
  if (v14)
  {
    v21 = *(v20 + 56) + 32 * v13;
    sub_10006A3AC();
    sub_10006A348();

    return sub_10000E8A4(v22, v23);
  }

  else
  {
    sub_100069968(v13, v3, v2, v0, v20);
    sub_10006A348();
  }
}

_OWORD *sub_100068C84(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  sub_10006A1F4(a1, a2);
  v6 = sub_100063FD8();
  sub_10000CCA4(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  sub_100013414(&qword_10009BE88, &unk_100078B90);
  v13 = sub_10000D660();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v14))
  {
    v15 = *v2;
    sub_100063FD8();
    sub_100069FCC();
    if (!v17)
    {
      goto LABEL_12;
    }

    v11 = v16;
  }

  v18 = *v3;
  if (v12)
  {
    v19 = v18[7] + 32 * v11;
    v20 = sub_10006A3AC();

    return sub_10000E8A4(v20, v21);
  }

  else
  {
    sub_100069E34(a2, v23);
    return sub_1000699C4(v11, v23, a1, v18);
  }
}

void sub_100068D98()
{
  sub_10000D060();
  sub_100069F2C(v1, v2);
  v3 = type metadata accessor for UUID();
  v4 = sub_10000CBBC(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000CBDC();
  sub_10006A080();
  sub_100064018();
  sub_10000CCA4(v7, v8);
  if (v10)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v11 = v9;
  sub_100013414(&qword_10009BE78, &unk_100078B80);
  if (sub_10006A150())
  {
    sub_10006A35C();
    sub_100064018();
    sub_10006A220();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v13 = *v0;
  if (v11)
  {
    sub_100069F48();
    sub_1000135A0();
  }

  else
  {
    v15 = sub_10006A06C();
    v16(v15);
    sub_10000D5CC();
    sub_10000D6A4();
    sub_100069A40(v17, v18, v19, v20, v21);
    sub_1000135A0();
  }
}

void sub_100068ECC()
{
  sub_10006A3E4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10006A1F4(v4, v2);
  v7 = sub_1000640E4(v6);
  sub_10000CCA4(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for SystemXPCPeerConnection();
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_100013414(&unk_10009BF40, &qword_100078BD8);
  v14 = sub_10000D660();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    v16 = *v0;
    sub_1000640E4(v3);
    sub_100069FCC();
    if (!v18)
    {
      goto LABEL_12;
    }

    v12 = v17;
  }

  v19 = *v1;
  if (v13)
  {
    *(v19[7] + v12) = v5 & 1;
    sub_10006A348();
  }

  else
  {
    sub_100069B00(v12, v3, v5 & 1, v19);
    sub_10006A348();
  }
}

uint64_t sub_100068FD0()
{
  sub_10006A3E4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10006A1F4(v4, v2);
  v7 = sub_1000640E4(v6);
  sub_10000CCA4(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for SystemXPCPeerConnection();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_100013414(&unk_10009BF00, &unk_100078BB0);
  v14 = sub_10000D660();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    v16 = *v0;
    sub_1000640E4(v3);
    sub_100069FCC();
    if (!v18)
    {
      goto LABEL_14;
    }

    v12 = v17;
  }

  v19 = *v1;
  if (v13)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v12);
    *(v20 + 8 * v12) = v5;
    sub_10006A348();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100069B44(v12, v3, v5, v19);
    sub_10006A348();
  }
}

void sub_1000690D0()
{
  sub_10000D060();
  sub_100069F2C(v1, v2);
  v3 = type metadata accessor for UUID();
  v4 = sub_10000CBBC(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000CBDC();
  sub_10006A080();
  sub_100064018();
  sub_10000CCA4(v7, v8);
  if (v10)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v11 = v9;
  sub_100013414(&qword_10009BE98, &unk_100078BA0);
  if (sub_10006A150())
  {
    sub_10006A35C();
    sub_100064018();
    sub_10006A220();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v13 = *v0;
  if (v11)
  {
    sub_100069F48();
    sub_1000135A0();
  }

  else
  {
    v15 = sub_10006A06C();
    v16(v15);
    sub_10000D5CC();
    sub_10000D6A4();
    sub_100069D40(v17, v18, v19, v20, v21);
    sub_1000135A0();
  }
}

_OWORD *sub_100069218()
{
  sub_10006A3E4();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = sub_100064190(v2);
  sub_10000CCA4(v5, v6);
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_100013414(&qword_10009BE90, &qword_100078468);
  v12 = sub_10000D660();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    goto LABEL_5;
  }

  v14 = *v1;
  v15 = sub_100064190(v3);
  if ((v11 & 1) != (v16 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v15;
LABEL_5:
  if (v11)
  {
    v17 = *(*v1 + 56) + 32 * v10;
    sub_10006A3AC();
    sub_10006A348();

    return sub_10000E8A4(v18, v19);
  }

  else
  {
    sub_10006A348();

    return sub_100069B88(v22, v23, v24, v25);
  }
}

void sub_100069330()
{
  sub_10000D060();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v35 = v8;
  v34 = type metadata accessor for UUID();
  v9 = sub_10000CBBC(v34);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000CBDC();
  v16 = v15 - v14;
  v17 = *v0;
  sub_100064018();
  sub_10000CCA4(v18, v19);
  if (v22)
  {
    __break(1u);
    goto LABEL_11;
  }

  v23 = v20;
  v24 = v21;
  sub_100013414(v4, v2);
  v25 = sub_10006A0A8();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v25, v26))
  {
    goto LABEL_5;
  }

  v27 = *v5;
  sub_100064018();
  if ((v24 & 1) != (v29 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v23 = v28;
LABEL_5:
  v30 = *v5;
  if (v24)
  {
    v31 = *(v30 + 56);
    v32 = *(v31 + 8 * v23);
    *(v31 + 8 * v23) = v35;
    sub_1000135A0();
  }

  else
  {
    (*(v11 + 16))(v16, v7, v34);
    sub_100069BF0(v23, v16, v35, v30);
    sub_1000135A0();
  }
}

uint64_t sub_1000694B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10006A3E4();
  v17 = sub_10006A1C8(v14, v15, v16);
  sub_10000CCA4(v17, v18);
  if (v21)
  {
    __break(1u);
    goto LABEL_13;
  }

  v22 = v19;
  v23 = v20;
  sub_100013414(&qword_10009BE60, &qword_100078B68);
  v24 = sub_10006A0A8();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v24, v25))
  {
    goto LABEL_5;
  }

  v26 = sub_10006A35C();
  v27 = sub_10004FEF0(v26, v12);
  if ((v23 & 1) != (v28 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v22 = v27;
LABEL_5:
  v29 = *v11;
  if (v23)
  {
    v30 = v29[7];
    v31 = type metadata accessor for XPCEventPublisher.Token();
    sub_10000CC04(v31);
    v33 = *(v32 + 40);
    v34 = v30 + *(v32 + 72) * v22;
    sub_10006A348();

    return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
  }

  else
  {
    sub_100069C90(v22, v13, v12, v10, v29);
    sub_10006A348();
  }
}

void sub_1000695E4()
{
  sub_10000D060();
  sub_100069F2C(v1, v2);
  v3 = type metadata accessor for XPCEventPublisher.Token();
  v4 = sub_10000CBBC(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000CBDC();
  sub_10006A080();
  sub_1000641D8();
  sub_10000CCA4(v7, v8);
  if (v10)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v11 = v9;
  sub_100013414(&qword_10009BE68, &qword_100078B70);
  if (sub_10006A150())
  {
    sub_10006A35C();
    sub_1000641D8();
    sub_10006A220();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v13 = *v0;
  if (v11)
  {
    sub_100069F48();
    sub_1000135A0();
  }

  else
  {
    v15 = sub_10006A06C();
    v16(v15);
    sub_10000D5CC();
    sub_10000D6A4();
    sub_100069D40(v17, v18, v19, v20, v21);
    sub_1000135A0();
  }
}

uint64_t sub_10006972C()
{
  sub_10006A3E4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10006A1F4(v6, v4);
  v10 = sub_10004FEF0(v8, v9);
  sub_10000CCA4(v10, v11);
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  sub_100013414(&qword_10009BE70, &qword_100078B78);
  v17 = sub_10006A0A8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v18))
  {
    v19 = *v0;
    sub_10004FEF0(v5, v3);
    sub_100069FCC();
    if (!v21)
    {
      goto LABEL_14;
    }

    v15 = v20;
  }

  v22 = *v1;
  if (v16)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v15);
    *(v23 + 8 * v15) = v7;
    sub_10006A348();
  }

  else
  {
    sub_100069DEC(v15, v5, v3, v7, v22);
    sub_10006A348();
  }
}

void sub_10006983C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10000C518(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_100013414(&qword_10009BE28, &qword_100078B58);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_10000C518(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {

    sub_100069B44(v14, a2, a1, v19);
  }
}

uint64_t sub_100069960()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000634C0();
}

_OWORD *sub_100069968(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100069FF4(a1, a5 + 8 * (a1 >> 6));
  v8 = (*(v7 + 48) + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  result = sub_10000E8A4(v11, (*(v7 + 56) + 32 * v6));
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

_OWORD *sub_1000699C4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000E8A4(a3, (a4[7] + 32 * a1));
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

uint64_t sub_100069A40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_100069B00(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
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

unint64_t sub_100069B44(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

_OWORD *sub_100069B88(unint64_t a1, int a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = sub_10000E8A4(a3, (a4[7] + 32 * a1));
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

uint64_t sub_100069BF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100069FF4(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  v10 = type metadata accessor for UUID();
  sub_10000CC04(v10);
  result = (*(v11 + 32))(v9 + *(v11 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  v13 = *(a4 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v15;
  }

  return result;
}

uint64_t sub_100069C90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for XPCEventPublisher.Token();
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

uint64_t sub_100069D40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100069FF4(a1, a5 + 8 * (a1 >> 6));
  v11 = *(v10 + 48);
  v13 = v12(0);
  sub_10000CC04(v13);
  result = (*(v14 + 32))(v11 + *(v14 + 72) * a1, a2);
  v16 = (*(a5 + 56) + 16 * a1);
  *v16 = a3;
  v16[1] = a4;
  v17 = *(a5 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v19;
  }

  return result;
}

unint64_t sub_100069DEC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_100069EDC()
{
  sub_10000ECF4(v2, v3);
  sub_10000ECF4(v2, v3);
  sub_10000ECF4(v1, v0);

  return sub_10000ECF4(v1, v0);
}

uint64_t sub_100069F48()
{
  v4 = (*(v0 + 56) + 16 * v2);
  result = v4[1];
  v6 = *(v3 - 88);
  *v4 = v1;
  v4[1] = v6;
  return result;
}

uint64_t sub_100069F80(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  return result;
}

BOOL sub_100069F94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t sub_10006A03C()
{
  v3 = *v0;
}

uint64_t sub_10006A0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = 0;
  *v11 = a11;
  return result;
}

uint64_t sub_10006A0C8()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_10006A0EC()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

void sub_10006A110(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_10006A130()
{

  return swift_dynamicCast();
}

BOOL sub_10006A150()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t sub_10006A170()
{

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

void sub_10006A190(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

unint64_t sub_10006A1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_10004FEF0(a2, a3);
}

uint64_t sub_10006A230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000223E8(v4, a2, 1, a4);

  return String.init<A>(describing:)();
}

uint64_t sub_10006A2C8()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_10006A2E0(void *a1)
{
  *(v1 - 112) = a1;

  return [a1 publicKey];
}

uint64_t sub_10006A2FC()
{
  *v0 = *(*(v1 + 48) + 8 * v2);
}

uint64_t sub_10006A374()
{
}

uint64_t sub_10006A394()
{
}

uint64_t sub_10006A3CC()
{
}

uint64_t sub_10006A420(uint64_t a1)
{
  v2 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  sub_10005775C(a1, &v12 - v4);
  v6 = type metadata accessor for Date();
  v7 = sub_100022484(v5, 1, v6);
  if (v7 == 1)
  {
    sub_100030708(v5, &unk_10009A8C0, &unk_100077D50);
    v8 = 0;
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    v10 = v9;
    (*(*(v6 - 8) + 8))(v5, v6);
    v8 = v10;
  }

  sub_10006AA24(v8, v7 == 1);
  return sub_100030708(a1, &unk_10009A8C0, &unk_100077D50);
}

uint64_t sub_10006A564@<X0>(uint64_t a1@<X8>)
{
  sub_10006A744();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    Date.init(timeIntervalSince1970:)();
    v3 = 0;
  }

  v4 = type metadata accessor for Date();

  return sub_1000223E8(a1, v3, 1, v4);
}

double sub_10006A5CC()
{
  v0 = 2592000.0;
  if (os_variant_allows_internal_security_policies())
  {
    v1 = static Defaults.pairingRecordExpiryInterval.getter();
    if ((v2 & 1) == 0)
    {
      v3 = v1;
      v0 = *&v1;
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(qword_10009CED0, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        *(v5 + 4) = v3;
        sub_10000D334(&_mh_execute_header, v6, v7, "Using custom pairing record expiry interval based on default: %f");
      }
    }
  }

  return v0;
}

double sub_10006A688()
{
  v0 = 86400.0;
  if (os_variant_allows_internal_security_policies())
  {
    UsedUpdate = static Defaults.pairingRecordLastUsedUpdateInterval.getter();
    if ((v2 & 1) == 0)
    {
      v3 = UsedUpdate;
      v0 = *&UsedUpdate;
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(qword_10009CED0, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        *(v5 + 4) = v3;
        sub_10000D334(&_mh_execute_header, v6, v7, "Using custom pairing record last used update interval based on default: %f");
      }
    }
  }

  return v0;
}

uint64_t sub_10006A744()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v22 - v12;
  v14 = sub_10003DD44(v1);
  if (!v14)
  {
    v24 = 0u;
    v25 = 0u;
    goto LABEL_6;
  }

  v15 = v14;
  v22[1] = 0xD000000000000016;
  v22[2] = 0x8000000100081930;
  AnyHashable.init<A>(_:)();
  sub_10004C5C0(v15, &v24);

  sub_10002269C(v23);
  if (!*(&v25 + 1))
  {
LABEL_6:
    sub_100030708(&v24, &qword_100099A00, &qword_100077540);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    return v23[0];
  }

LABEL_7:
  v17 = [v1 dateModified];
  if (v17)
  {
    v18 = v17;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  sub_1000223E8(v11, v19, 1, v2);
  sub_10006ABEC(v11, v13);
  if (sub_100022484(v13, 1, v2))
  {
    sub_100030708(v13, &unk_10009A8C0, &unk_100077D50);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v6, v13, v2);
    sub_100030708(v13, &unk_10009A8C0, &unk_100077D50);
    Date.timeIntervalSince1970.getter();
    v21 = v20;
    (*(v3 + 8))(v6, v2);
    return v21;
  }
}

void sub_10006AA24(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_10003DD44(v2);
  if (!v6)
  {
    v6 = Dictionary.init(dictionaryLiteral:)();
  }

  v7 = v6;
  *&v14 = 0xD000000000000016;
  *(&v14 + 1) = 0x8000000100081930;
  AnyHashable.init<A>(_:)();
  if (a2)
  {
    v8 = sub_100063FD8();
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13[0] = v7;
      v12 = v7[3];
      sub_100013414(&qword_10009BE88, &unk_100078B90);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
      sub_10002269C(v7[6] + 40 * v10);
      sub_10000E8A4((v7[7] + 32 * v10), &v14);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    sub_10002269C(v16);
    sub_100030708(&v14, &qword_100099A00, &qword_100077540);
  }

  else
  {
    *(&v15 + 1) = &type metadata for Double;
    *&v14 = a1;
    sub_10000E8A4(&v14, v13);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100068C84(v13, v16);
    sub_10002269C(v16);
  }

  sub_10006AC5C(v7, v3);
}

uint64_t sub_10006ABEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10006AC5C(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setInfo:isa];
}

uint64_t sub_10006ACDC()
{
  if (qword_100098EC0 != -1)
  {
    swift_once();
  }

  [qword_10009BF58 lock];
  v0 = byte_10009BF50;
  if (byte_10009BF50 == 2)
  {
    dlopen("/usr/lib/liblockdown.dylib", 2);
    sub_100013414(&qword_10009BF60, qword_100078BF0);
    v0 = Optional.isNil.getter() ^ 1;
    byte_10009BF50 = v0 & 1;
    if ((v0 & 1) == 0)
    {
      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
    }
  }

  [qword_10009BF58 unlock];
  return v0 & 1;
}

id sub_10006ADE0()
{
  result = [objc_allocWithZone(NSLock) init];
  qword_10009BF58 = result;
  return result;
}

uint64_t sub_10006AE14(uint64_t a1, uint64_t a2)
{
  v11[3] = &type metadata for Data;
  v11[4] = &protocol witness table for Data;
  v11[0] = a1;
  v11[1] = a2;
  v2 = sub_10001355C(v11, &type metadata for Data);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_1000728B0(v6, v7, &v10);
      goto LABEL_9;
    case 3uLL:
      memset(v9, 0, 14);
      v5 = v9;
      goto LABEL_5;
    default:
      v9[0] = *v2;
      LOWORD(v9[1]) = v4;
      BYTE2(v9[1]) = BYTE2(v4);
      BYTE3(v9[1]) = BYTE3(v4);
      BYTE4(v9[1]) = BYTE4(v4);
      BYTE5(v9[1]) = BYTE5(v4);
      v5 = v9 + BYTE6(v4);
LABEL_5:
      sub_10007270C(v9, v5, &v10);
LABEL_9:
      sub_10000CADC(v11);
      return sub_10000D4B0();
  }
}

uint64_t sub_10006AF94(uint64_t a1)
{
  v7 = sub_100013414(&qword_10009C0F0, &qword_100078DB0);
  v8 = sub_100035F9C(&qword_10009C0F8, &qword_10009C0F0, &qword_100078DB0);
  v6[0] = a1;
  v2 = sub_10001355C(v6, v7);
  sub_10007270C(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  sub_10000CADC(v6);
  return v3;
}

uint64_t sub_10006B064(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v3 = v4;
        goto LABEL_7;
      }

      __break(1u);
      break;
    case 2uLL:
      v2 = *(result + 24);
      result = *(result + 16);
      v3 = v2;
LABEL_7:
      result = sub_100072944(result, v3);
      break;
    default:
      result = sub_100072784();
      break;
  }

  return result;
}

uint64_t sub_10006B0F0(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v3 = v5;
      goto LABEL_6;
    case 2uLL:
      v2 = *(a1 + 24);
      a1 = *(a1 + 16);
      v3 = v2;
LABEL_6:
      result = sub_100072A68(a1, v3);
      break;
    default:
      result = Data._Representation.append(contentsOf:)();
      break;
  }

  return result;
}

uint64_t sub_10006B244()
{
  v1 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
  sub_100013414(&qword_100099A10, &unk_100077560);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_10006B2C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
  swift_beginAccess();
  v4 = *(v3 + 120);
  *a2 = *(v3 + 112);
  a2[1] = v4;
}

uint64_t sub_10006B324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
  swift_beginAccess();
  sub_100072690(a1 + v4, v18);
  v5 = v20;
  if (!v20)
  {
    sub_1000726C8(v18);
LABEL_7:
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_8;
  }

  v6 = sub_10001355C(v19, v20);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000CBDC();
  v11 = v10 - v9;
  (*(v7 + 16))(v10 - v9);
  sub_1000726C8(v18);
  dispatch thunk of AnyTunnelEndpoint.localTunnelInterface.getter();
  (*(v7 + 8))(v11, v5);
  if (!v22)
  {
    sub_100022560(v21, &qword_10009C138, &qword_100078DF8);
    goto LABEL_7;
  }

  sub_10001355C(v21, v22);
  dispatch thunk of TunnelInterface.address.getter();
  sub_10000CADC(v21);
  if (!*(&v24 + 1))
  {
LABEL_8:
    sub_100022560(&v23, &qword_10009C130, &qword_100078DF0);
    type metadata accessor for IPv6Address();
    sub_1000731F4();
    return sub_1000223E8(v13, v14, v15, v16);
  }

  sub_100010E18(&v23, v26);
  sub_100013414(&qword_10009C100, &qword_100078DB8);
  v12 = type metadata accessor for IPv6Address();
  swift_dynamicCast();
  v13 = a2;
  v14 = 0;
  v15 = 1;
  v16 = v12;
  return sub_1000223E8(v13, v14, v15, v16);
}

void sub_10006B578()
{
  sub_10000D060();
  v1 = v0;
  v49 = v2;
  v51 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v52 = v14;
  v47 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = sub_10000CC04(v47);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000CCB8();
  sub_10002F608();
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v19 = sub_10000CBBC(v18);
  v44 = v20;
  v45 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_10000CCB8();
  v46 = v23;
  sub_10002F608();
  v24 = type metadata accessor for DispatchQoS();
  v25 = sub_10000D368(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_10000CCB8();
  v28 = (v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state);
  bzero((v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state), 0xA0uLL);
  if (v9)
  {
    sub_10000CCD8();
    v29 = swift_allocObject();
    v29[2] = v11;
    v29[3] = v9;
    v29[4] = v7;
    sub_100073288();
    v31 = v28[16];
    v30 = v28[17];
    v28[16] = sub_1000730A0;
    v28[17] = v29;
    sub_100010E30(v9);
    v32 = v11;
    sub_10000FAC8(v31);
  }

  v48 = v9;
  sub_10000CCD8();
  v33 = swift_allocObject();
  v33[2] = v11;
  v33[3] = v5;
  v33[4] = v51;
  sub_100073288();
  v34 = v28[18];
  v35 = v28[19];
  v28[18] = sub_10007304C;
  v28[19] = v33;
  v36 = v11;

  sub_10000FAC8(v34);
  *(v1 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_initiator) = v13;
  v37 = OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_identifier;
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  (*(v39 + 16))(v1 + v37, v52, v38);
  v40 = v49;
  if (v49)
  {
    v41 = v13;

    sub_10000FAC8(v48);
  }

  else
  {
    sub_100035DCC();
    v50 = v13;
    static DispatchQoS.userInteractive.getter();
    (*(v44 + 104))(v46, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v45);
    sub_100073058(&qword_100099DB0, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100013414(&qword_10009A960, &unk_100077B40);
    sub_10000EEE4();
    sub_100035F9C(v42, v43, &unk_100077B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v40 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

    sub_10000FAC8(v48);
  }

  (*(v39 + 8))(v52, v38);
  *(v1 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue) = v40;
  sub_1000135A0();
}

uint64_t sub_10006B980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v27 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v24 = *(v10 - 8);
  v25 = v10;
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100013414(&qword_10009A908, &qword_100078DC0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v18 = &v23 - v17;
  sub_10003DE84(a1, &v23 - v17, &qword_10009A908, &qword_100078DC0);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v23;
  *(v20 + 24) = a4;
  sub_10003DED0(v18, v20 + v19, &qword_10009A908, &qword_100078DC0);
  aBlock[4] = sub_10003DF1C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_100091D70;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100073058(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100035F9C(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v9, v6);
  (*(v24 + 8))(v13, v25);
}

uint64_t sub_10006BD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a1;
  aBlock[4] = sub_10001AA18;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_100091DC0;
  v17 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100073058(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100035F9C(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v20);
}

void sub_10006BFF4()
{
  sub_10000D060();
  v47 = v2;
  v45 = v3;
  v46 = v4;
  v6 = v5;
  v44 = v7;
  v9 = v8;
  v11 = v10;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v12 = sub_10000CBBC(v51);
  v53 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10000CCB8();
  v49 = v16;
  sub_10002F608();
  v52 = type metadata accessor for DispatchQoS();
  v17 = sub_10000CBBC(v52);
  v50 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_10000CBDC();
  sub_10001ADE0();
  v21 = sub_100013414(&qword_10009C128, &unk_100078DE0);
  v22 = sub_10000CD78(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  v28 = &v44 - v27;
  v48 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
  sub_10003DE84(v6, &v44 - v27, &qword_10009C128, &unk_100078DE0);
  v29 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v30 = v29 + v26;
  v31 = swift_allocObject();
  *(v31 + 16) = v0;
  *(v31 + 24) = v11;
  *(v31 + 32) = v9;
  v32 = v9;
  v33 = v44;
  *(v31 + 40) = v44;
  sub_10003DED0(v28, v31 + v29, &qword_10009C128, &unk_100078DE0);
  v34 = (v31 + v30);
  v35 = v46;
  *v34 = v45;
  v34[1] = v35;
  *(v31 + ((v30 + 9) & 0xFFFFFFFFFFFFFFF8)) = v47;
  v55[4] = sub_100072F90;
  v55[5] = v31;
  sub_10001ACF4();
  sub_10001ACDC(COERCE_DOUBLE(1107296256));
  v55[2] = v36;
  v55[3] = &unk_100091CD0;
  v37 = _Block_copy(v55);

  sub_10000E228(v32, v33);

  static DispatchQoS.unspecified.getter();
  v54 = _swiftEmptyArrayStorage;
  sub_1000730E0();
  sub_100073058(v38, v39);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_10000EEE4();
  sub_100035F9C(v40, v41, &unk_100077350);
  v42 = v49;
  v43 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);
  (*(v53 + 8))(v42, v43);
  (*(v50 + 8))(v1, v52);

  sub_1000135A0();
}

uint64_t sub_10006C368()
{
  v1 = type metadata accessor for ZeroConnectionCancellationPolicy();
  v2 = sub_10000CBBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000CBDC();
  sub_10001ADE0();
  *v0 = 0x4024000000000000;
  (*(v4 + 104))(v0, enum case for ZeroConnectionCancellationPolicy.deferred(_:), v1);
  sub_10006F424();
  return (*(v4 + 8))(v0, v1);
}

void sub_10006C460()
{
  sub_10000D060();
  v1 = v0;
  v3 = v2;
  v4 = sub_100013414(&qword_10009B730, &unk_100078A80);
  sub_10000CBBC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = v3 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
  swift_beginAccess();
  sub_10003DE84(v12 + 40, &v24, &qword_10009C0A8, &unk_100078D70);
  if (v25)
  {
    sub_100010E18(&v24, v26);
    sub_10001355C(v26, v27);
    dispatch thunk of AnyTunnelEndpoint.serverInjectAdditionalConnection(_:preReadMessages:)();
LABEL_5:
    sub_10000CADC(v26);
    goto LABEL_6;
  }

  sub_100022560(&v24, &qword_10009C0A8, &unk_100078D70);
  v13 = static os_log_type_t.error.getter();
  v14 = qword_10009CED0;
  sub_100022260(v1, v26);
  if (!os_log_type_enabled(v14, v13))
  {
    goto LABEL_5;
  }

  v15 = swift_slowAlloc();
  *&v24 = swift_slowAlloc();
  *v15 = 136446466;
  v16 = UUID.uuidString.getter();
  v18 = sub_10000C600(v16, v17, &v24);

  *(v15 + 4) = v18;
  *(v15 + 12) = 2082;
  sub_10001355C(v26, v27);
  dispatch thunk of TunnelConnection.identifier.getter();
  v19 = Identifier.description.getter();
  v21 = v20;
  (*(v6 + 8))(v11, v4);
  sub_10000CADC(v26);
  v22 = sub_10000C600(v19, v21, &v24);

  *(v15 + 14) = v22;
  _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s: Unable to inject additional out of band connection %{public}s as we do not have an active endpoint", v15, 0x16u);
  swift_arrayDestroy();
  sub_10000D8D4();
  sub_10000D8D4();
LABEL_6:
  sub_1000135A0();
}

void sub_10006C704()
{
  sub_10000D060();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_10000CBBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v10 = v9 - v8;
  v23 = type metadata accessor for DispatchQoS();
  v11 = sub_10000CBBC(v23);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000CBDC();
  sub_10001ADE0();
  v22 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
  v24[4] = sub_100072F88;
  v25 = v0;
  sub_10001ACF4();
  sub_10001ACDC(COERCE_DOUBLE(1107296256));
  v24[2] = v16;
  v24[3] = &unk_100091C80;
  v17 = _Block_copy(v24);

  static DispatchQoS.unspecified.getter();
  sub_1000730E0();
  sub_100073058(v18, v19);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_10000EEE4();
  sub_100035F9C(v20, v21, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v5 + 8))(v10, v2);
  (*(v13 + 8))(v1, v23);

  sub_1000135A0();
}

void sub_10006C960()
{
  sub_10000D060();
  v184 = v1;
  v199 = v2;
  v200 = v3;
  v5 = v4;
  v198 = v6;
  v197 = *v0;
  v193 = type metadata accessor for DispatchTimeInterval();
  v7 = sub_10000CBBC(v193);
  v192 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_10000CCB8();
  sub_10000D9D8(v11);
  v195 = type metadata accessor for DispatchTime();
  v12 = sub_10000CBBC(v195);
  v194 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10000D2F8();
  sub_10000D984();
  __chkstk_darwin(v16);
  sub_100061F58();
  sub_10000D9D8(v17);
  v188 = type metadata accessor for DispatchWorkItemFlags();
  v18 = sub_10000CC04(v188);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10000CCB8();
  sub_10000D9D8(v21);
  v196 = type metadata accessor for RemotePairingError();
  v22 = sub_10000CBBC(v196);
  v185 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_10000D2F8();
  sub_10000D984();
  __chkstk_darwin(v26);
  sub_100061F58();
  sub_100073140(v27);
  v201 = sub_100013414(&qword_10009A908, &qword_100078DC0);
  sub_10000CC04(v201);
  v29 = *(v28 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v30);
  sub_10000D9D8(&v180 - v31);
  v32 = type metadata accessor for BonjourService();
  v33 = sub_10000CBBC(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_10000CBDC();
  v36 = type metadata accessor for NetworkParamsType();
  v37 = sub_10000CBBC(v36);
  v203 = v38;
  v204 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v37);
  sub_10000CCB8();
  v208 = v41;
  sub_10002F608();
  v42 = type metadata accessor for CertificateUtilities.RawTLSPublicKeyInfo();
  v43 = sub_10000CBBC(v42);
  v205 = v44;
  v206 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v43);
  sub_100073140(&v180 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __chkstk_darwin(v47);
  v50 = &v180 - v49;
  __chkstk_darwin(v48);
  sub_100061F58();
  v207 = v51;
  v210 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v52 = v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
  sub_100073288();
  v209 = v52;
  sub_10003DE84(v52, &v211, &qword_10009C0A0, &qword_100078D68);
  v53 = v214;
  sub_100022560(&v211, &qword_10009C0A0, &qword_100078D68);
  if (!v53)
  {
    static CertificateUtilities.createTLSRawPublicKey(with:)();
    v54 = *(v205 + 32);
    v183 = v205 + 32;
    v182 = v54;
    v54(v207, v50, v206);
    v55 = v200;
    v56 = Data.count.getter();
    v57 = v56;
    if (v56 == 32)
    {
      v72 = v208;
      *v208 = v5;
      v72[1] = v55;
      (*(v203 + 104))();
      v73 = OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_identifier;
      v74 = sub_10000D4B0();
      sub_10000E228(v74, v75);
      v200 = v73;
      UUID.uuidString.getter();
      v76 = sub_1000732A4();
      v77(v76);
      BonjourService.rawValue.getter();
      v78 = sub_10007320C();
      v79(v78);
      sub_100073200();
      v80 = String.utf8CString.getter();

      v81 = String.utf8CString.getter();

      bonjour_service = nw_advertise_descriptor_create_bonjour_service((v80 + 32), (v81 + 32), 0);

      if (!bonjour_service)
      {
        v136 = static os_log_type_t.error.getter();
        v137 = os_log_type_enabled(qword_10009CED0, v136);
        v138 = v209;
        if (v137)
        {
          sub_10000D030();
          v139 = sub_100073248();
          v211 = v139;
          *v32 = 136446210;
          v140 = UUID.uuidString.getter();
          v142 = sub_10000C600(v140, v141, &v211);

          *(v32 + 4) = v142;
          sub_10000D624(&_mh_execute_header, v143, v136, "%{public}s: Unable to create network listener service for Tunnel connection");
          sub_10000CADC(v139);
          sub_10000EB64();
          sub_10000D8D4();
        }

        v144 = v138[16];
        if (v144)
        {
          v145 = v138[17];
          sub_100073110();
          v147 = sub_100073058(v146, v32);

          sub_100073224();
          sub_10000D5D8(&qword_100099850);
          sub_1000732E4();
          sub_100073264();
          sub_100073160();
          v144(v147);
          v148 = sub_100073200();
          sub_10000FAC8(v148);
          sub_100022560(v147, &qword_10009A908, &qword_100078DC0);
          v149 = v138[16];
        }

        else
        {
          v149 = 0;
        }

        v177 = v138[17];
        v138[16] = 0;
        v138[17] = 0;
        sub_10000FAC8(v149);
        OS_dispatch_queue.assertOnQueueHierarchy()();
        goto LABEL_29;
      }
    }

    else
    {
      v181 = v56;
      v58 = sub_10000D4B0();
      sub_10000E228(v58, v59);
      v60 = CertificateUtilities.RawTLSPublicKeyInfo.publicKeyDERData.getter();
      v62 = v61;
      v63 = CertificateUtilities.RawTLSPublicKeyInfo.identity.getter();
      v64 = v208;
      *v208 = v5;
      v64[1] = v55;
      v64[2] = v60;
      v64[3] = v62;
      v64[4] = v63;
      (*(v203 + 104))(v64, enum case for NetworkParamsType.quic(_:), v204);
      UUID.uuidString.getter();
      v65 = sub_1000732A4();
      v66(v65);
      BonjourService.rawValue.getter();
      v67 = sub_10007320C();
      v68(v67);
      sub_100073200();
      v69 = String.utf8CString.getter();

      v70 = String.utf8CString.getter();

      bonjour_service = nw_advertise_descriptor_create_bonjour_service((v69 + 32), (v70 + 32), 0);

      if (!bonjour_service)
      {
        v122 = static os_log_type_t.error.getter();
        v123 = os_log_type_enabled(qword_10009CED0, v122);
        v124 = v209;
        if (v123)
        {
          sub_10000D030();
          v125 = sub_100073248();
          v211 = v125;
          *v32 = 136446210;
          v126 = UUID.uuidString.getter();
          v128 = sub_10000C600(v126, v127, &v211);

          *(v32 + 4) = v128;
          sub_10000D624(&_mh_execute_header, v129, v122, "%{public}s: Unable to create network listener service for Tunnel connection");
          sub_10000CADC(v125);
          sub_10000EB64();
          sub_10000D8D4();
        }

        v130 = v124[16];
        if (v130)
        {
          v131 = v124[17];
          sub_100073110();
          v133 = sub_100073058(v132, v32);

          sub_100073224();
          sub_10000D5D8(&qword_100099850);
          sub_1000732E4();
          sub_100073264();
          sub_100073160();
          v130(v133);
          v134 = sub_100073200();
          sub_10000FAC8(v134);
          sub_100022560(v133, &qword_10009A908, &qword_100078DC0);
          v135 = v124[16];
        }

        else
        {
          v135 = 0;
        }

        v173 = v207;
        v174 = v124[17];
        v124[16] = 0;
        v124[17] = 0;
        sub_10000FAC8(v135);
        OS_dispatch_queue.assertOnQueueHierarchy()();
        v175 = sub_1000731E4();
        v176(v175);
        (*(v205 + 8))(v173, v206);
        goto LABEL_30;
      }

      v57 = v181;
    }

    v82 = v199 & 1;
    sub_10006DC70(v208, v198 & 1, v199 & 1);
    v83 = NWParameters.nw.getter();

    v84 = nw_listener_create(v83);
    swift_unknownObjectRelease();
    if (v84)
    {
      v85 = type metadata accessor for NWObjcListener();
      swift_allocObject();
      v86 = sub_1000401A8(v84, v57 != 32);
      v214 = v85;
      v215 = &off_100090338;
      v211 = v86;
      v87 = v209;
      swift_beginAccess();
      swift_unknownObjectRetain();

      sub_100072F3C(&v211, v87, &qword_10009C0A0, &qword_100078D68);
      swift_endAccess();
      v88 = v210;
      OS_dispatch_queue.assertOnQueueHierarchy()();
      v89 = v86[4];
      v202 = bonjour_service;
      nw_listener_set_advertise_descriptor(v89, bonjour_service);
      sub_10000CBD0();
      v90 = swift_allocObject();
      swift_weakInit();
      v91 = swift_allocObject();
      *(v91 + 16) = v90;
      *(v91 + 24) = v82;

      sub_1000401BC(v88, sub_100072C04, v91);

      v92 = v207;

      sub_10000CBD0();
      v93 = swift_allocObject();
      swift_weakInit();
      v94 = v206;
      v95 = v205 + 16;
      v96 = v187;
      (*(v205 + 16))(v187, v92, v206);
      v97 = (*(v95 + 64) + 24) & ~*(v95 + 64);
      v98 = swift_allocObject();
      *(v98 + 16) = v93;
      v182(v98 + v97, v96, v94);

      sub_10004030C(v88, sub_100072C14, v98);

      v99 = static os_log_type_t.default.getter();
      v100 = powerLog.getter();
      if (os_log_type_enabled(v100, v99))
      {
        v101 = swift_slowAlloc();
        v217[0] = swift_slowAlloc();
        *v101 = 136446466;
        v102 = UUID.uuidString.getter();
        v104 = sub_10000C600(v102, v103, v217);

        *(v101 + 4) = v104;
        *(v101 + 12) = 2082;
        if (v184)
        {
          type metadata accessor for PeerConnectionInfo();
          v105 = Array.description.getter();
        }

        else
        {
          v105 = 0;
          v106 = 0;
        }

        v211 = v105;
        v212 = v106;
        sub_100013414(&qword_100099A10, &unk_100077560);
        v151 = String.init<A>(describing:)();
        v153 = sub_10000C600(v151, v152, v217);

        *(v101 + 14) = v153;
        _os_log_impl(&_mh_execute_header, v100, v99, "%{public}s: Starting a tunnel listener due to a request from :%{public}s", v101, 0x16u);
        swift_arrayDestroy();
        sub_10000D8D4();
        sub_10000EB64();
      }

      sub_10000CBD0();
      v154 = swift_allocObject();
      swift_weakInit();
      v215 = sub_100072C84;
      v216 = v154;
      v211 = _NSConcreteStackBlock;
      v212 = 1107296256;
      v213 = sub_100050100;
      v214 = &unk_100091BE0;
      _Block_copy(&v211);
      v217[0] = _swiftEmptyArrayStorage;
      sub_1000730E0();
      sub_100073058(v155, v156);

      sub_100013414(&unk_100099840, &unk_100077350);
      sub_10000EEE4();
      sub_100035F9C(v157, v158, &unk_100077350);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v159 = type metadata accessor for DispatchWorkItem();
      v160 = *(v159 + 48);
      v161 = *(v159 + 52);
      swift_allocObject();
      v162 = DispatchWorkItem.init(flags:block:)();

      v163 = v209[12];
      v209[12] = v162;

      OS_dispatch_queue.assertOnQueueHierarchy()();
      v164 = v189;
      static DispatchTime.now()();
      v165 = v190;
      *v190 = 15;
      v166 = v192;
      v167 = v193;
      (*(v192 + 104))(v165, enum case for DispatchTimeInterval.seconds(_:), v193);
      v168 = v191;
      + infix(_:_:)();
      (*(v166 + 8))(v165, v167);
      v169 = *(v194 + 8);
      v170 = v195;
      v169(v164, v195);
      OS_dispatch_queue.asyncAfter(deadline:execute:)();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      v169(v168, v170);
      v171 = sub_1000731E4();
      v172(v171);
      (*(v205 + 8))(v92, v206);
      goto LABEL_30;
    }

    sub_1000730F8();
    sub_100073058(v107, v108);
    v109 = v196;
    static Error<>.networkingError.getter();
    v110 = v186;
    Error<>.init(_:_:)();
    v111 = v209;
    v113 = v209 + 16;
    v112 = v209[16];
    if (v112)
    {
      v114 = v209[17];
      sub_1000730F8();
      sub_100073058(v115, v116);
      swift_allocError();
      v117 = v185;
      (*(v185 + 16))(v118, v110, v109);
      sub_10000D40C();

      v112(v110);
      v119 = sub_10000D4B0();
      sub_10000FAC8(v119);
      v120 = v110;
      v110 = v186;
      sub_100022560(v120, &qword_10009A908, &qword_100078DC0);
      v121 = v111[16];
    }

    else
    {
      v121 = 0;
      v117 = v185;
    }

    v150 = v111[17];
    *v113 = 0;
    v113[1] = 0;
    sub_10000FAC8(v121);
    OS_dispatch_queue.assertOnQueueHierarchy()();
    swift_unknownObjectRelease();
    (*(v117 + 8))(v110, v109);
LABEL_29:
    v178 = sub_1000731E4();
    v179(v178);
    (*(v205 + 8))(v207, v206);
LABEL_30:
    sub_1000135A0();
    return;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10006DC70(uint64_t a1, int a2, int a3)
{
  v57 = a2;
  v58 = a3;
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NetworkParamsType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 != enum case for NetworkParamsType.quic(_:))
  {
    if (v14 == enum case for NetworkParamsType.tcp(_:))
    {
      (*(v10 + 96))(v13, v9);
      v27 = *v13;
      v28 = v13[1];
      static os_log_type_t.default.getter();
      v56 = qword_10009CED0;
      os_log(_:dso:log:_:_:)();
      v29 = sub_10006B064(v27, v28);
      static String.Encoding.utf8.getter();
      v30 = String.data(using:allowLossyConversion:)();
      v32 = v31;
      (*(v5 + 8))(v8, v4);
      if (v32 >> 60 != 15)
      {
        v33 = sub_10006B064(v30, v32);
        sub_10000ECF4(v30, v32);
        v34 = type metadata accessor for NWProtocolTLS.Options();
        v35 = *(v34 + 48);
        v36 = *(v34 + 52);
        swift_allocObject();
        NWProtocolTLS.Options.init()();
        v37 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
        sec_protocol_options_add_pre_shared_key(v37, v29, v33);
        swift_unknownObjectRelease();
        v38 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
        sec_protocol_options_set_min_tls_protocol_version(v38, tls_protocol_version_TLSv12);
        swift_unknownObjectRelease();
        v39 = type metadata accessor for NWProtocolTCP.Options();
        v40 = *(v39 + 48);
        v41 = *(v39 + 52);
        swift_allocObject();
        NWProtocolTCP.Options.init()();
        dispatch thunk of NWProtocolTCP.Options.connectionTimeout.setter();
        dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
        dispatch thunk of NWProtocolTCP.Options.keepaliveCount.setter();
        dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
        dispatch thunk of NWProtocolTCP.Options.keepaliveInterval.setter();
        type metadata accessor for NWParameters();
        v26 = NWParameters.__allocating_init(tls:tcp:)();

        sub_10000DF50(v27, v28);
        goto LABEL_6;
      }

      __break(1u);
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v10 + 96))(v13, v9);
  v15 = *v13;
  v16 = v13[1];
  v17 = v13[2];
  v18 = v13[3];
  v55 = v13[4];
  v19 = v55;
  static os_log_type_t.default.getter();
  v56 = qword_10009CED0;
  os_log(_:dso:log:_:_:)();
  type metadata accessor for NWProtocolQUIC.Options();
  NWProtocolQUIC.Options.__allocating_init(alpn:)();
  dispatch thunk of NWProtocolQUIC.Options.maxDatagramFrameSize.setter();
  dispatch thunk of NWProtocolQUIC.Options.initialPacketSize.setter();
  dispatch thunk of NWProtocolQUIC.Options.initialMaxStreamsUnidirectional.setter();
  dispatch thunk of NWProtocolQUIC.Options.initialMaxStreamsBidirectional.setter();
  v20 = dispatch thunk of NWProtocolQUIC.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_local_identity(v20, v19);
  swift_unknownObjectRelease();
  dispatch thunk of NWProtocolQUIC.Options.securityProtocolOptions.getter();
  sub_100013414(&qword_10009C120, &qword_100078DD8);
  v21 = swift_allocObject();
  v54 = xmmword_100077360;
  *(v21 + 16) = xmmword_100077360;
  *(v21 + 32) = v17;
  *(v21 + 40) = v18;
  sub_10000E228(v17, v18);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sec_protocol_options_set_server_raw_public_key_certificates();
  swift_unknownObjectRelease();

  dispatch thunk of NWProtocolQUIC.Options.securityProtocolOptions.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v54;
  *(v23 + 32) = v15;
  *(v23 + 40) = v16;
  sub_10000E228(v15, v16);
  v24 = Array._bridgeToObjectiveC()().super.isa;

  sec_protocol_options_set_client_raw_public_key_certificates();
  swift_unknownObjectRelease();

  v25 = dispatch thunk of NWProtocolQUIC.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_peer_authentication_required(v25, 1);
  swift_unknownObjectRelease();
  type metadata accessor for NWParameters();
  v26 = NWParameters.__allocating_init(quic:)();
  sub_10000DF50(v17, v18);
  sub_10000DF50(v15, v16);
  swift_unknownObjectRelease();
LABEL_6:
  if (v57)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v42 = NWParameters.nw.getter();
    nw_parameters_set_include_peer_to_peer(v42, 1);
    swift_unknownObjectRelease();
  }

  sub_100013414(&qword_10009C118, &qword_100078DD0);
  v43 = type metadata accessor for NWInterface.InterfaceType();
  v44 = *(v43 - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100077360;
  v48 = enum case for NWInterface.InterfaceType.cellular(_:);
  v49 = *(v44 + 104);
  v49(v47 + v46, enum case for NWInterface.InterfaceType.cellular(_:), v43);
  NWParameters.prohibitedInterfaceTypes.setter();
  NWParameters.nw.getter();
  nw_parameters_set_no_wake_from_sleep();
  swift_unknownObjectRelease();
  if (v58)
  {
    v50 = NWParameters.nw.getter();
    nw_parameters_set_local_only(v50, 1);
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100077390;
    v52 = v51 + v46;
    v49(v51 + v46, v48, v43);
    v49(v52 + v45, enum case for NWInterface.InterfaceType.loopback(_:), v43);
    NWParameters.prohibitedInterfaceTypes.setter();
  }

  return v26;
}

uint64_t sub_10006E380(uint64_t a1, char a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (a2)
    {
      v8 = type metadata accessor for NWQUICTunnelConnection(0);
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = swift_unknownObjectRetain();
      v12 = sub_100051658(v11, a4 & 1, 0);
      sub_100072DE0(v12, v7);
    }

    else
    {
      v13 = type metadata accessor for NWObjcTunnelConnectionWrapper(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = swift_unknownObjectRetain();
      v17 = sub_1000502DC(v16, a4 & 1, 0);
      sub_100072C8C(v17, v7);
    }
  }

  return result;
}

uint64_t sub_10006E46C(uint64_t a1)
{
  v2 = sub_100013414(&qword_10009A908, &qword_100078DC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v41 - v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if ((a1 & 0x8000000000000000) == 0)
    {
      v44 = v2;
      v8 = result + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
      swift_beginAccess();
      v9 = *(v8 + 128);
      if (v9)
      {
        v10 = *(v8 + 136);

        CertificateUtilities.RawTLSPublicKeyInfo.publicKeyDERData.getter();
        UUID.uuidString.getter();
        ListenerStartedResponse.init(port:deviceRawPublicKey:serviceName:)();
        swift_storeEnumTagMultiPayload();
        v9(v5);
        sub_10000FAC8(v9);
        sub_100022560(v5, &qword_10009A908, &qword_100078DC0);
        v11 = *(v8 + 128);
      }

      else
      {
        v11 = 0;
      }

      v30 = *(v8 + 136);
      *(v8 + 128) = 0;
      *(v8 + 136) = 0;
      sub_10000FAC8(v11);
      v31 = *(v7 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
      OS_dispatch_queue.assertOnQueueHierarchy()();
    }

    v12 = a1 & 0x7FFFFFFFFFFFFFFFLL;
    v13 = result + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
    swift_beginAccess();
    v14 = *(v13 + 128);
    if (!v14)
    {
      v32 = static os_log_type_t.error.getter();
      v33 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v32))
      {
        v34 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v34 = 136446466;
        v35 = UUID.uuidString.getter();
        v37 = sub_10000C600(v35, v36, &v46);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2082;
        v45 = v12;
        swift_errorRetain();
        sub_100013414(&unk_10009A930, &unk_100077080);
        v38 = String.init<A>(describing:)();
        v40 = sub_10000C600(v38, v39, &v46);

        *(v34 + 14) = v40;
        _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s: Tunnel listener stopped due to error: %{public}s", v34, 0x16u);
        swift_arrayDestroy();
      }
    }

    v15 = *(v13 + 136);

    v16 = static os_log_type_t.error.getter();
    v17 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v16))
    {
      v18 = swift_slowAlloc();
      v44 = v12;
      v19 = v18;
      v42 = swift_slowAlloc();
      v46 = v42;
      *v19 = 136446466;
      HIDWORD(v41) = v16;
      v20 = UUID.uuidString.getter();
      v22 = sub_10000C600(v20, v21, &v46);
      v43 = v15;
      v23 = v22;

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v45 = v44;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v24 = String.init<A>(describing:)();
      v26 = sub_10000C600(v24, v25, &v46);

      *(v19 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v17, BYTE4(v41), "%{public}s: Tunnel listener stopped before it became ready. Publishing error to caller: %{public}s", v19, 0x16u);
      swift_arrayDestroy();

      v12 = v44;
    }

    *v5 = v12;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v14(v5);
    sub_100022560(v5, &qword_10009A908, &qword_100078DC0);
    v27 = *(v13 + 128);
    v28 = *(v13 + 136);
    *(v13 + 128) = 0;
    *(v13 + 136) = 0;
    sub_10000FAC8(v27);
    v29 = *(v7 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
    OS_dispatch_queue.assertOnQueueHierarchy()();

    return sub_10000FAC8(v14);
  }

  return result;
}

uint64_t sub_10006E948()
{
  v0 = type metadata accessor for RemotePairingError();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = static os_log_type_t.error.getter();
    v4 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      v7 = UUID.uuidString.getter();
      v9 = sub_10000C600(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v4, v3, "%{public}s: Tunnel tunnelListenerTimeout", v5, 0xCu);
      sub_10000CADC(v6);
    }

    static RemotePairingError.tunnelError.getter();
    sub_100073058(&qword_100099850, &type metadata accessor for RemotePairingError);
    v10 = swift_allocError();
    sub_100073058(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
    Error<>.init(_:_:)();
    sub_100071E98(v10);
  }

  return result;
}

uint64_t sub_10006EB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ZeroConnectionCancellationPolicy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for TunnelConnectionState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    swift_beginAccess();
    sub_10003DE84(a3 + 16, &v58, &qword_10009C108, &qword_100078DC8);
    if (!v59)
    {

      sub_100022560(&v58, &qword_10009C108, &qword_100078DC8);
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      swift_beginAccess();
      v27 = a3 + 16;
      return sub_100072F3C(&v60, v27, &qword_10009C108, &qword_100078DC8);
    }

    sub_100010E18(&v58, &v60);
    (*(v11 + 16))(v14, a1, v10);
    v17 = (*(v11 + 88))(v14, v10);
    if (v17 == enum case for TunnelConnectionState.ready(_:))
    {
      v18 = v16 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
      swift_beginAccess();
      sub_10003DE84(v18 + 40, &v56, &qword_10009C0A8, &unk_100078D70);
      if (!v57)
      {
        sub_100022560(&v56, &qword_10009C0A8, &unk_100078D70);
        v38 = static os_log_type_t.default.getter();
        v39 = qword_10009CED0;
        if (os_log_type_enabled(qword_10009CED0, v38))
        {
          v40 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *&v58 = v55;
          *v40 = 136446210;
          v54 = v38;
          v41 = UUID.uuidString.getter();
          v43 = sub_10000C600(v41, v42, &v58);

          *(v40 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v39, v54, "%{public}s: Initial connection completed setup. Proceeding to create tunnel", v40, 0xCu);
          sub_10000CADC(v55);
        }

        (*(v6 + 104))(v9, enum case for ZeroConnectionCancellationPolicy.immediate(_:), v5);
        sub_10006F424();
        (*(v6 + 8))(v9, v5);
        if (*(v18 + 96))
        {
          v44 = *(v18 + 96);

          dispatch thunk of DispatchWorkItem.cancel()();

          v45 = *(v18 + 96);
        }

        *(v18 + 96) = 0;

        v52 = *(v16 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
        OS_dispatch_queue.assertOnQueueHierarchy()();
        sub_10000CADC(&v60);

        goto LABEL_22;
      }

      sub_100010E18(&v56, &v58);
      v19 = static os_log_type_t.default.getter();
      v20 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v56 = v22;
        *v21 = 136446210;
        v23 = UUID.uuidString.getter();
        v25 = sub_10000C600(v23, v24, &v56);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v20, v19, "%{public}s: Additional connection completed setup. Injecting into tunnel", v21, 0xCu);
        sub_10000CADC(v22);
      }

      sub_10001355C(&v58, v59);
      dispatch thunk of AnyTunnelEndpoint.serverInjectAdditionalConnection(_:preReadMessages:)();

      sub_10000CADC(&v60);
      v26 = &v58;
    }

    else
    {
      if (v17 != enum case for TunnelConnectionState.stopped(_:))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v28 = v16 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
      swift_beginAccess();
      sub_10003DE84(v28 + 40, &v58, &qword_10009C0A8, &unk_100078D70);
      v29 = v59;
      sub_100022560(&v58, &qword_10009C0A8, &unk_100078D70);
      v30 = static os_log_type_t.default.getter();
      v31 = qword_10009CED0;
      v32 = os_log_type_enabled(qword_10009CED0, v30);
      if (v29)
      {
        if (v32)
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *&v58 = v34;
          *v33 = 136446210;
          v35 = UUID.uuidString.getter();
          v37 = sub_10000C600(v35, v36, &v58);

          *(v33 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v31, v30, "%{public}s: Not tearing down tunnel on connection failure since endpoint is up and running and will handle failure", v33, 0xCu);
          sub_10000CADC(v34);
        }
      }

      else
      {
        if (v32)
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *&v58 = v47;
          *v46 = 136446210;
          v48 = UUID.uuidString.getter();
          v50 = sub_10000C600(v48, v49, &v58);

          *(v46 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v31, v30, "%{public}s: Tearing down tunnel on connection failure since endpoint is nil", v46, 0xCu);
          sub_10000CADC(v47);
        }

        type metadata accessor for RemotePairingError();
        sub_100073058(&qword_100099850, &type metadata accessor for RemotePairingError);
        v51 = swift_allocError();
        sub_100073058(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
        static Error<>.networkingError.getter();
        sub_100071E98(v51);
      }

      v26 = &v60;
    }

    sub_10000CADC(v26);
LABEL_22:
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    swift_beginAccess();
    v27 = a3 + 16;
    return sub_100072F3C(&v60, v27, &qword_10009C108, &qword_100078DC8);
  }

  return result;
}

void sub_10006F424()
{
  sub_10000D060();
  v1 = v0;
  v120 = v2;
  v119 = v3;
  v128 = v4;
  v115 = type metadata accessor for TunnelInterfaceParameters();
  v5 = sub_10000CBBC(v115);
  v114 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000CCB8();
  sub_100073140(v9);
  v10 = sub_100013414(&qword_10009C0B0, &unk_100078D80);
  sub_10000D368(v10);
  v12 = *(v11 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v13);
  sub_100073140(&v109 - v14);
  v15 = sub_100013414(&qword_10009BC88, &qword_100078A68);
  v16 = sub_10000D368(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000D2F8();
  sub_10000D984();
  __chkstk_darwin(v19);
  sub_1000732B8();
  sub_10000D984();
  __chkstk_darwin(v20);
  sub_100061F58();
  sub_10000D9D8(v21);
  v122 = type metadata accessor for IPv6Address();
  v22 = sub_10000CBBC(v122);
  v130 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_10000D2F8();
  sub_10000D984();
  __chkstk_darwin(v26);
  sub_1000732B8();
  sub_10000D984();
  __chkstk_darwin(v27);
  sub_1000732B8();
  sub_10000D984();
  __chkstk_darwin(v28);
  sub_1000732B8();
  sub_10000D984();
  __chkstk_darwin(v29);
  sub_100061F58();
  v129 = v30;
  sub_10002F608();
  v31 = type metadata accessor for ZeroConnectionCancellationPolicy();
  v32 = sub_10000CBBC(v31);
  v118 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_10000CBDC();
  v36 = sub_100013414(&qword_10009C0B8, &qword_100078D90);
  sub_10000D368(v36);
  v38 = *(v37 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v39);
  v40 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  type metadata accessor for SystemXPCConnection();
  v41 = static SystemXPCConnection.connectionToMachService(name:privilegedService:targetQueue:)();
  v43 = v42;
  v44 = v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
  swift_beginAccess();
  v45 = *(v44 + 80);
  *(v44 + 80) = v41;
  *(v44 + 88) = v43;

  OS_dispatch_queue.assertOnQueueHierarchy()();
  v46 = *v41;

  v110 = v43;
  dispatch thunk of XPCPeerConnection.setEventHandler(_:)();

  dispatch thunk of XPCConnection.activate()();
  v111 = v41;

  LOBYTE(v41) = static Defaults.tunnelUseSkywalk.getter();
  v127 = v1;
  UUID.uuidString.getter();
  sub_100022260(v128, v134);
  type metadata accessor for TunnelConnectionPriority();
  sub_1000731F4();
  sub_1000223E8(v47, v48, v49, v50);
  v51 = sub_10000D670();
  v52(v51);
  if (v41)
  {
    v53 = sub_100013414(&qword_10009C0D0, &unk_100078DA0);
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    v56 = v40;
    sub_1000732C4();
    v57 = sub_1000731B8();
    sub_100073128();
    v59 = &qword_10009C0D0;
    v60 = &unk_100078DA0;
  }

  else
  {
    v53 = sub_100013414(&qword_10009C0C0, &qword_100078D98);
    v61 = *(v53 + 48);
    v62 = *(v53 + 52);
    swift_allocObject();
    v63 = v40;
    sub_1000732C4();
    v57 = sub_1000731B8();
    sub_100073128();
    v59 = &qword_10009C0C0;
    v60 = &qword_100078D98;
  }

  v64 = sub_100035F9C(v58, v59, v60);
  v135 = v53;
  v136 = v64;
  v134[0] = v57;
  sub_100022260(v134, v133);
  swift_beginAccess();
  sub_100072F3C(v133, v44 + 40, &qword_10009C0A8, &unk_100078D70);
  swift_endAccess();
  OS_dispatch_queue.assertOnQueueHierarchy()();
  sub_100022260(v134, v133);
  v65 = swift_allocObject();
  *(v65 + 16) = v127;
  v120 = v65;
  sub_100010E18(v133, v65 + 24);

  v66 = static Data.randomBytes(ofLength:)();
  v68 = v67;
  v131 = sub_10006AF94(&off_10008EB38);
  v132 = v69;
  sub_10000E228(v131, v69);
  v119 = v66;
  v118 = v68;
  sub_100072AFC(v66, v68);
  v70 = sub_100073200();
  sub_10000DF50(v70, v71);
  v72 = v131;
  v73 = v132;
  *&v133[0] = Data.InlineData.init(count:)();
  DWORD2(v133[0]) = v74;
  BYTE14(v133[0]) = v75;
  WORD6(v133[0]) = v76;
  bzero(v133, v75);
  v77 = *&v133[0];
  v78 = DWORD2(v133[0]) | ((WORD6(v133[0]) | (BYTE14(v133[0]) << 16)) << 32);
  *&v133[0] = v72;
  *(&v133[0] + 1) = v73;
  sub_100072AFC(v77, v78);
  v79 = v133[0];
  v80 = sub_10006AF94(&off_10008EB60);
  v82 = v81;
  v133[0] = v79;
  sub_10000E228(v79, *(&v79 + 1));
  sub_100072AFC(v80, v82);
  sub_10000DF50(v80, v82);
  v83 = type metadata accessor for NWInterface();
  sub_1000731F4();
  sub_1000223E8(v84, v85, v86, v83);
  v87 = v121;
  IPv6Address.init(_:_:)();
  v88 = v122;
  if (sub_100022484(v87, 1, v122) == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v89 = v130[4];
  v89(v129, v87, v88);
  v90 = sub_10006AF94(&off_10008EB88);
  v92 = v91;
  v133[0] = v79;
  sub_10000E228(v79, *(&v79 + 1));
  sub_100072AFC(v90, v92);
  sub_10000DF50(v90, v92);
  sub_1000731F4();
  sub_1000223E8(v93, v94, v95, v83);
  v96 = v117;
  IPv6Address.init(_:_:)();
  if (sub_100022484(v96, 1, v88) == 1)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v89(v126, v96, v88);
  v97 = v116;
  IPv6Address.init(_:)();
  v98 = sub_100022484(v97, 1, v88);
  v99 = v128;
  if (v98 == 1)
  {
    goto LABEL_12;
  }

  v123 = *(&v79 + 1);
  v100 = v125;
  v89(v125, v97, v88);
  v101 = v130[2];
  v101(v124, v129, v88);
  v101(v112, v100, v88);
  v102 = v99[4];
  sub_10001355C(v99, v99[3]);
  if ((dispatch thunk of TunnelConnection.maxSupportedMTU.getter() & 0x10000) != 0)
  {
    type metadata accessor for VirtualInterface();
    static VirtualInterface.defaultMTU.getter();
  }

  v103 = v113;
  TunnelInterfaceParameters.init(address:netmask:mtu:)();
  sub_10001355C(v134, v135);
  sub_100022260(v134, v133);
  v104 = swift_allocObject();
  v104[2] = v127;
  sub_100010E18(v133, (v104 + 3));
  v105 = v110;
  v104[8] = v111;
  v104[9] = v105;
  v106 = v120;
  v104[10] = sub_100072700;
  v104[11] = v106;

  v107 = v126;
  dispatch thunk of AnyTunnelEndpoint.establishServerTunnel(localParameters:remoteAddress:completion:)();

  sub_10000DF50(v119, v118);

  sub_10000DF50(v79, v123);

  (*(v114 + 8))(v103, v115);
  v108 = v130[1];
  v108(v125, v88);
  v108(v107, v88);
  v108(v129, v88);
  sub_10000CADC(v134);
  sub_1000135A0();
}

uint64_t sub_10006FED4(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v60 = type metadata accessor for XPCDictionary();
  v63 = *(v60 - 8);
  v3 = *(v63 + 8);
  v4 = __chkstk_darwin(v60);
  v59 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v8 = &v57 - v7;
  __chkstk_darwin(v6);
  v62 = &v57 - v9;
  v10 = type metadata accessor for XPCError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v58 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v57 - v16;
  __chkstk_darwin(v15);
  v19 = &v57 - v18;
  v20 = sub_100013414(&unk_1000994A0, &unk_100077090);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v57 - v22;
  sub_10003DE84(a1, &v57 - v22, &unk_1000994A0, &unk_100077090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v19, v23, v10);
    v24 = static os_log_type_t.error.getter();
    v25 = qword_10009CED0;
    v26 = *(v11 + 16);
    v26(v17, v19, v10);
    if (os_log_type_enabled(v25, v24))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v62 = v28;
      *v27 = 136446466;
      v63 = v19;
      v64 = v28;
      LODWORD(v60) = v24;
      v29 = UUID.uuidString.getter();
      v59 = v25;
      v31 = sub_10000C600(v29, v30, &v64);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      v26(v58, v17, v10);
      v32 = String.init<A>(describing:)();
      v34 = v33;
      v35 = *(v11 + 8);
      v58 = v26;
      v35(v17, v10);
      v36 = sub_10000C600(v32, v34, &v64);
      v19 = v63;

      *(v27 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v59, v60, "%{public}s: Tunnel recieved error on remoted XPC connection: %{public}s", v27, 0x16u);
      swift_arrayDestroy();

      v37 = v58;
    }

    else
    {
      v35 = *(v11 + 8);
      v37 = v26;
      v35(v17, v10);
    }

    sub_100073058(&qword_10009C0E8, &type metadata accessor for XPCError);
    v54 = swift_allocError();
    v37(v55, v19, v10);
    sub_100071E98(v54);

    return (v35)(v19, v10);
  }

  else
  {
    v38 = v62;
    v39 = v63;
    v40 = v60;
    (*(v63 + 4))(v62, v23, v60);
    v41 = static os_log_type_t.error.getter();
    v42 = qword_10009CED0;
    v43 = *(v39 + 2);
    v43(v8, v38, v40);
    if (os_log_type_enabled(v42, v41))
    {
      v44 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v44 = 136446466;
      v45 = UUID.uuidString.getter();
      v47 = sub_10000C600(v45, v46, &v64);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2082;
      v43(v59, v8, v40);
      v48 = String.init<A>(describing:)();
      v50 = v49;
      v51 = *(v63 + 1);
      v51(v8, v40);
      v52 = sub_10000C600(v48, v50, &v64);

      *(v44 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v42, v41, "%{public}s: Unexpected message on XPC connection: %{public}s", v44, 0x16u);
      swift_arrayDestroy();

      return (v51)(v62, v40);
    }

    else
    {
      v56 = *(v63 + 1);
      v56(v8, v40);
      return (v56)(v62, v40);
    }
  }
}

uint64_t sub_100070560(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100013414(&qword_10009BC88, &qword_100078A68);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v55 - v8;
  v10 = type metadata accessor for IPv6Address();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v55 - v17;
  __chkstk_darwin(v16);
  v20 = &v55 - v19;
  if (a1)
  {
    swift_errorRetain();
    v21 = static os_log_type_t.error.getter();
    v22 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v21))
    {
      v23 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v23 = 136446466;
      v24 = UUID.uuidString.getter();
      v26 = sub_10000C600(v24, v25, v65);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      *&v63 = a1;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v27 = String.init<A>(describing:)();
      v29 = sub_10000C600(v27, v28, v65);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v21, "%{public}s: Tunnel setup error: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    sub_100071E98(a1);
  }

  v60 = a2;
  v31 = a3[4];
  sub_10001355C(a3, a3[3]);
  result = dispatch thunk of AnyTunnelEndpoint.localTunnelInterface.getter();
  if (!v64)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_100010E18(&v63, v65);
  v32 = a3[4];
  sub_10001355C(a3, a3[3]);
  dispatch thunk of AnyTunnelEndpoint.remoteAddress.getter();
  result = sub_100022484(v9, 1, v10);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  (*(v11 + 32))(v20, v9, v10);
  v33 = static os_log_type_t.default.getter();
  v34 = qword_10009CED0;
  sub_100022260(v65, &v63);
  sub_100022260(v65, v62);
  v35 = *(v11 + 16);
  v59 = v20;
  v35(v18);
  if (os_log_type_enabled(v34, v33))
  {
    v36 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v61 = v58;
    *v36 = 136446978;
    v57 = v34;
    v37 = UUID.uuidString.getter();
    v39 = sub_10000C600(v37, v38, &v61);
    v56 = v33;
    v40 = v39;

    *(v36 + 4) = v40;
    *(v36 + 12) = 2082;
    v55 = v35;
    sub_10001355C(&v63, v64);
    v41 = dispatch thunk of TunnelInterface.interfaceName.getter();
    v43 = v42;
    sub_10000CADC(&v63);
    v44 = sub_10000C600(v41, v43, &v61);

    *(v36 + 14) = v44;
    *(v36 + 22) = 2082;
    sub_10001355C(v62, v62[3]);
    dispatch thunk of TunnelInterface.address.getter();
    sub_100013414(&qword_10009C100, &qword_100078DB8);
    v45 = String.init<A>(describing:)();
    v47 = v46;
    sub_10000CADC(v62);
    v48 = sub_10000C600(v45, v47, &v61);

    *(v36 + 24) = v48;
    *(v36 + 32) = 2082;
    v55(v15, v18, v10);
    v49 = String.init<A>(describing:)();
    v51 = v50;
    v52 = *(v11 + 8);
    v52(v18, v10);
    v53 = sub_10000C600(v49, v51, &v61);

    *(v36 + 34) = v53;
    _os_log_impl(&_mh_execute_header, v57, v56, "%{public}s: Tunnel established: %{public}s, local %{public}s -> remote %{public}s", v36, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v52 = *(v11 + 8);
    v52(v18, v10);
    sub_10000CADC(&v63);
    sub_10000CADC(v62);
  }

  v54 = a3[4];
  sub_10001355C(a3, a3[3]);

  dispatch thunk of AnyTunnelEndpoint.startPacketTransfer(errorHandler:)();

  v52(v59, v10);
  return sub_10000CADC(v65);
}

void sub_100070BF8(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  v3 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v2))
  {
    v4 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v4 = 136446466;
    v5 = UUID.uuidString.getter();
    v7 = sub_10000C600(v5, v6, &v11);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2082;
    swift_errorRetain();
    sub_100013414(&unk_10009A930, &unk_100077080);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000C600(v8, v9, &v11);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v2, "%{public}s: Tunnel transfer error: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  sub_100071E98(a1);
}

uint64_t sub_100070D70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for XPCDictionary();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v18 = static os_log_type_t.error.getter();
    v19 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v18))
    {
      v20 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v20 = 136446466;
      v21 = UUID.uuidString.getter();
      v23 = sub_10000C600(v21, v22, v49);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2082;
      *&v47 = a1;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v24 = String.init<A>(describing:)();
      v26 = sub_10000C600(v24, v25, v49);

      *(v20 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s: Server tunnel setup error: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    sub_100071E98(a1);
  }

  else
  {
    v43 = a6;
    v44 = a7;
    v45 = v15;
    v28 = a3[4];
    sub_10001355C(a3, a3[3]);
    result = dispatch thunk of AnyTunnelEndpoint.localTunnelInterface.getter();
    if (v48)
    {
      v42[1] = a4;
      sub_100010E18(&v47, v49);
      v29 = static os_log_type_t.default.getter();
      v30 = qword_10009CED0;
      sub_100022260(v49, &v47);
      if (os_log_type_enabled(v30, v29))
      {
        v31 = swift_slowAlloc();
        v42[0] = swift_slowAlloc();
        v46 = v42[0];
        *v31 = 136446466;
        v32 = UUID.uuidString.getter();
        v34 = sub_10000C600(v32, v33, &v46);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2082;
        sub_10001355C(&v47, v48);
        v35 = dispatch thunk of TunnelInterface.interfaceName.getter();
        v37 = v36;
        sub_10000CADC(&v47);
        v38 = sub_10000C600(v35, v37, &v46);

        *(v31 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v30, v29, "%{public}s: Server tunnel interface created: %{public}s, creating RSD listener...", v31, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10000CADC(&v47);
      }

      XPCDictionary.init()();
      XPCDictionary.subscript.setter();
      sub_10001355C(v49, v49[3]);
      dispatch thunk of TunnelInterface.interfaceName.getter();
      XPCDictionary.subscript.setter();
      v39 = *(a2 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
      sub_100022260(a3, &v47);
      v40 = swift_allocObject();
      v40[2] = a2;
      sub_100010E18(&v47, (v40 + 3));
      v41 = v44;
      v40[8] = v43;
      v40[9] = v41;

      dispatch thunk of XPCConnection.send(message:replyQueue:replyHandler:)();

      (*(v45 + 8))(v17, v13);
      return sub_10000CADC(v49);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10007125C(NSObject *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v117 = a4;
  v118 = a5;
  v119 = a3;
  v126 = a2;
  v6 = type metadata accessor for XPCDictionary();
  isa = v6[-1].isa;
  v7 = *(isa + 8);
  v8 = __chkstk_darwin(v6);
  v115 = (&v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v120 = &v114 - v11;
  v12 = __chkstk_darwin(v10);
  v125 = (&v114 - v13);
  __chkstk_darwin(v12);
  v15 = (&v114 - v14);
  v16 = type metadata accessor for XPCError();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v121 = (&v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v23 = &v114 - v22;
  __chkstk_darwin(v21);
  v25 = &v114 - v24;
  v26 = sub_100013414(&unk_1000994A0, &unk_100077090);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26);
  v116 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v122 = (&v114 - v31);
  __chkstk_darwin(v30);
  v33 = &v114 - v32;
  v123 = a1;
  sub_10003DE84(a1, &v114 - v32, &unk_1000994A0, &unk_100077090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v17 + 32))(v25, v33, v16);
    v34 = static os_log_type_t.error.getter();
    v35 = qword_10009CED0;
    v36 = *(v17 + 16);
    v36(v23, v25, v16);
    if (os_log_type_enabled(v35, v34))
    {
      v37 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v127 = v125;
      *v37 = 136446466;
      LODWORD(isa) = v34;
      v38 = UUID.uuidString.getter();
      v40 = sub_10000C600(v38, v39, &v127);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2082;
      v123 = v35;
      v36(v121, v23, v16);
      v41 = String.init<A>(describing:)();
      v42 = v25;
      v43 = v36;
      v45 = v44;
      v46 = v23;
      v47 = *(v17 + 8);
      v47(v46, v16);
      v48 = sub_10000C600(v41, v45, &v127);
      v36 = v43;
      v25 = v42;

      *(v37 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v123, isa, "%{public}s: Server XPC reply error: %{public}s", v37, 0x16u);
      swift_arrayDestroy();

      v49 = v47;
    }

    else
    {
      v49 = *(v17 + 8);
      v49(v23, v16);
    }

    sub_100073058(&qword_10009C0E8, &type metadata accessor for XPCError);
    v71 = swift_allocError();
    v36(v72, v25, v16);
    sub_100071E98(v71);

    return (v49)(v25, v16);
  }

  v50 = isa;
  v51 = *(isa + 2);
  v51(v15, v33, v6);
  v52 = XPCDictionary.subscript.getter();
  v54 = v6;
  if (v53)
  {
    if (v52 == 19279 && v53 == 0xE200000000000000)
    {
    }

    else
    {
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v56 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v74 = v50;
    v77 = *(v50 + 1);
    v76 = (v50 + 8);
    v75 = v77;
    v77(v15, v54);
    v78 = v125;
    (*(v74 + 4))(v125, v33, v54);
    v79 = static os_log_type_t.debug.getter();
    v80 = qword_10009CED0;
    v81 = v120;
    v51(v120, v78, v54);
    v82 = os_log_type_enabled(v80, v79);
    v122 = v77;
    if (v82)
    {
      v83 = swift_slowAlloc();
      isa = v76;
      v84 = v81;
      v85 = v83;
      v123 = swift_slowAlloc();
      v127 = v123;
      *v85 = 136446466;
      v86 = UUID.uuidString.getter();
      v88 = v80;
      v89 = sub_10000C600(v86, v87, &v127);

      *(v85 + 4) = v89;
      v80 = v88;
      *(v85 + 12) = 2082;
      v51(v115, v84, v54);
      v90 = String.init<A>(describing:)();
      v92 = v91;
      v75(v84, v54);
      v93 = sub_10000C600(v90, v92, &v127);

      *(v85 + 14) = v93;
      _os_log_impl(&_mh_execute_header, v88, v79, "%{public}s: Server XPC reply: %{public}s", v85, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v75(v81, v54);
    }

    v96 = v125;
    result = XPCDictionary.subscript.getter();
    if (v97)
    {
      v98 = result;
      v99 = v97;
      sub_100072BA8();
      result = XPCDictionary.subscript.getter();
      if (v128)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      v100 = v127;
      v101 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v101))
      {
        v102 = swift_slowAlloc();
        v123 = v54;
        v103 = v102;
        v127 = swift_slowAlloc();
        *v103 = 136446722;
        v104 = UUID.uuidString.getter();
        v106 = v80;
        v107 = sub_10000C600(v104, v105, &v127);

        *(v103 + 4) = v107;
        *(v103 + 12) = 2082;

        v108 = sub_10000C600(v98, v99, &v127);

        *(v103 + 14) = v108;
        *(v103 + 22) = 2048;
        *(v103 + 24) = v100;
        _os_log_impl(&_mh_execute_header, v106, v101, "%{public}s: Created RSD server device name: %{public}s with listener on port: %lu", v103, 0x20u);
        swift_arrayDestroy();
        v96 = v125;

        v54 = v123;
      }

      v109 = v126;
      v110 = v126 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
      swift_beginAccess();
      v111 = *(v110 + 120);
      *(v110 + 112) = v98;
      *(v110 + 120) = v99;

      v112 = *(v109 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
      OS_dispatch_queue.assertOnQueueHierarchy()();
      v113 = v119[4];
      result = sub_10001355C(v119, v119[3]);
      if (!(v100 >> 16))
      {
        dispatch thunk of AnyTunnelEndpoint.finishEstablishingServerTunnel(serverRSDPort:completion:)();
        return v122(v96, v54);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_10:
  v125 = v15;
  v57 = static os_log_type_t.error.getter();
  v58 = qword_10009CED0;
  v59 = v122;
  sub_10003DE84(v123, v122, &unk_1000994A0, &unk_100077090);
  if (os_log_type_enabled(v58, v57))
  {
    v60 = swift_slowAlloc();
    v123 = v6;
    v61 = v60;
    v121 = swift_slowAlloc();
    v127 = v121;
    *v61 = 136446466;
    v62 = UUID.uuidString.getter();
    v64 = v50;
    v65 = sub_10000C600(v62, v63, &v127);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2082;
    sub_10003DE84(v59, v116, &unk_1000994A0, &unk_100077090);
    v66 = String.init<A>(describing:)();
    v67 = v59;
    v69 = v68;
    v50 = v64;
    sub_100022560(v67, &unk_1000994A0, &unk_100077090);
    v70 = sub_10000C600(v66, v69, &v127);

    *(v61 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v58, v57, "%{public}s: Server XPC result not successful: %{public}s", v61, 0x16u);
    swift_arrayDestroy();

    v54 = v123;
  }

  else
  {
    sub_100022560(v59, &unk_1000994A0, &unk_100077090);
  }

  type metadata accessor for RemotePairingError();
  sub_100073058(&qword_100099850, &type metadata accessor for RemotePairingError);
  v94 = swift_allocError();
  sub_100073058(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
  static Error<>.dataCorrupted.getter();
  sub_100071E98(v94);

  v95 = *(v50 + 1);
  v95(v125, v54);
  return (v95)(v33, v54);
}

void sub_100071E98(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (a1)
  {
    swift_errorRetain();
    v4 = static os_log_type_t.error.getter();
    v5 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v4))
    {
      v6 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v6 = 136446466;
      v7 = UUID.uuidString.getter();
      v9 = sub_10000C600(v7, v8, v33);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2082;
      v31[0] = a1;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v10 = String.init<A>(describing:)();
      v12 = sub_10000C600(v10, v11, v33);

      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v5, v4, "%{public}s: Cancelling tunnel with error: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
      sub_10000D8D4();
      sub_10000EB64();
    }
  }

  else
  {
    v13 = static os_log_type_t.default.getter();
    v14 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v13))
    {
      v15 = sub_10000D030();
      v16 = swift_slowAlloc();
      v33[0] = v16;
      *v15 = 136446210;
      v17 = UUID.uuidString.getter();
      v19 = sub_10000C600(v17, v18, v33);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s: Cancelling tunnel", v15, 0xCu);
      sub_10000CADC(v16);
      sub_10000D8D4();
      sub_10000D8D4();
    }
  }

  v20 = (v1 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state);
  swift_beginAccess();
  sub_100072690(v20, v33);
  if (v33[3])
  {
    sub_100022260(v33, v31);
    sub_1000726C8(v33);
    v21 = sub_10001355C(v31, v32);
    nw_listener_cancel(*(*v21 + 32));
    sub_10000CADC(v31);
  }

  else
  {
    sub_1000726C8(v33);
  }

  sub_10007318C();
  sub_100072F3C(v33, v20, &qword_10009C0A0, &qword_100078D68);
  swift_endAccess();
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v22 = v20[18];
  if (v22)
  {
    v23 = v20[19];

    v22(a1);
    sub_10000FAC8(v22);
    v24 = v20[18];
  }

  else
  {
    v24 = 0;
  }

  v25 = v20[19];
  v20[18] = 0;
  v20[19] = 0;
  sub_10000FAC8(v24);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  sub_100072690(v20, v33);
  if (v34[3])
  {
    sub_100022260(v34, v31);
    sub_1000726C8(v33);
    sub_10001355C(v31, v32);
    dispatch thunk of AnyTunnelEndpoint.cancel()();
    sub_10000CADC(v31);
  }

  else
  {
    sub_1000726C8(v33);
  }

  sub_10007318C();
  sub_100072F3C(v33, (v20 + 5), &qword_10009C0A8, &unk_100078D70);
  swift_endAccess();
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v26 = v20 + 10;
  if (v20[10])
  {
    v27 = v20[10];

    dispatch thunk of XPCConnection.cancel()();

    v28 = *v26;
  }

  *v26 = 0;
  v20[11] = 0;

  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (v20[13])
  {
    v29 = v20[13];

    dispatch thunk of WiFiKeepAlive.cancel()();

    v30 = v20[13];
  }

  v20[13] = 0;

  OS_dispatch_queue.assertOnQueueHierarchy()();
}

uint64_t sub_1000722CC()
{
  v1 = OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_identifier;
  v2 = type metadata accessor for UUID();
  sub_10000CC04(v2);
  (*(v3 + 8))(v0 + v1);

  sub_1000726C8(v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state);
  return v0;
}

uint64_t sub_100072354()
{
  sub_1000722CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for Tunnel()
{
  result = qword_10009BF98;
  if (!qword_10009BF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100072400()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000724B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 160))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007250C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1000725A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000725F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100072648(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100072660(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_10007270C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_100072784()
{
  v0 = type metadata accessor for DispatchData();
  v1 = sub_10000CBBC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000CBDC();
  v8 = v7 - v6;
  DispatchData.init(bytes:)();
  v9 = DispatchData._bridgeToObjectiveC()();
  (*(v3 + 8))(v8, v0);
  return v9;
}

uint64_t sub_1000728B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_10007270C(v7, v13, a3);
}

uint64_t sub_100072944(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchData();
  v6 = sub_10000CBBC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000CBDC();
  sub_10001ADE0();
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      DispatchData.init(bytes:)();
      v12 = DispatchData._bridgeToObjectiveC()();
      (*(v8 + 8))(v2, v5);
      return v12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100072A68(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100072AFC(uint64_t a1, unint64_t a2)
{
  v8[3] = &type metadata for Data;
  v8[4] = &protocol witness table for Data;
  v8[0] = a1;
  v8[1] = a2;
  v4 = sub_10001355C(v8, &type metadata for Data);
  v5 = *v4;
  v6 = v4[1];
  sub_10000E228(a1, a2);
  sub_10006B0F0(v5, v6);
  return sub_10000CADC(v8);
}

unint64_t sub_100072BA8()
{
  result = qword_10009C0E0;
  if (!qword_10009C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009C0E0);
  }

  return result;
}

uint64_t sub_100072C14(uint64_t a1)
{
  v3 = type metadata accessor for CertificateUtilities.RawTLSPublicKeyInfo();
  sub_10000D368(v3);
  v5 = *(v4 + 80);
  v6 = *(v1 + 16);

  return sub_10006E46C(a1);
}

uint64_t sub_100072C8C(uint64_t a1, uint64_t a2)
{
  v9[3] = type metadata accessor for NWObjcTunnelConnectionWrapper(0);
  v9[4] = sub_100073058(&qword_10009B728, type metadata accessor for NWObjcTunnelConnectionWrapper);
  v9[0] = a1;
  v4 = *(a2 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);

  OS_dispatch_queue.assertOnQueueHierarchy()();
  v5 = swift_allocObject();
  sub_100022260(v9, v5 + 16);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_100050384(v4, sub_100072F34, v7);

  return sub_10000CADC(v9);
}

uint64_t sub_100072DE0(uint64_t a1, uint64_t a2)
{
  v9[3] = type metadata accessor for NWQUICTunnelConnection(0);
  v9[4] = sub_100073058(&qword_10009C110, type metadata accessor for NWQUICTunnelConnection);
  v9[0] = a1;
  v4 = *(a2 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);

  OS_dispatch_queue.assertOnQueueHierarchy()();
  v5 = swift_allocObject();
  sub_100022260(v9, v5 + 16);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_1000527AC(v4, sub_1000730DC, v7);

  return sub_10000CADC(v9);
}

uint64_t sub_100072F3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100040170(a1, a2, a3, a4);
  sub_10000CC04(v5);
  v7 = *(v6 + 40);
  v8 = sub_10000D4B0();
  v9(v8);
  return v4;
}

void sub_100072F90()
{
  v1 = sub_100013414(&qword_10009C128, &unk_100078DE0);
  sub_10000CD78(v1);
  v4 = ((*(v2 + 80) + 48) & ~*(v2 + 80)) + *(v3 + 64);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + v4);
  v9 = *(v0 + ((v4 + 9) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v0 + 16);
  sub_10006C960();
}

uint64_t sub_100073058(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007314C@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_100073160()
{
  **(v1 - 264) = v0;
  v3 = *(v1 - 272);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10007318C()
{

  return swift_beginAccess();
}

uint64_t sub_1000731B8()
{

  return TunnelEndpoint.init(id:connectionObject:workQueue:priority:preReadMessages:zeroConnectionCancellationPolicy:)(v1, v0, v6 - 160, v3, v4, v2, v5);
}

uint64_t sub_1000731E4()
{
  v1 = *(v0 - 248);
  v2 = *(*(v0 - 256) + 8);
  return *(v0 - 216);
}

uint64_t sub_100073224()
{
  v2 = *(v0 - 304);

  return static Error<>.networkingError.getter();
}

uint64_t sub_100073248()
{

  return swift_slowAlloc();
}

uint64_t sub_100073264()
{

  return Error<>.init(_:_:)();
}

uint64_t sub_100073288()
{

  return swift_beginAccess();
}

uint64_t sub_1000732C4()
{
  v2 = *(v0 - 320);
}

uint64_t sub_1000732E4()
{

  return swift_allocError();
}

void sub_1000733D8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognized response '%d' from ManagedConfiguration. Will allow pairing with prompt.", v2, 8u);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t XPCDictionary.subscript.setter()
{
  return XPCDictionary.subscript.setter();
}

{
  return XPCDictionary.subscript.setter();
}

{
  return XPCDictionary.subscript.setter();
}

uint64_t XPCDictionary.subscript.getter()
{
  return XPCDictionary.subscript.getter();
}

{
  return XPCDictionary.subscript.getter();
}

{
  return XPCDictionary.subscript.getter();
}

uint64_t dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)()
{
  return dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();
}

{
  return dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();
}

uint64_t static _Error.~= infix(_:_:)()
{
  return static _Error.~= infix(_:_:)();
}

{
  return static _Error.~= infix(_:_:)();
}

uint64_t __CocoaSet.member(for:)()
{
  return __CocoaSet.member(for:)();
}

{
  return __CocoaSet.member(for:)();
}