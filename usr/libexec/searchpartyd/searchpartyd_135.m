uint64_t sub_100E0B2FC(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Destination();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BC010, &qword_1013E9E38);
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
      sub_1000097BC(&qword_1016BC000, &type metadata accessor for Destination);
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

uint64_t sub_100E0B618(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016AAA18, &qword_1013BD810);
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
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_1013E9EE8[v17]);
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
      *(*(v6 + 48) + v13) = v17;
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

uint64_t sub_100E0B844(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BC190, &unk_101406290);
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for AnyCancellable();
      sub_1000097BC(&qword_1016BC180, &type metadata accessor for AnyCancellable);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_100E0BABC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v5;
    v9 = 0;
    v10 = v5 + 56;
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
      v21 = *(v8 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v22 = v20;
      String.hash(into:)();
      v23 = Hasher._finalize()();

      v24 = -1 << *(v8 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      ++*(v8 + 16);
      v5 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v4 = v31;
        goto LABEL_28;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_100E0BD08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC0E8, &unk_101406260);
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);

      sub_1000BC4D4(&unk_1016BC0D0, qword_1013EA6A0);
      sub_1000041A4(&qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_100E0BF84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_26;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v4 = v8;
  }

  return result;
}

uint64_t sub_100E0C16C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BeaconIdentifier();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000BC4D4(&unk_1016BBE50, &unk_1013B34E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v35 = v7;
    v11 = 0;
    v12 = v7 + 56;
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48);
      v23 = *(v36 + 72);
      v24 = v38;
      sub_100E0ED24(v22 + v23 * (v19 | (v11 << 6)), v38, type metadata accessor for BeaconIdentifier);
      v25 = *(v10 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v26 = v24 + *(v37 + 20);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_100E0ECBC(v38, *(v10 + 48) + v18 * v23, type metadata accessor for BeaconIdentifier);
      ++*(v10 + 16);
      v7 = v35;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v2 = v34;
        goto LABEL_28;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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

uint64_t sub_100E0C4B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC098, &qword_1013E9E80);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
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
      v19 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v22 = *(v3 + 48) + 88 * (v19 | (v7 << 6));
      v24 = *(v22 + 48);
      v23 = *(v22 + 64);
      v25 = *(v22 + 32);
      v42 = *(v22 + 80);
      v40 = v24;
      v41 = v23;
      v39 = v25;
      v26 = *(v22 + 16);
      v37 = *v22;
      v38 = v26;
      v27 = *(v6 + 40);
      Hasher.init(_seed:)();
      sub_100E0ED8C(&v37, v36);
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v6 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v12 + 8 * v30);
          if (v34 != -1)
          {
            v13 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 88 * v13;
      v15 = v38;
      *v14 = v37;
      v16 = v39;
      v17 = v40;
      v18 = v41;
      *(v14 + 80) = v42;
      *(v14 + 48) = v17;
      *(v14 + 64) = v18;
      *(v14 + 16) = v15;
      *(v14 + 32) = v16;
      ++*(v6 + 16);
    }

    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v35;
        goto LABEL_28;
      }

      v21 = *(v3 + 56 + 8 * v7);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v10 = (v21 - 1) & v21;
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

uint64_t sub_100E0C734(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v41 - v13;
  v14 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v15 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BA360, &unk_1013E48B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v14 + 16))
  {
    v47 = v4;
    v41 = v2;
    v18 = 0;
    v19 = v14 + 56;
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 56);
    v23 = (v20 + 63) >> 6;
    v45 = (v5 + 48);
    v46 = v14;
    v42 = (v5 + 8);
    v43 = (v5 + 32);
    v24 = result + 56;
    while (v22)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v29 = *(v14 + 48);
      v49 = *(v48 + 72);
      v30 = v50;
      sub_1000D2A70(v29 + v49 * (v26 | (v18 << 6)), v50, &qword_1016980D0, &unk_10138F3B0);
      v31 = *(v17 + 40);
      Hasher.init(_seed:)();
      sub_1000D2A70(v30, v12, &qword_1016980D0, &unk_10138F3B0);
      v32 = v47;
      if ((*v45)(v12, 1, v47) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v33 = v44;
        (*v43)(v44, v12, v32);
        Hasher._combine(_:)(1u);
        sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*v42)(v33, v32);
      }

      result = Hasher._finalize()();
      v34 = -1 << *(v17 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      v14 = v46;
      if (((-1 << v35) & ~*(v24 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v24 + 8 * v36);
          if (v40 != -1)
          {
            v25 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v25 = __clz(__rbit64((-1 << v35) & ~*(v24 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      result = sub_1000D2AD8(v50, *(v17 + 48) + v25 * v49, &qword_1016980D0, &unk_10138F3B0);
      ++*(v17 + 16);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v2 = v41;
        goto LABEL_31;
      }

      v28 = *(v19 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v22 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v17;
  }

  return result;
}

uint64_t sub_100E0CBB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BBE70, &qword_1013E9DC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_100E0CDA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BC0C0, &qword_101406240);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v19 = *(v17 + 32);

      v20 = v19;
      NSObject.hash(into:)();

      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

        v2 = v28;
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

uint64_t sub_100E0CFD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC0B8, &qword_1013E9E98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v19 = *(v17 + 40);

      v20 = v19;
      NSObject.hash(into:)();

      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

        v2 = v28;
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

uint64_t sub_100E0D20C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC068, &unk_101406230);
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);

      sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
      sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_100E0D488(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC018, &qword_1013E9E40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v36 = v2;
    v37 = v3;
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
    v38 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v41 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 40 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v42 = v19[3];
      v23 = v19[4];
      v24 = *(v6 + 40);
      Hasher.init(_seed:)();

      v39 = v21;
      v40 = v20;
      String.hash(into:)();
      Hasher._combine(_:)(*(v22 + 16));
      v25 = *(v22 + 16);
      if (v25)
      {
        v26 = (v22 + 40);
        do
        {
          v27 = *(v26 - 1);
          v28 = *v26;

          String.hash(into:)();

          v26 += 2;
          --v25;
        }

        while (v25);
      }

      String.hash(into:)();
      result = Hasher._finalize()();
      v6 = v38;
      v29 = -1 << *(v38 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v13 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v13 + 8 * v31);
          if (v35 != -1)
          {
            v14 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v30) & ~*(v13 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v3 = v37;
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v38 + 48) + 40 * v14);
      *v15 = v40;
      v15[1] = v39;
      v15[2] = v22;
      v15[3] = v42;
      v15[4] = v23;
      ++*(v38 + 16);
      v11 = v41;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v36;
        goto LABEL_31;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100E0D768(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BBEF0, &qword_1014060B0);
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);

      sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
      sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

unint64_t sub_100E0D9E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BC0A0, &qword_1013E9E88);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    for (i = result + 56; v10; ++*(v6 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v15 = (*(v3 + 48) + 160 * (v12 | (v7 << 6)));
      v16 = v15[5];
      v18 = v15[2];
      v17 = v15[3];
      v40 = v15[4];
      v41 = v16;
      v38 = v18;
      v39 = v17;
      v19 = v15[6];
      v20 = v15[7];
      v21 = v15[9];
      v44 = v15[8];
      v45 = v21;
      v42 = v19;
      v43 = v20;
      v22 = v15[1];
      v36 = *v15;
      v37 = v22;
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      sub_10013CD18(&v36, v35);
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v44);
      Hasher._combine(_:)(BYTE1(v44));
      Hasher._combine(_:)(BYTE2(v44));
      Hasher._combine(_:)(BYTE3(v44));
      Hasher._combine(_:)(BYTE8(v44));
      String.hash(into:)();
      Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v25 = (*(v6 + 48) + 160 * result);
      v26 = v37;
      *v25 = v36;
      v25[1] = v26;
      v27 = v41;
      v29 = v38;
      v28 = v39;
      v25[4] = v40;
      v25[5] = v27;
      v25[2] = v29;
      v25[3] = v28;
      v30 = v42;
      v31 = v43;
      v32 = v45;
      v25[8] = v44;
      v25[9] = v32;
      v25[6] = v30;
      v25[7] = v31;
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v33;
        goto LABEL_18;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100E0DCB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BBFE0, &unk_101406210);
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);

      sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
      sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_100E0DF30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_100E0E13C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BBE08, &qword_1013E9D90);
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);

      sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
      sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_100E0E3B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_100E0E5D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BBF70, &qword_1013B3530);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v3 + 16))
  {
    v8 = 0;
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
      *&v6 = *(*(v3 + 48) + 8 * (v15 | (v8 << 6)));
      v26 = v6;
      v18 = *(v7 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v26);
      Hasher._combine(_:)(DWORD1(v26));
      result = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(&v6 + 1) = *(&v26 + 1);
      *(*(v7 + 48) + 8 * v14) = v26;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_26;
      }

      v17 = *(v3 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v7;
  }

  return result;
}

uint64_t sub_100E0E7F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v5;
    v9 = 0;
    v10 = v5 + 56;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = *(v5 + 48) + 24 * (v18 | (v9 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v8 + 40);
      Hasher.init(_seed:)();
      sub_100017D5C(v22, v23);
      sub_100017D5C(v22, v23);
      Data.hash(into:)();
      sub_100016590(v22, v23);
      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v22;
      *(v17 + 8) = v23;
      *(v17 + 16) = v24;
      ++*(v8 + 16);
      v5 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v4 = v33;
        goto LABEL_28;
      }

      v20 = *(v10 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
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
    *v4 = v8;
  }

  return result;
}

BOOL sub_100E0EA64(uint64_t a1, uint64_t a2)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v4 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v5 = sub_1010749A0(v10);

  v6 = sub_101129A64(v5);

  v10 = v6;
  sub_100DEFA08(v9, 8212, &unk_1016BBDF0, &qword_1013D6808);
  sub_100DEFA08(v9, 8213, &unk_1016BBDF0, &qword_1013D6808);
  sub_100DEFA08(v9, 8216, &unk_1016BBDF0, &qword_1013D6808);
  sub_100DEFA08(v9, 8219, &unk_1016BBDF0, &qword_1013D6808);
  sub_100DEFA08(v9, 8220, &unk_1016BBDF0, &qword_1013D6808);
  sub_100DEFA08(v9, 8223, &unk_1016BBDF0, &qword_1013D6808);
  sub_100DEFA08(v9, 8231, &unk_1016BBDF0, &qword_1013D6808);
  sub_100DEFA08(v9, 8233, &unk_1016BBDF0, &qword_1013D6808);
  v7 = a1 == 76 && sub_10111F5D4(a2, v10);

  return v7;
}

uint64_t sub_100E0EC5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100E0ECBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E0ED24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E0EE4C(void *a1)
{
  v1 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v6[6] = Bool.intValue.getter();
  sub_1000C3258();
  v4 = FixedWidthInteger.data.getter();
  v5 = v2;
  sub_10015049C(v6, v6[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v4, v5);
  return sub_100007BAC(v6);
}

uint64_t sub_100E0EF20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100E0EFF0(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_100E0EF50(uint64_t a1)
{
  *(a1 + 8) = sub_100E0EF80();
  result = sub_10064D478();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100E0EF80()
{
  result = qword_1016BC1D0;
  if (!qword_1016BC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC1D0);
  }

  return result;
}

uint64_t sub_100E0EFF0(uint64_t *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v10, v10[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_1000E0A3C();
    v10[6] = DataProtocol.intValue.getter();
    sub_1000C3258();
    v4 = FixedWidthInteger.BOOLValue.getter();
    sub_100016590(v7, v8);
  }

  sub_100007BAC(v10);
  sub_100007BAC(a1);
  return v4 & 1;
}

void sub_100E0F118()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100E0F1C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100E0F1C4()
{
  if (!qword_1016BC248)
  {
    type metadata accessor for UUID();
    sub_100009804(&qword_1016967B0, &type metadata accessor for UUID);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BC248);
    }
  }
}

