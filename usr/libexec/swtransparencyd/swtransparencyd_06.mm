uint64_t sub_10009D15C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024248(&qword_1001548D0, &qword_1001079A8);
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
LABEL_15:
      v15 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      result = Hasher._finalize()();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v12 + 8 * v18);
          if (v22 != -1)
          {
            v13 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_26;
      }

      v13 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v10 &= v10 - 1;
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      ++*(v6 + 16);
    }

    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_24;
      }

      v10 = *(v3 + 56 + 8 * v14);
      ++v7;
      if (v10)
      {
        v7 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_10009D338(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024248(&qword_1001548A0, &qword_100107950);
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
      type metadata accessor for TransitionWatcher();
      sub_10009B71C(&qword_100154398, 255, type metadata accessor for TransitionWatcher);

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

uint64_t sub_10009D5B4(uint64_t a1)
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
      v7 = sub_10009DCE0(v4, a1);

      return v7;
    }

    return 0;
  }

  v20 = v1;
  v9 = *(v3 + 40);
  Hasher.init(_seed:)();
  (*(*a1 + 152))(v21);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);

    v15 = static UUID.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v20;
  v21[0] = *v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10009CDCC(&qword_1001548E0, &qword_1001079B8);
    v18 = v21[0];
  }

  v19 = *(*(v18 + 48) + 8 * v12);
  sub_10009E054(v12);
  result = v19;
  *v20 = v21[0];
  return result;
}

uint64_t sub_10009D78C(unsigned __int8 a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_10008F330();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 8;
  }

  v28 = v1;
  v29 = ~v6;
  v8 = a1;
  while (1)
  {
    v9 = *(*(v3 + 48) + v7);
    if (v9 > 3)
    {
      if (*(*(v3 + 48) + v7) > 5u)
      {
        if (v9 == 6)
        {
          v10 = 0x7571655272657375;
          v11 = 0xEB00000000747365;
        }

        else
        {
          v11 = 0xE800000000000000;
          v10 = 0x6E776F6474756873;
        }
      }

      else
      {
        v10 = v9 == 4 ? 0xD000000000000011 : 0x7053746365746564;
        v11 = v9 == 4 ? 0x800000010010CA80 : 0xEF7765695674696CLL;
      }
    }

    else if (*(*(v3 + 48) + v7) > 1u)
    {
      v10 = 0x6F4364616F6C6572;
      v11 = 0xEC0000006769666ELL;
      if (v9 != 2)
      {
        v10 = 0x50737365636F7270;
        v11 = 0xEA00000000005441;
      }
    }

    else
    {
      v10 = *(*(v3 + 48) + v7) ? 0xD000000000000012 : 0xD000000000000010;
      v11 = *(*(v3 + 48) + v7) ? 0x800000010010CA50 : 0x800000010010CA30;
    }

    v12 = 0x7571655272657375;
    if (v8 != 6)
    {
      v12 = 0x6E776F6474756873;
    }

    v13 = 0xEB00000000747365;
    if (v8 != 6)
    {
      v13 = 0xE800000000000000;
    }

    v14 = 0x7053746365746564;
    if (v8 == 4)
    {
      v14 = 0xD000000000000011;
    }

    v15 = 0xEF7765695674696CLL;
    if (v8 == 4)
    {
      v15 = 0x800000010010CA80;
    }

    if (v8 <= 5)
    {
      v12 = v14;
      v13 = v15;
    }

    v16 = 0x6F4364616F6C6572;
    if (v8 != 2)
    {
      v16 = 0x50737365636F7270;
    }

    v17 = 0xEC0000006769666ELL;
    if (v8 != 2)
    {
      v17 = 0xEA00000000005441;
    }

    v18 = 0xD000000000000012;
    if (v8)
    {
      v19 = 0x800000010010CA50;
    }

    else
    {
      v18 = 0xD000000000000010;
      v19 = 0x800000010010CA30;
    }

    if (v8 <= 1)
    {
      v16 = v18;
      v17 = v19;
    }

    v20 = v8 <= 3 ? v16 : v12;
    v21 = v8 <= 3 ? v17 : v13;
    if (v10 == v20 && v11 == v21)
    {
      break;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_54;
    }

    v7 = (v7 + 1) & v29;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 8;
    }
  }

LABEL_54:
  v24 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v28;
  v30 = *v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10008B294();
    v26 = v30;
  }

  v23 = *(*(v26 + 48) + v7);
  sub_10009E238(v7);
  *v28 = v30;
  return v23;
}