void sub_100E0F270(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v72 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v64[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v64[-v8];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v64[-v16];
  if (CKRecord.recordType.getter() == 0xD000000000000012 && 0x80000001013EA0F0 == v18)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      sub_100E110BC();
      swift_allocError();
      *v29 = 0;
      goto LABEL_13;
    }
  }

  v71 = v15;
  v74 = v17;
  v20 = [a1 recordID];
  v21 = [v20 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v22 = *(v11 + 48);
  if (v22(v9, 1, v10) == 1)
  {
    sub_1002EA198(v9);
    sub_100E110BC();
    swift_allocError();
    *v23 = 1;
LABEL_13:
    swift_willThrow();

    return;
  }

  v24 = v74;
  v68 = *(v11 + 32);
  v69 = v11 + 32;
  v68(v74, v9, v10);
  v25 = [a1 encryptedValues];
  v26 = String._bridgeToObjectiveC()();
  v70 = v25;
  v27 = [v25 objectForKeyedSubscript:v26];

  if (!v27 || (v77 = v27, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    sub_100E110BC();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    (*(v11 + 8))(v24, v10);
    return;
  }

  UUID.init(uuidString:)();

  if (v22(v7, 1, v10) == 1)
  {
    sub_1002EA198(v7);
    goto LABEL_11;
  }

  v68(v71, v7, v10);
  v30 = String._bridgeToObjectiveC()();
  v31 = v70;
  v32 = [v70 objectForKeyedSubscript:v30];

  if (!v32 || (v75 = v32, (swift_dynamicCast() & 1) == 0) || (v33 = v77, v77 > 3))
  {
    sub_100E110BC();
    swift_allocError();
    *v44 = 3;
    swift_willThrow();
    goto LABEL_22;
  }

  v34 = String._bridgeToObjectiveC()();
  v35 = [v31 objectForKeyedSubscript:v34];

  v36 = v71;
  if (!v35 || (v77 = v35, (swift_dynamicCast() & 1) == 0))
  {
    sub_100E110BC();
    swift_allocError();
    *v46 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    v45 = *(v11 + 8);
    v45(v36, v10);
    goto LABEL_23;
  }

  v37 = v75;
  v67 = v76;
  v38 = type metadata accessor for PropertyListDecoder();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016BC2D0, &unk_1013E4B00);
  sub_100E11BB0();
  v41 = v37;
  v42 = v67;
  v43 = v73;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v43)
  {

    sub_100016590(v41, v42);
LABEL_22:
    swift_unknownObjectRelease();

    v45 = *(v11 + 8);
    v45(v71, v10);
LABEL_23:
    v45(v74, v10);
    return;
  }

  v73 = v41;

  v47 = v75;
  v48 = String._bridgeToObjectiveC()();
  v49 = [v70 objectForKeyedSubscript:v48];

  if (!v49 || (v66 = v47, v75 = v49, (swift_dynamicCast() & 1) == 0) || (v50 = _s12searchpartyd20MessagingDestinationV0C4TypeO8rawValueAESgSi_tcfC_0(v77), v50 == 6))
  {

    v51 = v71;
    v52 = v67;
    v53 = v73;
    sub_100E110BC();
    swift_allocError();
    *v54 = 5;
    swift_willThrow();
    sub_100016590(v53, v52);
    swift_unknownObjectRelease();

    v45 = *(v11 + 8);
    v45(v51, v10);
    goto LABEL_23;
  }

  v65 = v50;
  v55 = objc_autoreleasePoolPush();
  v56 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v56];
  [v56 finishEncoding];
  v57 = [v56 encodedData];
  v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  objc_autoreleasePoolPop(v55);
  sub_100016590(v73, v67);
  swift_unknownObjectRelease();

  v61 = v72;
  *v72 = v58;
  v61[1] = v60;
  v62 = type metadata accessor for OwnerSharingCircle();
  v63 = v68;
  v68(v61 + v62[5], v74, v10);
  v63(v61 + v62[6], v71, v10);
  *(v61 + v62[8]) = v66;
  *(v61 + v62[7]) = v33;
  *(v61 + v62[9]) = v65;
}

unint64_t sub_100E0FBBC()
{
  result = qword_1016BC290;
  if (!qword_1016BC290)
  {
    sub_1000BC580(&qword_1016BC298, &qword_1013EA198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC290);
  }

  return result;
}

unint64_t sub_100E0FC24()
{
  result = qword_1016BC2A0;
  if (!qword_1016BC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC2A0);
  }

  return result;
}

unint64_t sub_100E0FCC0()
{
  v1 = 0x726168536D657469;
  if (*v0 != 2)
  {
    v1 = 0x65746167656C6564;
  }

  v2 = 0xD000000000000018;
  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100E0FD60()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000011;
  v4 = 0x737265626D656DLL;
  if (v1 != 4)
  {
    v4 = 0x6E61747065636361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100E0FE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100E11F90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100E0FE64(uint64_t a1)
{
  v2 = sub_100E11CC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E0FEA0(uint64_t a1)
{
  v2 = sub_100E11CC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100E0FEE0(int *a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  v4 = *v1;
  v5 = v1[1];
  Data.hash(into:)();
  v6 = a1[5];
  type metadata accessor for UUID();
  sub_100009804(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v7 = v3 + a1[6];
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v3 + a1[7]));
  sub_100E1168C(v9, *(v3 + a1[8]));
  Hasher._combine(_:)(*(v3 + a1[9]));
  return Hasher._finalize()();
}

void sub_100E0FFE0(__int128 *a1, int *a2)
{
  v4 = v2;
  v6 = *v2;
  v7 = v2[1];
  Data.hash(into:)();
  v8 = a2[5];
  type metadata accessor for UUID();
  sub_100009804(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v9 = v4 + a2[6];
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v4 + a2[7]));
  sub_100E1168C(a1, *(v4 + a2[8]));
  Hasher._combine(_:)(*(v4 + a2[9]));
}

Swift::Int sub_100E100C0(uint64_t a1, int *a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_100009804(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = v4 + a2[6];
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v4 + a2[7]));
  sub_100E1168C(v10, *(v4 + a2[8]));
  Hasher._combine(_:)(*(v4 + a2[9]));
  return Hasher._finalize()();
}

uint64_t sub_100E101BC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177C0D8);
  sub_1000076D4(v0, qword_10177C0D8);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100E10318(id *a1)
{
  v2 = v1;
  v3 = *a1;
  [*a1 encryptedValues];
  static os_log_type_t.debug.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  v5 = v3;
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  v10 = type metadata accessor for PropertyListEncoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v13 = type metadata accessor for OwnerSharingCircle();
  v19 = *(v1 + v13[8]);

  sub_1000BC4D4(&qword_1016BC2D0, &unk_1013E4B00);
  sub_100D489BC();
  v14 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v16 = v15;
  swift_getObjectType();

  v17 = v1 + v13[6];
  UUID.uuidString.getter();
  CKRecordKeyValueSetting.subscript.setter();
  sub_100017D5C(v14, v16);
  CKRecordKeyValueSetting.subscript.setter();
  v20 = *(v2 + v13[7]);
  CKRecordKeyValueSetting.subscript.setter();
  v21 = *(v2 + v13[9]);
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  return sub_100016590(v14, v16);
}

uint64_t sub_100E10700(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&unk_1016BC340, &qword_1013EA3A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100E11CC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v16 = *v3;
  v17 = v11;
  v18 = 0;
  sub_100017D5C(v16, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v16, v17);
  }

  else
  {
    sub_100016590(v16, v17);
    v12 = type metadata accessor for OwnerSharingCircle();
    v13 = v12[5];
    LOBYTE(v16) = 1;
    type metadata accessor for UUID();
    sub_100009804(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[6];
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + v12[7]);
    v18 = 3;
    sub_100E11D68();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + v12[8]);
    v18 = 4;
    sub_1000BC4D4(&qword_1016BC2D0, &unk_1013E4B00);
    sub_100D489BC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + v12[9]);
    v18 = 5;
    sub_100328B5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100E10A0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for UUID();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = sub_1000BC4D4(&qword_1016BC318, &qword_1013EA398);
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  v14 = type metadata accessor for OwnerSharingCircle();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v19 = a1[4];
  v40 = a1;
  sub_1000035D0(a1, v18);
  sub_100E11CC0();
  v20 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_100007BAC(v40);
  }

  v39 = v7;
  v21 = v14;
  v22 = v36;
  v42 = 0;
  sub_1000E307C();
  v23 = v13;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v17;
  *v17 = v41;
  LOBYTE(v41) = 1;
  sub_100009804(&qword_101698300, &type metadata accessor for UUID);
  v25 = v9;
  v26 = v22;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33 = v21;
  v27 = *(v35 + 32);
  v27(v24 + *(v21 + 20), v25, v26);
  LOBYTE(v41) = 2;
  v28 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v26;
  v30 = v33;
  v27(v24 + v33[6], v28, v29);
  v42 = 3;
  sub_100E11D14();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v24 + v30[7]) = v41;
  sub_1000BC4D4(&qword_1016BC2D0, &unk_1013E4B00);
  v42 = 4;
  sub_100E11BB0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v37;
  *(v24 + v30[8]) = v41;
  v42 = 5;
  sub_100328A48();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v31 + 8))(v23, v38);
  *(v24 + v30[9]) = v41;
  sub_1003158CC(v24, v34);
  sub_100007BAC(v40);
  return sub_100315930(v24);
}

uint64_t sub_100E10FE0(uint64_t a1)
{
  *(a1 + 8) = sub_100009804(&unk_1016BC2B0, type metadata accessor for OwnerSharingCircle);
  result = sub_100009804(&qword_1016B1608, type metadata accessor for OwnerSharingCircle);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100E11064(uint64_t a1)
{
  result = sub_100009804(&qword_1016B1600, type metadata accessor for OwnerSharingCircle);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100E110BC()
{
  result = qword_1016BC2C0;
  if (!qword_1016BC2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC2C0);
  }

  return result;
}

void sub_100E11110(__int128 *a1, uint64_t a2)
{
  v50 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v42 - v9;
  v10 = sub_1000BC4D4(&unk_1016BC140, &qword_1013E9EB8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v42 - v15;
  v16 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 64);
  v20 = (v17 + 63) >> 6;
  v42 = v4 + 16;
  v52 = (v4 + 32);
  v47 = v4;
  v48 = a2;
  v49 = (v4 + 8);

  v21 = 0;
  v46 = v8;
  v43 = v14;
  v44 = v3;
  v53 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v47;
      v28 = *(*(v48 + 48) + v26);
      v3 = v44;
      v29 = v45;
      (*(v47 + 16))(v45, *(v48 + 56) + *(v47 + 72) * v26, v44);
      v30 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
      v31 = *(v30 + 48);
      v32 = v43;
      *v43 = v28;
      v33 = v29;
      v14 = v32;
      (*(v27 + 32))(&v32[v31], v33, v3);
      (*(*(v30 - 8) + 56))(v14, 0, 1, v30);
      v24 = v22;
      v8 = v46;
LABEL_13:
      v34 = v51;
      sub_1000D2AD8(v14, v51, &unk_1016BC140, &qword_1013E9EB8);
      v35 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        break;
      }

      v36 = *(v35 + 48);
      v37 = *v34;
      (*v52)(v8, &v34[v36], v3);
      v38 = v50[3];
      v56 = v50[2];
      v57 = v38;
      v58 = *(v50 + 8);
      v39 = v50[1];
      v54 = *v50;
      v55 = v39;
      String.hash(into:)();

      sub_100009804(&unk_101698070, &type metadata accessor for Date);
      dispatch thunk of Hashable.hash(into:)();
      (*v49)(v8, v3);
      v40 = Hasher._finalize()();
      v21 = v24;
      v53 ^= v40;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(v53);
  }

  else
  {
LABEL_5:
    if (v20 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {
        v41 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
        (*(*(v41 - 8) + 56))(v14, 1, 1, v41);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v16 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_100E1168C(__int128 *a1, uint64_t a2)
{
  v47 = a1;
  v50 = type metadata accessor for UUID();
  v3 = *(v50 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v50);
  v48 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v41 - v11;
  v13 = *(a2 + 64);
  v41[0] = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v41[1] = v3 + 16;
  v49 = (v3 + 32);
  v44 = v3;
  v45 = a2;
  v46 = (v3 + 8);

  v18 = 0;
  v42 = v12;
  v43 = v10;
  v51 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v44;
      v25 = v45;
      v26 = v48;
      v27 = v50;
      (*(v44 + 16))(v48, *(v45 + 48) + *(v44 + 72) * v23, v50);
      v28 = *(*(v25 + 56) + v23);
      v29 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
      v30 = *(v29 + 48);
      v31 = *(v24 + 32);
      v10 = v43;
      v31(v43, v26, v27);
      v10[v30] = v28;
      (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
      v21 = v19;
      v12 = v42;
LABEL_13:
      sub_1000D2AD8(v10, v12, &unk_1016BC360, &qword_10139CBE0);
      v32 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
      if ((*(*(v32 - 8) + 48))(v12, 1, v32) == 1)
      {
        break;
      }

      v33 = *(v32 + 48);
      v34 = v48;
      v35 = v50;
      (*v49)(v48, v12, v50);
      v36 = v12[v33];
      v37 = v47[3];
      v54 = v47[2];
      v55 = v37;
      v56 = *(v47 + 8);
      v38 = v47[1];
      v52 = *v47;
      v53 = v38;
      sub_100009804(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*v46)(v34, v35);
      Hasher._combine(_:)(v36);
      v39 = Hasher._finalize()();
      v18 = v21;
      v51 ^= v39;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(v51);
  }

  else
  {
LABEL_5:
    if (v17 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v17;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
        v40 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v41[0] + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

BOOL sub_100E11AF8(uint64_t a1, uint64_t a2)
{
  if (_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) != 0 && (v4 = type metadata accessor for OwnerSharingCircle(), v5 = v4[5], (static UUID.== infix(_:_:)()) && (v6 = v4[6], (static UUID.== infix(_:_:)()) && *(a1 + v4[7]) == *(a2 + v4[7]) && (sub_100DE7CB4(*(a1 + v4[8]), *(a2 + v4[8])))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100E11BB0()
{
  result = qword_1016BC2D8;
  if (!qword_1016BC2D8)
  {
    sub_1000BC580(&qword_1016BC2D0, &unk_1013E4B00);
    sub_100009804(&qword_101698300, &type metadata accessor for UUID);
    sub_100E11C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC2D8);
  }

  return result;
}

unint64_t sub_100E11C6C()
{
  result = qword_1016BC2E8;
  if (!qword_1016BC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC2E8);
  }

  return result;
}

unint64_t sub_100E11CC0()
{
  result = qword_1016BC320;
  if (!qword_1016BC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC320);
  }

  return result;
}

unint64_t sub_100E11D14()
{
  result = qword_1016BC330;
  if (!qword_1016BC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC330);
  }

  return result;
}

unint64_t sub_100E11D68()
{
  result = qword_1016BC350;
  if (!qword_1016BC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC350);
  }

  return result;
}

unint64_t sub_100E11DBC()
{
  result = qword_1016BC370;
  if (!qword_1016BC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC370);
  }

  return result;
}

unint64_t sub_100E11E34()
{
  result = qword_1016BC378;
  if (!qword_1016BC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC378);
  }

  return result;
}

unint64_t sub_100E11E8C()
{
  result = qword_1016BC380;
  if (!qword_1016BC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC380);
  }

  return result;
}

unint64_t sub_100E11EE4()
{
  result = qword_1016BC388;
  if (!qword_1016BC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC388);
  }

  return result;
}

unint64_t sub_100E11F3C()
{
  result = qword_1016BC390;
  if (!qword_1016BC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC390);
  }

  return result;
}

uint64_t sub_100E11F90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101370310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E61747065636361 && a2 == 0xEF65746174536563)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_100E121AC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (qword_101695258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C668);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "invalidate", v11, 2u);
  }
}

uint64_t sub_100E12360(void *a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v7 = *(v3 + 48);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100E1D464;
  *(v9 + 24) = v8;
  v14[4] = sub_10040B9F8;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10013FE14;
  v14[3] = &unk_1016523A0;
  v10 = _Block_copy(v14);

  v11 = a1;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E12540()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C0F0);
  sub_1000076D4(v0, qword_10177C0F0);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_100E125C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100E12634()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100E12688@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C730, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100E126FC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C108);
  v1 = sub_1000076D4(v0, qword_10177C108);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C0F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100E127C4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = type metadata accessor for AccessoryDiscoveryTrampoline();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC12searchpartyd28AccessoryDiscoveryTrampoline_implementation] = v0;
    v9.receiver = v4;
    v9.super_class = v3;

    v5 = objc_msgSendSuper2(&v9, "init");
    v6 = *(v0 + 64);
    *(v0 + 64) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_100E12860(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v27 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v26 = v25 - v8;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0xD000000000000019;
  *(v2 + 24) = 0x80000001013EA5D0;
  v18 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v25[1] = "ssoryPairingSession: %@ ";
  v25[2] = v18;
  (*(v14 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10000403C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v2 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = type metadata accessor for XPCSessionManager();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v2 + 56) = XPCSessionManager.init(name:)();
  type metadata accessor for WorkItemQueue();
  v22 = type metadata accessor for WorkItemQueue.WarningOptions();
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  (*(*(v22 - 8) + 56))(v26, 1, 1, v22);
  UUID.init()();
  *(v2 + 112) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v23 = v29;
  *(v2 + 32) = v28;
  *(v2 + 40) = v23;
  return v2;
}

uint64_t sub_100E12C50()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 48);
  aBlock[4] = sub_100E14598;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101651F68;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10000403C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_100E12F04(uint64_t a1)
{
  v2 = type metadata accessor for XPCServiceDescription();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MachServiceName();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a1 + 48);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  MachServiceName.init(_:)();
  (*(v7 + 16))(v11, v13, v6);
  sub_100E127C4();
  if (qword_101694ED0 != -1)
  {
LABEL_5:
    swift_once();
  }

  v21 = qword_1016BC3B0;
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 interfaceWithProtocol:&OBJC_PROTOCOL___SPAccessoryDiscoveryXPCClientProtocol];
  swift_retain_n();
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  v25 = *(a1 + 56);
  XPCSessionManager.register(service:)();
  (*(v27 + 8))(v5, v28);
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_100E132A0(void *a1)
{
  v2 = v1;
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "interruptionHandler: %@", v8, 0xCu);
    sub_100288C6C(v9);
  }

  v11 = *(v2 + 48);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100E1A73C;
  *(v13 + 24) = v12;
  v18[4] = sub_10040B9F8;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10013FE14;
  v18[3] = &unk_101652198;
  v14 = _Block_copy(v18);
  v15 = v5;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E13504(void *a1)
{
  v2 = v1;
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "invalidationHandler: %@", v8, 0xCu);
    sub_100288C6C(v9);
  }

  v11 = *(v2 + 48);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100E1D598;
  *(v13 + 24) = v12;
  v18[4] = sub_1000D2FB0;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10013FE14;
  v18[3] = &unk_101651FE0;
  v14 = _Block_copy(v18);
  v15 = v5;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100E13768()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPAccessoryDiscoveryXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  qword_1016BC3B0 = v2;
}

uint64_t sub_100E137D0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2[6];
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = v2[9];
    if (!v12)
    {
LABEL_7:
      v21 = v2[14];
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = a1;
      v24 = a1;

      dispatch thunk of WorkItemQueue.enqueue(_:)();
    }

    v13 = *(v12 + 16);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = a1;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100E1A6D0;
    *(v15 + 24) = v14;
    aBlock[4] = sub_10040B9F8;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013FE14;
    aBlock[3] = &unk_1016520A8;
    v16 = _Block_copy(aBlock);
    swift_retain_n();
    v17 = a1;

    dispatch_sync(v13, v16);
    _Block_release(v16);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      v18 = *(v12 + 16);
      OS_dispatch_queue.sync<A>(execute:)();
      if (LOBYTE(aBlock[0]) == 1)
      {
        sub_10062EF30();

        v19 = v2[9];
        v2[9] = 0;

        v20 = v2[10];
        v2[10] = 0;
      }

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100E13B04(uint64_t a1, void *a2)
{
  if (!*(a1 + 72))
  {
    v4 = type metadata accessor for AccessoryDiscoverySession();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v7 = sub_10062E9B4();
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177C0F0);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136315138;
      v20 = v19;

      sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
      sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670);
      v12._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 8250;
      v13._object = 0xE200000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 62;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);

      v16 = sub_1000136BC(60, 0xE100000000000000, &v20);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Created new AccessoryDiscoverySession: %s", v11, 0xCu);
      sub_100007BAC(v19);
    }

    v17 = *(a1 + 72);
    *(a1 + 72) = v7;
    swift_retain_n();
  }

  swift_retain_n();
  sub_100F9D38C(a2);
}

uint64_t sub_100E13DB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return _swift_task_switch(sub_100E13DD4, 0, 0);
}

uint64_t sub_100E13DD4()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 96);
    v0[14] = v3;
    if (v3)
    {
      swift_unknownObjectRetain();

      return _swift_task_switch(sub_100E13EB4, v3, 0);
    }

    *(Strong + 96) = 0;
    *(Strong + 104) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100E13EB4()
{
  v1 = v0[12];
  v2 = *(v0[14] + 216);
  v3 = *(v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100E1D594;
  *(v5 + 24) = v4;
  v0[6] = sub_10040B9F8;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10013FE14;
  v0[5] = &unk_101652120;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  v8 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  v9 = swift_unknownObjectRelease();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_100E14060;
    v10 = 0;
    v11 = 0;
  }

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100E14060()
{
  v1 = v0[13];
  v4 = *(v1 + 96);
  v2 = (v1 + 96);
  v3 = v4;
  v0[15] = v4;
  if (v4)
  {
    swift_unknownObjectRetain();

    return _swift_task_switch(sub_100E14118, v3, 0);
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100E14118()
{
  v1 = *(v0 + 120);
  sub_100BCB548();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100E14188, 0, 0);
}

uint64_t sub_100E14188()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 96);
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100E141FC(uint64_t a1, void *a2)
{
  if (!*(a1 + 88))
  {
    type metadata accessor for LocalFindableAccessoryDiscoverySession();
    swift_allocObject();
    v4 = sub_100F04FA4();
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C0F0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v8 = 136315138;
      v17 = v16;

      sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
      sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670);
      v9._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v9);

      v10._countAndFlagsBits = 8250;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      v11._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 62;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);

      v13 = sub_1000136BC(60, 0xE100000000000000, &v17);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Created new LocalFindableAccessoryDiscoverySession: %s", v8, 0xCu);
      sub_100007BAC(v16);
    }

    v14 = *(a1 + 88);
    *(a1 + 88) = v4;
    swift_retain_n();
  }

  swift_retain_n();
  sub_100F9D38C(a2);
}

uint64_t sub_100E144AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  v8 = *(v0 + 96);
  swift_unknownObjectRelease();
  v9 = *(v0 + 112);

  return v0;
}

uint64_t sub_100E1451C()
{
  sub_100E144AC();

  return swift_deallocClassInstance();
}

uint64_t sub_100E145AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100E14640;

  return daemon.getter();
}

uint64_t sub_100E14640(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for PencilPairingService(0);
  v9 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000403C(&qword_10169A090, type metadata accessor for PencilPairingService);
  *v6 = v12;
  v6[1] = sub_100E1481C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E1481C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10050A90C, 0, 0);
  }

  else
  {
    v7 = v4[4];

    v4[7] = a1;
    v8 = swift_task_alloc();
    v4[8] = v8;
    *v8 = v6;
    v8[1] = sub_100E149B8;
    v9 = v4[2];

    return sub_100D927C4(v9, 2, 0x1000000000000000);
  }
}

uint64_t sub_100E149B8()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_100BCB8D8, 0, 0);
}

uint64_t sub_100E14AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_100E14B4C;

  return daemon.getter();
}

uint64_t sub_100E14B4C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DiscoveryService();
  v9 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000403C(&unk_1016B7D70, type metadata accessor for DiscoveryService);
  *v6 = v12;
  v6[1] = sub_100E14D28;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E14D28(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v8 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = sub_100E15020;
  }

  else
  {
    v6 = v3[10];

    v5 = sub_100E14E44;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E14E44()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3 = *(v0 + 96);
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_10000403C(&qword_1016BC570, type metadata accessor for DiscoveryService);
    v6 = *(v4 + 96);
    *(v4 + 96) = v3;
    *(v4 + 104) = v5;

    swift_unknownObjectRelease();
  }

  return _swift_task_switch(sub_100E14F2C, v3, 0);
}

uint64_t sub_100E14F2C()
{
  v1 = *(*(v0 + 96) + 216);
  sub_100F9D38C(*(v0 + 48));

  sub_100BCB268();

  return _swift_task_switch(sub_100E14FA8, 0, 0);
}