uint64_t sub_10009DAC8()
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
      v5 = sub_10009DE70();

      return v5;
    }

    return 0;
  }

  type metadata accessor for TransitionWatcher();
  v7 = *(v1 + 40);
  sub_10009B71C(&qword_100154398, 255, type metadata accessor for TransitionWatcher);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_10009B71C(&qword_100152B78, 255, type metadata accessor for TransitionWatcher);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10009CDCC(&qword_1001548A0, &qword_100107950);
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_10009E520(v10);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_10009DCE0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;

  v7 = __CocoaSet.count.getter();
  v8 = swift_unknownObjectRetain();
  v9 = sub_10009BAC8(v8, v7);
  v22 = v9;
  v10 = *(v9 + 40);
  Hasher.init(_seed:)();
  v11 = *(*a2 + 152);

  v11(&v21);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v3 = &unk_10015B000;
    while (1)
    {
      v16 = *(*(v9 + 48) + 8 * v14);

      v17 = static UUID.== infix(_:_:)();

      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
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

  v18 = *(*(v9 + 48) + 8 * v14);
  sub_10009E054(v14);
  v19 = v3[115];
  result = static UUID.== infix(_:_:)();
  if (result)
  {
    *v4 = v22;
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009DE70()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_10009BCE8(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);
  type metadata accessor for TransitionWatcher();
  sub_10009B71C(&qword_100154398, 255, type metadata accessor for TransitionWatcher);

  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_10009B71C(&qword_100152B78, 255, type metadata accessor for TransitionWatcher);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
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

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_10009E520(v8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10009E054(unint64_t result)
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
        v13 = *(*v12 + 152);

        v13(v22);
        v14 = Hasher._finalize()();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10009E238(unint64_t result)
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
        v12 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        String.hash(into:)();

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
          v15 = (v14 + v2);
          v16 = (v14 + v6);
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

unint64_t sub_10009E520(unint64_t result)
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
      type metadata accessor for TransitionWatcher();
      sub_10009B71C(&qword_100154398, 255, type metadata accessor for TransitionWatcher);
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        v12 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
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

unint64_t sub_10009E710(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_10008F330();

  return sub_10009E754(a1, v4);
}

unint64_t sub_10009E754(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v2 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v7 = 0x7571655272657375;
            v8 = 0xEB00000000747365;
          }

          else
          {
            v8 = 0xE800000000000000;
            v7 = 0x6E776F6474756873;
          }
        }

        else
        {
          v7 = v6 == 4 ? 0xD000000000000011 : 0x7053746365746564;
          v8 = v6 == 4 ? 0x800000010010CA80 : 0xEF7765695674696CLL;
        }
      }

      else if (*(*(v2 + 48) + v4) > 1u)
      {
        v7 = 0x6F4364616F6C6572;
        v8 = 0xEC0000006769666ELL;
        if (v6 != 2)
        {
          v7 = 0x50737365636F7270;
          v8 = 0xEA00000000005441;
        }
      }

      else
      {
        v7 = *(*(v2 + 48) + v4) ? 0xD000000000000012 : 0xD000000000000010;
        v8 = *(*(v2 + 48) + v4) ? 0x800000010010CA50 : 0x800000010010CA30;
      }

      v9 = 0x7571655272657375;
      if (v5 != 6)
      {
        v9 = 0x6E776F6474756873;
      }

      v10 = 0xEB00000000747365;
      if (v5 != 6)
      {
        v10 = 0xE800000000000000;
      }

      v11 = 0x7053746365746564;
      if (v5 == 4)
      {
        v11 = 0xD000000000000011;
      }

      v12 = 0xEF7765695674696CLL;
      if (v5 == 4)
      {
        v12 = 0x800000010010CA80;
      }

      if (v5 <= 5)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0x6F4364616F6C6572;
      if (v5 != 2)
      {
        v13 = 0x50737365636F7270;
      }

      v14 = 0xEC0000006769666ELL;
      if (v5 != 2)
      {
        v14 = 0xEA00000000005441;
      }

      v15 = 0xD000000000000012;
      if (v5)
      {
        v16 = 0x800000010010CA50;
      }

      else
      {
        v15 = 0xD000000000000010;
        v16 = 0x800000010010CA30;
      }

      if (v5 <= 1)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = v5 <= 3 ? v13 : v9;
      v18 = v5 <= 3 ? v14 : v10;
      if (v7 == v17 && v8 == v18)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10009EA44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100024248(&qword_1001548C8, &qword_1001079A0);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v32 = v3;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v33 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_18;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10009EE10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100024248(&qword_1001548B8, &qword_100107990);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v32 = v3;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v33 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_18;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10009F234(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100024248(&qword_1001548C0, &qword_100107998);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
LABEL_19:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v32 = *(*(v5 + 56) + 16 * v23);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      v25 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v16) >> 6;
        while (++v18 != v27 || (v26 & 1) == 0)
        {
          v28 = v18 == v27;
          if (v18 == v27)
          {
            v18 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v18);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 16 * v19) = v32;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_19;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

Swift::Int sub_10009F654(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10009F924(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10009E710(a2);
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
      sub_10009EA44(v14, a3 & 1);
      v18 = *v4;
      result = sub_10009E710(a2);
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
      sub_10009FBBC();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
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

unint64_t sub_10009FA70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10002A058(a2);
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
      sub_10009EE10(v14, a3 & 1);
      v18 = *v4;
      result = sub_10002A058(a2);
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
      sub_10009FD18();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
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

void *sub_10009FBBC()
{
  v1 = v0;
  sub_100024248(&qword_1001548C8, &qword_1001079A0);
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_10009FD18()
{
  v1 = v0;
  sub_100024248(&qword_1001548B8, &qword_100107990);
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_10009FE74()
{
  v1 = v0;
  sub_100024248(&qword_1001548C0, &qword_100107998);
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void *sub_10009FFD8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1000A17D8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1000A0074(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100024248(&unk_100154370, &qword_100107190);
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = v9[5];
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000A03BC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1000A04B0;

  return v6(v2 + 16);
}

uint64_t sub_1000A04B0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_1000A05E0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100024248(&qword_1001548E0, &qword_1001079B8);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v24 = v1 & 0xC000000000000001;
  v21 = v1 + 32;
  v22 = v1 & 0xFFFFFFFFFFFFFF8;
  v23 = v5;
  while (v24)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_17:
    v10 = v3[5];
    Hasher.init(_seed:)();
    (*(*v8 + 152))(v25);
    result = Hasher._finalize()();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      while (1)
      {
        v17 = *(v3[6] + 8 * v12);

        v18 = static UUID.== infix(_:_:)();

        if (v18)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          v5 = v23;
          goto LABEL_22;
        }
      }

      v5 = v23;
      if (v6 == v23)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v19 = v3[2];
      v9 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v20;
      if (v6 == v5)
      {
        return v3;
      }
    }
  }

  if (v6 >= *(v22 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v21 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1000A0834(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100135EC0, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000A0880(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_1001548C8, &qword_1001079A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_10009E710(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1000A0974(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_1000A09A0()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v2 = Hasher._finalize()();

  return sub_1000A0974(v2);
}

void *sub_1000A09F8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100024248(&qword_1001548D8, &qword_1001079B0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = sub_1000A09A0();
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = (a1 + 5);
  v10 = v1 - 1;
  while (1)
  {
    *(v3 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
    *(*(v3 + 56) + 8 * v7) = result;
    v11 = *(v3 + 16);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    *(v3 + 16) = v13;
    if (!v10)
    {
      goto LABEL_8;
    }

    v14 = *v9++;

    v7 = sub_1000A09A0();
    --v10;
    result = v14;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000A0AE4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100135FA0, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000A0B54(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001360B0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000A0BA0(char a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10001CF5C;

  return sub_100092A94(a1, a2, v2);
}

uint64_t sub_1000A0C48()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000258C8;

  return sub_100096BE0();
}

unint64_t sub_1000A0CE0()
{
  result = qword_1001543A0;
  if (!qword_1001543A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001543A0);
  }

  return result;
}

unint64_t sub_1000A0D88()
{
  result = qword_1001543B0;
  if (!qword_1001543B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001543B0);
  }

  return result;
}

unint64_t sub_1000A0DE4()
{
  result = qword_1001543B8;
  if (!qword_1001543B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001543B8);
  }

  return result;
}

void sub_1000A0EA8()
{
  sub_1000A0F1C();
  if (v0 <= 0x3F)
  {
    sub_1000A0FBC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000A0F1C()
{
  if (!qword_100154430)
  {
    sub_1000A0F64();
    if (!v1)
    {
      atomic_store(v0, &qword_100154430);
    }
  }
}

void sub_1000A0F64()
{
  if (!qword_100153058)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100153058);
    }
  }
}

ValueMetadata *sub_1000A0FBC()
{
  result = qword_100154438;
  if (!qword_100154438)
  {
    result = &type metadata for SMState;
    atomic_store(&type metadata for SMState, &qword_100154438);
  }

  return result;
}

void sub_1000A0FF4()
{
  sub_10002A598();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for ContinuationStore.ContinuationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContinuationStore.ContinuationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SMState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SMState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000A13B0()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1000A14A8(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_1000A14C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 8))
  {
    return (*a1 + 14);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000A1514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *sub_1000A1560(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SWTStateMachine.SMEventResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_20;
  }

  v2 = a2 + 11;
  if (a2 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 11;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 11;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0xA)
  {
    v8 = v7 - 9;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SWTStateMachine.SMEventResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 11;
  if (a3 + 11 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF5)
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000A16F0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xA)
  {
    return v1 - 9;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1000A1704(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 9;
  }

  return result;
}

uint64_t sub_1000A1738(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000258C8;

  return sub_10009A7F4(a1, v5, v6, v4);
}

uint64_t sub_1000A17D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    result = sub_10008F9CC(*(*(a3 + 48) + v17), a4);
    if (result)
    {
      *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_1000A0074(v6, a2, v7, a3);
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
      goto LABEL_15;
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

uint64_t sub_1000A190C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = v8;
    v25 = v3;
    v23 = &v23;
    __chkstk_darwin(v10);
    v11 = &v23 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
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
      if (sub_10008F9CC(*(*(a1 + 48) + v8), a2))
      {
        *&v11[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_1000A0074(v11, v24, v9, a1);

          return v20;
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
        goto LABEL_16;
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
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();

  v20 = sub_10009FFD8(v22, v8, a1, a2);

  return v20;
}

unint64_t sub_1000A1B6C(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

uint64_t sub_1000A1B84()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A1BBC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000258C8;

  return sub_1000A03BC(a1, v5);
}

uint64_t sub_1000A1C74()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A1CBC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000258C8;

  return sub_10008E004(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1000A1D70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A1DB0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000258C8;

  return sub_10008E428(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1000A1E5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000242F4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A1F00(uint64_t a1)
{
  v2 = sub_1000A64B4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A1F3C(uint64_t a1)
{
  v2 = sub_1000A64B4();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000A1F80(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2)
    {
      return *(a1 + 24);
    }

    else
    {
      return 0;
    }
  }

  else if (v2)
  {
    return a1 >> 32;
  }

  else
  {
    return BYTE6(a2);
  }
}

uint64_t TransparencyByteBuffer.init(data:)(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 == 2)
  {
    v2 = *(result + 16);
  }

  return result;
}

uint64_t sub_1000A1FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000A59F0(a1, a2, a3);
  v7 = v6;
  (*(*(a2 - 8) + 8))(a1, a2);
  if (v7 >> 62 == 2)
  {
    v8 = *(v5 + 16);
  }

  return v5;
}

uint64_t sub_1000A2084(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 24);
    }

    else
    {
      v4 = 0;
    }
  }

  else if (v3)
  {
    v4 = a1 >> 32;
  }

  else
  {
    v4 = BYTE6(a2);
  }

  result = v4 - a3;
  if (__OFSUB__(v4, a3))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A20C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v10 = v9 + 7;
  if (__OFADD__(v9, 7))
  {
    __break(1u);
  }

  if (v10 < 0)
  {
    v10 = v9 + 14;
  }

  v11 = v10 >> 3;
  v12 = dispatch thunk of FixedWidthInteger.bigEndian.getter();
  __chkstk_darwin(v12);
  v16 = v3;
  v15 = 803;
  sub_1000A3010(v8, sub_1000A5F7C, (&v17 - 4), a3, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never, v13);
  (*(v5 + 8))(v8, a3);
  return v11;
}

uint64_t sub_1000A2278()
{
  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v1 = result + 7;
  if (__OFADD__(result, 7))
  {
    __break(1u);
  }

  else
  {
    if (v1 < 0)
    {
      v1 = result + 14;
    }

    return v1 >> 3;
  }

  return result;
}

uint64_t sub_1000A22B8(uint64_t a1)
{
  sub_100024248(&qword_100154930, &qword_100107C70);
  sub_100024248(&qword_100154938, &qword_100107C78);
  if (swift_dynamicCast())
  {
    sub_100037608(v25, v27);
    v3 = sub_100026F6C(v27, v27[3]);
    __chkstk_darwin(v3);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    return sub_100024E14(v27);
  }

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1000A65C0(v25);
  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    v8 = 0;
    v9 = 0;
    if (v7 != 2)
    {
      goto LABEL_12;
    }

    v10 = v5 + 16;
    v5 = *(v5 + 16);
    v8 = *(v10 + 8);
    v9 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v8 = BYTE6(v6);
    v9 = BYTE6(v6);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_52;
  }

  v9 = HIDWORD(v5) - v5;
  v8 = v5 >> 32;
LABEL_12:
  if (__OFADD__(v8, a1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v8 + a1 < v8)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v8 < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v11 = Data._Representation.resetBytes(in:)();
  __chkstk_darwin(v11);
  result = sub_1000A506C(sub_1000A6628);
  if (v14 == a1)
  {
    memset(v27, 0, 15);
    if (v13 != result)
    {
      if ((v13 & 0x8000000000000000) == 0 && v13 < result)
      {
        v15 = v12;
        LOBYTE(v16) = 0;
        for (i = v13 - result + 1; i != 1; ++i)
        {
          *(v27 + v16) = v15;
          v16 = v16 + 1;
          if ((v16 & 0x100) != 0)
          {
            goto LABEL_45;
          }

          if (v16 == 14)
          {
            *&v25[0] = v27[0];
            *(v25 + 6) = *(v27 + 6);
            result = Data._Representation.append(contentsOf:)();
            if (!i)
            {
              return result;
            }

            LOBYTE(v16) = 0;
          }

          else if (!i)
          {
            *&v25[0] = v27[0];
            *(v25 + 6) = *(v27 + 6);
            return Data._Representation.append(contentsOf:)();
          }
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {
    v18 = 0;
    v19 = *v1;
    v20 = v1[1];
    v21 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v21 == 2)
      {
        v18 = *(v19 + 16);
      }
    }

    else if (v21)
    {
      v18 = v19;
    }

    v22 = __OFADD__(v18, v9);
    v23 = v18 + v9;
    if (v22)
    {
      goto LABEL_49;
    }

    if (__OFADD__(v23, v14))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v24 = *(v19 + 24);
      }

      else
      {
        v24 = 0;
      }
    }

    else if (v21)
    {
      v24 = v19 >> 32;
    }

    else
    {
      v24 = BYTE6(v20);
    }

    if (v24 < v23 + v14)
    {
      goto LABEL_51;
    }

    return Data._Representation.replaceSubrange(_:with:count:)();
  }

  return result;
}

uint64_t sub_1000A262C(char a1, uint64_t a2)
{
  v3 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v2[2] > a2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (!v6)
    {
      v8 = v7;
    }
  }

  if (v8 < v3)
  {
    goto LABEL_17;
  }

  v12 = a1;
  if (v3 < a2)
  {
    goto LABEL_18;
  }

  v13[3] = &type metadata for UnsafeRawBufferPointer;
  v13[4] = &protocol witness table for UnsafeRawBufferPointer;
  v13[0] = &v12;
  v13[1] = v13;
  v9 = sub_100026F6C(v13, &type metadata for UnsafeRawBufferPointer);
  if (*v9)
  {
    v10 = v9[1] - *v9;
  }

  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100024E14(v13);
  return 1;
}

uint64_t sub_1000A2750(unsigned int a1, uint64_t a2)
{
  v3 = a2 + 2;
  if (__OFADD__(a2, 2))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v2[2] > a2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (!v6)
    {
      v8 = v7;
    }
  }

  if (v8 < v3)
  {
    goto LABEL_17;
  }

  v12 = bswap32(a1) >> 16;
  if (v3 < a2)
  {
    goto LABEL_18;
  }

  v13[3] = &type metadata for UnsafeRawBufferPointer;
  v13[4] = &protocol witness table for UnsafeRawBufferPointer;
  v13[0] = &v12;
  v13[1] = v13;
  v9 = sub_100026F6C(v13, &type metadata for UnsafeRawBufferPointer);
  if (*v9)
  {
    v10 = v9[1] - *v9;
  }

  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100024E14(v13);
  return 2;
}

uint64_t sub_1000A287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v12 = v11 + 7;
  if (__OFADD__(v11, 7))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12 < 0)
  {
    v12 = v11 + 14;
  }

  v13 = v12 >> 3;
  v14 = a2 + (v12 >> 3);
  if (__OFADD__(a2, v12 >> 3))
  {
    goto LABEL_16;
  }

  if (v4[2] > a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *v4;
  v16 = v4[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(v15 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v18 = BYTE6(v16);
    v19 = v15 >> 32;
    if (!v17)
    {
      v19 = v18;
    }
  }

  if (v19 < v14)
  {
LABEL_18:
    __break(1u);
  }

  v20 = dispatch thunk of FixedWidthInteger.bigEndian.getter();
  __chkstk_darwin(v20);
  *(&v25 - 4) = v13;
  *(&v25 - 3) = v4;
  v24 = v14;
  v23 = 803;
  sub_1000A3010(v10, sub_1000A6000, (&v25 - 6), a4, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never, v21);
  (*(v7 + 8))(v10, a4);
  return v13;
}

uint64_t sub_1000A2AA4()
{
  v1 = v0[2];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    return (v7 << 8);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = *v0;
  v10 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_100027004(v3, v4);
  sub_100024248(&qword_100154918, &qword_100107C68);
  sub_1000A6508();
  sub_1000A655C();
  DataProtocol.copyBytes<A>(to:from:)();
  sub_100026FB0(v9, v10);
  v7 = 0;
  v0[2] = v2;
  return (v7 << 8);
}

uint64_t sub_1000A2BF0()
{
  v1 = v0[2];
  v2 = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    return v8 | (v7 << 16);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_100027004(v3, v4);
  sub_100024248(&qword_100154918, &qword_100107C68);
  sub_1000A6508();
  sub_1000A655C();
  DataProtocol.copyBytes<A>(to:from:)();
  sub_100026FB0(v10, v11);
  v7 = 0;
  v8 = bswap32(0) >> 16;
  v0[2] = v2;
  return v8 | (v7 << 16);
}

uint64_t sub_1000A2D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v29[-v12];
  v15 = *(*(*(v14 + 8) + 24) + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v16 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v17 = v16 + 7;
  if (__OFADD__(v16, 7))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v17 < 0)
  {
    v17 = v16 + 14;
  }

  v18 = v4[2];
  v19 = v18 + (v17 >> 3);
  if (__OFADD__(v18, v17 >> 3))
  {
LABEL_17:
    __break(1u);
  }

  v20 = *v4;
  v21 = v4[1];
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 == 2)
    {
      if (*(v20 + 24) < v19)
      {
        goto LABEL_14;
      }
    }

    else if (v19 > 0)
    {
      goto LABEL_14;
    }

LABEL_9:
    __chkstk_darwin(v16);
    v28 = v19;
    v27 = 4039;
    sub_1000A3010(v13, sub_1000A60B4, &v29[-32], a2, &type metadata for Never, &type metadata for Int, &protocol witness table for Never, v25);
    (*(v7 + 16))(v11, v13, a2);
    dispatch thunk of FixedWidthInteger.init(bigEndian:)();
    (*(v7 + 8))(v13, a2);
    result = (*(v7 + 56))(a3, 0, 1, a2);
    v4[2] = v19;
    return result;
  }

  v23 = BYTE6(v21);
  v24 = v20 >> 32;
  if (!v22)
  {
    v24 = v23;
  }

  if (v24 >= v19)
  {
    goto LABEL_9;
  }

LABEL_14:
  (*(v7 + 8))(v13, a2);
  return (*(v7 + 56))(a3, 1, 1, a2);
}

uint64_t sub_1000A3010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t sub_1000A3104(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v5 = *(result + 16);
      v4 = *(result + 24);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }
  }

  else
  {
    if (v3)
    {
      v4 = result >> 32;
    }

    else
    {
      v4 = BYTE6(a2);
    }

    if (v3)
    {
      v5 = result;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4 < a3 || v4 < v5)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v6 = Data._Representation.subscript.getter();
  v8 = v7;
  Data.append(_:)();
  v9 = v8;
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      sub_100026FB0(v6, v8);
      return BYTE6(v8);
    }

LABEL_20:
    result = sub_100026FB0(v6, v9);
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      return HIDWORD(v6) - v6;
    }

    goto LABEL_24;
  }

  if (v10 != 2)
  {
    sub_100026FB0(v6, v8);
    return 0;
  }

  v12 = *(v6 + 16);
  v11 = *(v6 + 24);
  sub_100026FB0(v6, v9);
  result = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000A3210(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    if (v8 == 2)
    {
      v9 = *(v6 + 24);
    }
  }

  else
  {
    v9 = BYTE6(v7);
    if (v8)
    {
      v9 = v6 >> 32;
    }
  }

  if (v9 < a4)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v8 > 1)
  {
    v10 = 0;
    if (v8 == 2)
    {
      v10 = *(v6 + 16);
    }
  }

  else if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > a4)
  {
    goto LABEL_60;
  }

  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v13 = *(result + 16);
      v12 = *(result + 24);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    if (v11)
    {
      v12 = result >> 32;
    }

    else
    {
      v12 = BYTE6(a2);
    }

    if (v11)
    {
      v13 = result;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v12 < a3 || v12 < v13)
  {
    goto LABEL_61;
  }

  result = Data._Representation.subscript.getter();
  v15 = result;
  v16 = v14;
  v17 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(v14);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v17 != 2)
  {
    v18 = 0;
    goto LABEL_37;
  }

  v20 = *(result + 16);
  v19 = *(result + 24);
  v21 = __OFSUB__(v19, v20);
  v18 = v19 - v20;
  if (v21)
  {
    __break(1u);
LABEL_34:
    LODWORD(v18) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    v18 = v18;
  }

LABEL_37:
  v22 = *v4;
  v23 = v4[1];
  v24 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    v25 = BYTE6(v23);
    v26 = v22 >> 32;
    if (!v24)
    {
      v26 = v25;
    }

    goto LABEL_43;
  }

  if (v24 == 2)
  {
    v26 = *(v22 + 24);
LABEL_43:
    v27 = v26 - a4;
    if (v27 < v18)
    {
      v18 = v27;
    }

    goto LABEL_48;
  }

  if (v18 >= -a4)
  {
    v18 = -a4;
  }

LABEL_48:
  if (v18 + a4 < a4)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_1000A5778(result, v14);
  if (v17 <= 1)
  {
    if (!v17)
    {
      sub_100026FB0(v15, v16);
      return BYTE6(v16);
    }

LABEL_56:
    result = sub_100026FB0(v15, v16);
    if (!__OFSUB__(HIDWORD(v15), v15))
    {
      return HIDWORD(v15) - v15;
    }

    goto LABEL_64;
  }

  if (v17 != 2)
  {
    sub_100026FB0(v15, v16);
    return 0;
  }

  v29 = *(v15 + 16);
  v28 = *(v15 + 24);
  sub_100026FB0(v15, v16);
  result = v28 - v29;
  if (__OFSUB__(v28, v29))
  {
    __break(1u);
    goto LABEL_56;
  }

  return result;
}

uint64_t sub_1000A3464(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    if (v5)
    {
      v6 = v2 >> 32;
    }

    else
    {
      v6 = BYTE6(v3);
    }

    if (v5)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v6 < result || v6 < v7)
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = Data._Representation.subscript.getter();
  v11 = v10;
  Data.append(_:)();
  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      sub_100026FB0(v9, v11);
      result = 0;
      goto LABEL_25;
    }

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    sub_100026FB0(v9, v12);
    result = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_22:
    result = sub_100026FB0(v9, v12);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      result = HIDWORD(v9) - v9;
      goto LABEL_25;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  if (v13)
  {
    goto LABEL_22;
  }

  sub_100026FB0(v9, v11);
  result = BYTE6(v11);
LABEL_25:
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v20 = *(v16 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v19 = BYTE6(v17);
    v20 = v16 >> 32;
    if (!v18)
    {
      v20 = v19;
    }
  }

  a1[2] = v20;
  return result;
}

uint64_t sub_1000A35A4(uint64_t a1)
{
  result = v1[2];
  v4 = result + a1;
  if (__OFADD__(result, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      if (*(v5 + 24) >= v4)
      {
        goto LABEL_7;
      }
    }

    else if (v4 <= 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v7)
  {
    v8 = v5 >> 32;
  }

  else
  {
    v8 = BYTE6(v6);
  }

  if (v8 < v4)
  {
    return 0;
  }

LABEL_7:
  if (v4 < result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  result = Data._Representation.subscript.getter();
  v1[2] = v4;
  if (v9 >> 62 == 2)
  {
    v10 = *(result + 16);
  }

  return result;
}

uint64_t TransparencyByteBuffer.readableBytesView.getter(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v4 = *(result + 24);
    }

    else
    {
      v4 = 0;
    }
  }

  else if (v3)
  {
    v4 = result >> 32;
  }

  else
  {
    v4 = BYTE6(a2);
  }

  if (v4 >= a3)
  {
    return Data._Representation.subscript.getter();
  }

  __break(1u);
  return result;
}