uint64_t sub_100E14FA8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  (*(v0 + 56))(0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100E15020()
{
  v17 = v0;
  v1 = v0[10];

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C0F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002DLL, 0x8000000101371850, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure in %s: %{public}@", v7, 0x16u);
    sub_100288C6C(v8);

    sub_100007BAC(v9);
  }

  v11 = v0[13];
  v13 = v0[7];
  v12 = v0[8];
  swift_errorRetain();
  v13(v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100E15254()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 96);
    v0[7] = v3;
    if (v3)
    {
      v4 = *(Strong + 104);
      swift_getObjectType();
      v5 = *(v4 + 8);
      swift_unknownObjectRetain();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100E15424, v7, v6);
    }

    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177C0F0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "No current proximity discovery session!", v11, 2u);
    }

    v12 = v0[6];
    v13 = *(v12 + 96);
    *(v12 + 96) = 0;
    *(v12 + 104) = 0;
    swift_unknownObjectRelease();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100E15424()
{
  v1 = *(v0 + 56);
  sub_100BCB548();

  return _swift_task_switch(sub_100E1548C, 0, 0);
}

uint64_t sub_100E1548C()
{
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[6];
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100E15508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v5[10] = v7;
  *v7 = v5;
  v7[1] = sub_100E155A4;

  return daemon.getter();
}

uint64_t sub_100E155A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DiscoveryService();
  v9 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000403C(&unk_1016B7D70, type metadata accessor for DiscoveryService);
  *v6 = v12;
  v6[1] = sub_100E15780;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E15780(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v8 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v5 = sub_100E15A84;
  }

  else
  {
    v6 = v3[11];

    v5 = sub_100E1589C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E1589C()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3 = *(v0 + 104);
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_10000403C(&qword_1016BC570, type metadata accessor for DiscoveryService);
    v6 = *(v4 + 96);
    *(v4 + 96) = v3;
    *(v4 + 104) = v5;

    swift_unknownObjectRelease();
  }

  return _swift_task_switch(sub_100E15984, v3, 0);
}

uint64_t sub_100E15984()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 104) + 216);
  sub_100F9D38C(*(v0 + 48));

  sub_100BCA284(v1);

  return _swift_task_switch(sub_100E15A0C, 0, 0);
}

uint64_t sub_100E15A0C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  (*(v0 + 64))(0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100E15A84()
{
  v17 = v0;
  v1 = v0[11];

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C0F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002BLL, 0x8000000101371820, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure in %s: %{public}@", v7, 0x16u);
    sub_100288C6C(v8);

    sub_100007BAC(v9);
  }

  v11 = v0[14];
  v13 = v0[8];
  v12 = v0[9];
  swift_errorRetain();
  v13(v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100E15C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_100E15D30;

  return daemon.getter();
}

uint64_t sub_100E15D30(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DiscoveryService();
  v9 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000403C(&unk_1016B7D70, type metadata accessor for DiscoveryService);
  *v6 = v12;
  v6[1] = sub_100E15F0C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E15F0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_100E1612C;
    v8 = 0;
  }

  else
  {
    v9 = *(v4 + 56);

    *(v4 + 80) = a1;
    v7 = sub_100E16048;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100E16048()
{
  v1 = *(v0 + 80);
  sub_100BCAA38(*(v0 + 16), *(v0 + 24));

  return _swift_task_switch(sub_100E160B4, 0, 0);
}

uint64_t sub_100E160B4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  (*(v0 + 32))(0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100E1612C()
{
  v17 = v0;
  v1 = v0[7];

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C0F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1000136BC(0xD000000000000037, 0x80000001013717E0, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure in %s: %{public}@", v7, 0x16u);
    sub_100288C6C(v8);

    sub_100007BAC(v9);
  }

  v11 = v0[9];
  v13 = v0[4];
  v12 = v0[5];
  swift_errorRetain();
  v13(v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100E16340(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v72 = a1;
  v73 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v6 - 8);
  v7 = *(v71 + 64);
  __chkstk_darwin(v6);
  v68 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = *(v69 + 64);
  __chkstk_darwin(v9);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
  unsafeFromAsyncTask<A>(_:)();
  v22 = aBlock;
  if (aBlock)
  {
    v64 = a3;
    v65 = v6;
    v23 = [a3 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v22 + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
    __chkstk_darwin(v25);
    *(&v63 - 2) = v21;
    *(&v63 - 1) = v22;
    v66 = v22;
    sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
    Lock.callAsFunction<A>(_:)();
    v26 = aBlock;
    (*(v18 + 8))(v21, v17);
    if (v26)
    {
      v27 = static os_log_type_t.debug.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v28 = qword_10177C410;
      if (os_log_type_enabled(qword_10177C410, v27))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v26;
        *v30 = v26;
        v31 = v26;
        _os_log_impl(&_mh_execute_header, v28, v27, "TRACE: Create AccessoryPairingSession for %@", v29, 0xCu);
        sub_100288C6C(v30);
      }

      v32 = a4[4];
      v33 = a4[5];
      type metadata accessor for AccessoryPairingSession();
      swift_allocObject();
      v34 = v26;

      v63 = v34;
      v35 = sub_100A5FE14(v32, v33, v34);
      if (v35)
      {
        v36 = v35;
        static os_log_type_t.default.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_101385D80;
        aBlock = v36;

        v38 = String.init<A>(describing:)();
        v40 = v39;
        *(v37 + 56) = &type metadata for String;
        *(v37 + 64) = sub_100008C00();
        *(v37 + 32) = v38;
        *(v37 + 40) = v40;
        os_log(_:dso:log:_:_:)();

        v41 = a4[10];
        a4[10] = v36;

        sub_100A605EC(v64, v72, v73);
      }

      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
      v56 = static OS_dispatch_queue.global(qos:)();
      (*(v13 + 8))(v16, v12);
      v57 = swift_allocObject();
      v58 = v73;
      *(v57 + 16) = v72;
      *(v57 + 24) = v58;
      v79 = sub_100E1D59C;
      v80 = v57;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_100006684;
      v78 = &unk_101652490;
      v59 = _Block_copy(&aBlock);

      v53 = v67;
      static DispatchQoS.unspecified.getter();
      v74 = _swiftEmptyArrayStorage;
      sub_10000403C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v60 = v68;
      v61 = v65;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v59);

      (*(v71 + 8))(v60, v61);
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
      v49 = static OS_dispatch_queue.global(qos:)();
      (*(v13 + 8))(v16, v12);
      v50 = swift_allocObject();
      v51 = v73;
      *(v50 + 16) = v72;
      *(v50 + 24) = v51;
      v79 = sub_100E1D48C;
      v80 = v50;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_100006684;
      v78 = &unk_101652440;
      v52 = _Block_copy(&aBlock);

      v53 = v67;
      static DispatchQoS.unspecified.getter();
      v74 = _swiftEmptyArrayStorage;
      sub_10000403C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v54 = v68;
      v55 = v65;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v52);

      (*(v71 + 8))(v54, v55);
    }

    (*(v69 + 8))(v53, v70);
  }

  sub_100101B58();
  swift_allocError();
  *v42 = 16;
  *(v42 + 8) = 0u;
  *(v42 + 24) = 0u;
  *(v42 + 40) = 11;
  swift_willThrow();

  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v43 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v16, v12);
  v44 = swift_allocObject();
  v45 = v73;
  *(v44 + 16) = v72;
  *(v44 + 24) = v45;
  v79 = sub_100E1D59C;
  v80 = v44;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_100006684;
  v78 = &unk_1016523F0;
  v46 = _Block_copy(&aBlock);

  v47 = v67;
  static DispatchQoS.unspecified.getter();
  v74 = _swiftEmptyArrayStorage;
  sub_10000403C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v48 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v46);

  (*(v71 + 8))(v48, v6);
  (*(v69 + 8))(v47, v70);
}

void sub_100E16FD8(void (*a1)())
{
  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10000403C(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

uint64_t sub_100E17094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v4[19] = v12;
  *v12 = v4;
  v12[1] = sub_100E17208;

  return daemon.getter();
}

uint64_t sub_100E17208(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v12 = *v1;
  *(v3 + 160) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for PencilPairingService(0);
  v9 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000403C(&qword_10169A090, type metadata accessor for PencilPairingService);
  *v6 = v12;
  v6[1] = sub_100E173E4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E173E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v8 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v5 = sub_100E1868C;
  }

  else
  {
    v6 = v3[20];

    v5 = sub_100E17500;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E17500()
{
  v48 = v0;
  v1 = v0[18];
  v2 = v0[7];
  v3 = [v2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v3) = [v2 checkSerialNumber];
  v4 = [v2 verifyFMNID];
  v5 = [v2 verifyWithServer];
  if (!v3)
  {
    goto LABEL_8;
  }

  if (v4)
  {
    if (v5)
    {
      v6 = v0[13];
      (*(v0[16] + 16))(v0[17], v0[18], v0[15]);
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v7 = swift_task_alloc();
      v0[27] = v7;
      *v7 = v0;
      v7[1] = sub_100E17D38;
      v8 = v0[22];
      v9 = v0[13];

      return sub_100DB4414(v9);
    }

    goto LABEL_8;
  }

  if (v5)
  {
LABEL_8:
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v11 = v0[7];
    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C0F0);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[7];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v47 = v18;
      *v17 = 136446210;
      v19 = v16;
      v20 = [v19 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = sub_1000136BC(v21, v23, &v47);

      *(v17 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "Invalid request %{public}s!", v17, 0xCu);
      sub_100007BAC(v18);
    }

    v25 = v0[22];
    v26 = v0[18];
    v27 = v0[15];
    v28 = v0[16];
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    v0[6] = 3;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v29 = v0[5];
    swift_willThrow();

    (*(v28 + 8))(v26, v27);
    v30 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v31 = qword_10177C410;
    if (os_log_type_enabled(qword_10177C410, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543362;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v31, v30, "Pairing status related error %{public}@", v32, 0xCu);
      sub_100288C6C(v33);
    }

    v36 = v0[8];
    v35 = v0[9];
    v37 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:0 lostModeInfo:0];
    swift_errorRetain();
    v36(v37, v29);

    v39 = v0[17];
    v38 = v0[18];
    v41 = v0[13];
    v40 = v0[14];

    v42 = v0[1];

    return v42();
  }

  v43 = v0[14];
  (*(v0[16] + 16))(v0[17], v0[18], v0[15]);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v44 = swift_task_alloc();
  v0[24] = v44;
  *v44 = v0;
  v44[1] = sub_100E17AB0;
  v45 = v0[22];
  v46 = v0[14];

  return sub_100DADF40(v46);
}

uint64_t sub_100E17AB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 96);
  v7 = *v2;
  v4[25] = v1;

  v8 = (v6 + 8);
  v9 = v4[14];
  v10 = v4[11];
  if (v1)
  {
    (*v8)(v9, v10);
    v11 = sub_100E18858;
  }

  else
  {
    v4[26] = a1;
    (*v8)(v9, v10);
    v11 = sub_100E17C3C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100E17C3C()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[8];
  v5 = v0[9];
  v7 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:v0[26] lostModeInfo:0];
  v6(v7, 0);

  (*(v4 + 8))(v2, v3);
  v9 = v0[17];
  v8 = v0[18];
  v11 = v0[13];
  v10 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100E17D38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  v4[28] = a1;
  v4[29] = v1;

  (*(v3[12] + 8))(v3[13], v3[11]);
  if (v1)
  {
    v7 = sub_100E18A44;
  }

  else
  {
    v7 = sub_100E17EA8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100E17EA8()
{
  if (*(v0 + 224) == 3 && [*(v0 + 56) wantsLostModeInfo])
  {
    static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 80);
    *(v0 + 240) = qword_10177C410;
    os_log(_:dso:log:_:_:)();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 248) = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      *(v0 + 256) = v3;
      *v3 = v0;
      v3[1] = sub_100E181AC;
      v4 = *(v0 + 144);

      return sub_100E1C36C(v4);
    }

    v21 = *(v0 + 240);
    v22 = *(v0 + 176);
    v8 = *(v0 + 144);
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);
    v12 = *(v0 + 64);
    v23 = *(v0 + 72);
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v13 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:3 lostModeInfo:0];
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 224);
    v7 = *(v0 + 176);
    v8 = *(v0 + 144);
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    os_log(_:dso:log:_:_:)();
    v13 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:v6 lostModeInfo:0];
  }

  v14 = v13;
  v15 = v13;
  v12(v14, 0);

  (*(v10 + 8))(v8, v9);
  v17 = *(v0 + 136);
  v16 = *(v0 + 144);
  v19 = *(v0 + 104);
  v18 = *(v0 + 112);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100E181AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  *(v4 + 264) = a1;
  *(v4 + 272) = v1;

  v7 = *(v3 + 248);

  if (v1)
  {
    v8 = sub_100E184A0;
  }

  else
  {
    v8 = sub_100E182E8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100E182E8()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v8 = v0[8];
  v7 = v0[9];
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  if (v1)
  {
    v9 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:3 lostModeInfo:v1];
    v10 = v9;
    v8(v9, 0);
  }

  else
  {
    v11 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:3 lostModeInfo:0];
    v10 = v11;
    v8(v11, 0);

    v1 = v10;
  }

  (*(v6 + 8))(v4, v5);
  v13 = v0[17];
  v12 = v0[18];
  v15 = v0[13];
  v14 = v0[14];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100E184A0()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];

  (*(v4 + 8))(v2, v3);
  v5 = v0[34];
  v6 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C410;
  if (os_log_type_enabled(qword_10177C410, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v7, v6, "Pairing status related error %{public}@", v8, 0xCu);
    sub_100288C6C(v9);
  }

  v12 = v0[8];
  v11 = v0[9];
  v13 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:0 lostModeInfo:0];
  swift_errorRetain();
  v12(v13, v5);

  v15 = v0[17];
  v14 = v0[18];
  v17 = v0[13];
  v16 = v0[14];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100E1868C()
{
  v1 = v0[20];

  v2 = v0[23];
  v3 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C410;
  if (os_log_type_enabled(qword_10177C410, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v4, v3, "Pairing status related error %{public}@", v5, 0xCu);
    sub_100288C6C(v6);
  }

  v9 = v0[8];
  v8 = v0[9];
  v10 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:0 lostModeInfo:0];
  swift_errorRetain();
  v9(v10, v2);

  v12 = v0[17];
  v11 = v0[18];
  v14 = v0[13];
  v13 = v0[14];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100E18858()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];

  (*(v4 + 8))(v2, v3);
  v5 = v0[25];
  v6 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C410;
  if (os_log_type_enabled(qword_10177C410, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v7, v6, "Pairing status related error %{public}@", v8, 0xCu);
    sub_100288C6C(v9);
  }

  v12 = v0[8];
  v11 = v0[9];
  v13 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:0 lostModeInfo:0];
  swift_errorRetain();
  v12(v13, v5);

  v15 = v0[17];
  v14 = v0[18];
  v17 = v0[13];
  v16 = v0[14];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100E18A44()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];

  (*(v4 + 8))(v2, v3);
  v5 = v0[29];
  v6 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C410;
  if (os_log_type_enabled(qword_10177C410, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v7, v6, "Pairing status related error %{public}@", v8, 0xCu);
    sub_100288C6C(v9);
  }

  v12 = v0[8];
  v11 = v0[9];
  v13 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:0 lostModeInfo:0];
  swift_errorRetain();
  v12(v13, v5);

  v15 = v0[17];
  v14 = v0[18];
  v17 = v0[13];
  v16 = v0[14];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100E18C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v3[11] = v11;
  *v11 = v3;
  v11[1] = sub_100E18D8C;

  return daemon.getter();
}

uint64_t sub_100E18D8C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for PencilPairingService(0);
  v9 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000403C(&qword_10169A090, type metadata accessor for PencilPairingService);
  *v6 = v12;
  v6[1] = sub_100E18F68;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E18F68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v8 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = sub_100E1947C;
  }

  else
  {
    v6 = v3[12];

    v5 = sub_100E19084;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E19084()
{
  v1 = v0[10];
  (*(v0[6] + 16))(v0[7], v0[2], v0[5]);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_100E19158;
  v3 = v0[14];
  v4 = v0[10];

  return sub_100DA8340(v4);
}

uint64_t sub_100E19158(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 64);
  v10 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_100E1969C;
  }

  else
  {
    v8 = sub_100E192CC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100E192CC()
{
  v14 = v0;
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C0F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000039, 0x80000001013718E0, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s completed successfully!", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 32);
  (*(v0 + 24))(0, v6);

  v9 = *(v0 + 80);
  v10 = *(v0 + 56);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100E1947C()
{
  v17 = v0;
  v1 = v0[15];
  v2 = v0[12];

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C0F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(0xD000000000000039, 0x80000001013718E0, &v16);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with %{public}@!", v6, 0x16u);
    sub_100288C6C(v7);

    sub_100007BAC(v8);
  }

  v11 = v0[3];
  v10 = v0[4];
  swift_errorRetain();
  v11(v1, 0);

  v12 = v0[10];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100E1969C()
{
  v17 = v0;
  v1 = v0[18];
  v2 = v0[14];

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C0F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(0xD000000000000039, 0x80000001013718E0, &v16);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with %{public}@!", v6, 0x16u);
    sub_100288C6C(v7);

    sub_100007BAC(v8);
  }

  v11 = v0[3];
  v10 = v0[4];
  swift_errorRetain();
  v11(v1, 0);

  v12 = v0[10];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

void sub_100E1998C(void *a1, void *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t *a7, uint64_t *a8, unint64_t *a9)
{
  swift_beginAccess();
  v13 = a1[4];
  v84 = a1;
  v85 = a3;
  v86 = a4;
  if ((v13 & 0xC000000000000001) != 0)
  {
    swift_bridgeObjectRetain_n();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(a3, a4);
    sub_1000041A4(a5, a3, a4);
    Set.Iterator.init(_cocoa:)();
    v14 = v90[4];
    v15 = v90[5];
    v16 = v90[6];
    v17 = v90[7];
    v18 = v90[8];
  }

  else
  {
    v19 = -1 << *(v13 + 32);
    v15 = v13 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v13 + 56);
    v14 = a1[4];
    swift_bridgeObjectRetain_n();
    v17 = 0;
  }

  v22 = (v16 + 64) >> 6;
  if (v14 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v23 = v17;
  v24 = v18;
  v25 = v17;
  if (v18)
  {
LABEL_12:
    v26 = (v24 - 1) & v24;
    v27 = *(*(v14 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

    if (!v27)
    {
LABEL_19:

      sub_1000128F8();
      if (qword_101695258 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_50;
    }

    while (1)
    {
      v29 = v14;
      sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
      v30 = v27;
      v31 = XPCSession.connection.getter();
      v32 = static NSObject.== infix(_:_:)();

      if (v32)
      {
        break;
      }

      v17 = v25;
      v18 = v26;
      v14 = v29;
      if ((v29 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v28 = __CocoaSet.Iterator.next()();
      if (v28)
      {
        v90[0] = v28;
        sub_1000BC4D4(v85, v86);
        swift_dynamicCast();
        v27 = v89;
        v25 = v17;
        v26 = v18;
        if (v89)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    sub_1000128F8();
    v50 = v84[4];
    if ((v50 & 0xC000000000000001) != 0)
    {
      if (v50 < 0)
      {
        v51 = v84[4];
      }

      v52 = v84[4];

      v53 = __CocoaSet.count.getter();
    }

    else
    {
      v53 = *(v50 + 16);
    }

    swift_beginAccess();
    a6(v30);
    swift_endAccess();

    (*(*v84 + 200))(v30);
    v54 = v84[4];
    if ((v54 & 0xC000000000000001) != 0)
    {
      if (v54 < 0)
      {
        v55 = v84[4];
      }

      v56 = v84[4];

      v57 = __CocoaSet.count.getter();
    }

    else
    {
      v57 = *(v54 + 16);
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000076D4(v58, qword_10177C668);
    swift_retain_n();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v87 = v57;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v90[0] = v62;
      *v61 = 136446722;
      sub_1000BC4D4(a7, a8);
      sub_1000041A4(a9, a7, a8);
      v63._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v63);

      v64._countAndFlagsBits = 8250;
      v64._object = 0xE200000000000000;
      String.append(_:)(v64);
      v65._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v65);

      v66._countAndFlagsBits = 62;
      v66._object = 0xE100000000000000;
      String.append(_:)(v66);
      v67 = sub_1000136BC(60, 0xE100000000000000, v90);

      *(v61 + 4) = v67;
      *(v61 + 12) = 2048;
      *(v61 + 14) = v53;
      *(v61 + 22) = 2048;
      v68 = v84[4];
      if ((v68 & 0xC000000000000001) != 0)
      {
        if (v68 < 0)
        {
          v69 = v84[4];
        }

        v70 = v84[4];

        v71 = __CocoaSet.count.getter();
      }

      else
      {
        v71 = *(v68 + 16);
      }

      *(v61 + 24) = v71;

      _os_log_impl(&_mh_execute_header, v59, v60, "%{public}s: Session count: %ld -> %ld", v61, 0x20u);
      sub_100007BAC(v62);

      if (v87)
      {
        goto LABEL_48;
      }
    }

    else
    {

      if (v57)
      {
LABEL_48:

        return;
      }
    }

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v90[0] = v75;
      *v74 = 136446210;
      sub_1000BC4D4(a7, a8);
      sub_1000041A4(a9, a7, a8);
      v76._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v76);

      v77._countAndFlagsBits = 8250;
      v77._object = 0xE200000000000000;
      String.append(_:)(v77);
      v78._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v78);

      v79._countAndFlagsBits = 62;
      v79._object = 0xE100000000000000;
      String.append(_:)(v79);

      v80 = sub_1000136BC(60, 0xE100000000000000, v90);

      *(v74 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: Final session removed", v74, 0xCu);
      sub_100007BAC(v75);
    }

    else
    {
    }

    (*(*v84 + 192))();
    sub_100E121AC();
    goto LABEL_48;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      goto LABEL_19;
    }

    v24 = *(v15 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_20:
  v33 = type metadata accessor for Logger();
  sub_1000076D4(v33, qword_10177C668);
  swift_retain_n();
  v34 = a2;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v90[0] = swift_slowAlloc();
    *v37 = 136446722;
    sub_1000BC4D4(a7, a8);
    sub_1000041A4(a9, a7, a8);
    v39._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v39);

    v40._countAndFlagsBits = 8250;
    v40._object = 0xE200000000000000;
    String.append(_:)(v40);
    v41._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v41);

    v42._countAndFlagsBits = 62;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43 = sub_1000136BC(60, 0xE100000000000000, v90);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    *(v37 + 14) = v34;
    *v38 = v34;
    *(v37 + 22) = 2080;
    v44 = v34;
    v45._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v45);

    v46._countAndFlagsBits = 8250;
    v46._object = 0xE200000000000000;
    String.append(_:)(v46);
    v47._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v47);

    v48._countAndFlagsBits = 62;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);

    v49 = sub_1000136BC(60, 0xE100000000000000, v90);

    *(v37 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s: Attempting to remove unknown connection: %@ from %s", v37, 0x20u);
    sub_100288C6C(v38);

    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100E1A638()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100E13DB4(v2, v3);
}

uint64_t sub_100E1A73C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_100E137D0(v1);
}

void sub_100E1A764(uint64_t a1, uint64_t a2)
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "AccessoryDiscoveryService.start", v7, 2u);
  }

  v8 = [objc_opt_self() currentConnection];
  if (!v8)
  {
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    v19 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v16);

LABEL_11:
    return;
  }

  v9 = v8;
  v10 = *(a1 + 48);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  v12[2] = sub_100E1D4A8;
  v12[3] = v11;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101652508;
  v13 = _Block_copy(aBlock);

  v14 = v9;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    if (*(a1 + 72))
    {
      v15 = *(a1 + 72);

      sub_10062F678();
      sub_1006319E8();
      (*(a2 + 16))(a2, 0);

      return;
    }

    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    v19 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v17 = aBlock[0];
    v16 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v16);

    goto LABEL_11;
  }

  __break(1u);
}

void sub_100E1AB1C(uint64_t a1, uint64_t a2)
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "AccessoryDiscoveryService.stopAccessoryDiscovery", v7, 2u);
  }

  if (*(a1 + 72))
  {
    v8 = *(a1 + 72);

    sub_10062EF30();
    (*(a2 + 16))(a2, 0);
  }

  else
  {
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v9 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v9);
  }
}

void sub_100E1ACFC(uint64_t a1, uint64_t a2)
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "AccessoryDiscoveryService.startLocalFindableAccessoryDiscovery", v7, 2u);
  }

  v8 = [objc_opt_self() currentConnection];
  if (!v8)
  {
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    v19 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v16);

LABEL_11:
    return;
  }

  v9 = v8;
  v10 = *(a1 + 48);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  v12[2] = sub_100E1D45C;
  v12[3] = v11;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101652328;
  v13 = _Block_copy(aBlock);

  v14 = v9;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    if (*(a1 + 88))
    {
      v15 = *(a1 + 88);

      sub_10022AE40();
      (*(a2 + 16))(a2, 0);

      return;
    }

    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    v19 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v17 = aBlock[0];
    v16 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v16);

    goto LABEL_11;
  }

  __break(1u);
}