void *sub_1000A36C8(uint64_t a1)
{
  result = v1[2];
  v4 = result + a1;
  if (!__OFADD__(result, a1))
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        if (*(v5 + 24) >= v4)
        {
          goto LABEL_7;
        }
      }

      else if (v4 <= 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(v6);
      }

      if (v8 >= v4)
      {
LABEL_7:
        if (v4 >= result)
        {
          v9 = Data._Representation.subscript.getter();
          result = sub_1000A3764(v9, v10);
          v1[2] = v4;
          return result;
        }

        goto LABEL_15;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *sub_1000A3764(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_100026FB0(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_100022164(v11, 0);
      v15 = Data._copyContents(initializing:)();
      sub_100026FB0(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

Swift::Int __swiftcall TransparencyByteBuffer.writeBytes(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  Data._Representation.append(contentsOf:)();
  return *(a1._rawValue + 2);
}

uint64_t sub_1000A3924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  Data.append<A>(contentsOf:)();
  return dispatch thunk of Collection.count.getter();
}

uint64_t sub_1000A396C(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v5 = 0;
    if (v4 == 2)
    {
      v5 = *(v2 + 16);
    }
  }

  else
  {
    v5 = v2;
    if (!v4)
    {
      v5 = 0;
    }
  }

  if (v5 > result)
  {
    __break(1u);
  }

  else
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v7 = *(v2 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v6 = BYTE6(v3);
      v7 = v2 >> 32;
      if (!v4)
      {
        v7 = v6;
      }
    }

    if (v7 >= result)
    {
      v1[2] = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A39EC(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    return sub_1000A22B8(a1);
  }

  __break(1u);
  return a1;
}

uint64_t sub_1000A39FC(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v14 = v5[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    v16 = BYTE6(v14);
    v17 = v13 >> 32;
    if (!v15)
    {
      v17 = v16;
    }

    goto LABEL_7;
  }

  if (v15 == 2)
  {
    v17 = *(v13 + 24);
LABEL_7:
    v26 = v17;
    goto LABEL_9;
  }

  v26 = 0;
LABEL_9:
  v18 = *(*(*(a5 + 8) + 24) + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v20 = sub_1000A20C8(v12, v19, a4);
  v21 = *(v9 + 8);
  v21(v12, a4);
  v22 = a2(v5);
  v28 = v22;
  sub_1000A6184();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  sub_1000A287C(v12, v26, v23, a4);
  v21(v12, a4);
  result = v20 + v22;
  if (__OFADD__(v20, v22))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A3BC0(uint64_t (*a1)(uint64_t *))
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  LOBYTE(v19) = 0;
  v22 = &type metadata for UnsafeRawBufferPointer;
  v23 = &protocol witness table for UnsafeRawBufferPointer;
  v20 = &v19;
  v21 = (&v19 + 1);
  v9 = sub_100026F6C(&v20, &type metadata for UnsafeRawBufferPointer);
  v11 = *v9;
  v10 = v9[1];
  Data._Representation.append(contentsOf:)();
  sub_100024E14(&v20);
  v19 = 0;
  v22 = &type metadata for UnsafeRawBufferPointer;
  v23 = &protocol witness table for UnsafeRawBufferPointer;
  v20 = &v19;
  v21 = &v20;
  v12 = sub_100026F6C(&v20, &type metadata for UnsafeRawBufferPointer);
  v14 = *v12;
  v13 = v12[1];
  Data._Representation.append(contentsOf:)();
  sub_100024E14(&v20);
  v15 = a1(v1);
  if (v15 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v16 = v15;
  v17 = sub_1000A262C(SBYTE2(v15), v8);
  if (__OFADD__(v8, v17))
  {
    goto LABEL_12;
  }

  sub_1000A2750(v16, v8 + v17);
  return v16 + 3;
}

uint64_t sub_1000A3D34(uint64_t a1)
{
  if (a1 > 0xFFFFFF)
  {
    __break(1u);
  }

  v1 = a1;
  LOBYTE(v9) = BYTE2(a1);
  v12 = &type metadata for UnsafeRawBufferPointer;
  v13 = &protocol witness table for UnsafeRawBufferPointer;
  v10 = &v9;
  v11 = (&v9 + 1);
  v2 = sub_100026F6C(&v10, &type metadata for UnsafeRawBufferPointer);
  v4 = *v2;
  v3 = v2[1];
  Data._Representation.append(contentsOf:)();
  sub_100024E14(&v10);
  v9 = bswap32(v1) >> 16;
  v12 = &type metadata for UnsafeRawBufferPointer;
  v13 = &protocol witness table for UnsafeRawBufferPointer;
  v10 = &v9;
  v11 = &v10;
  v5 = sub_100026F6C(&v10, &type metadata for UnsafeRawBufferPointer);
  v7 = *v5;
  v6 = v5[1];
  Data._Representation.append(contentsOf:)();
  sub_100024E14(&v10);
  return 3;
}

uint64_t sub_1000A3E2C(uint64_t result, uint64_t a2)
{
  if (result > 0xFFFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  result = sub_1000A262C(SBYTE2(result), a2);
  if (__OFADD__(a2, result))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = sub_1000A2750(v3, a2 + result);
  v6 = __OFADD__(v4, v5);
  result = v4 + v5;
  if (v6)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A3EDC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a5;
  v69 = a3;
  v70 = a2;
  v74 = a6;
  v75 = *(a5 - 8);
  v8 = *(v75 + 64);
  __chkstk_darwin(a1);
  v71 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(v10 + 8);
  v67 = *(*(v73 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v65 = &v63 - v12;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v63 - v17;
  v19 = *(a4 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v16);
  v68 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v63 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v63 - v27;
  v72 = a1;
  sub_1000A2D44(v26, a4, v18);
  if ((*(v19 + 48))(v18, 1, a4) == 1)
  {
    (*(v14 + 8))(v18, v13);
    return (*(v75 + 56))(v74, 1, 1, v76);
  }

  (*(v19 + 32))(v28, v18, a4);
  v29 = *(v19 + 16);
  v64 = v28;
  v29(v25, v28, a4);
  v30 = v73;
  v31 = v19;
  v32 = v73;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_16;
  }

  v81 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v33 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v34 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v33)
  {
    if (v34 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v39 = v68;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v40 = *(*(v32 + 32) + 8);
      v41 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v31 + 8))(v39, a4);
      if (v41)
      {
        goto LABEL_44;
      }

      goto LABEL_15;
    }

LABEL_10:
    sub_1000A6184();
    v35 = v68;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v36 = *(*(v30 + 32) + 8);
    v37 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v31 + 8))(v35, a4);
    if (v37)
    {
      goto LABEL_44;
    }

    goto LABEL_16;
  }

  if (v34 < 64)
  {
LABEL_15:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_16:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v81 = 0x7FFFFFFFFFFFFFFFLL;
    v42 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v43 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v42 & 1) == 0)
    {
      break;
    }

    if (v43 < 65)
    {
      goto LABEL_25;
    }

LABEL_19:
    sub_1000A6184();
    v44 = v68;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v45 = *(*(v32 + 32) + 8);
    v46 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v31 + 8))(v44, a4);
    if (v46)
    {
      __break(1u);
LABEL_21:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  if (v43 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_26:
  v47 = dispatch thunk of BinaryInteger._lowWord.getter();
  v48 = *(v31 + 8);
  v48(v25, a4);
  v49 = sub_1000A35A4(v47);
  if (v50 >> 60 != 15)
  {
    v78 = v49;
    v79 = v50;
    v80 = v51;
    v52 = v71;
    v53 = v77;
    v70(&v78);
    result = v64;
    if (v53)
    {
LABEL_41:
      v48(result, a4);
      return sub_100026FB0(v78, v79);
    }

    v54 = v78;
    v55 = v79;
    v56 = v79 >> 62;
    if ((v79 >> 62) > 1)
    {
      if (v56 == 2)
      {
        v57 = *(v78 + 24);
      }

      else
      {
        v57 = 0;
      }
    }

    else if (v56)
    {
      v57 = v78 >> 32;
    }

    else
    {
      v57 = BYTE6(v79);
    }

    if (!__OFSUB__(v57, v80))
    {
      if (v57 == v80)
      {
        v48(v64, a4);
        sub_100026FB0(v54, v55);
        v59 = v74;
        v58 = v75;
        v60 = v76;
        (*(v75 + 32))(v74, v52, v76);
        return (*(v58 + 56))(v59, 0, 1, v60);
      }

      v61 = v64;
      sub_10002BC44();
      swift_allocError();
      *v62 = 0;
      swift_willThrow();
      (*(v75 + 8))(v52, v76);
      result = v61;
      goto LABEL_41;
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v48(v64, a4);
  return (*(v75 + 56))(v74, 1, 1, v76);
}

uint64_t sub_1000A4670@<X0>(void (*a1)(uint64_t *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v20 = a3;
  v6 = type metadata accessor for Optional();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v11 = *v3;
  v10 = v3[1];
  v12 = v3[2];
  sub_100027004(*v3, v10);
  v13 = v21;
  a1(v3);
  if (v13)
  {
    sub_100026FB0(*v3, v3[1]);
    *v3 = v11;
    v3[1] = v10;
    v3[2] = v12;
    return swift_willThrow();
  }

  else
  {
    v21 = v12;
    v15 = v20;
    v16 = *(a2 - 8);
    if ((*(v16 + 48))(v9, 1, a2) == 1)
    {
      sub_100026FB0(*v3, v3[1]);
      (*(v19 + 8))(v9, v6);
      *v3 = v11;
      v3[1] = v10;
      v17 = 1;
      v3[2] = v21;
      v18 = v15;
    }

    else
    {
      sub_100026FB0(v11, v10);
      v18 = v15;
      (*(v16 + 32))(v15, v9, a2);
      v17 = 0;
    }

    return (*(v16 + 56))(v18, v17, 1, a2);
  }
}

uint64_t sub_1000A48D0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000A2AA4();
  if ((v12 & 0x100) != 0)
  {
    return (*(v8 + 56))(a4, 1, 1, a3);
  }

  v13 = v12;
  v14 = sub_1000A2BF0();
  if ((v14 & 0x10000) != 0)
  {
    return (*(v8 + 56))(a4, 1, 1, a3);
  }

  v15 = sub_1000A35A4(v14 | (v13 << 16));
  if (v16 >> 60 == 15)
  {
    return (*(v8 + 56))(a4, 1, 1, a3);
  }

  v23 = v15;
  v24 = v16;
  v25 = v17;
  a2(&v23);
  if (v4)
  {
    return sub_100026FB0(v23, v24);
  }

  result = v23;
  v19 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v19 == 2)
    {
      v20 = *(v23 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else if (v19)
  {
    v20 = v23 >> 32;
  }

  else
  {
    v20 = BYTE6(v24);
  }

  if (!__OFSUB__(v20, v25))
  {
    if (v20 == v25)
    {
      sub_100026FB0(v23, v24);
      (*(v8 + 32))(a4, v11, a3);
      return (*(v8 + 56))(a4, 0, 1, a3);
    }

    sub_10002BC44();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    (*(v8 + 8))(v11, a3);
    return sub_100026FB0(v23, v24);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000A4AE0()
{
  v0 = sub_1000A2AA4();
  if ((v0 & 0x100) != 0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1000A2BF0();
  if ((v2 & 0x10000) != 0)
  {
    return 0;
  }

  else
  {
    return v2 | (v1 << 16);
  }
}

void TransparencyByteBuffer.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = a2 >> 32;
  }

  else
  {
    v5 = BYTE6(a3);
  }

  if (v5 < a4)
  {
    __break(1u);
  }

  else
  {
    v6 = Data._Representation.subscript.getter();
    v8 = v7;
    Data.hash(into:)();

    sub_100026FB0(v6, v8);
  }
}

Swift::Int TransparencyByteBuffer.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = Hasher.init(_seed:)();
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(a1 + 24);
    }
  }

  else if (v7)
  {
    v8 = a1 >> 32;
  }

  else
  {
    v8 = BYTE6(a2);
  }

  if (v8 < a3)
  {
    __break(1u);
  }

  else
  {
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    sub_100026FB0(v9, v11);
    return Hasher._finalize()();
  }

  return result;
}

Swift::Int sub_1000A4C9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = Hasher.init(_seed:)();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = Data._Representation.subscript.getter();
    v9 = v8;
    Data.hash(into:)();
    sub_100026FB0(v7, v9);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t sub_1000A4D54()
{
  v1 = *v0;
  v2 = v0[1];
  result = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v1 >> 32;
  }

  else
  {
    v5 = BYTE6(v2);
  }

  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    v6 = Data._Representation.subscript.getter();
    v8 = v7;
    Data.hash(into:)();

    return sub_100026FB0(v6, v8);
  }

  return result;
}

Swift::Int sub_1000A4DF8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = Hasher.init(_seed:)();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = Data._Representation.subscript.getter();
    v9 = v8;
    Data.hash(into:)();
    sub_100026FB0(v7, v9);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t sub_1000A4ECC@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1000617C4(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1000A4F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_1000A5560(&type metadata for UInt8, sub_1000A67AC, v10, a1, a2, &type metadata for UInt8, &type metadata for Never, TupleTypeMetadata2, &protocol witness table for Never, v9);
}

char *sub_1000A506C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100026FB0(v6, v5);
      v19[0] = v6;
      LOWORD(v19[1]) = v5;
      BYTE2(v19[1]) = BYTE2(v5);
      BYTE3(v19[1]) = BYTE3(v5);
      BYTE4(v19[1]) = BYTE4(v5);
      BYTE5(v19[1]) = BYTE5(v5);
      BYTE6(v19[1]) = BYTE6(v5);
      result = a1(&v20, v19, v19 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v3 = v19[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100026FB0(v6, v5);
    *v3 = xmmword_1001079F0;
    sub_100026FB0(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1000A56C0(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_100026FB0(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1001079F0;
    sub_100026FB0(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_1000A56C0(*(v20 + 2), *(v20 + 3), a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      return result;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v20, v19, v19);
  if (!v2)
  {
    return v20;
  }

  return result;
}

uint64_t sub_1000A5418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v7 + 16))(v10, a2, a3);
  result = dispatch thunk of Sequence._copyContents(initializing:)();
  *(a4 + v11) = result;
  return result;
}

uint64_t sub_1000A5560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = (__chkstk_darwin)();
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v23 = v25 - v22;
  if (v18)
  {
    v24 = *(*(v20 - 8) + 72);
    if (v24)
    {
      if (v19 - v18 != 0x8000000000000000 || v24 != -1)
      {
        result = v21(v18, (v19 - v18) / v24, v16);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v16, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v21(0, 0, v25 - v22);
  v16 = v23;
  if (v10)
  {
    return (*(v12 + 32))(a10, v16, a7);
  }

  return result;
}

char *sub_1000A56C0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1000A5778(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v3, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v4, v3))
    {
LABEL_13:
      __DataStorage._length.getter();
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return Data._Representation.replaceSubrange(_:with:count:)();
}

uint64_t sub_1000A5950(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1000A59F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  v9 = __chkstk_darwin(TupleTypeMetadata2);
  v11 = &v32 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v9);
  v16 = &v32 - v15;
  v17 = *(*(a2 - 8) + 64);
  __chkstk_darwin(v14);
  (*(v19 + 16))(&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_100024248(&qword_100154938, &qword_100107C78);
  if (swift_dynamicCast())
  {
    sub_100037608(v35, &v37);
    sub_100026F6C(&v37, v38);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v35[0] = v34;
    sub_100024E14(&v37);
    goto LABEL_34;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_1000A65C0(v35);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (*(&v37 + 1) >> 60 != 15)
  {
    v35[0] = v37;
    goto LABEL_34;
  }

  v33 = v37;
  v20 = dispatch thunk of Sequence.underestimatedCount.getter();
  *&v35[0] = sub_1000A5950(v20);
  *(&v35[0] + 1) = v21;
  __chkstk_darwin(*&v35[0]);
  *(&v32 - 4) = a2;
  *(&v32 - 3) = a3;
  *(&v32 - 2) = a1;
  Data._Representation.withUnsafeMutableBytes<A>(_:)();
  v22 = *&v11[*(TupleTypeMetadata2 + 48)];
  (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
  v23 = *(&v35[0] + 1) >> 62;
  if ((*(&v35[0] + 1) >> 62) <= 1)
  {
    if (v23)
    {
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_38;
      }

      if (v22 == DWORD1(v35[0]) - LODWORD(v35[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v22 == BYTE14(v35[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v23 == 2)
  {
    v25 = *(*&v35[0] + 16);
    v24 = *(*&v35[0] + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v22 == v27)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v23 == 2)
    {
      v28 = *(*&v35[0] + 24);
    }

    else if (v23 == 1)
    {
      v28 = *&v35[0] >> 32;
    }

    else
    {
      v28 = BYTE14(v35[0]);
    }

LABEL_31:
    if (v28 >= v22)
    {
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_33:
      (*(v12 + 8))(v16, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v22)
  {
    v28 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v37 = 0;
  *(&v37 + 7) = 0;
  dispatch thunk of IteratorProtocol.next()();
  if (BYTE1(v34) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v29) = 0;
  do
  {
    *(&v37 + v29) = v34;
    v29 = v29 + 1;
    if ((v29 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v29 == 14)
    {
      *&v34 = v37;
      *(&v34 + 6) = *(&v37 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v29) = 0;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  while ((BYTE1(v34) & 1) == 0);
  if (v29)
  {
    *&v34 = v37;
    *(&v34 + 6) = *(&v37 + 6);
    Data._Representation.append(contentsOf:)();
    sub_10002BEE0(v33, *(&v33 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  sub_10002BEE0(v33, *(&v33 + 1));
LABEL_34:
  v30 = v35[0];
  sub_100027004(*&v35[0], *(&v35[0] + 1));
  sub_100026FB0(v30, *(&v30 + 1));
  return v30;
}

uint64_t sub_1000A5F7C(uint64_t result, uint64_t a2)
{
  v3 = a2 - result;
  if (!result)
  {
    v3 = 0;
  }

  if (v3 == *(v2 + 16))
  {
    v4 = *(v2 + 24);
    v8[3] = &type metadata for UnsafeRawBufferPointer;
    v8[4] = &protocol witness table for UnsafeRawBufferPointer;
    v8[0] = result;
    v8[1] = a2;
    v5 = sub_100026F6C(v8, &type metadata for UnsafeRawBufferPointer);
    v7 = *v5;
    v6 = v5[1];
    Data._Representation.append(contentsOf:)();
    return sub_100024E14(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A6000(uint64_t result, uint64_t a2)
{
  v3 = a2 - result;
  if (!result)
  {
    v3 = 0;
  }

  if (v3 != v2[2])
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2[5] < v2[4])
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = v2[3];
  v7[3] = &type metadata for UnsafeRawBufferPointer;
  v7[4] = &protocol witness table for UnsafeRawBufferPointer;
  v7[0] = result;
  v7[1] = a2;
  v5 = sub_100026F6C(v7, &type metadata for UnsafeRawBufferPointer);
  if (*v5)
  {
    v6 = v5[1] - *v5;
  }

  Data._Representation.replaceSubrange(_:with:count:)();
  return sub_100024E14(v7);
}

uint64_t sub_1000A60B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = *v3;
  v7 = *v3;
  v8 = v3[1];
  if (v3[2] > *(v1 + 24))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v1 + 24);
    sub_100027004(result, v3[1]);
    sub_100024248(&qword_100154918, &qword_100107C68);
    sub_1000A6508();
    sub_1000A655C();
    v5 = DataProtocol.copyBytes<A>(to:from:)();
    result = sub_100026FB0(v7, v8);
    *a1 = v5;
  }

  return result;
}

unint64_t sub_1000A6184()
{
  result = qword_1001548F8;
  if (!qword_1001548F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001548F8);
  }

  return result;
}

uint64_t _s15swtransparencyd22TransparencyByteBufferV2eeoiySbAC_ACtFZ_0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(result + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v9)
  {
    v10 = result >> 32;
  }

  else
  {
    v10 = BYTE6(a2);
  }

  if (v10 < a3)
  {
    __break(1u);
  }

  else
  {
    result = Data._Representation.subscript.getter();
    v11 = result;
    v13 = v12;
    v14 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v15 = *(a4 + 24);
      }

      else
      {
        v15 = 0;
      }
    }

    else if (v14)
    {
      v15 = a4 >> 32;
    }

    else
    {
      v15 = BYTE6(a5);
    }

    if (v15 >= a6)
    {
      v16 = Data._Representation.subscript.getter();
      v18 = v17;
      v19 = sub_100027800(v11, v13, v16, v17);
      sub_100026FB0(v16, v18);
      sub_100026FB0(v11, v13);
      return v19 & 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000A6340()
{
  result = qword_100154900;
  if (!qword_100154900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154900);
  }

  return result;
}

unint64_t sub_1000A639C()
{
  result = qword_100154908;
  if (!qword_100154908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154908);
  }

  return result;
}

uint64_t sub_1000A6400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000A6454(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1000A64B4()
{
  result = qword_100154910;
  if (!qword_100154910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154910);
  }

  return result;
}

unint64_t sub_1000A6508()
{
  result = qword_100154920;
  if (!qword_100154920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154920);
  }

  return result;
}

unint64_t sub_1000A655C()
{
  result = qword_100154928;
  if (!qword_100154928)
  {
    sub_1000242F4(&qword_100154918, &qword_100107C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154928);
  }

  return result;
}

uint64_t sub_1000A65C0(uint64_t a1)
{
  v2 = sub_100024248(&qword_100154940, &qword_100107C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A6628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1000A6698(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}

uint64_t sub_1000A6698(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int8 a5)
{
  if (!result)
  {
    return a4;
  }

  v5 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (a4)
      {
        v6 = (result + a3);
        v7 = a4 & ~(a4 >> 63);
        v8 = ~a3 + a2 - result;
        v9 = a4 - 1;
        if (v7 < a4 - 1)
        {
          v9 = a4 & ~(a4 >> 63);
        }

        if (v8 >= v9)
        {
          v8 = v9;
        }

        if (v8 >= 0x10)
        {
          v12 = v8 + 1;
          v13 = v12 & 0xF;
          if ((v12 & 0xF) == 0)
          {
            v13 = 16;
          }

          v10 = v12 - v13;
          v11 = v10 + 1;
          v14 = (v6 + v10);
          v15 = vdupq_n_s8(a5);
          v16 = v10;
          do
          {
            *v6++ = v15;
            v16 -= 16;
          }

          while (v16);
          v6 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
        }

        while (v10 != v7)
        {
          v10 = v11;
          v6->i8[0] = a5;
          if (v5 != v11)
          {
            v6 = (v6 + 1);
            ++v11;
            if (a4 + 1 != v10 + 1)
            {
              continue;
            }
          }

          return a4;
        }

        goto LABEL_24;
      }
    }

    return a4;
  }

LABEL_25:
  __break(1u);
  return result;
}

Swift::Int sub_1000A67E0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1uLL);
  return Hasher._finalize()();
}

Swift::Int sub_1000A684C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1uLL);
  return Hasher._finalize()();
}

unint64_t sub_1000A6908()
{
  sub_100024248(&qword_100153B90, &unk_100105E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001042A0;
  *(inited + 32) = 0x656D614E6B736174;
  v1 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 0x654667614279656BLL;
  *(inited + 56) = 0xEB00000000686374;
  v2 = sub_100061318(inited);
  swift_setDeallocating();
  sub_10002533C(v1, &qword_100153B98, &qword_100107EA0);
  return v2;
}

uint64_t sub_1000A69D8(uint64_t a1)
{
  v2 = sub_1000A8214();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A6A14(uint64_t a1)
{
  v2 = sub_1000A8214();
  v3 = sub_1000A8268();
  v4 = sub_10005846C();

  return Error<>._code.getter(a1, v2, v3, v4);
}

uint64_t sub_1000A6A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v19 - v14;
  sub_100025834(a1, &v19 - v14, &unk_100152620, &unk_1001031E0);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a6;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a2;
  v16[8] = a3;
  v17 = sub_1000A7BB4(0, 0, v15, &unk_100107C98, v16);
  sub_10002533C(a1, &unk_100152620, &unk_1001031E0);
  return v17;
}

uint64_t sub_1000A6B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_1000A6BC0, 0, 0);
}

uint64_t sub_1000A6BC0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v6 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1000A6CBC;
  v8 = *(v0 + 16);
  v11 = *(v0 + 56);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v8);
}

uint64_t sub_1000A6CBC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000A6DF8, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1000A6DF8()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1000A6E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for Optional();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v11 = *(*(sub_100024248(&unk_100152620, &unk_1001031E0) - 8) + 64) + 15;
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000A6F64, 0, 0);
}

uint64_t sub_1000A6F64()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[5];
  v16 = v0[6];
  v17 = v0[7];
  v4 = v0[3];
  v5 = v0[4];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v5;
  v8[6] = v3;

  v0[13] = sub_1000242F4(&qword_100152630, &qword_100103210);
  v9 = type metadata accessor for ThrowingTaskGroup();
  sub_1000A75DC(v1, &unk_100107E40, v8, v9);
  sub_10002533C(v1, &unk_100152620, &unk_1001031E0);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = v16;
  v10[6] = v17;
  sub_1000A75DC(v1, &unk_100107E50, v10, v9);
  sub_10002533C(v1, &unk_100152620, &unk_1001031E0);
  v11 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_1000A719C;
  v13 = v0[11];
  v14 = v0[3];

  return ThrowingTaskGroup.next(isolation:)(v13, 0, 0, v9);
}

uint64_t sub_1000A719C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1000A7478;
  }

  else
  {
    v3 = sub_1000A72B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A72B0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v1, v0[9]);
    type metadata accessor for CancellationError();
    sub_1000A8594(&qword_1001548F0, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v5 = v0[11];
    v4 = v0[12];
  }

  else
  {
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[3];
    (*(v3 + 32))(v0[2], v1, v2);
    v10 = *v9;
    ThrowingTaskGroup.cancelAll()();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000A7478()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000A74E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_10001CF5C;

  return v9(a1);
}

uint64_t sub_1000A75DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v23 - v11;
  sub_100025834(a1, v23 - v11, &unk_100152620, &unk_1001031E0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10002533C(v12, &unk_100152620, &unk_1001031E0);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_1000A77D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000A7890, 0, 0);
}

uint64_t sub_1000A7890()
{
  v1 = v0[6];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000A7950;
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  return sub_100029BA0(v5, v4, 0, 0, 1);
}

uint64_t sub_1000A7950()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000A7B50;
  }

  else
  {
    v6 = sub_1000A7AC0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000A7AC0()
{
  sub_1000A81AC();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000A7B50()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A7BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_100025834(a3, &v26[-1] - v11, &unk_100152620, &unk_1001031E0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10002533C(v12, &unk_100152620, &unk_1001031E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter();
      v22 = *(v21 + 16);
      sub_1000A7E38(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_10002533C(a3, &unk_100152620, &unk_1001031E0);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002533C(a3, &unk_100152620, &unk_1001031E0);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000A7E38@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A7EF4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1000A8594(&qword_100152CC8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000A8594(&qword_100152CD0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100029E30;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1000A808C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001CF5C;

  return sub_1000A6B98(a1, v9, v10, v5, v6, v7, v8, v4);
}

unint64_t sub_1000A8158()
{
  result = qword_100154948;
  if (!qword_100154948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154948);
  }

  return result;
}

unint64_t sub_1000A81AC()
{
  result = qword_100154950;
  if (!qword_100154950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154950);
  }

  return result;
}

unint64_t sub_1000A8214()
{
  result = qword_100154958;
  if (!qword_100154958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154958);
  }

  return result;
}

unint64_t sub_1000A8268()
{
  result = qword_100154960;
  if (!qword_100154960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154960);
  }

  return result;
}

uint64_t sub_1000A82BC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000258C8;

  return sub_1000A6E5C(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t sub_1000A839C(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 48);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000A83E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000258C8;

  return sub_1000A74E4(a1, v4, v5, v7);
}

uint64_t sub_1000A84C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A84FC()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_1000A77D0(v4, v5, v6, v2, v3);
}

uint64_t sub_1000A8594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A8610@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015C3E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000A86B8(uint64_t a1, char a2, double a3)
{
  *(v3 + 65) = a2;
  *(v3 + 80) = a3;
  *(v3 + 72) = a1;
  v4 = *(*(sub_100024248(&unk_100152620, &unk_1001031E0) - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1000A875C, 0, 0);
}

uint64_t sub_1000A875C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 65);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = static Duration.seconds(_:)();
  v8 = v7;
  sub_1000331C0(v4, v0 + 16);
  v9 = swift_allocObject();
  sub_100037608((v0 + 16), v9 + 16);
  *(v9 + 56) = v2;
  v10 = sub_1000A986C();
  v11 = sub_1000A6A70(v1, v6, v8, &unk_100107E78, v9, v10);
  *(v0 + 96) = v11;
  v12 = async function pointer to Task.result.getter[1];
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  v14 = sub_100024248(&qword_100152630, &qword_100103210);
  *v13 = v0;
  v13[1] = sub_1000A8900;

  return Task.result.getter(v0 + 56, v11, v10, v14, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000A8900()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_1000A89FC, 0, 0);
}

uint64_t sub_1000A89FC()
{
  v1 = *(v0 + 56);
  if (*(v0 + 64))
  {
    if (qword_10015C3E0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100025AE0(v2, qword_10015D310);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_1000A98B8(v1, 1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Timed out waiting to configure public key bag %@", v5, 0xCu);
      sub_10002533C(v6, &qword_100153450, &unk_100104140);
    }

    v9 = *(v0 + 88);
    v8 = *(v0 + 96);

    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);

    v14 = *(v0 + 8);

    return v14(v1);
  }
}

uint64_t sub_1000A8C04(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 248) = a3;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  return _swift_task_switch(sub_1000A8C28, 0, 0);
}

uint64_t sub_1000A8C28()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 144);
  type metadata accessor for SWTPublicKeyBag();
  sub_1000331C0(v2, v0 + 16);
  *(v0 + 152) = sub_10007FC28((v0 + 16));
  v3 = v2[3];
  v4 = v2[4];
  sub_100026F6C(v2, v3);
  v5 = *(v0 + 144);
  if (v1 == 1)
  {
    v7 = v2[3];
    v6 = v2[4];
    sub_100026F6C(v5, v7);
    v8 = (*(v6 + 48))(v7, v6);
    *(v0 + 160) = v8;
    v17 = (*(v4 + 104) + **(v4 + 104));
    v9 = *(*(v4 + 104) + 4);
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_1000A8EC0;
    v11 = v0 + 96;
  }

  else
  {
    v13 = v2[3];
    v12 = v2[4];
    sub_100026F6C(v5, v13);
    v8 = (*(v12 + 48))(v13, v12);
    *(v0 + 192) = v8;
    v17 = (*(v4 + 104) + **(v4 + 104));
    v14 = *(*(v4 + 104) + 4);
    v15 = swift_task_alloc();
    *(v0 + 200) = v15;
    *v15 = v0;
    v15[1] = sub_1000A9200;
    v11 = v0 + 56;
  }

  return v17(v11, v8, v3, v4);
}