void sub_100E1B0B0(uint64_t a1, uint64_t a2)
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "AccessoryDiscoveryService.stopLocalFindableAccessoryDiscovery", v7, 2u);
  }

  if (qword_101694EC8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v4, qword_10177C108);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "TRACE: stopLocalFindableAccessoryDiscovery() ", v10, 2u);
  }

  if (*(a1 + 88))
  {
    v11 = *(a1 + 88);

    sub_10022D5E0();
    (*(a2 + 16))(a2, 0);
  }

  else
  {
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v12);
  }
}

uint64_t sub_100E1B344(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C0F0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "AccessoryDiscoveryService.disableFindMyPairing", v12, 2u);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v3 + 16))(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v3 + 32))(v15 + v14, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_100A838D4(0, 0, v8, &unk_1013EA750, v15);
}

void sub_100E1B5D0(void *a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  if (*(a3 + 80))
  {

    sub_100A63FA0(a1, a2, sub_1001BC108, v8);
  }

  else
  {
    type metadata accessor for SPPairingSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v9 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v9);
  }
}

void sub_100E1B7B8(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  if (*(a2 + 80))
  {

    sub_100A65A00(a1, sub_10026AE30, v6);
  }

  else
  {
    type metadata accessor for SPPairingSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v7 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v7);
  }
}

void sub_100E1B994(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C0F0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "AccessoryDiscoveryService.startAccessoryProximityDiscovery", v8, 2u);
  }

  v9 = [objc_opt_self() currentConnection];
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 112);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v10;
    v13[4] = sub_10026AE30;
    v13[5] = v4;

    v14 = v10;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  else
  {
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v15);
  }
}

uint64_t sub_100E1BC48(uint64_t a1, uint64_t a2)
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "AccessoryDiscoveryService.stopAccessoryProximityDiscovery", v7, 2u);
  }

  v8 = *(a1 + 112);
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v9 = *(a2 + 16);

  return v9(a2, 0);
}

void sub_100E1BDAC(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  _Block_copy(a3);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177C0F0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v7;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "AccessoryDiscoveryService.proximityPairing", v14, 2u);
    v7 = v25;
  }

  v15 = [objc_opt_self() currentConnection];
  if (v15)
  {
    v16 = v15;
    v17 = *(a2 + 112);
    v18 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(v9, a1, v6);
    v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v16;
    (*(v7 + 32))(v20 + v19, v9, v6);
    v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v21 = sub_10001E370;
    v21[1] = v10;

    v22 = v16;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  else
  {
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    v26 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v23 = v27;
    v22 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v22);
  }
}

uint64_t sub_100E1C160(void *a1)
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C0F0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "shouldAccept: %@", v6, 0xCu);
    sub_100288C6C(v7);
  }

  sub_10047020C();
  v9 = NSXPCConnection.hasEntitlement<A>(_:)();
  if ((v9 & 1) == 0)
  {
    v10 = v3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "Missing entitlement: %@", v13, 0xCu);
      sub_100288C6C(v14);
    }
  }

  return v9 & 1;
}

uint64_t sub_100E1C36C(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = type metadata accessor for LostModeAlertInfo();
  v1[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v1[12] = v12;
  *v12 = v1;
  v12[1] = sub_100E1C52C;

  return daemon.getter();
}

uint64_t sub_100E1C52C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalFindableLostModeDetectionService();
  v9 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000403C(&unk_1016BC560, type metadata accessor for LocalFindableLostModeDetectionService);
  *v6 = v12;
  v6[1] = sub_100E1C708;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E1C708(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v8 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = sub_100E1CC60;
  }

  else
  {
    v6 = v3[13];

    v5 = sub_100E1C824;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E1C824()
{
  v1 = v0[9];
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100E1C8FC;
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[9];

  return sub_1010164B8(v4, v5);
}

uint64_t sub_100E1C8FC()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100E1CE8C;
  }

  else
  {
    v6 = sub_100E1CA6C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100E1CA6C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[3];
  v4 = (v1 + *(v2 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = (v1 + *(v2 + 24));
  v8 = *v7;
  v9 = v7[1];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v3, 1, 1, v10);
  if (v6)
  {
    v12 = String._bridgeToObjectiveC()();
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  if (v9)
  {
LABEL_3:
    v9 = String._bridgeToObjectiveC()();
  }

LABEL_4:
  v13 = v0[3];
  if ((*(v11 + 48))(v13, 1, v10) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v13, v10);
  }

  v15 = v0[15];
  v16 = v0[11];
  v17 = [objc_allocWithZone(SPLostModeInfo) initWithMessage:0 email:v12 phoneNumber:v9 timestamp:isa];

  sub_100E1D0B8(v16);
  v18 = v0[11];
  v19 = v0[9];
  v20 = v0[6];
  v21 = v0[3];

  v22 = v0[1];

  return v22(v17);
}

uint64_t sub_100E1CC60()
{
  v17 = v0;
  v1 = v0[16];
  v2 = v0[13];

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C0F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013717C0, &v16);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with lost mode related error %{public}@!", v6, 0x16u);
    sub_100288C6C(v7);

    sub_100007BAC(v8);
  }

  else
  {
  }

  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[6];
  v13 = v0[3];

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_100E1CE8C()
{
  v17 = v0;
  v1 = v0[18];
  v2 = v0[15];

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C0F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013717C0, &v16);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with lost mode related error %{public}@!", v6, 0x16u);
    sub_100288C6C(v7);

    sub_100007BAC(v8);
  }

  else
  {
  }

  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[6];
  v13 = v0[3];

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_100E1D0B8(uint64_t a1)
{
  v2 = type metadata accessor for LostModeAlertInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100E1D114()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100E15508(v4, v5, v0 + v3, v7, v8);
}

uint64_t sub_100E1D230()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014650;

  return sub_100E15234(v0);
}

uint64_t sub_100E1D2C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100E14AB4(v2, v3, v5, v4);
}

uint64_t sub_100E1D36C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100E145AC(a1, v6, v7, v1 + v5);
}

unint64_t sub_100E1D4C4()
{
  result = qword_1016BC588;
  if (!qword_1016BC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC588);
  }

  return result;
}

unint64_t sub_100E1D51C()
{
  result = qword_1016BC590;
  if (!qword_1016BC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC590);
  }

  return result;
}

uint64_t type metadata accessor for FetchEndpoint()
{
  result = qword_1016BC5F8;
  if (!qword_1016BC5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100E1D638()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0x68637465662FLL;
  v3._object = 0xE600000000000000;
  String.append(_:)(v3);
  return v2(&v5, 0);
}

uint64_t sub_100E1D73C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C120);
  sub_1000076D4(v0, qword_10177C120);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100E1D7BC()
{
  type metadata accessor for UserNotificationPublisher();
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  qword_10177C138 = result;
  return result;
}

uint64_t sub_100E1D7F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, BOOL))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C120);
    sub_10001F280(a2, v28);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v9 = 136315394;
      sub_10001F280(v28, v26);
      sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
      v10 = String.init<A>(describing:)();
      v12 = v11;
      sub_100007BAC(v28);
      v13 = sub_1000136BC(v10, v12, &v27);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v26[0] = a1;
      swift_errorRetain();
      sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
      v14 = String.init<A>(describing:)();
      v16 = sub_1000136BC(v14, v15, &v27);

      *(v9 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to post user notification for notification: %s due to error: %s", v9, 0x16u);
      swift_arrayDestroy();
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177C120);
    sub_10001F280(a2, v28);
    v7 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      sub_10001F280(v28, v26);
      sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      sub_100007BAC(v28);
      v24 = sub_1000136BC(v21, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v7, v18, "Successfuly posted user notification for notification: %s", v19, 0xCu);
      sub_100007BAC(v20);
LABEL_10:

      if (!a3)
      {
        return sub_100A1B234(a1, a1 != 0);
      }

      goto LABEL_13;
    }
  }

  sub_100007BAC(v28);
  if (a3)
  {
LABEL_13:
    a3(a1, a1 != 0);
  }

  return sub_100A1B234(a1, a1 != 0);
}

void sub_100E1DB8C(unint64_t a1, uint64_t a2, void *a3)
{
  v21[2] = a2;

  v5 = sub_10013DEC8(sub_100E2064C, v21, a1);
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    isa = Array._bridgeToObjectiveC()().super.isa;

    [a3 removeDeliveredNotificationsWithIdentifiers:isa];

    return;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v22 = _swiftEmptyArrayStorage;
  sub_101123BB8(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v22;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v11 request];
      v13 = [v12 identifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v22 = v9;
      v18 = v9[2];
      v17 = v9[3];
      if (v18 >= v17 >> 1)
      {
        sub_101123BB8((v17 > 1), v18 + 1, 1);
        v9 = v22;
      }

      ++v8;
      v9[2] = v18 + 1;
      v19 = &v9[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
    }

    while (v7 != v8);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_100E1DD84(id *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  v9 = [v34 request];
  v10 = [v9 identifier];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v15 = a2[3];
  v14 = a2[4];
  sub_1000035D0(a2, v15);
  (*(v14 + 16))(v15, v14);
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v5 + 8))(v8, v4);
  if (v11 == v16 && v13 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = 0;
    if ((v20 & 1) == 0)
    {
      return v21 & 1;
    }
  }

  v22 = [v34 request];
  v23 = [v22 content];

  v24 = [v23 categoryIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = a2[3];
  v29 = a2[4];
  sub_1000035D0(a2, v28);
  v30 = (*(v29 + 8))(v28, v29);
  if (v25 == sub_100E1E03C(v30) && v27 == v31)
  {
    v21 = 1;
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v21 & 1;
}

uint64_t sub_100E1E03C(unsigned __int8 a1)
{
  v1 = a1 >> 5;
  if (v1 <= 2)
  {
    if (!(a1 >> 5))
    {
      if (a1 - 1 > 1)
      {
        v2 = &SPSeparationAlertLeftBehindDevicesCategoryIdentifier;
      }

      else
      {
        v2 = &SPSeparationAlertLeftBehindItemsCategoryIdentifier;
      }

      goto LABEL_35;
    }

    if (v1 == 1)
    {
      if ((a1 & 0x1Fu) - 1 >= 2)
      {
        v2 = &SPSeparationAlertLeftWhileTravelingDevicesCategoryIdentifier;
      }

      else
      {
        v2 = &SPSeparationAlertLeftWhileTravelingItemsCategoryIdentifier;
      }

LABEL_35:
      v9 = *v2;
      return static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v3 = 0xD000000000000024;
    if (a1 != 66)
    {
      v3 = 0xD00000000000001BLL;
    }

    v4 = 0xD000000000000030;
    if (a1 == 64)
    {
      v4 = 0xD00000000000002BLL;
    }

    v5 = a1 <= 0x41u;
    goto LABEL_25;
  }

  if (v1 == 3)
  {
    v6 = 0xD00000000000003ELL;
    if (a1 == 96)
    {
      v6 = 0xD000000000000025;
    }

    if (a1 <= 0x61u)
    {
      return v6;
    }

    else
    {
      return 0xD00000000000003FLL;
    }
  }

  else
  {
    if (v1 == 4)
    {
      v3 = 0xD000000000000032;
      if (a1 != 130)
      {
        v3 = 0xD000000000000038;
      }

      v4 = 0xD000000000000033;
      if (a1 == 128)
      {
        v4 = 0xD00000000000002FLL;
      }

      v5 = a1 <= 0x81u;
LABEL_25:
      if (v5)
      {
        return v4;
      }

      else
      {
        return v3;
      }
    }

    v8 = 0xD000000000000036;
    if (a1 == 161)
    {
      v8 = 0xD000000000000040;
    }

    if (a1 == 160)
    {
      return 0xD00000000000003FLL;
    }

    else
    {
      return v8;
    }
  }
}

void sub_100E1E2A8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177C120);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "replaceContentForRequest failed: %@", v3, 0xCu);
      sub_100288C6C(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_100E1E448(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, BOOL))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C120);
    sub_10001F280(a3, v33);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *v10 = 136315394;
      sub_10001F280(v33, v32);
      sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
      v11 = String.init<A>(describing:)();
      v13 = v12;
      sub_100007BAC(v33);
      v14 = sub_1000136BC(v11, v13, v30);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v32[0] = a1;
      swift_errorRetain();
      sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
      v15 = String.init<A>(describing:)();
      v17 = sub_1000136BC(v15, v16, v30);

      *(v10 + 14) = v17;
      v18 = "Failed to update notification for notification: %s due to error: %s";
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177C120);
    sub_10001F280(a2, v33);
    sub_10001F280(a3, v32);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v10 = 136315394;
      sub_10001F280(v33, v30);
      sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      sub_100007BAC(v33);
      v24 = sub_1000136BC(v21, v23, &v31);

      *(v10 + 4) = v24;
      *(v10 + 12) = 2080;
      sub_10001F280(v32, v30);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      sub_100007BAC(v32);
      v28 = sub_1000136BC(v25, v27, &v31);

      *(v10 + 14) = v28;
      v18 = "Successfuly updated user notification %s with %s";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, v9, v18, v10, 0x16u);
      swift_arrayDestroy();

      if (!a4)
      {
        return sub_100A1B234(a1, a1 != 0);
      }

      goto LABEL_15;
    }

    sub_100007BAC(v32);
  }

  sub_100007BAC(v33);
  if (a4)
  {
LABEL_15:
    a4(a1, a1 != 0);
  }

  return sub_100A1B234(a1, a1 != 0);
}