uint64_t sub_1000A8EC0()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v11 = *v0;

  v9 = (*v4 + 360);
  v10 = (*v9 + **v9);
  v5 = (*v9)[1];
  v6 = swift_task_alloc();
  *(v1 + 176) = v6;
  *v6 = v11;
  v6[1] = sub_1000A90C0;
  v7 = *(v1 + 152);

  return v10(v1 + 96);
}

uint64_t sub_1000A90C0()
{
  v2 = *v1;
  v3 = (*v1)[22];
  v8 = *v1;
  v2[23] = v0;

  sub_100024E14(v2 + 12);
  if (v0)
  {
    v4 = sub_1000A96C0;
    v5 = 0;
  }

  else
  {
    v5 = v2[19];
    v6 = (*v5 + 160) & 0xFFFFFFFFFFFFLL | 0x445F000000000000;
    v2[28] = *(*v5 + 160);
    v2[29] = v6;
    v4 = sub_1000A9540;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000A9200()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 152);
  v11 = *v0;

  v9 = (*v4 + 352);
  v10 = (*v9 + **v9);
  v5 = (*v9)[1];
  v6 = swift_task_alloc();
  *(v1 + 208) = v6;
  *v6 = v11;
  v6[1] = sub_1000A9400;
  v7 = *(v1 + 152);

  return v10(v1 + 56);
}

uint64_t sub_1000A9400()
{
  v2 = *v1;
  v3 = (*v1)[26];
  v8 = *v1;
  v2[27] = v0;

  sub_100024E14(v2 + 7);
  if (v0)
  {
    v4 = sub_1000A9724;
    v5 = 0;
  }

  else
  {
    v5 = v2[19];
    v6 = (*v5 + 160) & 0xFFFFFFFFFFFFLL | 0x445F000000000000;
    v2[28] = *(*v5 + 160);
    v2[29] = v6;
    v4 = sub_1000A9540;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000A9540()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 152);
  *(v0 + 240) = (*(v0 + 224))();

  return _swift_task_switch(sub_1000A95B0, 0, 0);
}

uint64_t sub_1000A95B0()
{
  v1 = v0[30];
  v2 = v0[19];
  if (v1)
  {
    v3 = v0[17];
    v4 = v0[19];

    *v3 = v1;
  }

  else
  {
    type metadata accessor for SWTStateMachineError(0);
    sub_1000AB7E8(&qword_100152F30, type metadata accessor for SWTStateMachineError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000A96C0()
{
  v1 = v0[19];

  v2 = v0[23];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A9724()
{
  v1 = v0[19];

  v2 = v0[27];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A9788()
{
  sub_100024E14((v0 + 16));

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1000A97C0(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001CF5C;

  return sub_1000A8C04(a1, v1 + 16, v4);
}

unint64_t sub_1000A986C()
{
  result = qword_100152D78;
  if (!qword_100152D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100152D78);
  }

  return result;
}

void sub_1000A98B8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000A98D0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100027A50(v3, a2);
  sub_100025AE0(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000A9970(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_100025AE0(v3, a2);
}

uint64_t sub_1000A99C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015C3E8[0] != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D328);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000A9A6C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_100037608(a2, v6 + 24);
  sub_100037608(a3, v6 + 64);
  return v6;
}

uint64_t sub_1000A9AD0(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  sub_100037608(a2, v3 + 24);
  sub_100037608(a3, v3 + 64);
  return v3;
}

uint64_t sub_1000A9B14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URLRequest();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_100024248(&qword_100152F00, &qword_1001042C0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000A9C74, 0, 0);
}

uint64_t sub_1000A9C74()
{
  v43 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  URLRequest.url.getter();
  v5 = *(v2 + 48);
  v0[12] = v5;
  v0[13] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v3, 1, v1) == 1)
  {
    sub_10002533C(v0[8], &qword_100152F00, &qword_1001042C0);
    if (qword_10015C3E8[0] != -1)
    {
      swift_once();
    }

    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    v9 = v0[2];
    v10 = type metadata accessor for Logger();
    sub_100025AE0(v10, qword_10015D328);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[12];
      v13 = v0[13];
      v15 = v0[9];
      v16 = v0[6];
      v17 = v0[7];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v42 = v19;
      *v18 = 136315138;
      URLRequest.url.getter();
      if (v14(v17, 1, v15) == 1)
      {
        sub_10002533C(v0[7], &qword_100152F00, &qword_1001042C0);
        v20 = 0xEB000000004C5255;
        v21 = 0x206E776F6E6B6E75;
      }

      else
      {
        v33 = v0[9];
        v34 = v0[10];
        v35 = v0[7];
        v21 = URL.description.getter();
        v20 = v36;
        (*(v34 + 8))(v35, v33);
      }

      (*(v0[5] + 8))(v0[6], v0[4]);
      v37 = sub_100021D24(v21, v20, &v42);

      *(v18 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v11, v12, "Fetching public key bag from %s", v18, 0xCu);
      sub_100024E14(v19);
    }

    else
    {
      v31 = v0[5];
      v30 = v0[6];
      v32 = v0[4];

      (*(v31 + 8))(v30, v32);
    }

    v38 = SWTURLSession.shared.unsafeMutableAddressor();
    v39 = *v38;
    v0[15] = *v38;
    v40 = (*v39 + 96) & 0xFFFFFFFFFFFFLL | 0xE282000000000000;
    v0[16] = *(*v39 + 96);
    v0[17] = v40;

    return _swift_task_switch(sub_1000AA484, v39, 0);
  }

  else
  {
    v22 = v0[3];
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v23 = v22[11];
    v24 = v22[12];
    sub_100026F6C(v22 + 8, v23);
    v25 = *(v24 + 24);
    v41 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    v0[14] = v27;
    *v27 = v0;
    v27[1] = sub_1000AA0B4;
    v28 = v0[11];

    return v41(v28, v23, v24);
  }
}

uint64_t sub_1000AA0B4()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_1000AA1B0, 0, 0);
}

uint64_t sub_1000AA1B0()
{
  v30 = v0;
  (*(v0[10] + 8))(v0[11], v0[9]);
  if (qword_10015C3E8[0] != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_100025AE0(v5, qword_10015D328);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    URLRequest.url.getter();
    if (v9(v12, 1, v10) == 1)
    {
      sub_10002533C(v0[7], &qword_100152F00, &qword_1001042C0);
      v15 = 0xEB000000004C5255;
      v16 = 0x206E776F6E6B6E75;
    }

    else
    {
      v20 = v0[9];
      v21 = v0[10];
      v22 = v0[7];
      v16 = URL.description.getter();
      v15 = v23;
      (*(v21 + 8))(v22, v20);
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
    v24 = sub_100021D24(v16, v15, &v29);

    *(v13 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching public key bag from %s", v13, 0xCu);
    sub_100024E14(v14);
  }

  else
  {
    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[4];

    (*(v18 + 8))(v17, v19);
  }

  v25 = SWTURLSession.shared.unsafeMutableAddressor();
  v26 = *v25;
  v0[15] = *v25;
  v27 = (*v26 + 96) & 0xFFFFFFFFFFFFLL | 0xE282000000000000;
  v0[16] = *(*v26 + 96);
  v0[17] = v27;

  return _swift_task_switch(sub_1000AA484, v26, 0);
}

uint64_t sub_1000AA484()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  *(v0 + 144) = (*(v0 + 128))();

  v3 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_1000AA540;
  v5 = *(v0 + 16);

  return NSURLSession.data(for:delegate:)(v5, 0);
}

uint64_t sub_1000AA540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 152);
  v9 = *v4;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  *(v5 + 176) = a3;
  *(v5 + 184) = v3;

  if (v3)
  {
    v7 = sub_1000AA910;
  }

  else
  {

    v7 = sub_1000AA660;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000AA660()
{
  v1 = v0[22];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v0[22];
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = [v4 statusCode];
    v7 = v0[22];
    if (v6 == 200)
    {
      v8 = v0[11];
      v10 = v0[7];
      v9 = v0[8];
      v11 = v0[6];

      v12 = v0[1];
      v13 = v0[20];
      v14 = v0[21];

      return v12(v13, v14);
    }

    v18 = v0[20];
    v28 = v0[21];
    v19 = v0[2];
    type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError();
    sub_1000AB7E8(&qword_100154968, type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError);
    swift_allocError();
    v21 = v20;
    v22 = *(sub_100024248(&qword_100154970, &unk_100107E90) + 48);
    *v21 = [v4 statusCode];
    URLRequest.url.getter();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100026FB0(v18, v28);
  }

  else
  {
    v17 = v0[20];
    v16 = v0[21];
    type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError();
    sub_1000AB7E8(&qword_100154968, type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100026FB0(v17, v16);
  }

  v23 = v0[11];
  v25 = v0[7];
  v24 = v0[8];
  v26 = v0[6];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000AA910()
{
  v1 = *(v0 + 184);

  type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError();
  sub_1000AB7E8(&qword_100154968, type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError);
  swift_allocError();
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);

  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_1000AADC0()
{
  v1 = v0;
  v2 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  v9 = type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000AB514(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v12;
      v15 = sub_100024248(&qword_100154970, &unk_100107E90);
      sub_1000443C0(v12 + *(v15 + 48), v8);
      sub_100024248(&qword_100153B90, &unk_100105E80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100106430;
      *(inited + 32) = 7107189;
      *(inited + 40) = 0xE300000000000000;
      sub_100025834(v8, v6, &qword_100152F00, &qword_1001042C0);
      v17 = type metadata accessor for URL();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v6, 1, v17) == 1)
      {
        sub_10002533C(v6, &qword_100152F00, &qword_1001042C0);
        v19 = (inited + 48);
        *(inited + 72) = &type metadata for String;
      }

      else
      {
        v27 = URL.description.getter();
        v29 = v28;
        (*(v18 + 8))(v6, v17);
        v19 = (inited + 48);
        *(inited + 72) = &type metadata for String;
        if (v29)
        {
          *v19 = v27;
LABEL_10:
          *(inited + 56) = v29;
          *(inited + 80) = 0x737574617473;
          *(inited + 88) = 0xE600000000000000;
          *(inited + 120) = &type metadata for Int;
          *(inited + 96) = v14;
          v26 = sub_100061318(inited);
          swift_setDeallocating();
          sub_100024248(&qword_100153B98, &qword_100107EA0);
          swift_arrayDestroy();
          sub_10002533C(v8, &qword_100152F00, &qword_1001042C0);
          return v26;
        }
      }

      *v19 = 45;
      v29 = 0xE100000000000000;
      goto LABEL_10;
    }

    v26 = sub_100061318(_swiftEmptyArrayStorage);
    sub_1000AB578(v12);
  }

  else
  {
    v20 = *v12;
    sub_100024248(&qword_100153B90, &unk_100105E80);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_1001042A0;
    *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v21 + 40) = v22;
    swift_getErrorValue();
    v23 = v31;
    v24 = v32;
    *(v21 + 72) = v32;
    v25 = sub_100045004((v21 + 48));
    (*(*(v24 - 8) + 16))(v25, v23, v24);
    v26 = sub_100061318(v21);
    swift_setDeallocating();
    sub_10002533C(v21 + 32, &qword_100153B98, &qword_100107EA0);
  }

  return v26;
}