uint64_t sub_100E1E838()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100E1E8A0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

BOOL sub_100E1E90C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1 >> 5;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (a1 > 0x61u)
      {
        if (a1 == 98)
        {
          if (a2 == 98)
          {
            return 1;
          }
        }

        else if (a2 == 99)
        {
          return 1;
        }
      }

      else if (a1 == 96)
      {
        if (a2 == 96)
        {
          return 1;
        }
      }

      else if (a2 == 97)
      {
        return 1;
      }
    }

    else if (v2 == 4)
    {
      if (a1 > 0x81u)
      {
        if (a1 == 130)
        {
          if (a2 == 130)
          {
            return 1;
          }
        }

        else if (a2 == 131)
        {
          return 1;
        }
      }

      else if (a1 == 128)
      {
        if (a2 == 128)
        {
          return 1;
        }
      }

      else if (a2 == 129)
      {
        return 1;
      }
    }

    else if (a1 == 160)
    {
      if (a2 == 160)
      {
        return 1;
      }
    }

    else if (a1 == 161)
    {
      if (a2 == 161)
      {
        return 1;
      }
    }

    else if (a2 == 162)
    {
      return 1;
    }
  }

  else if (a1 >> 5)
  {
    if (v2 == 1)
    {
      if ((a2 & 0xE0) == 0x20)
      {
        return ((a2 ^ a1) & 0x1F) == 0;
      }
    }

    else if (a1 > 0x41u)
    {
      if (a1 == 66)
      {
        if (a2 == 66)
        {
          return 1;
        }
      }

      else if (a2 == 67)
      {
        return 1;
      }
    }

    else if (a1 == 64)
    {
      if (a2 == 64)
      {
        return 1;
      }
    }

    else if (a2 == 65)
    {
      return 1;
    }
  }

  else if (a2 <= 0x1Fu)
  {
    return a1 == a2;
  }

  return 0;
}

id sub_100E1EABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v33 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, a2);
  v15 = [objc_allocWithZone(UNMutableNotificationContent) init];
  (*(a3 + 96))(a2, a3);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v19 = 0;
  if ((*(v17 + 48))(v10, 1, v16) != 1)
  {
    URL._bridgeToObjectiveC()(v18);
    v19 = v20;
    (*(v17 + 8))(v10, v16);
  }

  [v15 setDefaultActionURL:v19];

  v21 = [objc_opt_self() defaultSound];
  [v15 setSound:v21];

  v22 = *(a3 + 8);
  v23 = v22(a2, a3);
  sub_100E1E03C(v23);
  v24 = String._bridgeToObjectiveC()();

  [v15 setCategoryIdentifier:v24];

  (*(a3 + 24))(a2, a3);
  v25 = String._bridgeToObjectiveC()();

  [v15 setTitle:v25];

  (*(a3 + 32))(a2, a3);
  v26 = String._bridgeToObjectiveC()();

  [v15 setBody:v26];

  if (v22(a2, a3) == 67)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  [v15 setInterruptionLevel:v27];
  v28 = (*(a3 + 40))(a2, a3);
  v29 = (*(a3 + 64))(a2, a3);
  v37 = &type metadata for Bool;
  LOBYTE(v36) = v29 & 1;
  sub_1001E6224(&v36, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v28;
  sub_100FFB368(v35, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v34);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v15 setUserInfo:isa];

  [v15 setShouldIgnoreDoNotDisturb:{(*(a3 + 48))(a2, a3) & 1}];
  [v15 setShouldUseRequestIdentifierForDismissalSync:{(*(a3 + 80))(a2, a3) & 1}];
  (*(v11 + 8))(v14, a2);
  return v15;
}

uint64_t sub_100E1EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66[3] = a4;
  v66[4] = a5;
  v15 = sub_1000280DC(v66);
  (*(*(a4 - 8) + 16))(v15, a1, a4);
  if ((*(a5 + 72))(a4, a5))
  {
    v58 = a2;
    v59 = a3;
    (*(a5 + 88))(a4, a5);
    v16 = objc_allocWithZone(UNUserNotificationCenter);
    v17 = String._bridgeToObjectiveC()();

    v57 = [v16 initWithBundleIdentifier:v17];

    v18 = sub_100E1EABC(v15, a4, a5);
    if ((*(a5 + 56))(a4, a5))
    {
      v19 = 15;
    }

    else
    {
      v19 = 7;
    }

    v53 = *(a5 + 16);
    v53(a4, a5);
    UUID.uuidString.getter();
    v20 = *(v11 + 8);
    v55 = v10;
    v56 = v11 + 8;
    v54 = v20;
    v20(v14, v10);
    v21 = v18;
    v22 = String._bridgeToObjectiveC()();
    v23 = v21;

    v24 = [objc_opt_self() requestWithIdentifier:v22 content:v21 trigger:0 destinations:v19];

    if (((*(a5 + 64))(a4, a5) & 1) == 0)
    {
      if (qword_101694ED8 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000076D4(v25, qword_10177C120);
      sub_10001F280(v66, aBlock);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v52 = v24;
        v30 = v23;
        v31 = v29;
        *&v64[0] = v29;
        *v28 = 136315138;
        sub_1000035D0(aBlock, v61);
        v53(a4, a5);
        sub_1002FFBAC();
        v32 = v55;
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        v54(v14, v32);
        sub_100007BAC(aBlock);
        v36 = sub_1000136BC(v33, v35, v64);

        *(v28 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v26, v27, "Notification with identifier %s **WILL NOT** be forwarded to the companion", v28, 0xCu);
        sub_100007BAC(v31);
        v23 = v30;
        v24 = v52;
      }

      else
      {

        sub_100007BAC(aBlock);
      }
    }

    sub_10001F280(v66, v64);
    v46 = swift_allocObject();
    sub_100031694(v64, v46 + 16);
    v48 = v58;
    v47 = v59;
    *(v46 + 56) = v58;
    *(v46 + 64) = v47;
    v62 = sub_100358EC4;
    v63 = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10077732C;
    v61 = &unk_101652610;
    v49 = _Block_copy(aBlock);
    sub_100012908(v48);

    v50 = v57;
    [v57 addNotificationRequest:v24 withCompletionHandler:v49];

    _Block_release(v49);
  }

  else
  {
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10177C120);
    sub_10001F280(v66, aBlock);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v65 = v41;
      *v40 = 136315138;
      sub_10001F280(aBlock, v64);
      sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
      v42 = String.init<A>(describing:)();
      v44 = v43;
      sub_100007BAC(aBlock);
      v45 = sub_1000136BC(v42, v44, &v65);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "Refusing to post disabled notification: %s", v40, 0xCu);
      sub_100007BAC(v41);
    }

    else
    {

      sub_100007BAC(aBlock);
    }
  }

  return sub_100007BAC(v66);
}

void sub_100E1F694(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v56[0] = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    v5 = _swiftEmptyArrayStorage[2];
    v6 = 2 * v5;
    do
    {
      v7 = *v4++;
      v8 = v7 >= 2;
      if (v7 >= 2)
      {
        v9 = 0xD000000000000029;
      }

      else
      {
        v9 = 0xD000000000000010;
      }

      if (v8)
      {
        v10 = "sHandle8@NSError16";
      }

      else
      {
        v10 = "followingPlaySound&id=";
      }

      v56[0] = v2;
      v11 = v2[3];
      v12 = v5 + 1;
      if (v5 >= v11 >> 1)
      {
        sub_101123BB8((v11 > 1), v5 + 1, 1);
        v2 = v56[0];
      }

      v2[2] = v12;
      v13 = &v2[v6];
      v13[4] = v9;
      v13[5] = v10 | 0x8000000000000000;
      v6 += 2;
      v5 = v12;
      --v1;
    }

    while (v1);
  }

  v14 = sub_101129930(v2);

  v15 = 0;
  v51 = v14 + 56;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 56);
  v50 = (v16 + 63) >> 6;
  v19 = _swiftEmptyArrayStorage;
  v52 = v14;
  while (1)
  {
    if (!v18)
    {
      while (1)
      {
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v20 >= v50)
        {
          goto LABEL_52;
        }

        v18 = *(v51 + 8 * v20);
        ++v15;
        if (v18)
        {
          v15 = v20;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

LABEL_21:
    v21 = (*(v14 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v18)))));
    v22 = *v21;
    v23 = v21[1];
    v24 = objc_allocWithZone(UNUserNotificationCenter);

    v25 = String._bridgeToObjectiveC()();

    v26 = [v24 initWithBundleIdentifier:v25];

    v27 = [v26 deliveredNotifications];
    sub_100889060();
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v28 >> 62;
    v55 = v28;
    v30 = v28 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v19 >> 62;
    if (v19 >> 62)
    {
      break;
    }

    v32 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v32 + v30;
    if (__OFADD__(v32, v30))
    {
      goto LABEL_51;
    }

LABEL_25:
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v31)
      {
LABEL_32:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v34 = v19 & 0xFFFFFFFFFFFFFF8;
LABEL_31:
        v35 = *(v34 + 16);
      }

      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v34 = v19 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_34;
    }

    if (v31)
    {
      goto LABEL_32;
    }

    v34 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v33 > *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_31;
    }

LABEL_34:
    v54 = v19;
    v36 = *(v34 + 16);
    v37 = *(v34 + 24);
    if (v29)
    {
      v39 = v34;
      v40 = _CocoaArrayWrapper.endIndex.getter();
      v34 = v39;
      v38 = v40;
    }

    else
    {
      v38 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 &= v18 - 1;
    if (v38)
    {
      if (((v37 >> 1) - v36) < v30)
      {
        goto LABEL_55;
      }

      v41 = v34 + 8 * v36 + 32;
      v53 = v34;
      if (v29)
      {
        if (v38 < 1)
        {
          goto LABEL_57;
        }

        sub_100E1FD60();
        for (i = 0; i != v38; ++i)
        {
          sub_1000BC4D4(&qword_1016BC740, "n;\b");
          v43 = sub_100268264(v56, i, v55);
          v45 = *v44;
          (v43)(v56, 0);
          *(v41 + 8 * i) = v45;
        }
      }

      else
      {
        swift_arrayInitWithCopy();
      }

      v14 = v52;
      v19 = v54;
      if (v30 > 0)
      {
        v46 = *(v53 + 16);
        v47 = __OFADD__(v46, v30);
        v48 = v46 + v30;
        if (v47)
        {
          goto LABEL_56;
        }

        *(v53 + 16) = v48;
      }
    }

    else
    {

      v19 = v54;
      if (v30 > 0)
      {
        goto LABEL_54;
      }
    }
  }

  v49 = _CocoaArrayWrapper.endIndex.getter();
  v33 = v49 + v30;
  if (!__OFADD__(v49, v30))
  {
    goto LABEL_25;
  }

LABEL_51:
  __break(1u);
LABEL_52:
}

uint64_t sub_100E1FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v11, v12);
  (*(a5 + 88))(a4, a5);
  v13 = objc_allocWithZone(UNUserNotificationCenter);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithBundleIdentifier:v14];

  v16 = sub_100E1EABC(v10, a4, a5);
  v17 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_100E1E2A8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = &unk_1016525C0;
  v18 = _Block_copy(aBlock);
  [v15 replaceContentForRequestWithIdentifier:v17 replacementContent:v16 completionHandler:v18];
  _Block_release(v18);

  return (*(v7 + 8))(v10, a4);
}