uint64_t sub_1000AB1BC(uint64_t a1)
{
  v2 = sub_1000AB7E8(&qword_100154AD8, type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000AB228(uint64_t a1)
{
  v2 = sub_1000AB7E8(&qword_100154AD8, type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000AB29C()
{
  sub_100024E14((v0 + 24));
  sub_100024E14((v0 + 64));
  return v0;
}

uint64_t sub_1000AB2CC()
{
  sub_100024E14((v0 + 24));
  sub_100024E14((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1000AB320(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000AB3B8;

  return sub_1000A9B14(a1);
}

uint64_t sub_1000AB3B8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError()
{
  result = qword_10015C570;
  if (!qword_10015C570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AB514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AB578(uint64_t a1)
{
  v2 = type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000AB650()
{
  sub_1000AB6C4();
  if (v0 <= 0x3F)
  {
    sub_1000AB770();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000AB6C4()
{
  if (!qword_100154A98)
  {
    v0 = sub_1000AB70C();
    if (!v1)
    {
      atomic_store(v0, &qword_100154A98);
    }
  }
}

unint64_t sub_1000AB70C()
{
  result = qword_100154AA0;
  if (!qword_100154AA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100154AA0);
  }

  return result;
}

void sub_1000AB770()
{
  if (!qword_100154AA8)
  {
    sub_1000242F4(&qword_100152F00, &qword_1001042C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100154AA8);
    }
  }
}

uint64_t sub_1000AB7E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000AB864(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_1000AB8A4(a1);
  return v2;
}

uint64_t sub_1000AB8A4(uint64_t *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  type metadata accessor for SMCondition();
  v4 = sub_10008EBD0();
  sub_100024248(&qword_100154AE0, &qword_100108010);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100108000;
  sub_1000331C0(a1, v59);
  v6 = type metadata accessor for Initial(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v9 + 112) = 0;
  *(v9 + 120) = &_swiftEmptySetSingleton;
  v10 = OBJC_IVAR____TtC15swtransparencyd7Initial_priority;
  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  v12 = *(*(v11 - 8) + 56);
  v12(v9 + v10, 0, 1, v11);
  sub_100037608(v59, v9 + OBJC_IVAR____TtC15swtransparencyd7Initial_deps);
  v13 = sub_1000AF2A8(&qword_100154AE8, type metadata accessor for Initial);
  *(v5 + 32) = v9;
  *(v5 + 40) = v13;
  type metadata accessor for InitialLoadConfigState(0);
  sub_1000331C0(a1, v59);
  v14 = sub_10008849C(v59);
  v15 = sub_1000AF2A8(&qword_100154AF0, type metadata accessor for InitialLoadConfigState);
  *(v5 + 48) = v14;
  *(v5 + 56) = v15;
  v16 = type metadata accessor for WaitForNetwork(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v19 + 112) = 2;
  *(v19 + 120) = sub_10008B5FC(&off_100136A78);
  v12(v19 + OBJC_IVAR____TtC15swtransparencyd14WaitForNetwork_priority, 1, 1, v11);
  v20 = sub_1000AF2A8(&qword_100154AF8, type metadata accessor for WaitForNetwork);
  *(v5 + 64) = v19;
  *(v5 + 72) = v20;
  type metadata accessor for LoadConfigState(0);
  sub_1000331C0(a1, v59);
  v21 = sub_100089CE8(v59);
  v22 = sub_1000AF2A8(&qword_100154B00, type metadata accessor for LoadConfigState);
  *(v5 + 80) = v21;
  *(v5 + 88) = v22;
  sub_1000331C0(a1, v59);
  PublicKeyState = type metadata accessor for InitialLoadPublicKeyState(0);
  v24 = *(PublicKeyState + 48);
  v25 = *(PublicKeyState + 52);
  v26 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v26 + 112) = 4;
  *(v26 + 120) = sub_10008B5FC(&off_100136A28);
  v27 = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_priority;
  static TaskPriority.userInitiated.getter();
  v12(v26 + v27, 0, 1, v11);
  *(v26 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_pendingFetch) = 0;
  sub_100037608(v59, v26 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps);
  *(v26 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_readyEnough) = v4;
  v28 = sub_1000AF2A8(&qword_100154B08, type metadata accessor for InitialLoadPublicKeyState);
  *(v5 + 96) = v26;
  *(v5 + 104) = v28;
  sub_1000331C0(a1, v59);
  v29 = type metadata accessor for ReloadPublicKeyState(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v32 + 112) = 7;
  *(v32 + 120) = &_swiftEmptySetSingleton;
  v12(v32 + OBJC_IVAR____TtC15swtransparencyd20ReloadPublicKeyState_priority, 1, 1, v11);
  sub_100037608(v59, v32 + OBJC_IVAR____TtC15swtransparencyd20ReloadPublicKeyState_deps);
  v33 = sub_1000AF2A8(&qword_100154B10, type metadata accessor for ReloadPublicKeyState);
  *(v5 + 112) = v32;
  *(v5 + 120) = v33;
  sub_1000331C0(a1, v59);
  v34 = type metadata accessor for MilestoneDownloadState(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v37 + 112) = 5;
  *(v37 + 120) = &_swiftEmptySetSingleton;
  v12(v37 + OBJC_IVAR____TtC15swtransparencyd22MilestoneDownloadState_priority, 1, 1, v11);
  sub_100037608(v59, v37 + OBJC_IVAR____TtC15swtransparencyd22MilestoneDownloadState_deps);
  v38 = sub_1000AF2A8(&qword_100154B18, type metadata accessor for MilestoneDownloadState);
  *(v5 + 128) = v37;
  *(v5 + 136) = v38;
  sub_1000331C0(a1, v59);
  v39 = type metadata accessor for PatConsistencyState(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v42 + 112) = 6;
  *(v42 + 120) = &_swiftEmptySetSingleton;
  v12(v42 + OBJC_IVAR____TtC15swtransparencyd19PatConsistencyState_priority, 1, 1, v11);
  sub_100037608(v59, v42 + OBJC_IVAR____TtC15swtransparencyd19PatConsistencyState_deps);
  v43 = sub_1000AF2A8(&qword_100154B20, type metadata accessor for PatConsistencyState);
  *(v5 + 144) = v42;
  *(v5 + 152) = v43;
  sub_1000331C0(a1, v59);
  v44 = type metadata accessor for DetectSplitViewState(0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v47 + 112) = 8;
  *(v47 + 120) = &_swiftEmptySetSingleton;
  v12(v47 + OBJC_IVAR____TtC15swtransparencyd20DetectSplitViewState_priority, 1, 1, v11);
  sub_100037608(v59, v47 + OBJC_IVAR____TtC15swtransparencyd20DetectSplitViewState_deps);
  v48 = sub_1000AF2A8(&qword_100154B28, type metadata accessor for DetectSplitViewState);
  *(v5 + 160) = v47;
  *(v5 + 168) = v48;
  sub_1000331C0(a1, v59);
  v49 = type metadata accessor for Ready(0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v52 + 112) = 9;
  *(v52 + 120) = sub_10008B5FC(&off_100136A50);
  v12(v52 + OBJC_IVAR____TtC15swtransparencyd5Ready_priority, 1, 1, v11);
  sub_100037608(v59, v52 + OBJC_IVAR____TtC15swtransparencyd5Ready_deps);
  v53 = sub_1000AF2A8(&qword_100154B30, type metadata accessor for Ready);
  *(v5 + 176) = v52;
  *(v5 + 184) = v53;
  sub_1000331C0(a1, v2 + 112);
  *(v2 + 160) = v4;
  type metadata accessor for SWTStateMachine(0);
  v54 = a1[3];
  v55 = a1[4];
  sub_100026F6C(a1, v54);
  v56 = *(v55 + 72);

  v56(v59, v54, v55);
  v57 = sub_1000910A0(v5, 0, 7, v59);

  *(v2 + 152) = v57;
  sub_100024E14(a1);
  return v2;
}

uint64_t sub_1000AC004(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = &_swiftEmptySetSingleton;
  v6 = OBJC_IVAR____TtC15swtransparencyd7Initial_priority;
  static TaskPriority.userInitiated.getter();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5 + v6, 0, 1, v7);
  sub_100037608(a1, v5 + OBJC_IVAR____TtC15swtransparencyd7Initial_deps);
  return v5;
}

uint64_t sub_1000AC0DC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 2;
  *(v3 + 120) = sub_10008B5FC(&off_100136AA0);
  v4 = OBJC_IVAR____TtC15swtransparencyd14WaitForNetwork_priority;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  return v3;
}

uint64_t sub_1000AC174(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 112) = 4;
  *(v8 + 120) = sub_10008B5FC(&off_100136A28);
  v9 = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_priority;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8 + v9, 0, 1, v10);
  *(v8 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_pendingFetch) = 0;
  sub_100037608(a1, v8 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps);
  *(v8 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_readyEnough) = a2;
  return v8;
}

uint64_t sub_1000AC2B4(__int128 *a1, char a2, uint64_t *a3, void *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 112) = a2;
  *(v11 + 120) = &_swiftEmptySetSingleton;
  v12 = *a3;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  sub_100037608(a1, v11 + *a4);
  return v11;
}

uint64_t sub_1000AC370(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 9;
  *(v5 + 120) = sub_10008B5FC(&off_100136A50);
  v6 = OBJC_IVAR____TtC15swtransparencyd5Ready_priority;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  sub_100037608(a1, v5 + OBJC_IVAR____TtC15swtransparencyd5Ready_deps);
  return v5;
}

uint64_t sub_1000AC448()
{
  v1 = *(*(v0 + 16) + 152);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100038BE4;

  return sub_100091708();
}

uint64_t sub_1000AC4E0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for CancellationError();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000AC600, 0, 0);
}

uint64_t sub_1000AC600()
{
  v0[12] = *(v0[5] + 152);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1000AC6A0;

  return sub_100093974(6);
}

uint64_t sub_1000AC6A0()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_1000AC79C, 0, 0);
}

uint64_t sub_1000AC79C()
{
  v1 = *(v0[5] + 160);
  v0[14] = v1;
  v7 = (*(*v1 + 160) + **(*v1 + 160));
  v2 = *(*(*v1 + 160) + 4);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1000AC8E0;
  v5 = v0[3];
  v4 = v0[4];

  return v7(v5, v4, 0xD00000000000001DLL, 0x800000010010CF10);
}

uint64_t sub_1000AC8E0()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000ACA34, 0, 0);
  }

  else
  {
    v4 = v3[11];
    v5 = v3[8];

    v6 = v3[1];
    v7 = v3[16] == 0;

    return v6(v7);
  }
}

uint64_t sub_1000ACA34()
{
  v0[2] = v0[16];
  v1 = v0[11];
  v2 = v0[9];
  swift_errorRetain();
  sub_100024248(&qword_100152630, &qword_100103210);
  v3 = swift_dynamicCast();
  v4 = v0[16];
  if (v3)
  {
    v5 = v0[14];
    v6 = v0[16];

    v7 = *(*v5 + 168);
    v29 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_1000ACD4C;
    v10 = v0[14];

    return v29();
  }

  else
  {
    v12 = v0[12];
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];
    v16 = v0[2];

    (*(v14 + 16))(v13, v12 + OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_logger, v15);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[16];
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "unknown error for isReadyEnoughForXPC %@", v21, 0xCu);
      sub_10002533C(v22, &qword_100153450, &unk_100104140);
    }

    else
    {
      v24 = v0[16];
    }

    (*(v0[7] + 8))(v0[8], v0[6]);
    v25 = v0[11];
    v26 = v0[8];

    v27 = v0[1];
    v28 = v0[16] == 0;

    return v27(v28);
  }
}

uint64_t sub_1000ACD4C()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_1000ACE48, 0, 0);
}

uint64_t sub_1000ACE48()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[2];

  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[16] == 0;

  return v4(v5);
}

uint64_t sub_1000ACF00()
{
  v1 = v0[8];
  v2 = v1[17];
  v3 = v1[18];
  sub_100026F6C(v1 + 14, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v5 = String._bridgeToObjectiveC()();
  v6 = SFAnalyticsSamplerIntervalOncePerReport;
  v0[6] = sub_1000B6988;
  v0[7] = v1;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000AD168;
  v0[5] = &unk_100136B90;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];

  [v4 addMultiSamplerForName:v5 withTimeInterval:v7 block:v6];
  _Block_release(v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000AD070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1000B65E4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1000435B4(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1000B675C();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1000B6434(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

Class sub_1000AD168(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  sub_1000B721C();
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

uint64_t sub_1000AD1F4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for TransparencySWIssue();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000AD2E4, v2, 0);
}

uint64_t sub_1000AD2E4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v19 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  v7 = v5[17];
  v8 = v5[18];
  sub_100026F6C(v5 + 14, v7);
  SWTFollowUpType.rawValue.getter();
  Date.init()();

  TransparencySWIssue.init(issue:posted:slh:)();
  (*(v8 + 136))(v1, v7, v8);
  (*(v2 + 8))(v1, v19);
  v9 = v5[17];
  v10 = v5[18];
  sub_100026F6C(v5 + 14, v9);
  (*(v10 + 40))(v9, v10);
  v11 = v0[5];
  v12 = v0[6];
  sub_100026F6C(v0 + 2, v11);
  v13 = *(v12 + 16);
  v20 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = sub_1000AD4F8;
  v17 = v0[7];
  v16 = v0[8];

  return (v20)(v17, v5 + 14, v16, v11, v12);
}

uint64_t sub_1000AD4F8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_1000AD608, v2, 0);
}