unint64_t sub_100E1FD60()
{
  result = qword_1016BC748;
  if (!qword_1016BC748)
  {
    sub_1000BC580(&qword_1016BC740, "n;\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC748);
  }

  return result;
}

void *sub_100E1FDC4(char a1)
{
  LOBYTE(v1) = a1;
  v2 = objc_allocWithZone(UNUserNotificationCenter);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithBundleIdentifier:v3];

  v5 = [v4 deliveredNotifications];
  sub_100889060();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_72;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v38 = v4;
    v8 = 0;
    v9 = v1;
    v10 = v1 >> 5;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      v4 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = i;
      v14 = [v11 request];
      v15 = [v14 content];

      v16 = [v15 categoryIdentifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v27 = 0xD000000000000025;
          v28 = 0x8000000101371CA0;
          if (v9 == 98)
          {
            v28 = 0x8000000101371CE0;
          }

          if (v9 != 96)
          {
            v27 = 0xD00000000000003ELL;
          }

          v29 = 0x8000000101371D20;
          if (v9 == 96)
          {
            v29 = 0x8000000101371D60;
          }

          if (v9 <= 97)
          {
            v34 = v27;
          }

          else
          {
            v34 = 0xD00000000000003FLL;
          }

          if (v9 <= 97)
          {
            v36 = v29;
          }

          else
          {
            v36 = v28;
          }
        }

        else
        {
          v20 = 0xD00000000000002FLL;
          v21 = 0xD000000000000032;
          if (v9 != 130)
          {
            v21 = 0xD000000000000038;
          }

          v22 = 0x8000000101371BB0;
          if (v9 == 130)
          {
            v22 = 0x8000000101371BF0;
          }

          if (v9 != 128)
          {
            v20 = 0xD000000000000033;
          }

          v23 = 0x8000000101371C30;
          if (v9 == 128)
          {
            v23 = 0x8000000101371C70;
          }

          if (v9 <= 129)
          {
            v24 = v23;
          }

          else
          {
            v20 = v21;
            v24 = v22;
          }

          v25 = 0xD000000000000036;
          if (v9 == 161)
          {
            v25 = 0xD000000000000040;
          }

          v26 = 0x8000000101371AE0;
          if (v9 == 161)
          {
            v26 = 0x8000000101371B20;
          }

          if (v9 == 160)
          {
            v25 = 0xD00000000000003FLL;
            v26 = 0x8000000101371B70;
          }

          if (v10 == 4)
          {
            v34 = v20;
          }

          else
          {
            v34 = v25;
          }

          if (v10 == 4)
          {
            v36 = v24;
          }

          else
          {
            v36 = v26;
          }
        }
      }

      else if (v10 > 1)
      {
        v30 = 0xD00000000000002BLL;
        v31 = 0xD000000000000024;
        if (v9 != 66)
        {
          v31 = 0xD00000000000001BLL;
        }

        v32 = 0x8000000101371D90;
        if (v9 == 66)
        {
          v32 = 0x800000010134AA00;
        }

        if (v9 != 64)
        {
          v30 = 0xD000000000000030;
        }

        v33 = 0x8000000101371DB0;
        if (v9 == 64)
        {
          v33 = 0x8000000101371DF0;
        }

        if (v9 <= 65)
        {
          v34 = v30;
        }

        else
        {
          v34 = v31;
        }

        if (v9 <= 65)
        {
          v36 = v33;
        }

        else
        {
          v36 = v32;
        }
      }

      else
      {
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      if (v17 == v34 && v19 == v36)
      {
      }

      else
      {
        LOBYTE(v1) = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v1 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v1 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_6:
      i = v13;
      ++v8;
      if (v4 == v13)
      {
        v4 = v38;
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    ;
  }

LABEL_73:

  return _swiftEmptyArrayStorage;
}

void sub_100E2033C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  sub_1000035D0(a1, v11);
  (*(v12 + 88))(v11, v12);
  v13 = objc_allocWithZone(UNUserNotificationCenter);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithBundleIdentifier:v14];

  v16 = a2[3];
  v17 = a2[4];
  v18 = sub_1000035D0(a2, v16);
  v19 = sub_100E1EABC(v18, v16, v17);
  v21 = a1[3];
  v20 = a1[4];
  sub_1000035D0(a1, v21);
  (*(v20 + 16))(v21, v20);
  UUID.uuidString.getter();
  (*(v7 + 8))(v10, v6);
  v22 = String._bridgeToObjectiveC()();

  sub_10001F280(a1, v31);
  sub_10001F280(a2, v30);
  v23 = swift_allocObject();
  sub_100031694(v31, v23 + 16);
  sub_100031694(v30, v23 + 56);
  v25 = v27;
  v24 = v28;
  *(v23 + 96) = v27;
  *(v23 + 104) = v24;
  aBlock[4] = sub_100E2063C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = &unk_101652660;
  v26 = _Block_copy(aBlock);
  sub_100012908(v25);

  [v15 replaceContentForRequestWithIdentifier:v22 replacementContent:v19 completionHandler:v26];
  _Block_release(v26);
}

uint64_t getEnumTagSinglePayload for UserNotificationCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3B)
  {
    goto LABEL_17;
  }

  if (a2 + 197 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 197) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 197;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 197;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 197;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFFC7 | (8 * ((*a1 >> 2) & 7))) ^ 0x3F;
  if (v6 >= 0x3A)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for UserNotificationCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 197 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 197) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3B)
  {
    v4 = 0;
  }

  if (a2 > 0x3A)
  {
    v5 = ((a2 - 59) >> 8) + 1;
    *result = a2 - 59;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100E207C8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x3F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 & 3 | (4 * (v1 >> 5))) - 6;
  }
}

_BYTE *sub_100E207F8(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (32 * a2);
  }

  else
  {
    *result = ((a2 - 2) & 3 | (32 * ((a2 - 2) >> 2))) + 64;
  }

  return result;
}

uint64_t sub_100E2083C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100E20860(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *sub_100E208BC(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

unint64_t sub_100E20908()
{
  result = qword_1016BC750;
  if (!qword_1016BC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC750);
  }

  return result;
}

void sub_100E209B8()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100E20A88();
    if (v1 <= 0x3F)
    {
      sub_100E20B00();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100E20A88()
{
  if (!qword_1016BC7C0)
  {
    type metadata accessor for CachedHistoricalLocation(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BC7C0);
    }
  }
}

void sub_100E20B00()
{
  if (!qword_10169D5F0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10169D5F0);
    }
  }
}

unint64_t sub_100E20B90(uint64_t a1)
{
  result = sub_100E20BB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100E20BB8()
{
  result = qword_1016BC8A8;
  if (!qword_1016BC8A8)
  {
    type metadata accessor for CachedHistoricalLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC8A8);
  }

  return result;
}

uint64_t sub_100E20C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100E20C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedHistoricalLocation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v30 - v11);
  v13 = sub_1000BC4D4(&qword_1016BC8B0, &qword_1013EAB38);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 40), *(a1 + 48), *(a2 + 40), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v17 = type metadata accessor for BeaconPayload(0);
  v18 = v17[9];
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(a1 + v17[10]) != *(a2 + v17[10]))
  {
    return 0;
  }

  v19 = v17[11];
  v20 = *(v13 + 48);
  sub_100E20C10(a1 + v19, v16);
  sub_100E20C10(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_10000B3A8(v16, &qword_10169BA28, &unk_1013EAA60);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  sub_100E20C10(v16, v12);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_100E2100C(v12);
LABEL_16:
    v25 = &qword_1016BC8B0;
    v26 = &qword_1013EAB38;
LABEL_23:
    sub_10000B3A8(v16, v25, v26);
    return 0;
  }

  sub_100E21068(&v16[v20], v8);
  if (*v12 != *v8 || v12[1] != v8[1] || v12[2] != v8[2])
  {
    sub_100E2100C(v8);
    sub_100E2100C(v12);
    v25 = &qword_10169BA28;
    v26 = &unk_1013EAA60;
    goto LABEL_23;
  }

  v27 = *(v4 + 28);
  v28 = static Date.== infix(_:_:)();
  sub_100E2100C(v8);
  sub_100E2100C(v12);
  sub_10000B3A8(v16, &qword_10169BA28, &unk_1013EAA60);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v22 = v17[12];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23 != 2)
  {
    return v24 != 2 && ((v24 ^ v23) & 1) == 0;
  }

  return v24 == 2;
}

uint64_t sub_100E2100C(uint64_t a1)
{
  v2 = type metadata accessor for CachedHistoricalLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100E21068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedHistoricalLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E210CC(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v3 = *(type metadata accessor for CachedHistoricalLocation(0) + 28);

  return static Date.== infix(_:_:)();
}

uint64_t sub_100E2114C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v8 = (result + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;

      v10(a2, a3, a4);

      v8 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_100E211D4(uint64_t a1, uint64_t *a2)
{
  v55 = a2;
  v3 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v54 = &v51 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return result;
  }

  v11 = (a1 + 40);
  *&v8 = 141558275;
  v52 = v8;
  while (1)
  {
    v15 = *(v11 - 1);
    v14 = *v11;
    sub_100017D5C(v15, *v11);
    v16 = Data.subdata(in:)();
    v18 = v17;
    v59[0] = v16;
    v59[1] = v17;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000076D4(v19, qword_10177C418);
      sub_100017D5C(v16, v18);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      sub_100016590(v16, v18);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v60 = v10;
        v23 = v22;
        v24 = swift_slowAlloc();
        v58 = v14;
        v59[0] = v24;
        v25 = v24;
        *v23 = v52;
        *(v23 + 4) = 1752392040;
        *(v23 + 12) = 2081;
        v26 = Data.hexString.getter();
        v57 = v15;
        v28 = sub_1000136BC(v26, v27, v59);

        *(v23 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v20, v21, "Invalid serial number %{private,mask.hash}s", v23, 0x16u);
        sub_100007BAC(v25);

        v10 = v60;

        sub_100016590(v16, v18);

        v12 = v57;
        v13 = v58;
      }

      else
      {

        sub_100016590(v16, v18);
        v12 = v15;
        v13 = v14;
      }

      result = sub_100016590(v12, v13);
      goto LABEL_5;
    }

    v57 = v15;
    v58 = v14;
    v60 = v10;
    v29 = Data.trimmed.getter();
    v31 = v30;
    v32 = type metadata accessor for MACAddress();
    v33 = v54;
    (*(*(v32 - 8) + 56))(v54, 1, 1, v32);
    sub_1000D2AD8(v33, v56, &qword_1016A40D0, &unk_10138BE70);
    v34 = v55;
    v35 = *v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v34;
    v59[0] = v37;
    v39 = sub_100771E30(v29, v31);
    v40 = *(v37 + 16);
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      break;
    }

    v43 = v38;
    if (*(v37 + 24) >= v42)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v46 = v59[0];
        if ((v38 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1010052E8();
        v46 = v59[0];
        if ((v43 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_100FE68E4(v42, isUniquelyReferenced_nonNull_native);
      v44 = sub_100771E30(v29, v31);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_26;
      }

      v39 = v44;
      v46 = v59[0];
      if ((v43 & 1) == 0)
      {
LABEL_15:
        v46[(v39 >> 6) + 8] |= 1 << v39;
        v47 = (v46[6] + 16 * v39);
        *v47 = v29;
        v47[1] = v31;
        sub_1000D2AD8(v56, v46[7] + *(v53 + 72) * v39, &qword_1016A40D0, &unk_10138BE70);
        v48 = v46[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_25;
        }

        v46[2] = v50;
        goto LABEL_20;
      }
    }

    sub_10002311C(v56, v46[7] + *(v53 + 72) * v39, &qword_1016A40D0, &unk_10138BE70);
    sub_100016590(v29, v31);
LABEL_20:
    *v55 = v46;
    sub_100016590(v16, v18);
    result = sub_100016590(v57, v58);
    v10 = v60;
LABEL_5:
    v11 += 2;
    if (!--v10)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E216A8(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    v6 = v3 - 1;
    do
    {
      v7 = v6;
      v8 = *v5++;
      v9 = v8;
      sub_100017D5C(v8, *(&v8 + 1));
      sub_100E60B78(&v9, a2);
      result = sub_100016590(v9, *(&v9 + 1));
      if (v2)
      {
        break;
      }

      v6 = v7 - 1;
    }

    while (v7);
  }

  return result;
}