uint64_t sub_1000AD608()
{
  v1 = v0[13];
  v2 = v0[10];
  sub_100024E14(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000AD6A0()
{
  v1 = v0[7];
  v2 = v1[17];
  v3 = v1[18];
  sub_100026F6C(v1 + 14, v2);
  (*(v3 + 40))(v2, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_100026F6C(v0 + 2, v4);
  v6 = *(v5 + 40);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1000AD7FC;

  return v10(v4, v5);
}

uint64_t sub_1000AD7FC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100091D84, v2, 0);
}

uint64_t sub_1000AD92C()
{
  v1 = *(*(v0 + 16) + 152);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000B7374;

  return sub_100093974(4);
}

uint64_t sub_1000AD9E8()
{
  v1 = *(*(v0 + 16) + 152);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000B7374;

  return sub_100093974(3);
}

uint64_t sub_1000ADAA4()
{
  v1 = *(*(v0 + 16) + 152);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000B7374;

  return sub_100093974(1);
}

uint64_t sub_1000ADB60()
{
  v1 = *(*(v0 + 16) + 152);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100078568;

  return sub_100093974(5);
}

uint64_t sub_1000ADBFC(uint64_t a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 40) = a2;
  return _swift_task_switch(sub_1000ADC20, v2, 0);
}

uint64_t sub_1000ADC20()
{
  v1 = *(*(v0 + 16) + 152);
  if (*(v0 + 40) == 1)
  {
    *(v0 + 24) = v1;

    return _swift_task_switch(sub_1000ADD10, v1, 0);
  }

  else
  {
    v2 = sub_1000258E4();
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_100077030;

    return sub_1000961B4(v2 & 1);
  }
}

uint64_t sub_1000ADD10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10009ADBC();

  return _swift_task_switch(sub_1000ADD78, v1, 0);
}

uint64_t sub_1000ADD78()
{
  v1 = *(*(v0 + 16) + 152);
  v2 = sub_1000258E4();
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_100077030;

  return sub_1000961B4(v2 & 1);
}

uint64_t sub_1000ADE20(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(sub_100024248(&qword_100154B38, &qword_100108070) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v7 = *(*(sub_100024248(&qword_100154B40, &qword_100108078) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000ADF5C, v1, 0);
}

uint64_t sub_1000ADF5C()
{
  v1 = v0[11];
  v2 = v1[17];
  v3 = v1[18];
  sub_100026F6C(v1 + 14, v2);
  v4 = (*(v3 + 56))(v2, v3);
  v0[18] = v4;
  v9 = (*v4 + 272);
  v10 = (*v9 + **v9);
  v5 = (*v9)[1];
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_1000AE0CC;
  v7 = v0[17];

  return v10(v7);
}

uint64_t sub_1000AE0CC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 88);
  if (v0)
  {

    v7 = sub_1000AEA5C;
  }

  else
  {

    v7 = sub_1000AE228;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000AE228()
{
  v0[21] = v0[20];
  v1 = v0[17];
  v2 = v0[11];
  v3 = type metadata accessor for TransparencySWSysdiagnose.PublicKeybag();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v2[17];
  v5 = v2[18];
  sub_100026F6C(v2 + 14, v4);
  LODWORD(v5) = [(*(v5 + 32))(v4 v5)];
  swift_unknownObjectRelease();
  countAndFlagsBits = 0;
  object = 0;
  if (v5)
  {
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[13];
    v11 = v0[11];
    v12 = v11[17];
    v13 = v11[18];
    sub_100026F6C(v11 + 14, v12);
    (*(v13 + 16))(v12, v13);
    v14 = URL.path(percentEncoded:)(1);
    countAndFlagsBits = v14._countAndFlagsBits;
    object = v14._object;
    (*(v9 + 8))(v8, v10);
  }

  v0[22] = countAndFlagsBits;
  v0[23] = object;
  v15 = *(v0[11] + 152);
  v0[24] = v15;

  return _swift_task_switch(sub_1000AE3B8, v15, 0);
}

uint64_t sub_1000AE3B8()
{
  v1 = v0[24];
  v2 = v0[11];
  swift_beginAccess();
  v0[25] = *(v1 + 144);
  v0[26] = *(v1 + 152);
  swift_unknownObjectRetain();

  return _swift_task_switch(sub_1000AE44C, v2, 0);
}

uint64_t sub_1000AE44C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  ObjectType = swift_getObjectType();
  LOBYTE(v1) = (*(v1 + 16))(ObjectType, v1);
  swift_unknownObjectRelease();
  v0[27] = sub_10009018C(v1);
  v0[28] = v5;
  v6 = *(v3 + 112);
  v0[29] = v6;
  v7 = (*v6 + 112) & 0xFFFFFFFFFFFFLL | 0xBE5E000000000000;
  v0[30] = *(*v6 + 112);
  v0[31] = v7;

  return _swift_task_switch(sub_1000AE524, v6, 0);
}

uint64_t sub_1000AE524()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 88);
  *(v0 + 256) = (*(v0 + 240))();

  return _swift_task_switch(sub_1000AE5A0, v3, 0);
}

uint64_t sub_1000AE5A0()
{
  v1 = v0[24];
  v2 = v0[21];
  v0[33] = sub_1000AEBE8(v0[32]);
  v0[34] = v2;

  v3 = *(v1 + 112);
  v0[35] = v3;
  v4 = (*v3 + 136) & 0xFFFFFFFFFFFFLL | 0xDCF0000000000000;
  v0[36] = *(*v3 + 136);
  v0[37] = v4;

  return _swift_task_switch(sub_1000AE658, v3, 0);
}

uint64_t sub_1000AE658()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 88);
  *(v0 + 304) = (*(v0 + 288))();

  return _swift_task_switch(sub_1000AE6D4, v3, 0);
}

uint64_t sub_1000AE6D4()
{
  v1 = v0[34];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[11];
  v0[39] = sub_1000AEE0C(v0[38]);

  sub_100025834(v2, v3, &qword_100154B40, &qword_100108078);
  v5 = v4[17];
  v6 = v4[18];
  sub_100026F6C(v4 + 14, v5);
  (*(v6 + 72))(v5, v6);
  v7 = v0[5];
  v8 = v0[6];
  sub_100026F6C(v0 + 2, v7);
  v9 = *(v8 + 8);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[40] = v11;
  *v11 = v0;
  v11[1] = sub_1000AE87C;
  v12 = v0[12];

  return v14(v12, v7, v8);
}

uint64_t sub_1000AE87C()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_1000AE98C, v2, 0);
}

uint64_t sub_1000AE98C()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[10];
  TransparencySWSysdiagnose.StateMachine.init(state:flags:pendingFlags:publicKeybag:containerPath:reachability:)();
  sub_10002533C(v8, &qword_100154B40, &qword_100108078);
  sub_100024E14(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000AEA5C()
{
  v0[21] = 0;
  v1 = v0[17];
  v2 = v0[11];
  v3 = type metadata accessor for TransparencySWSysdiagnose.PublicKeybag();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2[17];
  v5 = v2[18];
  sub_100026F6C(v2 + 14, v4);
  LODWORD(v5) = [(*(v5 + 32))(v4 v5)];
  swift_unknownObjectRelease();
  countAndFlagsBits = 0;
  object = 0;
  if (v5)
  {
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[13];
    v11 = v0[11];
    v12 = v11[17];
    v13 = v11[18];
    sub_100026F6C(v11 + 14, v12);
    (*(v13 + 16))(v12, v13);
    v14 = URL.path(percentEncoded:)(1);
    countAndFlagsBits = v14._countAndFlagsBits;
    object = v14._object;
    (*(v9 + 8))(v8, v10);
  }

  v0[22] = countAndFlagsBits;
  v0[23] = object;
  v15 = *(v0[11] + 152);
  v0[24] = v15;

  return _swift_task_switch(sub_1000AE3B8, v15, 0);
}

void *sub_1000AEBE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007DDF0(0, v1, 0);
  v3 = -1 << *(a1 + 32);
  v25 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_10008EC4C(*(*(a1 + 48) + v5));
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_10007DDF0((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = result;
    v14[5] = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_100024A68(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_100024A68(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_1000AEE0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007DDF0(0, v1, 0);
  v3 = -1 << *(a1 + 32);
  v25 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_10008EC4C(*(*(a1 + 48) + v5));
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_10007DDF0((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = result;
    v14[5] = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_100024A68(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_100024A68(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000AF030(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1000AF054, v1, 0);
}

uint64_t sub_1000AF054()
{
  v1 = *(*(v0 + 24) + 152);
  v2 = *(v0 + 16) * 1000.0;
  v3 = static Duration.milliseconds(_:)();
  v5 = v4;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_100077030;

  return sub_100095EEC(9, v3, v5);
}

uint64_t *sub_1000AF120()
{
  sub_100024E14(v0 + 14);
  v1 = v0[19];

  v2 = v0[20];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000AF158()
{
  sub_100024E14(v0 + 14);
  v1 = v0[19];

  v2 = v0[20];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000AF200(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = &_swiftEmptySetSingleton;
  v3 = OBJC_IVAR____TtC15swtransparencyd7Initial_priority;
  static TaskPriority.userInitiated.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1 + v3, 0, 1, v4);
  sub_100037608(a1, v1 + OBJC_IVAR____TtC15swtransparencyd7Initial_deps);
  return v1;
}

uint64_t sub_1000AF2A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000AF350(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000AF470(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000AF5F0(uint64_t a1)
{
  v2 = *(*a1 + 216);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000AF708;

  return v6(0);
}

uint64_t sub_1000AF708()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2(0x8000000000000000);
}

uint64_t sub_1000AF800()
{
  v1 = *(v0 + 120);

  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd14WaitForNetwork_priority, &unk_100152620, &unk_1001031E0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000AF848()
{
  v1 = *(v0 + 120);

  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd14WaitForNetwork_priority, &unk_100152620, &unk_1001031E0);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000AF8A0()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 2;
  *(v0 + 120) = sub_10008B5FC(&off_100136AF0);
  v1 = OBJC_IVAR____TtC15swtransparencyd14WaitForNetwork_priority;
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_1000AF928(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008AB68;

  return v8(a1);
}

uint64_t sub_1000AFA48(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008AB68;

  return v8(a1);
}

uint64_t sub_1000AFBE8()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_pendingFetch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000AFC2C(char a1)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_pendingFetch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000AFCDC(__int128 *a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = 4;
  *(v2 + 120) = sub_10008B5FC(&off_100136A28);
  v5 = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_priority;
  static TaskPriority.userInitiated.getter();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2 + v5, 0, 1, v6);
  *(v2 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_pendingFetch) = 0;
  sub_100037608(a1, v2 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps);
  *(v2 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_readyEnough) = a2;
  return v2;
}

uint64_t sub_1000AFDA8(uint64_t a1)
{
  v2[2] = v1;
  if (a1 == 6)
  {
LABEL_4:
    v3 = *(*v1 + 184);
    v8 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v2[3] = v5;
    *v5 = v2;
    v5[1] = sub_1000AFF08;

    return v8();
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      goto LABEL_4;
    }

    a1 = 10;
  }

  v7 = v2[1];

  return v7(a1);
}

uint64_t sub_1000AFF08(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1000B0020, v3, 0);
}

uint64_t sub_1000B0020()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      sub_10008B670(v1);
      v2 = 10;
    }

    else if (v1 == 0x8000000000000000)
    {
      v2 = 9;
    }

    else
    {
      v2 = 10;
    }
  }

  else
  {
    sub_10008B670(v1);
    v2 = 11;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000B00B4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*v1 + 184);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1000B01C8;

  return v7();
}