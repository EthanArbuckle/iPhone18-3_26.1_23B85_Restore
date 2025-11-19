unint64_t *sub_1001A0D60(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_1001A0F98(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_1001A0F98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100095274(&qword_1002AB460, &qword_10023F020);
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1001A11D4(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v7 = dispatch thunk of DockCoreAccessory.info.getter();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1001A12F4(unint64_t *a1)
{
  v3 = *a1;
  v4 = sub_1001A11D4(*a1);
  v6 = v4;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = a1;
  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v9 = *(v3 + 8 * v7 + 32);
LABEL_16:
    v10 = v9;
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v11 = dispatch thunk of DockCoreAccessory.info.getter();
    v12 = static NSObject.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_46;
          }

          if (v7 >= v15)
          {
            goto LABEL_47;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_10019F794(v3);
          v18 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v3 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v18)
        {
          v3 = sub_10019F794(v3);
          v19 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_38:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v7 >= *(v19 + 16))
        {
          goto LABEL_44;
        }

        v21 = v19 + 8 * v7;
        v22 = *(v21 + 32);
        *(v21 + 32) = v13;

        *v24 = v3;
      }

LABEL_8:
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_43;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_42;
    }
  }

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
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1001A1578(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A167C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_10019ECB0(result);
    return sub_1001A1578(v6, v5, 0, v3);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1001A1758(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

BOOL sub_1001A1870(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = v3;
    v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v9 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v9 + 4);

    v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
    swift_beginAccess();
    if (!*(*(v5 + v10) + 16) || (v11 = *(v5 + v10), , sub_10016D4D0(a1, a2), v13 = v12, , (v13 & 1) == 0))
    {
      swift_beginAccess();

      v14 = *(v5 + v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24[0] = *(v5 + v10);
      *(v5 + v10) = 0x8000000000000000;
      sub_1001EB814(&_swiftEmptyArrayStorage, a1, a2, isUniquelyReferenced_nonNull_native);

      *(v5 + v10) = v24[0];
      swift_endAccess();
    }

    v16 = sub_10018379C();
    v18 = sub_10018D16C(v24, a1, a2);
    if (*v17)
    {
      v19 = v17;
      v20 = a3;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v18)(v24, 0);
      (v16)(v25, 0);
    }

    else
    {
      (v18)(v24, 0);
      (v16)(v25, 0);
    }

    v21 = *(v5 + v8);

    os_unfair_lock_unlock(v21 + 4);
  }

  return a3 != 0;
}

void sub_1001A1AA8(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v31 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v3 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v3 + 4);

    v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
    swift_beginAccess();
    v5 = *(v2 + v4);
    v6 = v5 + 64;
    v7 = 1 << *(v5 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v5 + 64);
    v10 = (v7 + 63) >> 6;
    v11 = *(v2 + v4);

    v12 = 0;
    v35 = v4;
    v36 = v2;
    v33 = v5 + 64;
    v34 = v5;
    v32 = v10;
    while (v9)
    {
LABEL_12:
      v39 = v9;
      v16 = __clz(__rbit64(v9)) | (v12 << 6);
      v17 = (*(v5 + 48) + 16 * v16);
      v18 = v17[1];
      v37 = *v17;
      v19 = *(*(v5 + 56) + 8 * v16);
      if (v19 >> 62)
      {
        v29 = v17[1];
        v20 = _CocoaArrayWrapper.endIndex.getter();
        v18 = v29;
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v38 = v18;

      if (v20)
      {
        v21 = 0;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v23 = *(v19 + 8 * v21 + 32);
          }

          v24 = v23;
          v25 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
          v26 = v24;
          v27 = a1;
          v28 = static NSObject.== infix(_:_:)();

          if (v28)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v22 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v21;
          if (v25 == v20)
          {
            v4 = v35;
            v2 = v36;
            v6 = v33;
            v5 = v34;
            v10 = v32;
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_6:
      v9 = (v39 - 1) & v39;

      swift_beginAccess();
      v13 = *(v2 + v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v2 + v4);
      *(v2 + v4) = 0x8000000000000000;
      sub_1001EB814(_swiftEmptyArrayStorage, v37, v38, isUniquelyReferenced_nonNull_native);

      *(v2 + v4) = v41;
      swift_endAccess();
    }

    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v15 >= v10)
      {

        v30 = *(v2 + v31);

        os_unfair_lock_unlock(v30 + 4);

        return;
      }

      v9 = *(v6 + 8 * v15);
      ++v12;
      if (v9)
      {
        v12 = v15;
        goto LABEL_12;
      }
    }

LABEL_31:
    __break(1u);
  }
}

uint64_t sub_1001A1DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100095B94(0, &qword_1002A9840, CBService_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A1EDC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_10019ED6C(result);

  return sub_1001A1DCC(v4, v2, 0);
}

uint64_t sub_1001A1FDC(uint64_t a1)
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

      sub_10019D898(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1001A2088(int a1, void *a2, uint64_t *a3, const char *a4)
{
  v7 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v16 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v16 + 4);

  v17 = *a3;
  swift_beginAccess();
  v18 = a2;
  sub_1001DAB74(a2, a1);
  swift_endAccess();
  v19 = sub_10019051C();
  v20 = *(v7 + v15);

  os_unfair_lock_unlock(v20 + 4);

  if (v19 == 1)
  {
    (*(v11 + 16))(v14, v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v10);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, a4, v23, 2u);
    }

    (*(v11 + 8))(v14, v10);
    sub_10019A4F0(1);
  }

  return 1;
}

void *sub_1001A229C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DockCoreInfo.identifier.getter();
  v12 = UUID.description.getter();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v31 = v12;
  v32 = v14;

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);

  v16._countAndFlagsBits = a2;
  v16._object = a3;
  String.append(_:)(v16);

  v17 = v31;
  v18 = v32;
  v19 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__cacheLock;
  v20 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__cacheLock);

  os_unfair_lock_lock(v20 + 4);

  v21 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__actuationFeedbackCache;
  swift_beginAccess();
  v22 = *(v4 + v21);
  if (*(v22 + 16) && (, v23 = sub_10016D4D0(v17, v18), v25 = v24, , (v25 & 1) != 0))
  {
    v26 = *(*(v22 + 56) + 8 * v23);
    v27 = v26;
  }

  else
  {

    v26 = 0;
  }

  v28 = *(v4 + v19);

  os_unfair_lock_unlock(v28 + 4);

  return v26;
}

unint64_t sub_1001A24A0(unint64_t result, uint64_t a2, uint64_t a3)
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

unint64_t sub_1001A258C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A2670(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1001A2748()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001A2790()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001A27D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001A27EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001A2828(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a1;
  v6 = a2;
  return v3(&v7, &v6);
}

void sub_1001A2868(void *a1, void *a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1001A28A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1001A28F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001A2940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A139C;

  return sub_100190C78(a1, v4, v5, v7, v6);
}

uint64_t sub_1001A2A00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001A2A50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10009862C;

  return sub_10018E3E8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001A2B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002AB4A0, &qword_10023F098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A2C1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A139C;

  return sub_10018AFC0(a1, v4, v5, v7, v6);
}

uint64_t sub_1001A2CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A2D4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1001A2DD8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001A2E40(uint64_t result)
{
  if (result != 1)
  {
    return sub_1000BAA84(result);
  }

  return result;
}

uint64_t sub_1001A2E80(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return _swift_deallocObject(v3, a3, 7);
}

void sub_1001A2EE4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_100187174(v1, v2);
}

uint64_t sub_1001A2F10()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001A2F70(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1001A2FAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A2FF4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001A3034()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001A30A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1001A3180(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001A3250()
{
  sub_1001A332C();
  if (v0 <= 0x3F)
  {
    sub_1001A3394(319, &qword_1002AB538, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001A33E4(319, &unk_1002AB540, &type metadata accessor for Errors);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001A332C()
{
  if (!qword_1002AB530)
  {
    sub_100095B94(255, &qword_1002AB450, NSXPCConnection_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002AB530);
    }
  }
}

void sub_1001A3394(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1001A33E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void *sub_1001A34D4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      sub_100095B94(0, &qword_1002A7398, UARPAccessory_ptr);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_10016D780(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

void *sub_1001A359C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for AccessoryFirmwareUpdateSession();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_10016D7F8(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1001A3650(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10016D8E0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_1001A36A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_1001AC908(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_1001AC8A4(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = Data._Representation.subscript.getter();
    v14 = v13;
    result = sub_1000A0D2C(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1001A37EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100095B94(0, &qword_1002ABA58, off_100271C68);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t *sub_1001A3890@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void sub_1001A38B4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5 != *(a2 + 16))
  {
    return;
  }

  v6 = *(v4 + 32);
  if (!v6)
  {
    return;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v25 = v6;
  v13 = [v12 hapCharacteristicForCBCharacteristic:a4];
  if (!v13)
  {
    v15 = v25;
LABEL_10:

    return;
  }

  v24 = v13;
  if (*(v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingEnabled) != 1)
  {

    v15 = v24;
    goto LABEL_10;
  }

  if ((a3 & 0x100) != 0)
  {
    v14 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingHeader);
  }

  else
  {
    v14 = a3;
  }

  sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10023C170;
  *(v16 + 32) = v14;
  v17 = sub_100104264(v16);
  v19 = v18;

  if (v5)
  {
    v20 = (a2 + 32);
    v21 = (a1 + 32);
    while (1)
    {
      v22 = *v20 * 1000.0;
      if (COERCE__INT64(fabs(v22)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v22 <= -32769.0)
      {
        goto LABEL_25;
      }

      if (v22 >= 32768.0)
      {
        goto LABEL_26;
      }

      if ((*v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (*v21 > 0xFFuLL)
      {
        goto LABEL_28;
      }

      Data._Representation.append(contentsOf:)();
      ++v21;
      ++v20;
      if (!--v5)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_22:
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v12 writeWithoutResponse:isa toCharacteristic:v24];

    sub_1000A0D2C(v17, v19);
  }
}

void sub_1001A3B38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    (*(v9 + 16))(v12, a3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v8);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35[0] = v17;
      *v16 = 136315138;
      *&v32 = a2;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v18 = String.init<A>(describing:)();
      v20 = sub_1000952D4(v18, v19, v35);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to read characteristic: %s", v16, 0xCu);
      sub_100095808(v17);
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v28 = a1;
    v13 = [v28 metadata];
    if (v13)
    {

      if ([v28 value])
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
      if (*(&v30 + 1))
      {
        sub_100095274(&unk_1002ABA70, &qword_10023F3D8);
        if (swift_dynamicCast())
        {
          v22 = v28;
          if (*(&v33 + 1))
          {
            sub_1000A0D80(&v32, v35);
            sub_1000A09E0(v35, v35[3]);
            v23 = dispatch thunk of CustomStringConvertible.description.getter();
            v25 = v24;

            swift_beginAccess();
            v26 = *(a4 + 24);
            *(a4 + 16) = v23;
            *(a4 + 24) = v25;

            sub_100095808(v35);
            return;
          }
        }

        else
        {
          v34 = 0;
          v32 = 0u;
          v33 = 0u;
          v22 = v28;
        }
      }

      else
      {

        sub_100095C84(v31, &qword_1002A9210, &unk_10023BE70);
        v32 = 0u;
        v33 = 0u;
        v34 = 0;
      }

      sub_100095C84(&v32, &qword_1002ABA68, &qword_10023F3D0);
    }

    else
    {
      v21 = v28;
    }
  }
}

void sub_1001A3EF4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, NSObject *a7)
{
  v13 = type metadata accessor for Logger();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v20 = &v50[-v18];
  v54 = a7;
  if (a2)
  {
    v21 = v19;
    (*(v19 + 16))(&v50[-v18], a3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v13);
    v22 = a4;
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v53 = v13;
      v26 = v25;
      v52 = swift_slowAlloc();
      v55 = v52;
      *v26 = 136315394;
      v27 = [v22 UUIDString];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v24;
      v30 = v29;

      v31 = sub_1000952D4(v28, v30, &v55);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = sub_1000952D4(v32, v33, &v55);

      *(v26 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v23, v51, "Error reading characteristic %s: %s", v26, 0x16u);
      swift_arrayDestroy();

      (*(v21 + 8))(v20, v53);
    }

    else
    {

      (*(v21 + 8))(v20, v13);
    }

LABEL_14:
    (a5)(0, a2);
    goto LABEL_15;
  }

  if (!a1)
  {
    v40 = v19;
    (*(v19 + 16))(v17, a3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v13);
    v41 = a4;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v55 = v52;
      *v44 = 136315138;
      v45 = [v41 UUIDString];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v13;
      v48 = v47;

      v49 = sub_1000952D4(v46, v48, &v55);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "Error reading characteristic %s: no results returned!", v44, 0xCu);
      sub_100095808(v52);

      (*(v40 + 8))(v17, v53);
    }

    else
    {

      (*(v40 + 8))(v17, v13);
    }

    a2 = 0;
    goto LABEL_14;
  }

  if (a1 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
    if (!v35)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
LABEL_15:
      dispatch_group_leave(v54);
      return;
    }
  }

  if (v35 >= 1)
  {
    v36 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(a1 + 8 * v36 + 32);
      }

      v38 = v37;
      ++v36;
      v39 = [v37 characteristic];
      a5();
    }

    while (v35 != v36);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1001A43DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 || a3 >> 60 == 15)
  {
    return;
  }

  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
LABEL_17:

      sub_1000A452C(a2, a3);
      return;
    }

    if (*(a2 + 16) == *(a2 + 24))
    {
      return;
    }

    goto LABEL_9;
  }

  if (v6)
  {
    if (a2 == a2 >> 32)
    {
      return;
    }

LABEL_9:
    sub_1000B4F20(a2, a3);
    goto LABEL_10;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
  if (qword_1002A6738 != -1)
  {
    swift_once();
  }

  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1000A0CD8(a2, a3);
  v7 = _s14dockaccessoryd14MotionFeedbackV4dataACSg10Foundation4DataV_tcfC_0(a2, a3);
  if (!v7)
  {
    goto LABEL_17;
  }

  sub_1001A6E74(v7, v8);
  sub_1000A452C(a2, a3);
}

uint64_t sub_1001A456C()
{
  v1[7] = v0;
  v2 = type metadata accessor for Logger();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001A4638, 0, 0);
}

uint64_t sub_1001A4638()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 4;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = sub_100095274(&qword_1002A9308, &qword_10023FF40);
  *v4 = v0;
  v4[1] = sub_1001A4744;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD000000000000021, 0x8000000100234B90, sub_1001B07C4, v2, v5);
}

uint64_t sub_1001A4744()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return (_swift_task_switch)(sub_1001A485C, 0, 0);
}

uint64_t sub_1001A485C()
{
  v33 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[9] + 16);
  v4 = v0[7];
  if (v2)
  {
    v3(v0[11], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[11];
    v10 = v0[8];
    v9 = v0[9];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315138;

      swift_getErrorValue();
      v31 = v8;
      v14 = v0[2];
      v13 = v0[3];
      v15 = v0[4];
      v16 = Error.localizedDescription.getter();
      v18 = sub_1000952D4(v16, v17, &v32);

      *(v11 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to issue start feedback: %s", v11, 0xCu);
      sub_100095808(v12);

      (*(v9 + 8))(v31, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
    v3(v0[10], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[8];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Issued accessory start feedback!", v25, 2u);
    }

    else
    {
    }

    (*(v23 + 8))(v22, v24);
  }

  v26 = v2 == 0;
  v28 = v0[10];
  v27 = v0[11];

  v29 = v0[1];

  return v29(v26);
}

uint64_t sub_1001A4B10()
{
  v1[7] = v0;
  v2 = type metadata accessor for Logger();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001A4BDC, 0, 0);
}

uint64_t sub_1001A4BDC()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 8;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = sub_100095274(&qword_1002A9308, &qword_10023FF40);
  *v4 = v0;
  v4[1] = sub_1001A4CE8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD000000000000021, 0x8000000100234B90, sub_1001B07C4, v2, v5);
}

uint64_t sub_1001A4CE8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return (_swift_task_switch)(sub_1001A4E00, 0, 0);
}

uint64_t sub_1001A4E00()
{
  v33 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[9] + 16);
  v4 = v0[7];
  if (v2)
  {
    v3(v0[11], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[11];
    v10 = v0[8];
    v9 = v0[9];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315138;

      swift_getErrorValue();
      v31 = v8;
      v14 = v0[2];
      v13 = v0[3];
      v15 = v0[4];
      v16 = Error.localizedDescription.getter();
      v18 = sub_1000952D4(v16, v17, &v32);

      *(v11 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to issue stop feedback: %s", v11, 0xCu);
      sub_100095808(v12);

      (*(v9 + 8))(v31, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
    v3(v0[10], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[8];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Issued accessory stop feedback!", v25, 2u);
    }

    else
    {
    }

    (*(v23 + 8))(v22, v24);
  }

  v26 = v2 == 0;
  v28 = v0[10];
  v27 = v0[11];

  v29 = v0[1];

  return v29(v26);
}

uint64_t sub_1001A50B4()
{
  v1[7] = v0;
  v2 = type metadata accessor for Logger();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001A5180, 0, 0);
}

uint64_t sub_1001A5180()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 16;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = sub_100095274(&qword_1002A9308, &qword_10023FF40);
  *v4 = v0;
  v4[1] = sub_1001A528C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD000000000000021, 0x8000000100234B90, sub_1001B07C4, v2, v5);
}

uint64_t sub_1001A528C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return (_swift_task_switch)(sub_1001A53A4, 0, 0);
}

uint64_t sub_1001A53A4()
{
  v33 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[9] + 16);
  v4 = v0[7];
  if (v2)
  {
    v3(v0[11], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[11];
    v10 = v0[8];
    v9 = v0[9];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315138;

      swift_getErrorValue();
      v31 = v8;
      v14 = v0[2];
      v13 = v0[3];
      v15 = v0[4];
      v16 = Error.localizedDescription.getter();
      v18 = sub_1000952D4(v16, v17, &v32);

      *(v11 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to issue begin startup command: %s", v11, 0xCu);
      sub_100095808(v12);

      (*(v9 + 8))(v31, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
    v3(v0[10], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[8];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Issued accessory begin startup command!", v25, 2u);
    }

    else
    {
    }

    (*(v23 + 8))(v22, v24);
  }

  v26 = v2 == 0;
  v28 = v0[10];
  v27 = v0[11];

  v29 = v0[1];

  return v29(v26);
}

uint64_t sub_1001A5658(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Logger();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001A5724, 0, 0);
}

uint64_t sub_1001A5724()
{
  v1 = v0[7];
  v2 = TrackerStateEvent.rawValue.getter();
  if (v2 == TrackerStateEvent.rawValue.getter())
  {
    v3 = 32;
  }

  else
  {
    v4 = v0[7];
    v5 = TrackerStateEvent.rawValue.getter();
    if (v5 == TrackerStateEvent.rawValue.getter())
    {
      v3 = 64;
    }

    else
    {
      v6 = v0[7];
      v7 = TrackerStateEvent.rawValue.getter();
      if (v7 == TrackerStateEvent.rawValue.getter())
      {
        v3 = 96;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v8 = v0[8];
  v9 = swift_task_alloc();
  v0[13] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  v10 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = sub_100095274(&qword_1002A9308, &qword_10023FF40);
  *v11 = v0;
  v11[1] = sub_1001A5894;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD000000000000021, 0x8000000100234B90, sub_1001AEBB8, v9, v12);
}

uint64_t sub_1001A5894()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return (_swift_task_switch)(sub_1001A59AC, 0, 0);
}

uint64_t sub_1001A59AC()
{
  v33 = v0;
  v1 = v0[9];
  v2 = v0[5];
  v3 = *(v0[10] + 16);
  v4 = v0[8];
  if (v2)
  {
    v3(v0[12], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[12];
    v10 = v0[9];
    v9 = v0[10];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315138;

      swift_getErrorValue();
      v31 = v8;
      v14 = v0[2];
      v13 = v0[3];
      v15 = v0[4];
      v16 = Error.localizedDescription.getter();
      v18 = sub_1000952D4(v16, v17, &v32);

      *(v11 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to issue begin startup command: %s", v11, 0xCu);
      sub_100095808(v12);

      (*(v9 + 8))(v31, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
    v3(v0[11], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[10];
    v22 = v0[11];
    v24 = v0[9];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Issued accessory begin startup command!", v25, 2u);
    }

    else
    {
    }

    (*(v23 + 8))(v22, v24);
  }

  v26 = v2 == 0;
  v28 = v0[11];
  v27 = v0[12];

  v29 = v0[1];

  return v29(v26);
}

uint64_t sub_1001A5C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a2;
  v4 = sub_100095274(&qword_1002ABA60, &unk_10023F3C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v23[3] = &type metadata for UInt64;
  v23[0] = a3;
  v9 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v10 = swift_allocObject();
  v20 = xmmword_10023C170;
  *(v10 + 16) = xmmword_10023C170;
  *(v10 + 56) = &type metadata for UInt32;
  *(v10 + 64) = &protocol witness table for UInt32;
  *(v10 + 32) = 264;
  String.init(format:_:)();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v9 UUIDWithString:v11];

  v13 = swift_allocObject();
  *(v13 + 16) = v20;
  *(v13 + 56) = &type metadata for UInt32;
  *(v13 + 64) = &protocol witness table for UInt32;
  v14 = v21;
  *(v13 + 32) = 256;
  String.init(format:_:)();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v9 UUIDWithString:v15];

  (*(v5 + 16))(v8, v14, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v8, v4);
  sub_1001AA1A4(v23, v12, v16, sub_1001AEC54, v18);

  return sub_100095808(v23);
}

uint64_t sub_1001A5F38()
{
  swift_errorRetain();
  sub_100095274(&qword_1002ABA60, &unk_10023F3C0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1001A5F8C(char *a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v32 - v9;
  v11 = MotionFeedback.encode()(a1, a2, v9);
  if (v12 >> 60 == 15)
  {
    return 0;
  }

  v13 = *(v2 + 32);
  if (!v13)
  {
    goto LABEL_13;
  }

  v37 = v11;
  v38 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    v11 = v37;
    v12 = v38;
LABEL_13:
    sub_1000A452C(v11, v12);
    return 0;
  }

  v15 = v14;
  v36 = v13;
  v33 = v15;
  result = [v15 primaryAccessory];
  v35 = result;
  if (!result)
  {
    __break(1u);
    return result;
  }

  v17 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v18 = swift_allocObject();
  v34 = xmmword_10023C170;
  *(v18 + 16) = xmmword_10023C170;
  *(v18 + 56) = &type metadata for UInt32;
  *(v18 + 64) = &protocol witness table for UInt32;
  *(v18 + 32) = 272;
  String.init(format:_:)();
  v19 = String._bridgeToObjectiveC()();

  v20 = [v17 UUIDWithString:v19];

  v21 = [v20 UUIDString];
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v34;
  *(v22 + 56) = &type metadata for UInt32;
  *(v22 + 64) = &protocol witness table for UInt32;
  *(v22 + 32) = 512;
  String.init(format:_:)();
  v23 = String._bridgeToObjectiveC()();

  v24 = [v17 UUIDWithString:v23];

  v25 = [v24 UUIDString];
  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  v26 = v35;
  v27 = [v35 characteristicOfType:v21 serviceType:v25];

  if (!v27)
  {
    sub_1000A452C(v37, v38);

    return 0;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v33 writeWithoutResponse:isa toCharacteristic:v27];

  (*(v6 + 16))(v10, v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v5);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Sent motion feedback to accessory!", v31, 2u);

    sub_1000A452C(v37, v38);
  }

  else
  {
    sub_1000A452C(v37, v38);
  }

  (*(v6 + 8))(v10, v5);
  return 1;
}

void sub_1001A63E8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v9 = qword_1002B1CF0;
  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v11 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v11 + 4);

  v12 = *(v9 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v13 = *(v9 + v10);
  v54 = v12;

  os_unfair_lock_unlock(v13 + 4);

  if (v12)
  {
    type metadata accessor for Actuator();
    static Actuator.Yaw.getter();
    v53 = dispatch thunk of DockCoreAccessory.getActuator(name:)();

    if (v53)
    {
      static Actuator.Pitch.getter();
      v14 = dispatch thunk of DockCoreAccessory.getActuator(name:)();

      if (v14)
      {
        v15 = [a1 attitude];
        [v15 quaternion];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v56.x = v17;
        v56.y = v19;
        v56.z = v21;
        v56.w = v23;
        simd_quatd.init(_:)(v24, v56);
        v26 = vnegq_f64(v25);
        v28 = vmulq_f64(v27, xmmword_10023E590);
        v29 = vextq_s8(v28, vnegq_f64(v28), 8uLL);
        v30 = vmlaq_f64(vmulq_f64(v25, 0), 0, vextq_s8(v26, v25, 8uLL));
        v31 = vaddq_f64(vextq_s8(v25, v26, 8uLL), vmlaq_f64(vmulq_f64(v28, 0), 0, v29));
        v32 = vaddq_f64(v29, v30);
        v33 = vnegq_f64(v31);
        v34 = vextq_s8(v32, vnegq_f64(v32), 8uLL);
        v52 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v32, v27, 1), v34, v27.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v33, v25, 1), vextq_s8(v31, v33, 8uLL), v25.f64[0]));
        v35 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v31, v27, 1), vextq_s8(v33, v31, 8uLL), v27.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v32, v25, 1), v34, v25.f64[0]));
        v36 = sqrt(vmuld_n_f64(v35.f64[0], v35.f64[0]) + vmuld_lane_f64(v35.f64[1], v35, 1));
        v37 = atan2(v35.f64[1], v35.f64[0]);
        v38 = atan2(v52.f64[0], v36);
        v39 = v53;
        v40 = dispatch thunk of Component.id.getter();

        v41 = v14;
        v42 = dispatch thunk of Component.id.getter();

        v43 = -v38;
        sub_100095274(&qword_1002A8A50, &qword_10023D988);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10023AAC0;
        *(inited + 32) = v40;
        *(inited + 40) = v37;
        *(inited + 48) = v42;
        *(inited + 56) = v43;
        sub_1001A5F8C(inited, _swiftEmptyArrayStorage);
        swift_setDeallocating();
        (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v4);
        v45 = v39;
        v46 = v41;
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 134218752;
          *(v49 + 4) = dispatch thunk of Component.id.getter();

          *(v49 + 12) = 2048;
          *(v49 + 14) = v37;
          *(v49 + 22) = 2048;
          *(v49 + 24) = dispatch thunk of Component.id.getter();

          *(v49 + 32) = 2048;
          *(v49 + 34) = v43;
          _os_log_impl(&_mh_execute_header, v47, v48, "Sent IMU calibration yaw(%ld)=%f pitch(%ld)=%f", v49, 0x2Au);

          v50 = v45;
        }

        else
        {

          v50 = v46;
          v46 = v45;
          v47 = v45;
        }

        (*(v5 + 8))(v8, v4);
        return;
      }

      v51 = v53;
    }

    else
    {
      v51 = v54;
    }
  }
}

uint64_t sub_1001A68A4(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 0.0)
  {
    v9 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_lastImuStamp;
    swift_beginAccess();
    (*(v5 + 16))(v8, v2 + v9, v4);
    Date.timeIntervalSinceNow.getter();
    v11 = v10;
    (*(v5 + 8))(v8, v4);
    if (fabs(v11) < a1)
    {
      return 0;
    }
  }

  Date.init()();
  v13 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_lastImuStamp;
  swift_beginAccess();
  (*(v5 + 40))(v2 + v13, v8, v4);
  swift_endAccess();
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v14 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClientQueue);
  sub_100095274(&qword_1002A9968, &qword_10023E5B0);
  OS_dispatch_queue.sync<A>(execute:)();
  v15 = v17;
  if (v17)
  {
    sub_1001A63E8(v17);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sendImu) = 1;

    sub_100185F9C(0xD00000000000001DLL, 0x8000000100234B70, sub_1001AEBB0, v2);
  }

  return 1;
}

uint64_t sub_1001A6B1C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_weakInit();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sendImu);

    if (v13 == 1)
    {
      if (swift_weakLoadStrong())
      {
        sub_1001A63E8(a1);
      }

      v14 = swift_weakLoadStrong();
      if (v14)
      {
        *(v14 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sendImu) = 0;
      }
    }
  }

  v15 = swift_weakLoadStrong();
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_lastImuStamp;
  v17 = v15;
  swift_beginAccess();
  (*(v8 + 16))(v11, v17 + v16, v7);

  Date.timeIntervalSinceNow.getter();
  v19 = v18;
  (*(v8 + 8))(v11, v7);
  if (fabs(v19) > 5.0)
  {
LABEL_9:
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      (*(v3 + 16))(v6, v20 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v2);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "sendIMUPosition timeout exceeded. Unregistering imu motion manager", v23, 2u);
      }

      (*(v3 + 8))(v6, v2);
    }

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    sub_100187174(0xD00000000000001DLL, 0x8000000100234B70);
  }

  return swift_weakDestroy();
}

uint64_t sub_1001A6E74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock;
  v6 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);

  os_unfair_lock_lock(v6 + 4);
  sub_1000F003C(v7);
  os_unfair_lock_unlock(v6 + 4);

  v9 = *(a1 + 16);
  if (v9)
  {
    v32 = a2;
    sub_1001D7228(0, v9, 0);
    v10 = a1;
    v11 = (a1 + 32);
    v12 = _swiftEmptyArrayStorage[2];
    v13 = v9;
    do
    {
      v15 = *v11;
      v11 += 2;
      v14 = v15;
      v16 = _swiftEmptyArrayStorage[3];
      if (v12 >= v16 >> 1)
      {
        sub_1001D7228((v16 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12++ + 4] = v14;
      --v13;
    }

    while (v13);
    v8 = sub_1001D7148(0, v9, 0);
    v17 = _swiftEmptyArrayStorage[2];
    v18 = (v10 + 40);
    do
    {
      v19 = *v18;
      v20 = _swiftEmptyArrayStorage[3];
      if (v17 >= v20 >> 1)
      {
        v8 = sub_1001D7148((v20 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      _swiftEmptyArrayStorage[v17 + 4] = v19;
      v18 += 2;
      ++v17;
      --v9;
    }

    while (v9);
    v3 = v2;
    a2 = v32;
  }

  v21 = *(a2 + 16);
  if (v21)
  {
    v8 = sub_1001D7148(0, v21, 0);
    v22 = _swiftEmptyArrayStorage[2];
    v23 = (a2 + 40);
    do
    {
      v24 = *v23;
      v25 = _swiftEmptyArrayStorage[3];
      if (v22 >= v25 >> 1)
      {
        v8 = sub_1001D7148((v25 > 1), v22 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v22 + 1;
      _swiftEmptyArrayStorage[v22 + 4] = v24;
      v23 += 2;
      ++v22;
      --v21;
    }

    while (v21);
  }

  v26 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback);
  if (v26)
  {
    v27 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback + 8);

    v26(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
    v8 = sub_1000BAA84(v26);
  }

  v28 = *(v3 + v33);
  v29 = __chkstk_darwin(v8);
  __chkstk_darwin(v29);

  os_unfair_lock_lock(v28 + 4);
  sub_100137D60(v30);
  os_unfair_lock_unlock(v28 + 4);
}

uint64_t sub_1001A71B8(uint64_t a1)
{
  v2 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_feedbackCallbacks;
  result = swift_beginAccess();
  if (!*(*(a1 + v11) + 16) && !*(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback))
  {
    (*(v7 + 16))(v10, a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v6);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Stopping feedback. No active feedback receivers and startup is not running", v15, 2u);
    }

    (*(v7 + 8))(v10, v6);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a1;

    sub_1001B6410(0, 0, v5, &unk_10023F3B8, v17);
  }

  return result;
}

uint64_t sub_1001A7444()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10009862C;

  return sub_1001A4B10();
}

uint64_t sub_1001A74D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_feedbackCallbacks;
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(v8 + 56) + ((v14 << 10) | (16 * v16));
    v18 = *v17;
    if (*v17)
    {
      v19 = *(v17 + 8);
      v23 = a2;
      v21 = a4;
      v22 = a3;

      v18(&v23, &v22, &v21);
      result = sub_1000BAA84(v18);
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A761C(char a1)
{
  v3 = type metadata accessor for ComponentType();
  v197 = *(v3 - 8);
  v4 = *(v197 + 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v186 = &v159 - v9;
  v10 = __chkstk_darwin(v8);
  v184 = &v159 - v11;
  v12 = __chkstk_darwin(v10);
  v188 = &v159 - v13;
  __chkstk_darwin(v12);
  v189 = &v159 - v14;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 1);
  v17 = *(v16 + 8);
  v18 = __chkstk_darwin(v15);
  v20 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v185 = &v159 - v22;
  v23 = __chkstk_darwin(v21);
  v183 = &v159 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v159 - v26;
  __chkstk_darwin(v25);
  v29 = &v159 - v28;
  v30 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
  swift_beginAccess();
  v190 = v30;
  v31 = *(&v1->isa + v30);
  v32 = v1;
  if (*(v31 + 16) && (a1 & 1) == 0)
  {
    (*(v16 + 2))(v29, v1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v15);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Sensors already enumerated, skipping", v35, 2u);
    }

    return (*(v16 + 1))(v29, v15);
  }

  v37 = sub_1001F2F38(_swiftEmptyArrayStorage);
  v38 = *(&v1->isa + v190);
  *(&v1->isa + v190) = v37;

  isa = v1[4].isa;
  if (isa && (v178 = [(objc_class *)isa primaryAccessory]) != 0)
  {
    v40 = *(v16 + 2);
    v170 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger;
    v169 = v16 + 16;
    v168 = v40;
    v40(v27, v1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v15);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Enumerating sensor services for accessory", v43, 2u);
    }

    v179 = v32;

    v45 = *(v16 + 1);
    v44 = v16 + 8;
    v171 = v45;
    v45(v27, v15);
    v46 = [v178 services];
    if (v46)
    {
      v47 = v46;
      sub_100095B94(0, &qword_1002A7010, off_100271C78);
      v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v172 = v15;
      v167 = v44;
      v177 = v3;
      v173 = v7;
      if (v48 >> 62)
      {
        goto LABEL_72;
      }

      v195 = v48 & 0xFFFFFFFFFFFFFF8;
      v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v50)
      {
LABEL_73:
      }

LABEL_13:
      v51 = 0;
      v166 = 0;
      v194 = v48 & 0xC000000000000001;
      v176 = v197 + 16;
      v175 = v197 + 8;
      *&v49 = 136315394;
      v165 = v49;
      v193 = v48;
      v192 = v50;
      v174 = v197 + 104;
      v187 = enum case for ComponentType.Actuator(_:);
      while (1)
      {
        if (v194)
        {
          v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v53 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v51 >= *(v195 + 16))
          {
            goto LABEL_71;
          }

          v52 = *(v48 + 8 * v51 + 32);
          v53 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            v195 = v48 & 0xFFFFFFFFFFFFFF8;
            v50 = _CocoaArrayWrapper.endIndex.getter();
            if (!v50)
            {
              goto LABEL_73;
            }

            goto LABEL_13;
          }
        }

        v196 = v53;
        v197 = v52;
        v54 = [v52 type];
        if (!v54)
        {
          goto LABEL_76;
        }

        v55 = v54;
        v56 = [objc_opt_self() UUIDWithString:v54];

        v57 = [v56 data];
        v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        sub_1001A36A0(12, v58, v60, v204);
        v61 = v204[0];
        v62 = v204[1];
        v63 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
        v202 = v63;
        v203 = sub_1000E4D54(&qword_1002A9C30, &unk_1002A7B10, &unk_10023F3A0);
        v200 = &off_100274CE8;
        v64 = sub_1000A09E0(&v200, v63);
        v65 = *v64;
        v66 = *(*v64 + 16);
        if (v66)
        {
          if (v66 <= 0xE)
          {
            memset(__dst, 0, sizeof(__dst));
            v199 = v66;
            memcpy(__dst, (v65 + 32), v66);
            v72 = *__dst;
            v73 = v191 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v199 << 16)) << 32);
            v191 = v73;
          }

          else
          {
            v67 = type metadata accessor for __DataStorage();
            v68 = *(v67 + 48);
            v69 = *(v67 + 52);
            swift_allocObject();
            v70 = __DataStorage.init(bytes:length:)();
            v71 = v70;
            if (v66 >= 0x7FFFFFFF)
            {
              type metadata accessor for Data.RangeReference();
              v72 = swift_allocObject();
              *(v72 + 16) = 0;
              *(v72 + 24) = v66;
              v73 = v71 | 0x8000000000000000;
            }

            else
            {
              v72 = v66 << 32;
              v73 = v70 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v72 = 0;
          v73 = 0xC000000000000000;
        }

        sub_100095808(&v200);
        v74 = sub_1001ACC84(v61, v62, v72, v73);
        sub_1000A0D2C(v72, v73);
        sub_1000A0D2C(v61, v62);
        if ((v74 & 1) == 0 || sub_10013C30C() < 0x300 || sub_10013C30C() > 0x320)
        {
          goto LABEL_32;
        }

        v75 = v177;
        v76 = swift_allocBox();
        v78 = v77;
        v181 = *v174;
        v181(v77, v187, v75);
        v79 = swift_allocObject();
        *(v79 + 16) = 0x726F746175746361;
        *(v79 + 24) = 0xE800000000000000;
        if (qword_1002A6758 != -1)
        {
          swift_once();
        }

        v80 = qword_1002B1C70;
        v81 = v179;

        v82 = v56;
        sub_1001ADDAC(v80, v82, v81, v81, v76, v79, v82);

        swift_beginAccess();
        v83 = *v176;
        v182 = v79;
        v180 = v76;
        v84 = v189;
        v83(v189, v78, v75);
        v85 = v188;
        v181(v188, v187, v75);
        sub_1001B0564(&qword_1002A9F50, &type metadata accessor for ComponentType);
        LODWORD(v181) = dispatch thunk of static Equatable.== infix(_:_:)();
        v86 = *v175;
        (*v175)(v85, v75);
        v86(v84, v75);
        if (v181)
        {

LABEL_32:

          ++v51;
          v87 = v196 == v192;
          goto LABEL_33;
        }

        v181 = v83;
        v162 = v82;
        v88 = v78;
        v89 = v182;
        swift_beginAccess();
        v90 = *(v89 + 16);
        v91 = *(v89 + 24);
        v92 = v166;
        v200 = v166;

        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        v200 = v90;
        v201 = v91;

        v96._countAndFlagsBits = v93;
        v96._object = v95;
        String.append(_:)(v96);

        v97 = __OFADD__(v92, 1);
        v166 = (v92 + 1);
        v98 = v185;
        if (v97)
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
        }

        v100 = v200;
        v99 = v201;
        v101 = v179;
        v102 = sub_1001A95A4(v197);
        v104 = v172;
        v15 = v181;
        v164 = v86;
        if (v103)
        {
          v105 = v103;
          v163 = v102;
          v106 = v183;
          v168(v183, v101 + v170, v172);

          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v200 = swift_slowAlloc();
            v161 = v99;
            *v109 = v165;
            v160 = *(v89 + 16);
            v110 = v108;
            v111 = *(v89 + 24);

            v112 = sub_1000952D4(v160, v111, &v200);

            *(v109 + 4) = v112;
            *(v109 + 12) = 2080;
            *(v109 + 14) = sub_1000952D4(v163, v105, &v200);
            v113 = v110;
            v86 = v164;
            _os_log_impl(&_mh_execute_header, v107, v113, "Read service name for %s as '%s'", v109, 0x16u);
            swift_arrayDestroy();

            v171(v106, v172);
          }

          else
          {

            v171(v106, v104);
          }

          v99 = v105;
        }

        else
        {
          v163 = v100;
          v168(v98, v101 + v170, v172);

          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            v200 = v161;
            *v116 = v165;
            LODWORD(v160) = v115;
            v118 = *(v89 + 16);
            v117 = *(v89 + 24);

            v119 = sub_1000952D4(v118, v117, &v200);

            *(v116 + 4) = v119;
            *(v116 + 12) = 2080;

            v120 = v163;
            v121 = sub_1000952D4(v163, v99, &v200);

            *(v116 + 14) = v121;
            _os_log_impl(&_mh_execute_header, v114, v160, "No service name for %s, using generated %s", v116, 0x16u);
            swift_arrayDestroy();

            v171(v98, v172);
            v163 = v120;
          }

          else
          {

            v171(v98, v104);
          }
        }

        v122 = v184;
        v123 = v177;
        (v15)(v184, v88, v177);
        v32 = v190;
        v124 = *(&v179->isa + v190);
        if (!*(v124 + 16))
        {
          goto LABEL_49;
        }

        v125 = *(&v179->isa + v190);

        v126 = sub_10016D8E0(v122);
        if ((v127 & 1) == 0)
        {
          break;
        }

        v128 = v99;
        v129 = *(*(v124 + 56) + 8 * v126);

        v86(v122, v123);

        v130 = v179;
LABEL_50:
        v135 = v186;
        (v15)(v186, v88, v123);
        swift_beginAccess();
        v16 = v162;

        v136 = *(&v32->isa + v130);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138 = v123;
        v20 = isUniquelyReferenced_nonNull_native;
        v139 = v173;
        (v15)(v173, v135, v138);
        v204[0] = *(&v32->isa + v130);
        v140 = v204[0];
        *(&v32->isa + v130) = 0x8000000000000000;
        v142 = sub_10016D8E0(v139);
        v143 = *(v140 + 16);
        v144 = (v141 & 1) == 0;
        v145 = v143 + v144;
        if (__OFADD__(v143, v144))
        {
          goto LABEL_75;
        }

        v146 = v141;
        if (*(v140 + 24) >= v145)
        {
          if (v20)
          {
            if ((v141 & 1) == 0)
            {
              goto LABEL_66;
            }
          }

          else
          {
            sub_1001EEDF8();
            if ((v146 & 1) == 0)
            {
              goto LABEL_66;
            }
          }
        }

        else
        {
          sub_1001E7668(v145, v20);
          v147 = sub_10016D8E0(v173);
          if ((v146 & 1) != (v148 & 1))
          {
            goto LABEL_78;
          }

          v142 = v147;
          if ((v146 & 1) == 0)
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }
        }

        v149 = *(*(v204[0] + 56) + 8 * v142);
        v150 = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_100102A78(0, *(v149 + 2) + 1, 1, v149);
        }

        v152 = *(v149 + 2);
        v151 = *(v149 + 3);
        if (v152 >= v151 >> 1)
        {
          v149 = sub_100102A78((v151 > 1), v152 + 1, 1, v149);
        }

        *(v149 + 2) = v152 + 1;
        v153 = &v149[24 * v152];
        *(v153 + 4) = v163;
        *(v153 + 5) = v128;
        *(v153 + 6) = v150;
        *(*(v204[0] + 56) + 8 * v142) = v149;

        v154 = v177;
        v155 = v164;
        v164(v173, v177);
        v155(v186, v154);

        *(&v32->isa + v179) = v204[0];
        swift_endAccess();

        swift_bridgeObjectRelease_n();
        v51 = v196;
        v87 = v196 == v192;
LABEL_33:
        v48 = v193;
        if (v87)
        {
          goto LABEL_73;
        }
      }

LABEL_49:
      v128 = v99;
      v86(v122, v123);
      v131 = v189;
      (v15)(v189, v88, v123);
      v130 = v179;
      swift_beginAccess();
      v132 = *(&v130->isa + v190);
      v133 = swift_isUniquelyReferenced_nonNull_native();
      v204[0] = *(v130 + v190);
      *(&v130->isa + v190) = 0x8000000000000000;
      sub_1001EC008(_swiftEmptyArrayStorage, v131, v133);
      v134 = v131;
      v32 = v190;
      v86(v134, v123);
      v15 = v181;
      *(&v32->isa + v130) = v204[0];
      swift_endAccess();
      goto LABEL_50;
    }

    __break(1u);
LABEL_78:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_67:
    (*(v16 + 2))(v20, v32 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v15);
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      *v158 = 0;
      _os_log_impl(&_mh_execute_header, v156, v157, "No accessory to enumerate sensors from", v158, 2u);
    }

    return (*(v16 + 1))(v20, v15);
  }

  return result;
}

void sub_1001A8A58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v102 = a5;
  v103 = a6;
  v104 = a3;
  v8 = type metadata accessor for ComponentType();
  v101 = *(v8 - 8);
  v9 = *(v101 + 64);
  __chkstk_darwin(v8);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v105 = v12;
  v106 = v13;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v98 - v19;
  v21 = __chkstk_darwin(v18);
  v100 = &v98 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v98 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v98 - v27;
  __chkstk_darwin(v26);
  v30 = &v98 - v29;
  v31 = swift_projectBox();
  if (a2 || !a1)
  {
    v40 = v105;
    v39 = v106;
    (*(v106 + 16))(v30, v104 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v105);
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v110[0] = v44;
      *v43 = 136315138;
      *&v108 = a2;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v45 = String.init<A>(describing:)();
      v47 = sub_1000952D4(v45, v46, v110);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "Unable to read characteristic: %s", v43, 0xCu);
      sub_100095808(v44);
    }

    (*(v39 + 8))(v30, v40);
    return;
  }

  v99 = v31;
  v32 = [a1 metadata];
  if (!v32)
  {
    goto LABEL_23;
  }

  v33 = v32;
  v34 = [v32 format];

  if (!v34)
  {
    goto LABEL_23;
  }

  v98 = v8;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (v35 == 0x38746E6975 && v37 == 0xE500000000000000)
  {

    v38 = v98;
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v38 = v98;
    if ((v48 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if ([a1 value])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v108 = 0u;
    v109 = 0u;
  }

  v110[0] = v108;
  v110[1] = v109;
  if (*(&v109 + 1))
  {
    if (swift_dynamicCast())
    {
      v49 = v107;
      switch(v107)
      {
        case 3u:
          v87 = v101;
          (*(v101 + 104))(v11, enum case for ComponentType.Battery(_:), v38);
          v88 = v99;
          swift_beginAccess();
          (*(v87 + 40))(v88, v11, v38);
          v89 = v102;
          swift_beginAccess();
          v90 = *(v89 + 24);
          *(v89 + 16) = 0x79726574746162;
          *(v89 + 24) = 0xE700000000000000;

          v55 = v105;
          v54 = v106;
          v28 = v100;
          (*(v106 + 16))(v100, v104 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v105);
          v91 = v103;
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            *v59 = 138412290;
            *(v59 + 4) = v91;
            *v60 = v91;
            v92 = v91;
            v62 = "Found Battery service %@";
            goto LABEL_34;
          }

LABEL_35:

          (*(v54 + 8))(v28, v55);
          return;
        case 2u:
          v75 = v101;
          (*(v101 + 104))(v11, enum case for ComponentType.Button(_:), v38);
          v76 = v99;
          swift_beginAccess();
          (*(v75 + 40))(v76, v11, v38);
          v77 = v102;
          swift_beginAccess();
          v78 = *(v77 + 24);
          *(v77 + 16) = 0x6E6F74747562;
          *(v77 + 24) = 0xE600000000000000;

          v80 = v105;
          v79 = v106;
          (*(v106 + 16))(v25, v104 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v105);
          v81 = v103;
          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            *v84 = 138412290;
            *(v84 + 4) = v81;
            *v85 = v81;
            v86 = v81;
            _os_log_impl(&_mh_execute_header, v82, v83, "Found Button service %@", v84, 0xCu);
            sub_100095C84(v85, &unk_1002A6F60, &unk_10023C4E0);
          }

          (*(v79 + 8))(v25, v80);
          break;
        case 1u:
          v50 = v101;
          (*(v101 + 104))(v11, enum case for ComponentType.LED(_:), v38);
          v51 = v99;
          swift_beginAccess();
          (*(v50 + 40))(v51, v11, v38);
          v52 = v102;
          swift_beginAccess();
          v53 = *(v52 + 24);
          *(v52 + 16) = 6579564;
          *(v52 + 24) = 0xE300000000000000;

          v55 = v105;
          v54 = v106;
          (*(v106 + 16))(v28, v104 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v105);
          v56 = v103;
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            *v59 = 138412290;
            *(v59 + 4) = v56;
            *v60 = v56;
            v61 = v56;
            v62 = "Found LED service %@";
LABEL_34:
            _os_log_impl(&_mh_execute_header, v57, v58, v62, v59, 0xCu);
            sub_100095C84(v60, &unk_1002A6F60, &unk_10023C4E0);

            goto LABEL_35;
          }

          goto LABEL_35;
        default:
          v94 = v105;
          v93 = v106;
          (*(v106 + 16))(v20, v104 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v105);
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            *v97 = 16777472;
            v97[4] = v49;
            _os_log_impl(&_mh_execute_header, v95, v96, "Found unknown sensor type %hhu, ignoring", v97, 5u);
          }

          (*(v93 + 8))(v20, v94);
          break;
      }

      return;
    }
  }

  else
  {
    sub_100095C84(v110, &qword_1002A9210, &unk_10023BE70);
  }

LABEL_23:
  v64 = v105;
  v63 = v106;
  (*(v106 + 16))(v17, v104 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v105);
  v65 = a1;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v110[0] = v69;
    *v68 = 136315138;
    v70 = [v65 type];

    if (!v70)
    {
      __break(1u);
      return;
    }

    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74 = sub_1000952D4(v71, v73, v110);

    *(v68 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v66, v67, "Characteristic not convertable to UInt8: %s", v68, 0xCu);
    sub_100095808(v69);
  }

  else
  {
  }

  (*(v63 + 8))(v17, v64);
}

uint64_t sub_1001A95A4(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = v7 + 16;
  v65 = v7;
  *(v7 + 24) = 0;
  v9 = [a1 type];
  if (!v9)
  {
    goto LABEL_37;
  }

  v10 = v9;
  v58 = [objc_opt_self() UUIDWithString:v9];

  v11 = [a1 characteristics];
  if (!v11)
  {
LABEL_38:
    __break(1u);
  }

  v12 = v11;
  sub_100095B94(0, &qword_1002A92F0, off_100271C60);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = v1;
  v56 = v3;
  if (v13 >> 62)
  {
LABEL_33:
    v62 = v13 & 0xFFFFFFFFFFFFFF8;
    v64 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v62 = v13 & 0xFFFFFFFFFFFFFF8;
    v64 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v55 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger;
  v52 = v8;
  swift_beginAccess();
  v14 = 0;
  v63 = v13 & 0xC000000000000001;
  v54 = (v4 + 2);
  v53 = (v4 + 1);
  v15 = &selRef__sendControlPacket_forRequest_completionHandler_;
  v16 = &stru_10029A000;
  v61 = v13;
  while (v64 != v14)
  {
    if (v63)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *(v62 + 16))
      {
        goto LABEL_32;
      }

      v17 = *(v13 + 8 * v14 + 32);
    }

    v18 = v17;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v19 = [v17 v15[166]];
    if (!v19)
    {
      goto LABEL_35;
    }

    v20 = v19;
    v21 = [v19 v16[160].name];

    v22 = v15;
    v23 = [v18 v15[166]];
    if (!v23)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v24 = v23;
    v4 = [v23 v16[160].name];

    v25 = [v4 data];
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    sub_1001A36A0(12, v26, v28, v69);
    v30 = v69[0];
    v29 = v69[1];
    v31 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
    v68[3] = v31;
    v68[4] = sub_1000E4D54(&qword_1002A9C30, &unk_1002A7B10, &unk_10023F3A0);
    v68[0] = &off_100274C28;
    v32 = sub_1000A09E0(v68, v31);
    v33 = *v32;
    v34 = *(*v32 + 16);
    if (v34)
    {
      if (v34 <= 0xE)
      {
        memset(__dst, 0, sizeof(__dst));
        v67 = v34;
        memcpy(__dst, (v33 + 32), v34);
        v40 = *__dst;
        v8 = v60 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v67 << 16)) << 32);
        v60 = v8;
      }

      else
      {
        v35 = type metadata accessor for __DataStorage();
        v36 = *(v35 + 48);
        v37 = *(v35 + 52);
        swift_allocObject();
        v38 = __DataStorage.init(bytes:length:)();
        v39 = v38;
        if (v34 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v40 = swift_allocObject();
          *(v40 + 16) = 0;
          *(v40 + 24) = v34;
          v8 = v39 | 0x8000000000000000;
        }

        else
        {
          v40 = v34 << 32;
          v8 = v38 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v40 = 0;
      v8 = 0xC000000000000000;
    }

    sub_100095808(v68);
    v41 = sub_1001ACC84(v30, v29, v40, v8);
    sub_1000A0D2C(v40, v8);
    sub_1000A0D2C(v30, v29);

    v15 = v22;
    v16 = &stru_10029A000;
    if (v41)
    {
      v42 = [v18 v22[166]];
      if (!v42)
      {
        goto LABEL_36;
      }

      v43 = v42;
      v44 = [v42 UUID];

      v4 = sub_10013C30C();
      if (qword_1002A6768 != -1)
      {
        swift_once();
      }

      if (v4 == sub_10013C30C())
      {
        v8 = v57;
        v45 = v56;
        (*v54)(v59, v57 + v55, v56);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "Found sensor name characteristic, reading", v48, 2u);
          v16 = &stru_10029A000;
        }

        (*v53)(v59, v45);

        v4 = v65;

        sub_1001ACE74(v21, v58, v8, v8, v4, &unk_10027A1C8, sub_1001A9CD8, &unk_10027A1F0, sub_1001ACDF0, sub_1001ACDFC, &unk_10027A208);
      }
    }

    ++v14;
    v13 = v61;
    if (v65[3])
    {
      break;
    }
  }

  swift_beginAccess();
  v49 = v65[2];
  v50 = v65[3];

  return v49;
}

void sub_1001A9CD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v44 - v14;
  if (a2 || !a1)
  {
    (*(v9 + 16))(v44 - v14, a3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v8);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v47[0] = v27;
      *v26 = 136315138;
      *&v45 = a2;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v28 = String.init<A>(describing:)();
      v30 = sub_1000952D4(v28, v29, v47);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to read characteristic: %s", v26, 0xCu);
      sub_100095808(v27);
    }

    (*(v9 + 8))(v15, v8);
    return;
  }

  v16 = [a1 metadata];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 format];

    if (v18)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (v19 == 0x676E69727473 && v21 == 0xE600000000000000)
      {
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v23 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if ([a1 value])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      v47[0] = v45;
      v47[1] = v46;
      if (*(&v46 + 1))
      {
        if (swift_dynamicCast())
        {
          v31 = v44[0];
          v32 = v44[1];
          swift_beginAccess();
          v33 = *(a4 + 24);
          *(a4 + 16) = v31;
          *(a4 + 24) = v32;

          return;
        }
      }

      else
      {
        sub_100095C84(v47, &qword_1002A9210, &unk_10023BE70);
      }
    }
  }

LABEL_22:
  (*(v9 + 16))(v13, a3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v8);
  v34 = a1;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v47[0] = v38;
    *v37 = 136315138;
    v39 = [v34 type];

    if (!v39)
    {
      __break(1u);
      return;
    }

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = sub_1000952D4(v40, v42, v47);

    *(v37 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "Characteristic not convertable to UInt8: %s", v37, 0xCu);
    sub_100095808(v38);
  }

  else
  {
  }

  (*(v9 + 8))(v13, v8);
}

void sub_1001AA1A4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v52 = a5;
  v54 = a2;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 32);
  if (v13 && (objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) != 0))
  {
    v15 = v14;
    v16 = v13;
    if ([v15 isSecuritySessionOpen])
    {
      v48 = v9;
      v49 = v16;
      v50 = v8;
      v17 = [v15 primaryAccessory];
      if (v17)
      {
        v18 = v17;
        v19 = [v54 UUIDString];
        if (!v19)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = String._bridgeToObjectiveC()();
        }

        v20 = [a3 UUIDString];
        if (!v20)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = String._bridgeToObjectiveC()();
        }

        v21 = [v18 characteristicOfType:v19 serviceType:v20];

        v22 = v50;
        if (v21)
        {
          v23 = v50;
          sub_1000A09E0(a1, a1[3]);
          v24 = v21;
          v25 = _bridgeAnythingToObjectiveC<A>(_:)();
          v26 = [objc_opt_self() writeRequestTupleForCharacteristic:v24 value:v25 authorizationData:0 timedWrite:0 responseValue:0 type:0];

          swift_unknownObjectRelease();
          if (v26)
          {
            sub_100095274(&qword_1002A7390, &qword_10023BEF0);
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_10023BDA0;
            *(v27 + 32) = v26;
            sub_100095B94(0, &qword_1002ABA50, off_100271C70);
            v28 = v26;
            isa = Array._bridgeToObjectiveC()().super.isa;

            v30 = *(v5 + 40);
            aBlock[4] = v51;
            aBlock[5] = v52;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1001A37EC;
            aBlock[3] = &unk_10027A168;
            v31 = _Block_copy(aBlock);
            v32 = v30;

            [v15 writeCharacteristicValues:isa timeout:v32 completionQueue:v31 completionHandler:0.0];
            _Block_release(v31);

            return;
          }

          v22 = v23;
        }

        v35 = v48;
        (*(v48 + 16))(v12, v5 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v22);
        v36 = v54;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          aBlock[0] = v40;
          *v39 = 136315138;
          v41 = [v36 UUIDString];
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;

          v45 = sub_1000952D4(v42, v44, aBlock);

          *(v39 + 4) = v45;
          _os_log_impl(&_mh_execute_header, v37, v38, "Unable to write characterisitic %s", v39, 0xCu);
          sub_100095808(v40);

          (*(v35 + 8))(v12, v50);
        }

        else
        {

          (*(v35 + 8))(v12, v22);
        }

        sub_1000B346C();
        swift_allocError();
        *v46 = 1;
        swift_willThrow();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_1000B346C();
      swift_allocError();
      *v34 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_1000B346C();
    swift_allocError();
    *v33 = 2;
    swift_willThrow();
  }
}

uint64_t sub_1001AA73C(uint64_t a1, uint64_t a2, char a3)
{
  v21 = a1;
  v22 = a2;
  v4 = sub_100095274(&qword_1002ABA48, &qword_10023F398);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = a3;
  v9 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v10 = swift_allocObject();
  v20 = xmmword_10023C170;
  *(v10 + 16) = xmmword_10023C170;
  *(v10 + 56) = &type metadata for UInt32;
  *(v10 + 64) = &protocol witness table for UInt32;
  *(v10 + 32) = 259;
  String.init(format:_:)();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v9 UUIDWithString:v11];

  v13 = swift_allocObject();
  *(v13 + 16) = v20;
  *(v13 + 56) = &type metadata for UInt32;
  *(v13 + 64) = &protocol witness table for UInt32;
  v14 = v21;
  *(v13 + 32) = 512;
  String.init(format:_:)();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v9 UUIDWithString:v15];

  (*(v5 + 16))(v8, v14, v4);
  v17 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  (*(v5 + 32))(v18 + v17, v8, v4);

  sub_1001AA1A4(v23, v12, v16, sub_1001B05AC, v18);

  return sub_100095808(v23);
}

void sub_1001AAA28(uint64_t a1, uint64_t a2)
{
  v3 = TrajectoryCommand.Progress.encode()();
  if (v3)
  {
    v4 = v3;
    v5 = a2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback;
    v6 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback);
    if (v6)
    {
      v7 = *(v5 + 8);

      v6(v4);
      sub_1000BAA84(v6);
    }
  }
}

uint64_t sub_1001AAAA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v23 = a1;
  v24 = a2;
  v6 = sub_100095274(&qword_1002ABA48, &qword_10023F398);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v25[3] = &type metadata for Data;
  v25[0] = a3;
  v25[1] = a4;
  v11 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v12 = swift_allocObject();
  v22 = xmmword_10023C170;
  *(v12 + 16) = xmmword_10023C170;
  *(v12 + 56) = &type metadata for UInt32;
  *(v12 + 64) = &protocol witness table for UInt32;
  *(v12 + 32) = 265;
  sub_1000A0CD8(a3, a4);
  String.init(format:_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v11 UUIDWithString:v13];

  v15 = swift_allocObject();
  *(v15 + 16) = v22;
  *(v15 + 56) = &type metadata for UInt32;
  *(v15 + 64) = &protocol witness table for UInt32;
  *(v15 + 32) = 512;
  String.init(format:_:)();
  v16 = String._bridgeToObjectiveC()();
  v17 = v23;

  v18 = [v11 UUIDWithString:v16];

  (*(v7 + 16))(v10, v17, v6);
  v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v24;
  (*(v7 + 32))(v20 + v19, v10, v6);

  sub_1001AA1A4(v25, v14, v18, sub_1001AC424, v20);

  return sub_100095808(v25);
}

uint64_t sub_1001AADAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v19 = v12[2];
  v20 = a3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger;
  if (!a2)
  {
    v19(v16, v20, v11);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, a6, v32, 2u);
    }

    v33 = v12[1];
    v34 = v16;
    goto LABEL_8;
  }

  v19(&v36 - v17, v20, v11);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v21, v22))
  {

    v33 = v12[1];
    v34 = v18;
LABEL_8:
    v33(v34, v11);
    goto LABEL_9;
  }

  v23 = swift_slowAlloc();
  v38 = a4;
  v24 = v23;
  v25 = swift_slowAlloc();
  v37 = v11;
  v26 = v25;
  v39 = v25;
  *v24 = 136315138;
  swift_getErrorValue();
  v27 = Error.localizedDescription.getter();
  v29 = sub_1000952D4(v27, v28, &v39);

  *(v24 + 4) = v29;
  _os_log_impl(&_mh_execute_header, v21, v22, a5, v24, 0xCu);
  sub_100095808(v26);

  (v12[1])(v18, v37);
LABEL_9:
  LOBYTE(v39) = a2 == 0;
  sub_100095274(&qword_1002ABA48, &qword_10023F398);
  return CheckedContinuation.resume(returning:)();
}

void sub_1001AB0A0()
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v29 = sub_1001884E4();

  if (v29)
  {
    v2 = *(v0 + 16);
    if (v2)
    {
      v3 = objc_opt_self();
      sub_100095274(&unk_1002A73A0, &qword_10023C670);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_10023C170;
      *(v4 + 56) = &type metadata for UInt32;
      *(v4 + 64) = &protocol witness table for UInt32;
      *(v4 + 32) = 512;
      v28 = v2;
      String.init(format:_:)();
      v5 = String._bridgeToObjectiveC()();

      v6 = [v3 UUIDWithString:v5];

      v27 = sub_10013EF7C();
      if (v27)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_10023C170;
        *(v7 + 56) = &type metadata for UInt32;
        *(v7 + 64) = &protocol witness table for UInt32;
        *(v7 + 32) = 260;
        String.init(format:_:)();
        v8 = String._bridgeToObjectiveC()();

        v9 = [v3 UUIDWithString:v8];

        v10 = sub_10013F1B8(v9, v27);
        if (v10)
        {
          type metadata accessor for Actuator();
          static Actuator.Yaw.getter();
          static Actuator.Pitch.getter();
          static Actuator.Roll.getter();
          sub_1001D7228(0, 3, 0);

          v11 = dispatch thunk of DockCoreAccessory.getActuator(name:)();
          if (v11)
          {
            v12 = v11;
            v13 = dispatch thunk of Component.id.getter();
          }

          else
          {
            v13 = 0;
          }

          v16 = _swiftEmptyArrayStorage[2];
          v15 = _swiftEmptyArrayStorage[3];
          if (v16 >= v15 >> 1)
          {
            sub_1001D7228((v15 > 1), v16 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v16 + 1;
          _swiftEmptyArrayStorage[v16 + 4] = v13;

          v17 = dispatch thunk of DockCoreAccessory.getActuator(name:)();
          if (v17)
          {
            v18 = v17;
            v19 = dispatch thunk of Component.id.getter();
          }

          else
          {
            v19 = 0;
          }

          v21 = _swiftEmptyArrayStorage[2];
          v20 = _swiftEmptyArrayStorage[3];
          if (v21 >= v20 >> 1)
          {
            sub_1001D7228((v20 > 1), v21 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v21 + 1;
          _swiftEmptyArrayStorage[v21 + 4] = v19;

          v22 = dispatch thunk of DockCoreAccessory.getActuator(name:)();
          if (v22)
          {
            v23 = v22;
            v24 = dispatch thunk of Component.id.getter();
          }

          else
          {
            v24 = 0;
          }

          v26 = _swiftEmptyArrayStorage[2];
          v25 = _swiftEmptyArrayStorage[3];
          if (v26 >= v25 >> 1)
          {
            sub_1001D7228((v25 > 1), v26 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v26 + 1;
          _swiftEmptyArrayStorage[v26 + 4] = v24;
          swift_arrayDestroy();
          sub_1001A38B4(_swiftEmptyArrayStorage, &off_100274FD0, 256, v10);

          return;
        }

        v14 = v27;
      }

      else
      {

        v14 = v28;
      }
    }

    else
    {
      v14 = v29;
    }
  }
}

uint64_t sub_1001AB578(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v26 = a5;
  v23 = a1;
  v24 = a4;
  v6 = sub_100095274(&qword_1002ABA48, &qword_10023F398);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v27[3] = &type metadata for Bool;
  LOBYTE(v27[0]) = 1;
  v11 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v12 = swift_allocObject();
  v22 = xmmword_10023C170;
  *(v12 + 16) = xmmword_10023C170;
  *(v12 + 56) = &type metadata for UInt32;
  *(v12 + 64) = &protocol witness table for UInt32;
  *(v12 + 32) = a3;
  String.init(format:_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v11 UUIDWithString:v13];

  v15 = swift_allocObject();
  *(v15 + 16) = v22;
  *(v15 + 56) = &type metadata for UInt32;
  *(v15 + 64) = &protocol witness table for UInt32;
  v16 = v23;
  *(v15 + 32) = 256;
  String.init(format:_:)();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v11 UUIDWithString:v17];

  (*(v7 + 16))(v10, v16, v6);
  v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v25;
  (*(v7 + 32))(v20 + v19, v10, v6);

  sub_1001AA1A4(v27, v14, v18, v26, v20);

  return sub_100095808(v27);
}

uint64_t sub_1001AB858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback);
  v4 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback);
  v5 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1000C6F30(a2);
  return sub_1000BAA84(v4);
}

uint64_t sub_1001AB8B0(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback);
  v2 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback);
  v3 = v1[1];
  *v1 = 0;
  v1[1] = 0;
  return sub_1000BAA84(v2);
}

uint64_t sub_1001AB8EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v9 = sub_1001B0530;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_feedbackCallbacks;
  swift_beginAccess();
  sub_1000C6F30(a3);
  v11 = *(a1 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  sub_1001ED32C(v9, v8, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v10) = v14;
  return swift_endAccess();
}

uint64_t sub_1001AB9E8(uint64_t a1, int a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_feedbackCallbacks;
  result = swift_beginAccess();
  if (*(*(a1 + v10) + 16))
  {
    result = sub_10016D548(a2);
    if (v12)
    {
      (*(v6 + 16))(v9, a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v5);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v18 = v2;
        *v15 = 67109120;
        *(v15 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v13, v14, "De-registering feedback callback for pid %d", v15, 8u);
      }

      (*(v6 + 8))(v9, v5);
      swift_beginAccess();
      v16 = sub_1001E5498(a2);
      swift_endAccess();
      return sub_1001A2E40(v16);
    }
  }

  return result;
}

uint64_t sub_1001ABBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v19 = a2;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Registering trajectory progress feedback", v13, 2u);
    a2 = v19;
  }

  (*(v7 + 8))(v10, v6);
  v14 = (a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback);
  v15 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback);
  v16 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback + 8);
  *v14 = a2;
  v14[1] = a3;
  sub_1000C6F30(a2);
  return sub_1000BAA84(v15);
}

id *sub_1001ABDA4()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager);

  v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager);

  v5 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 48);
  sub_1000E47B8(*(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload), *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 8), *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 16), *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 24), *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 32), *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 40));
  v6 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion + 8);

  v7 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup + 8);

  v8 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber + 8);

  v9 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData + 8);

  v10 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap);

  v11 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);

  v12 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_feedbackCallbacks);

  v13 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback + 8);
  sub_1000BAA84(*(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback));
  v14 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback + 8);
  sub_1000BAA84(*(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback));
  v15 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_lastImuStamp;
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  return v0;
}

uint64_t sub_1001ABF5C()
{
  sub_1001ABDA4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonAccessory()
{
  result = qword_1002AB5A0;
  if (!qword_1002AB5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AC008()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001AC154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001AC19C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001AC200()
{
  result = qword_1002ABA38;
  if (!qword_1002ABA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ABA38);
  }

  return result;
}

Swift::Int sub_1001AC254()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 24);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001AC2A8()
{
  v1 = *(*v0 + 24);
  NSObject.hash(into:)();
}

Swift::Int sub_1001AC304()
{
  Hasher.init(_seed:)();
  v1 = *(*v0 + 24);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001AC354(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  v3 = *(*a2 + 24);
  v7[3] = type metadata accessor for DockCoreInfo();
  v7[0] = v3;
  v4 = v2;
  v5 = v3;
  LOBYTE(v2) = DockCoreInfo.isEqual(_:)();

  sub_100095C84(v7, &qword_1002A9210, &unk_10023BE70);
  return v2 & 1;
}

uint64_t sub_1001AC438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *sub_1001AC450@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1001AC9DC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1001ACA94(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1001ACB10(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1001AC4E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001AC714(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1001ACBCC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000A0D2C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1001AC4E4(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000A0D2C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1001AC8A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001AC908(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001AC9BC(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001AC9DC(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1001ACA94(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1001ACB10(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1001ACB94()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001ACBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
  sub_1001AC4E4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1001ACC84(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1000A0CD8(a3, a4);
          return sub_1001AC714(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1001ACE74(NSObject *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v111 = a1;
  v112 = a7;
  v102 = a11;
  v99 = a8;
  v100 = a10;
  v98 = a9;
  v108 = type metadata accessor for DispatchTimeInterval();
  v106 = *(v108 - 8);
  v15 = *(v106 + 64);
  __chkstk_darwin(v108);
  v101 = (&v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for DispatchTime();
  v107 = *(v17 - 8);
  v18 = *(v107 + 64);
  v19 = __chkstk_darwin(v17);
  v103 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v104 = &v94 - v22;
  __chkstk_darwin(v21);
  v105 = &v94 - v23;
  v110 = type metadata accessor for Logger();
  isa = v110[-1].isa;
  v25 = *(isa + 8);
  v26 = __chkstk_darwin(v110);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v94 - v29;
  v31 = swift_allocObject();
  *(v31 + 16) = a4;
  *(v31 + 24) = a5;
  v109 = a3;
  v32 = *(a3 + 32);
  if (v32 && (objc_opt_self(), (v33 = swift_dynamicCastObjCClass()) != 0))
  {
    v34 = v33;
    v97 = v31;

    v96 = v32;
    v35 = [v34 primaryAccessory];
    if (!v35)
    {
      goto LABEL_14;
    }

    v36 = v35;
    v95 = v17;
    v37 = [v111 UUIDString];
    if (!v37)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = String._bridgeToObjectiveC()();
    }

    v38 = [a2 UUIDString];
    if (!v38)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = String._bridgeToObjectiveC()();
    }

    v39 = [v36 characteristicOfType:v37 serviceType:v38];

    v94 = v39;
    if (v39)
    {
      v112 = v34;
      v40 = dispatch_group_create();
      v41 = v110;
      (*(isa + 2))(v28, v109 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v110);
      v42 = v111;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v111 = v40;
        v46 = v45;
        v47 = swift_slowAlloc();
        aBlock[0] = v47;
        *v46 = 136315138;
        v48 = [v42 UUIDString];
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = sub_1000952D4(v49, v51, aBlock);

        *(v46 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v43, v44, "Reading characteristic %s...", v46, 0xCu);
        sub_100095808(v47);

        v40 = v111;

        (*(isa + 1))(v28, v110);
      }

      else
      {

        (*(isa + 1))(v28, v41);
      }

      dispatch_group_enter(v40);
      sub_100095274(&qword_1002A7390, &qword_10023BEF0);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_10023BDA0;
      v71 = v94;
      *(v70 + 32) = v94;
      sub_100095B94(0, &qword_1002A92F0, off_100271C60);
      v111 = v71;
      v72 = Array._bridgeToObjectiveC()().super.isa;

      v73 = v109;
      v74 = *(v109 + 40);
      v75 = swift_allocObject();
      v75[2] = v73;
      v75[3] = v42;
      v76 = v97;
      v75[4] = v98;
      v75[5] = v76;
      v75[6] = v40;
      aBlock[4] = v100;
      aBlock[5] = v75;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001A37EC;
      aBlock[3] = v102;
      v77 = _Block_copy(aBlock);
      v78 = v42;
      v79 = v74;

      v110 = v40;

      [v112 readCharacteristicValues:v72 timeout:v79 completionQueue:v77 completionHandler:10.0];
      _Block_release(v77);

      v80 = v103;
      static DispatchTime.now()();
      v81 = v101;
      *v101 = 10;
      v82 = v106;
      v83 = *(v106 + 104);
      v84 = v108;
      v83(v81, enum case for DispatchTimeInterval.seconds(_:), v108);
      v85 = v104;
      + infix(_:_:)();
      v86 = *(v82 + 8);
      v86(v81, v84);
      v87 = v80;
      v88 = v95;
      v89 = *(v107 + 8);
      v89(v87, v95);
      *v81 = 500;
      v83(v81, enum case for DispatchTimeInterval.milliseconds(_:), v84);
      v90 = v105;
      + infix(_:_:)();
      v86(v81, v84);
      v89(v85, v88);
      v91 = v89;
      v92 = v110;
      OS_dispatch_group.wait(timeout:)();

      v91(v90, v88);
    }

    else
    {
LABEL_14:
      v55 = isa;
      v56 = v110;
      (*(isa + 2))(v30, v109 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v110);
      v57 = v111;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v111 = v55;
        v62 = v61;
        aBlock[0] = v61;
        *v60 = 136315138;
        v63 = [v57 UUIDString];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67 = sub_1000952D4(v64, v66, aBlock);

        *(v60 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v58, v59, "Accessory does not contain characteristic %s!", v60, 0xCu);
        sub_100095808(v62);

        (v111[1].isa)(v30, v110);
      }

      else
      {

        (v55[1].isa)(v30, v56);
      }

      sub_1000B346C();
      v68 = swift_allocError();
      *v69 = 1;
      (v112)(0, v68, a4, a5);
    }
  }

  else
  {
    sub_1000B346C();
    v53 = swift_allocError();
    *v54 = 1;

    (v112)(0, v53, a4, a5);
  }
}

void *sub_1001AD95C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v31 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v31);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v3[2] = 0;
  v3[4] = 0;
  v13 = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v30[1] = "usCommand(value:)";
  v30[2] = v13;
  static DispatchQoS.unspecified.getter();
  v35 = &_swiftEmptyArrayStorage;
  sub_1001B0564(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_1000E4D54(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  v3[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Logger.init(subsystem:category:)();
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController) = 0;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager) = 0;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager) = 0;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 0;
  v14 = (v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload);
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 2;
  v14[5] = 0;
  v14[6] = 0;
  v14[4] = 0;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingHeader) = 0;
  v15 = (v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData);
  *v18 = 0;
  v18[1] = 0;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingEnabled) = 1;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_connectedForTracking) = 0;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_reloadServer) = 0;
  v19 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
  *(v4 + v19) = sub_1001F2F38(&_swiftEmptyArrayStorage);
  v20 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock;
  sub_100095274(&unk_1002A7370, &qword_10023AB30);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v4 + v20) = v21;
  v22 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_feedbackCallbacks;
  *(v4 + v22) = sub_1001F3120(&_swiftEmptyArrayStorage);
  v23 = (v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback);
  *v24 = 0;
  v24[1] = 0;
  Date.init()();
  *(v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sendImu) = 0;
  v25 = v4[2];
  v4[2] = v32;

  v26 = v4[4];
  v27 = v34;
  v4[3] = v33;
  v4[4] = v27;
  v28 = v27;

  return v4;
}

uint64_t sub_1001ADDAC(void *a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v131 = a2;
  v132 = a1;
  v128 = type metadata accessor for DispatchTimeInterval();
  v126 = *(v128 - 8);
  v12 = *(v126 + 64);
  __chkstk_darwin(v128);
  v125 = (&v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = type metadata accessor for DispatchTime();
  v127 = *(v129 - 8);
  v14 = *(v127 + 64);
  v15 = __chkstk_darwin(v129);
  v122 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v123 = &v120 - v18;
  __chkstk_darwin(v17);
  v124 = &v120 - v19;
  v20 = type metadata accessor for Logger();
  v135 = *(v20 - 8);
  v21 = v135[8];
  v22 = __chkstk_darwin(v20);
  v24 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v120 - v26;
  v28 = __chkstk_darwin(v25);
  v130 = (&v120 - v29);
  __chkstk_darwin(v28);
  v31 = &v120 - v30;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v133 = a3;
  v134 = v32;
  isa = a3[4].isa;
  if (!isa || (objc_opt_self(), (v34 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1000B346C();
    v57 = swift_allocError();
    *v58 = 1;
    v59 = v135;
    (v135[2])(v24, a4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v20);

    v60 = a7;
    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v63 = 136315138;
      v137 = v57;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v65 = String.init<A>(describing:)();
      v67 = sub_1000952D4(v65, v66, aBlock);

      *(v63 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v61, v62, "Unable to read characteristic: %s", v63, 0xCu);
      sub_100095808(v64);

      (v59[1])(v24, v20);
    }

    else
    {

      (v59[1])(v24, v20);
    }

LABEL_22:
  }

  v35 = v34;
  v121 = v20;

  v36 = a7;
  v120 = isa;
  v37 = [v35 primaryAccessory];
  v38 = v132;
  if (!v37)
  {
    goto LABEL_15;
  }

  v39 = v37;
  v40 = [v132 UUIDString];
  if (!v40)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = String._bridgeToObjectiveC()();
  }

  v41 = [v131 UUIDString];
  if (!v41)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = String._bridgeToObjectiveC()();
    v38 = v132;
  }

  v42 = [v39 characteristicOfType:v40 serviceType:v41];

  if (!v42)
  {
LABEL_15:
    v68 = v135;
    v69 = v135[2];
    v70 = v121;
    (v69)(v31, v133 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v121);
    v71 = v38;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v133 = v69;
      v75 = v74;
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v75 = 136315138;
      v77 = [v71 UUIDString];
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81 = sub_1000952D4(v78, v80, aBlock);
      v70 = v121;

      *(v75 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v72, v73, "Accessory does not contain characteristic %s!", v75, 0xCu);
      sub_100095808(v76);

      v69 = v133;

      v82 = v135;
    }

    else
    {

      v82 = v68;
    }

    v83 = v82[1];
    v83(v31, v70);
    v84 = v130;
    sub_1000B346C();
    v85 = swift_allocError();
    *v86 = 1;
    (v69)(v84, a4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v70);
    swift_errorRetain();
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      aBlock[0] = v90;
      *v89 = 136315138;
      v137 = v85;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v91 = String.init<A>(describing:)();
      v93 = v70;
      v94 = sub_1000952D4(v91, v92, aBlock);

      *(v89 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v87, v88, "Unable to read characteristic: %s", v89, 0xCu);
      sub_100095808(v90);

      v95 = v84;
      v96 = v93;
    }

    else
    {

      v95 = v84;
      v96 = v70;
    }

    v83(v95, v96);

    goto LABEL_22;
  }

  v131 = v42;
  v132 = v35;
  v43 = dispatch_group_create();
  v44 = v135;
  v45 = v121;
  (v135[2])(v27, v133 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v121);
  v46 = v38;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    aBlock[0] = v130;
    *v49 = 136315138;
    v50 = v43;
    v51 = v46;
    v52 = [v46 UUIDString];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v46 = v51;
    v43 = v50;
    v56 = sub_1000952D4(v53, v55, aBlock);

    *(v49 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v47, v48, "Reading characteristic %s...", v49, 0xCu);
    sub_100095808(v130);

    (v44[1])(v27, v121);
  }

  else
  {

    (v44[1])(v27, v45);
  }

  dispatch_group_enter(v43);
  sub_100095274(&qword_1002A7390, &qword_10023BEF0);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_10023BDA0;
  v99 = v131;
  *(v98 + 32) = v131;
  sub_100095B94(0, &qword_1002A92F0, off_100271C60);
  v135 = v99;
  v100 = Array._bridgeToObjectiveC()().super.isa;

  v101 = v133;
  v102 = v133[5].isa;
  v103 = swift_allocObject();
  v103[2] = v101;
  v103[3] = v46;
  v104 = v134;
  v103[4] = sub_1001AEA88;
  v103[5] = v104;
  v103[6] = v43;
  aBlock[4] = sub_1001B07C0;
  aBlock[5] = v103;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A37EC;
  aBlock[3] = &unk_10027A2A8;
  v105 = _Block_copy(aBlock);
  v106 = v46;
  v107 = v102;

  v133 = v43;

  [v132 readCharacteristicValues:v100 timeout:v107 completionQueue:v105 completionHandler:10.0];
  _Block_release(v105);

  v108 = v122;
  static DispatchTime.now()();
  v109 = v125;
  v110 = v126;
  *v125 = 10;
  v111 = *(v110 + 104);
  v112 = v128;
  v111(v109, enum case for DispatchTimeInterval.seconds(_:), v128);
  v113 = v123;
  + infix(_:_:)();
  v114 = *(v110 + 8);
  v114(v109, v112);
  v115 = *(v127 + 8);
  v116 = v108;
  v117 = v129;
  v115(v116, v129);
  *v109 = 500;
  v111(v109, enum case for DispatchTimeInterval.milliseconds(_:), v112);
  v118 = v124;
  + infix(_:_:)();
  v114(v109, v112);
  v115(v113, v117);
  v119 = v133;
  OS_dispatch_group.wait(timeout:)();

  v115(v118, v117);
}

uint64_t sub_1001AEA38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001AEAFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009862C;

  return sub_1001A7444();
}

uint64_t sub_1001AEBC0()
{
  v1 = sub_100095274(&qword_1002ABA60, &unk_10023F3C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001AEC54()
{
  v0 = *(*(sub_100095274(&qword_1002ABA60, &unk_10023F3C0) - 8) + 80);

  return sub_1001A5F38();
}

uint64_t sub_1001AECE0(NSObject *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v105 = a2;
  v108 = a1;
  v10 = type metadata accessor for DispatchTimeInterval();
  v104 = *(v10 - 8);
  v11 = *(v104 + 64);
  __chkstk_darwin(v10);
  v103 = (&v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v100 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v101 = &v94 - v19;
  __chkstk_darwin(v18);
  v102 = &v94 - v20;
  v107 = type metadata accessor for Logger();
  v21 = *(v107 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v107);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v94 - v26;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v109 = a5;
  v110 = v28;
  v28[4] = a6;
  v106 = a3;
  v29 = *(a3 + 32);
  if (v29 && (objc_opt_self(), (v30 = swift_dynamicCastObjCClass()) != 0))
  {
    v97 = v14;
    v98 = v10;
    v99 = v13;
    v31 = v30;

    v32 = v29;
    v96 = v31;
    v33 = [v31 primaryAccessory];
    if (!v33)
    {
      goto LABEL_14;
    }

    v34 = v33;
    v35 = [v108 UUIDString];
    if (!v35)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = String._bridgeToObjectiveC()();
    }

    v36 = [v105 UUIDString];
    v95 = v32;
    if (!v36)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = String._bridgeToObjectiveC()();
      v32 = v95;
    }

    v37 = [v34 characteristicOfType:v35 serviceType:v36];

    v105 = v37;
    if (v37)
    {
      v38 = dispatch_group_create();
      v39 = v107;
      (*(v21 + 16))(v25, v106 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v107);
      v40 = v108;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v108 = v21;
        v44 = v43;
        v45 = swift_slowAlloc();
        aBlock[0] = v45;
        *v44 = 136315138;
        v46 = [v40 UUIDString];
        v47 = v40;
        v48 = v38;
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = v49;
        v38 = v48;
        v40 = v47;
        v53 = sub_1000952D4(v52, v51, aBlock);

        *(v44 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v41, v42, "Reading characteristic %s...", v44, 0xCu);
        sub_100095808(v45);

        (v108[1].isa)(v25, v107);
      }

      else
      {

        (*(v21 + 8))(v25, v39);
      }

      dispatch_group_enter(v38);
      sub_100095274(&qword_1002A7390, &qword_10023BEF0);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_10023BDA0;
      v72 = v105;
      *(v71 + 32) = v105;
      sub_100095B94(0, &qword_1002A92F0, off_100271C60);
      v109 = v72;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v74 = v106;
      v75 = *(v106 + 40);
      v76 = swift_allocObject();
      v76[2] = v74;
      v76[3] = v40;
      v77 = v110;
      v76[4] = sub_1001B048C;
      v76[5] = v77;
      v76[6] = v38;
      aBlock[4] = sub_1001B07C0;
      aBlock[5] = v76;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001A37EC;
      aBlock[3] = &unk_10027A550;
      v78 = _Block_copy(aBlock);
      v79 = v40;
      v80 = v75;

      v108 = v38;

      [v96 readCharacteristicValues:isa timeout:v80 completionQueue:v78 completionHandler:10.0];
      _Block_release(v78);

      v81 = v100;
      static DispatchTime.now()();
      v82 = v103;
      v83 = v104;
      *v103 = 10;
      v84 = *(v83 + 104);
      v85 = v98;
      v84(v82, enum case for DispatchTimeInterval.seconds(_:), v98);
      v86 = v101;
      + infix(_:_:)();
      v87 = *(v83 + 8);
      v87(v82, v85);
      v88 = *(v97 + 8);
      v89 = v81;
      v90 = v99;
      v88(v89, v99);
      *v82 = 500;
      v84(v82, enum case for DispatchTimeInterval.milliseconds(_:), v85);
      v91 = v102;
      + infix(_:_:)();
      v87(v82, v85);
      v88(v86, v90);
      v92 = v108;
      OS_dispatch_group.wait(timeout:)();

      v88(v91, v90);
    }

    else
    {
LABEL_14:
      v56 = v107;
      (*(v21 + 16))(v27, v106 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v107);
      v57 = v108;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        LODWORD(v106) = v59;
        v108 = v21;
        v61 = v60;
        v62 = swift_slowAlloc();
        aBlock[0] = v62;
        *v61 = 136315138;
        v63 = [v57 UUIDString];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v32;
        v67 = v66;

        v68 = sub_1000952D4(v64, v67, aBlock);
        v32 = v65;

        *(v61 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v58, v106, "Accessory does not contain characteristic %s!", v61, 0xCu);
        sub_100095808(v62);

        (v108[1].isa)(v27, v107);
      }

      else
      {

        (*(v21 + 8))(v27, v56);
      }

      sub_1000B346C();
      v69 = swift_allocError();
      *v70 = 1;
      sub_100116DD8(0, v69, a4, v109, a6);
    }
  }

  else
  {
    sub_1000B346C();
    v54 = swift_allocError();
    *v55 = 1;

    sub_100116DD8(0, v54, a4, v109, a6);
  }
}

uint64_t sub_1001AF6D8(NSObject *a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v129 = a2;
  v130 = a1;
  v127 = type metadata accessor for DispatchTimeInterval();
  v125 = *(v127 - 8);
  v12 = *(v125 + 64);
  __chkstk_darwin(v127);
  v124 = (&v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = type metadata accessor for DispatchTime();
  v126 = *(v128 - 8);
  v14 = *(v126 + 64);
  v15 = __chkstk_darwin(v128);
  v121 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v122 = &v118 - v18;
  __chkstk_darwin(v17);
  v123 = &v118 - v19;
  v20 = type metadata accessor for Logger();
  v133 = *(v20 - 8);
  v21 = v133[8];
  v22 = __chkstk_darwin(v20);
  v24 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v118 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = (&v118 - v29);
  __chkstk_darwin(v28);
  v32 = &v118 - v31;
  v33 = swift_allocObject();
  v33[2] = a4;
  v33[3] = a5;
  v33[4] = a6;
  v33[5] = a7;
  v131 = a3;
  v132 = v33;
  v34 = *(a3 + 4);
  if (!v34 || (objc_opt_self(), (v35 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1000B346C();
    v57 = swift_allocError();
    *v58 = 1;
    v59 = v133;
    (v133[2])(v24, a4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v20);

    swift_errorRetain();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v62 = 136315138;
      v135 = v57;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v64 = String.init<A>(describing:)();
      v66 = sub_1000952D4(v64, v65, aBlock);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v60, v61, "Unable to read characteristic: %s", v62, 0xCu);
      sub_100095808(v63);

      (v59[1])(v24, v20);
    }

    else
    {

      (v59[1])(v24, v20);
    }

LABEL_22:
  }

  v36 = v35;
  v120 = v20;

  v119 = v34;
  v118 = v36;
  v37 = [v36 primaryAccessory];
  v38 = v30;
  v39 = v130;
  if (!v37)
  {
    goto LABEL_15;
  }

  v40 = v37;
  v41 = [v130 UUIDString];
  if (!v41)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = String._bridgeToObjectiveC()();
  }

  v42 = [v129 UUIDString];
  if (!v42)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = String._bridgeToObjectiveC()();
    v39 = v130;
  }

  v43 = [v40 characteristicOfType:v41 serviceType:v42];

  if (!v43)
  {
LABEL_15:
    v67 = v133;
    v68 = &v131[OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger];
    v69 = v120;
    v131 = v133[2];
    (v131)(v32, v68, v120);
    v70 = v39;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      v130 = v38;
      v74 = aBlock[0];
      *v73 = 136315138;
      v75 = [v70 UUIDString];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v79 = sub_1000952D4(v76, v78, aBlock);
      v69 = v120;

      *(v73 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v71, v72, "Accessory does not contain characteristic %s!", v73, 0xCu);
      sub_100095808(v74);
      v38 = v130;

      v80 = v133;
    }

    else
    {

      v80 = v67;
    }

    v81 = v80[1];
    v81(v32, v69);
    sub_1000B346C();
    v82 = swift_allocError();
    *v83 = 1;
    (v131)(v38, a4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v69);
    swift_errorRetain();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      aBlock[0] = v87;
      *v86 = 136315138;
      v135 = v82;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v88 = String.init<A>(describing:)();
      v90 = v69;
      v91 = sub_1000952D4(v88, v89, aBlock);

      *(v86 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v84, v85, "Unable to read characteristic: %s", v86, 0xCu);
      sub_100095808(v87);

      v92 = v38;
      v93 = v90;
    }

    else
    {

      v92 = v38;
      v93 = v69;
    }

    v81(v92, v93);

    goto LABEL_22;
  }

  v129 = v43;
  v130 = dispatch_group_create();
  v44 = v133;
  v45 = v120;
  (v133[2])(v27, &v131[OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger], v120);
  v46 = v39;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136315138;
    v51 = v46;
    v52 = [v46 UUIDString];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v46 = v51;
    v56 = sub_1000952D4(v53, v55, aBlock);

    *(v49 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v47, v48, "Reading characteristic %s...", v49, 0xCu);
    sub_100095808(v50);

    (v44[1])(v27, v120);
  }

  else
  {

    (v44[1])(v27, v45);
  }

  v95 = v130;
  dispatch_group_enter(v130);
  sub_100095274(&qword_1002A7390, &qword_10023BEF0);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_10023BDA0;
  v97 = v129;
  *(v96 + 32) = v129;
  sub_100095B94(0, &qword_1002A92F0, off_100271C60);
  v133 = v97;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v99 = v131;
  v100 = *(v131 + 5);
  v101 = swift_allocObject();
  v101[2] = v99;
  v101[3] = v46;
  v102 = v132;
  v101[4] = sub_1001B03A4;
  v101[5] = v102;
  v101[6] = v95;
  aBlock[4] = sub_1001B07C0;
  aBlock[5] = v101;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A37EC;
  aBlock[3] = &unk_10027A370;
  v103 = _Block_copy(aBlock);
  v104 = v46;
  v105 = v100;

  v131 = v95;

  [v118 readCharacteristicValues:isa timeout:v105 completionQueue:v103 completionHandler:10.0];
  _Block_release(v103);

  v106 = v121;
  static DispatchTime.now()();
  v107 = v124;
  v108 = v125;
  *v124 = 10;
  v109 = *(v108 + 104);
  v110 = v127;
  v109(v107, enum case for DispatchTimeInterval.seconds(_:), v127);
  v111 = v122;
  + infix(_:_:)();
  v112 = *(v108 + 8);
  v112(v107, v110);
  v113 = *(v126 + 8);
  v114 = v106;
  v115 = v128;
  v113(v114, v128);
  *v107 = 500;
  v109(v107, enum case for DispatchTimeInterval.milliseconds(_:), v110);
  v116 = v123;
  + infix(_:_:)();
  v112(v107, v110);
  v113(v111, v115);
  v117 = v131;
  OS_dispatch_group.wait(timeout:)();

  v113(v116, v115);
}

uint64_t sub_1001B035C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001B03C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001B0434(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_1001B0498()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001B04F8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001B0530(void *a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, *a2, *a3);
}

uint64_t sub_1001B0564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B05D4()
{
  v1 = sub_100095274(&qword_1002ABA48, &qword_10023F398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001B07C8()
{
  v0 = type metadata accessor for Logger();
  sub_100093D84(v0, qword_1002ABA80);
  sub_100093DE8(v0, qword_1002ABA80);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001B0840()
{
  v1 = v0;
  v2 = [objc_msgSend(objc_opt_self() "capabilitiesForHardware")];
  swift_unknownObjectRelease();
  *(v0 + 16) = v2;
  *(v0 + 32) = 0;
  if (!v2)
  {
    if (qword_1002A6788 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100093DE8(v21, qword_1002ABA80);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Device does not support haptics!", v24, 2u);
    }

    goto LABEL_14;
  }

  if (qword_1002A6788 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100093DE8(v3, qword_1002ABA80);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Attempting to enable haptic engine...", v6, 2u);
  }

  v32 = 0;
  v7 = [objc_allocWithZone(CHHapticEngine) initAndReturnError:&v32];
  v8 = v32;
  if (!v7)
  {
    v25 = v32;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v22, v26))
    {

      goto LABEL_15;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&_mh_execute_header, v22, v26, "Unable to create haptic engine, haptics will be disallowed: %@", v27, 0xCu);
    sub_100095C84(v28, &unk_1002A6F60, &unk_10023C4E0);

LABEL_14:

LABEL_15:
    v30 = *(v1 + 32);
    swift_unknownObjectRelease();
    type metadata accessor for DKHaptics();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v0 + 24) = v7;
  v9 = v7;
  v10 = swift_allocObject();
  swift_weakInit();
  v36 = sub_1001B1970;
  v37 = v10;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100147FC8;
  v35 = &unk_10027A640;
  v11 = _Block_copy(&v32);
  v12 = v8;
  v13 = v9;

  [v13 setResetHandler:v11];
  _Block_release(v11);

  v14 = *(v1 + 24);
  v36 = MotionFeedback.init(positions:velocities:);
  v37 = 0;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1001B1078;
  v35 = &unk_10027A668;
  v15 = _Block_copy(&v32);
  v16 = v14;
  [v16 setStoppedHandler:v15];
  _Block_release(v15);

  v17 = *(v1 + 24);
  v36 = sub_1000E54B8;
  v37 = 0;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1001B10CC;
  v35 = &unk_10027A690;
  v18 = _Block_copy(&v32);
  v19 = v17;
  [v19 notifyWhenPlayersFinished:v18];
  _Block_release(v18);

  v20 = *(v1 + 24);
  [v20 setAutoShutdownEnabled:1];

  return v1;
}

void sub_1001B0DA8()
{
  if (qword_1002A6788 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100093DE8(v0, qword_1002ABA80);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reset Handler: Restarting the engine.", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v5 = *(Strong + 24);

  v14[0] = 0;
  v6 = [v5 startAndReturnError:v14];

  if (v6)
  {
    v7 = v14[0];
LABEL_8:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001B1128();
    }

    return;
  }

  v8 = v14[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to restart the engine: %@", v11, 0xCu);
    sub_100095C84(v12, &unk_1002A6F60, &unk_10023C4E0);
  }

  else
  {
  }
}

uint64_t sub_1001B1078(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1001B10CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4(a2);

  return v6;
}

void sub_1001B1128()
{
  sub_100095274(&qword_1002ABB88, &qword_10023F418);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  v0 = CHHapticPatternKeyPattern;
  *(inited + 32) = CHHapticPatternKeyPattern;
  sub_100095274(&qword_1002ABB90, &qword_10023F420);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10023DB20;
  sub_100095274(&qword_1002ABB98, &qword_10023F428);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_10023C170;
  v2 = CHHapticPatternKeyEvent;
  *(v1 + 32) = CHHapticPatternKeyEvent;
  sub_100095274(&qword_1002ABBA0, &qword_10023F430);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_10023DB20;
  v4 = CHHapticPatternKeyEventType;
  *(v3 + 32) = CHHapticPatternKeyEventType;
  v5 = CHHapticEventTypeHapticContinuous;
  type metadata accessor for EventType(0);
  *(v3 + 40) = v5;
  v6 = CHHapticPatternKeyTime;
  *(v3 + 64) = v7;
  *(v3 + 72) = v6;
  *(v3 + 80) = 0;
  v8 = CHHapticPatternKeyEventDuration;
  *(v3 + 104) = &type metadata for Double;
  *(v3 + 112) = v8;
  *(v3 + 144) = &type metadata for Double;
  *(v3 + 120) = 0x3FC3333333333333;
  v51 = v6;
  v9 = v0;
  v10 = v2;
  v11 = v4;
  v12 = v5;
  v13 = v8;
  v14 = sub_1001F2BF8(v3);
  swift_setDeallocating();
  sub_100095274(&qword_1002ABBA8, &qword_10023F438);
  swift_arrayDestroy();
  *(v1 + 40) = v14;
  v15 = sub_1001F2D20(v1);
  swift_setDeallocating();
  sub_100095C84(v1 + 32, &qword_1002ABBB0, &qword_10023F440);
  *(v52 + 32) = v15;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_10023C170;
  v17 = CHHapticPatternKeyParameter;
  *(v16 + 32) = CHHapticPatternKeyParameter;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_10023DB20;
  v19 = CHHapticPatternKeyParameterID;
  *(v18 + 32) = CHHapticPatternKeyParameterID;
  v20 = CHHapticDynamicParameterIDHapticIntensityControl;
  type metadata accessor for ID(0);
  v48 = v21;
  *(v18 + 40) = v20;
  *(v18 + 64) = v21;
  *(v18 + 72) = v51;
  *(v18 + 80) = 0x3FB999999999999ALL;
  v22 = CHHapticPatternKeyParameterValue;
  *(v18 + 104) = &type metadata for Double;
  *(v18 + 112) = v22;
  *(v18 + 144) = &type metadata for Double;
  *(v18 + 120) = 0x3FF3333333333333;
  v23 = v17;
  v24 = v19;
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v47 = v25;
  v28 = v20;
  v29 = sub_1001F2BF8(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v16 + 40) = v29;
  v30 = sub_1001F2D20(v16);
  swift_setDeallocating();
  sub_100095C84(v16 + 32, &qword_1002ABBB0, &qword_10023F440);
  *(v52 + 40) = v30;
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_10023C170;
  *(v31 + 32) = v26;
  v32 = swift_initStackObject();
  *(v32 + 32) = v27;
  *(v32 + 16) = xmmword_10023DB20;
  v33 = CHHapticDynamicParameterIDHapticSharpnessControl;
  *(v32 + 40) = CHHapticDynamicParameterIDHapticSharpnessControl;
  *(v32 + 64) = v48;
  *(v32 + 72) = v51;
  *(v32 + 80) = 0;
  *(v32 + 104) = &type metadata for Double;
  *(v32 + 112) = v47;
  *(v32 + 144) = &type metadata for Double;
  *(v32 + 120) = 0x3FF3333333333333;
  v34 = v33;
  v35 = sub_1001F2BF8(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v31 + 40) = v35;
  v36 = sub_1001F2D20(v31);
  swift_setDeallocating();
  sub_100095C84(v31 + 32, &qword_1002ABBB0, &qword_10023F440);
  *(v52 + 48) = v36;
  *(inited + 40) = v52;
  v37 = sub_1001F2D34(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002ABBB8, &qword_10023F448);
  sub_1001DB210(v37);

  v38 = objc_allocWithZone(CHHapticPattern);
  v39 = sub_1001B17EC();
  if (!v50)
  {
    v40 = v39;
    v41 = *(v46 + 24);
    v53 = 0;
    v42 = [v41 createPlayerWithPattern:v40 error:&v53];
    v43 = v53;
    if (v42)
    {

      v44 = *(v46 + 32);
      *(v46 + 32) = v42;
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v43;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_1001B1680()
{
  if (*(v0 + 32) || (sub_1001B1128(), !v1))
  {
    v2 = *(v0 + 24);
    v10 = 0;
    v3 = [v2 startAndReturnError:&v10];
    v4 = v10;
    if (v3 && ((v5 = *(v0 + 32)) == 0 || (v10 = 0, v6 = v4, v7 = [v5 startAtTime:&v10 error:0.0], v4 = v10, v7)))
    {
      v8 = v4;
    }

    else
    {
      v9 = v4;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1001B1788()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1001B17EC()
{
  type metadata accessor for Key(0);
  sub_1001B18E0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = 0;
  v2 = [v0 initWithDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1001B18E0()
{
  result = qword_1002A6DB0;
  if (!qword_1002A6DB0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A6DB0);
  }

  return result;
}

uint64_t sub_1001B1938()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001B1978(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001B19A0(uint64_t a1, int a2)
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

uint64_t sub_1001B19E8(uint64_t result, int a2, int a3)
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

unsigned __int8 *sub_1001B1A44@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, char **a4@<X4>, unsigned __int8 **a5@<X8>)
{
  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_13;
    }

    v11 = *(a2 + 16);
    v10 = *(a2 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_18;
    }

    v9 = HIDWORD(a2) - a2;
LABEL_10:
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v9))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      LODWORD(v9) = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    goto LABEL_8;
  }

  LODWORD(v9) = BYTE6(a3);
LABEL_14:
  v12 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_100095714(0, *(v12 + 2), 0, v12);
  }

  *a4 = v12;
  result = CC_SHA512(v6, v9, v12 + 32);
  *a5 = result;
  return result;
}

uint64_t sub_1001B1B24@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6 - 8);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_24;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 != 8)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 8)
      {
        goto LABEL_12;
      }

LABEL_8:
      sub_1000A0CD8(a1, a2);
      sub_10015319C(4, a1, a2, &v38);
      v36 = v38;
      static String.Encoding.utf8.getter();
      sub_10017E9A8();
      v14 = String.init<A>(bytes:encoding:)();
      v16 = v15;
      sub_1000A0D2C(v36, *(&v36 + 1));
      if (v16)
      {
        v17 = Data._Representation.subscript.getter() << 24;
        v18 = v17 & 0xFFFFFFFFFF00FFFFLL | (Data._Representation.subscript.getter() << 16);
        v19 = v18 & 0xFFFFFFFFFFFF00FFLL | (Data._Representation.subscript.getter() << 8);
        result = Data._Representation.subscript.getter();
        v20 = 0;
        v21 = v19 & 0xFFFFFFFFFFFFFF00 | result;
        v22 = 2;
LABEL_21:
        v34 = v21 | (v22 << 32);
        v35 = v20 | HIDWORD(v22);
LABEL_26:
        *a3 = v14;
        a3[1] = v16;
        a3[2] = v34;
        a3[3] = v35;
        a3[4] = a1;
        a3[5] = a2;
        return result;
      }

LABEL_22:
      result = sub_1000A0D2C(a1, a2);
      v14 = 0;
LABEL_25:
      v34 = 0;
      v35 = 0;
      a1 = 0;
      a2 = 0;
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  if (BYTE6(a2) == 8)
  {
    goto LABEL_8;
  }

LABEL_12:
  if (v9 != 2)
  {
    if (v9 == 1)
    {
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        if (HIDWORD(a1) - a1 != 12)
        {
          goto LABEL_24;
        }

LABEL_19:
        sub_1000A0CD8(a1, a2);
        sub_10015319C(4, a1, a2, &v38);
        v37 = v38;
        static String.Encoding.utf8.getter();
        sub_10017E9A8();
        v14 = String.init<A>(bytes:encoding:)();
        v16 = v26;
        sub_1000A0D2C(v37, *(&v37 + 1));
        if (v16)
        {
          v27 = Data._Representation.subscript.getter() << 24;
          v28 = v27 & 0xFFFFFFFFFF00FFFFLL | (Data._Representation.subscript.getter() << 16);
          v29 = v28 & 0xFFFFFFFFFFFF00FFLL | (Data._Representation.subscript.getter() << 8);
          v21 = v29 & 0xFFFFFFFFFFFFFF00 | Data._Representation.subscript.getter();
          v30 = Data._Representation.subscript.getter();
          v31 = Data._Representation.subscript.getter();
          v32 = Data._Representation.subscript.getter();
          v33 = Data._Representation.subscript.getter();
          result = Data._Representation.subscript.getter();
          v22 = (v33 << 40) | (result << 32) | (v32 >> 5) & 1 | (((v31 >> 4) & 1) << 8) | (((v30 >> 3) & 1) << 16);
          v20 = 0x10000;
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      goto LABEL_29;
    }

    if (BYTE6(a2) == 12)
    {
      goto LABEL_19;
    }

LABEL_24:
    result = sub_1000A0D2C(a1, a2);
    v14 = 0;
    v16 = 0;
    goto LABEL_25;
  }

  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  v12 = __OFSUB__(v23, v24);
  v25 = v23 - v24;
  if (!v12)
  {
    if (v25 == 12)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

LABEL_30:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1001B1EB4(uint64_t a1, unint64_t a2, char *a3, char *a4, int a5)
{
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10014025C(a1, a2);
  v17 = v16;
  v27[0] = a3;
  v27[1] = a4;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  static String.Encoding.utf8.getter();
  v19 = String.data(using:allowLossyConversion:)();
  v21 = v20;

  (*(v11 + 8))(v14, v10);
  result = 0;
  if (v21 >> 60 != 15)
  {
    v23 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v23 + 16) = 64;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *(v23 + 64) = 0u;
    *(v23 + 80) = 0u;
    v27[0] = v23;
    sub_1000A0CD8(v19, v21);
    result = sub_1000CAEE8(v19, v21, v19, v21, v27);
    v24 = *(v27[0] + 2);
    if (v24)
    {
      if (v24 != 1)
      {
        if (v24 >= 3)
        {
          if (v24 != 3)
          {
            v25 = *(v27[0] + 8);
            sub_1000A452C(v19, v21);

            return (bswap32(v25) == a5);
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AccessoryAdvData.AdvState(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryAdvData.AdvState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[6])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryAdvData.AdvState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1001B216C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000952D4(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v11, v12, "watchdog fired, tearing down os_transaction for %s", v13, 0xCu);
    sub_100095808(v14);
  }

  (*(v7 + 8))(v10, v6);
  sub_10019AE80();
}

uint64_t sub_1001B2348(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_1000A452C(v4, v9);
}

uint64_t sub_1001B23F4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  if (*(v13 + 16))
  {
    v14 = *(v13 + 24);
    if (v14)
    {
      aBlock[4] = sub_1000BAAE0;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_10027A8A0;
      v20[0] = _Block_copy(aBlock);
      v15 = v14;

      static DispatchQoS.unspecified.getter();
      v20[1] = _swiftEmptyArrayStorage;
      sub_1001B6124(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000BAB30();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v16 = v20[0];
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v16);

      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v12, v7);
    }
  }

  else
  {
    result = sub_100105518();
  }

  v17 = v1[5];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v1[5] = v19;
  }

  return result;
}

void sub_1001B26B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v5 = type metadata accessor for Logger();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
  v15 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token + 8);
  v40 = (v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
  v16 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_tokenUUID;
  swift_beginAccess();
  v17 = *(v10 + 16);
  v45 = v10 + 16;
  v46 = v16;
  v44 = v17;
  v17(v13, v3 + v16, v9);
  v18 = v3 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
  swift_beginAccess();
  v19 = *(v18 + 8);
  *(v18 + 8) = 0;
  sub_1000A0CD8(v14, v15);

  *(v18 + 16) = 1;
  v20 = *(v18 + 32);
  *(v18 + 24) = v49;
  *(v18 + 32) = a2;
  v42 = a2;

  v21 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  (*(v10 + 24))(v18 + *(v21 + 36), v13, v9);
  v22 = (v18 + *(v21 + 40));
  v24 = *v22;
  v23 = v22[1];
  *v22 = v14;
  v22[1] = v15;
  sub_1000A0CD8(v14, v15);
  sub_1000A0D2C(v24, v23);
  sub_1001B23F4();
  v43 = *(v10 + 8);
  v43(v13, v9);
  swift_endAccess();
  sub_1000A0D2C(v14, v15);
  (*(v47 + 16))(v8, v3 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v48);

  v41 = v8;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    v44(v13, v3 + v46, v9);
    v29 = UUID.uuidString.getter();
    v31 = v30;
    v43(v13, v9);
    v32 = sub_1000952D4(v29, v31, aBlock);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "Requesting metadata for token: %s", v27, 0xCu);
    sub_100095808(v28);
  }

  (*(v47 + 8))(v41, v48);
  v33 = *v40;
  v34 = v40[1];
  v35 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_authManager);
  sub_1000A0CD8(v33, v34);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v33, v34);
  v44(v13, v3 + v46, v9);
  v37 = UUID._bridgeToObjectiveC()().super.isa;
  v43(v13, v9);
  v38 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1001B617C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001B380C;
  aBlock[3] = &unk_10027A918;
  v39 = _Block_copy(aBlock);

  [v35 requestTokenMetadata:isa tokenUUID:v37 model:v38 completionHandler:v39];
  _Block_release(v39);
}

void sub_1001B2BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  __chkstk_darwin(v18);
  v21 = &v92 - v19;
  if (a4)
  {
    v22 = *(v13 + 16);
    v96 = a5;
    v22(&v92 - v19, a5 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v12);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v95 = v12;
      v26 = v13;
      v27 = v25;
      v28 = swift_slowAlloc();
      v108 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = sub_1000952D4(v29, v30, &v108);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "Auth metadata request failed: %s", v27, 0xCu);
      sub_100095808(v28);

      (*(v26 + 8))(v21, v95);
    }

    else
    {

      (*(v13 + 8))(v21, v12);
    }

    sub_1001B50F0(a4);
    return;
  }

  v93 = v7;
  v94 = v20;
  v32 = (a5 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry);
  swift_beginAccess();
  if (*(v32 + 16) != 1)
  {
    (*(v13 + 16))(v17, a5 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v12);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Ignoring metadata response, accessory not requesting metadata or metadata already requested.", v51, 2u);
    }

    (*(v13 + 8))(v17, v12);
    return;
  }

  swift_beginAccess();
  v33 = *v32;
  sub_1001059EC();
  *(v32 + 16) = 0;
  v34 = v32[4];
  v32[3] = 0;
  v32[4] = 0xE000000000000000;

  v35 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  v36 = (v32 + *(v35 + 40));
  v37 = *v36;
  v38 = v36[1];
  *v36 = xmmword_10023BF90;
  sub_1000A0D2C(v37, v38);
  UUID.init()();
  (*(v8 + 40))(v32 + *(v35 + 36), v11, v93);
  v39 = v32[1];
  v32[1] = 0;
  v32[5] = 0;
  swift_endAccess();

  (*(v13 + 16))(v94, a5 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v12);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Auth metadata received.", v42, 2u);
  }

  (*(v13 + 8))(v94, v12);
  v43 = v95;
  v96 = a5;
  if (!v95)
  {
    v100 = 0u;
    v101 = 0u;
    sub_100095C84(&v100, &qword_1002A9210, &unk_10023BE70);
    v100 = 0u;
    v101 = 0u;
    sub_100095C84(&v100, &qword_1002A9210, &unk_10023BE70);
    v100 = 0u;
    v101 = 0u;
    sub_100095C84(&v100, &qword_1002A9210, &unk_10023BE70);
    v100 = 0u;
    v101 = 0u;
    sub_100095C84(&v100, &qword_1002A9210, &unk_10023BE70);
    v68 = 0;
    v67 = 0;
    v72 = 0;
    v55 = 0;
    v76 = 0;
    v60 = 0;
    v62 = 0;
    v63 = 0;
    v118 = 0u;
    v119 = 0u;
    goto LABEL_64;
  }

  strcpy(v99, "accessory_name");
  HIBYTE(v99[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v43 + 16) || (v44 = sub_10016D6A8(&v108), (v45 & 1) == 0))
  {
    sub_10016F024(&v108);
    v100 = 0u;
    v101 = 0u;
    goto LABEL_22;
  }

  sub_100095B34(*(v43 + 56) + 32 * v44, &v100);
  sub_10016F024(&v108);
  if (!*(&v101 + 1))
  {
LABEL_22:
    sub_100095C84(&v100, &qword_1002A9210, &unk_10023BE70);
    v48 = 0;
    v94 = 0;
    goto LABEL_23;
  }

  v46 = swift_dynamicCast();
  v47 = v108;
  if (!v46)
  {
    v47 = 0;
  }

  v94 = v47;
  if (v46)
  {
    v48 = v109;
  }

  else
  {
    v48 = 0;
  }

LABEL_23:
  v99[0] = 0x646E617262;
  v99[1] = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v43 + 16) || (v52 = sub_10016D6A8(&v108), (v53 & 1) == 0))
  {
    sub_10016F024(&v108);
    v100 = 0u;
    v101 = 0u;
    goto LABEL_33;
  }

  sub_100095B34(*(v43 + 56) + 32 * v52, &v100);
  sub_10016F024(&v108);
  if (!*(&v101 + 1))
  {
LABEL_33:
    sub_100095C84(&v100, &qword_1002A9210, &unk_10023BE70);
    v56 = 0;
    v55 = 0;
    goto LABEL_34;
  }

  v54 = swift_dynamicCast();
  if (v54)
  {
    v55 = v108;
  }

  else
  {
    v55 = 0;
  }

  if (v54)
  {
    v56 = v109;
  }

  else
  {
    v56 = 0;
  }

LABEL_34:
  v99[0] = 0x6C65646F6DLL;
  v99[1] = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  v57 = *(v43 + 16);
  v93 = v56;
  if (!v57 || (v58 = sub_10016D6A8(&v108), (v59 & 1) == 0))
  {
    sub_10016F024(&v108);
    v100 = 0u;
    v101 = 0u;
    goto LABEL_44;
  }

  sub_100095B34(*(v43 + 56) + 32 * v58, &v100);
  sub_10016F024(&v108);
  if (!*(&v101 + 1))
  {
LABEL_44:
    v60 = v48;
    sub_100095C84(&v100, &qword_1002A9210, &unk_10023BE70);
    v63 = 0;
    v62 = 0;
    goto LABEL_45;
  }

  v60 = v48;
  v61 = swift_dynamicCast();
  if (v61)
  {
    v62 = v108;
  }

  else
  {
    v62 = 0;
  }

  if (v61)
  {
    v63 = v109;
  }

  else
  {
    v63 = 0;
  }

LABEL_45:
  v99[0] = 0xD000000000000014;
  v99[1] = 0x8000000100234D30;
  AnyHashable.init<A>(_:)();
  if (!*(v43 + 16) || (v64 = sub_10016D6A8(&v108), (v65 & 1) == 0))
  {
    sub_10016F024(&v108);
    v100 = 0u;
    v101 = 0u;
    goto LABEL_55;
  }

  sub_100095B34(*(v43 + 56) + 32 * v64, &v100);
  sub_10016F024(&v108);
  if (!*(&v101 + 1))
  {
LABEL_55:
    sub_100095C84(&v100, &qword_1002A9210, &unk_10023BE70);
    v68 = 0;
    v67 = 0;
    goto LABEL_56;
  }

  v66 = swift_dynamicCast();
  if (v66)
  {
    v67 = v108;
  }

  else
  {
    v67 = 0;
  }

  if (v66)
  {
    v68 = v109;
  }

  else
  {
    v68 = 0;
  }

LABEL_56:
  *&v100 = 0xD000000000000012;
  *(&v100 + 1) = 0x8000000100234D10;
  AnyHashable.init<A>(_:)();
  v69 = v95;
  if (*(v95 + 16) && (v70 = sub_10016D6A8(&v108), (v71 & 1) != 0))
  {
    sub_100095B34(*(v69 + 56) + 32 * v70, &v118);
    sub_10016F024(&v108);
    v72 = v93;
    if (*(&v119 + 1))
    {
      v73 = swift_dynamicCast();
      v74 = v108;
      v75 = v109;
      if (!v73)
      {
        v74 = 0;
        v75 = 0;
      }

      v76 = v94;
      goto LABEL_65;
    }

    v76 = v94;
  }

  else
  {
    sub_10016F024(&v108);
    v118 = 0u;
    v119 = 0u;
    v72 = v93;
    v76 = v94;
  }

LABEL_64:
  sub_100095C84(&v118, &qword_1002A9210, &unk_10023BE70);
  v74 = 0;
  v75 = 0;
LABEL_65:
  *&v100 = v76;
  *(&v100 + 1) = v60;
  *&v101 = v55;
  *(&v101 + 1) = v72;
  v102 = v62;
  v103 = v63;
  v104 = v67;
  v105 = v68;
  v106 = v74;
  v107 = v75;
  v108 = v76;
  v109 = v60;
  v110 = v55;
  v111 = v72;
  v112 = v62;
  v113 = v63;
  v114 = v67;
  v115 = v68;
  v116 = v74;
  v117 = v75;
  sub_1001B6184(&v100, v99);
  sub_1001B61BC(&v108);
  v77 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate;
  v78 = v96;
  swift_beginAccess();
  sub_1001B6040(v78 + v77, v99);
  if (!v99[3])
  {
    sub_1001B61BC(&v100);
    sub_100095C84(v99, &qword_1002A9BF8, &qword_10023EA00);
    return;
  }

  sub_1000A097C(v99, v98);
  sub_100095C84(v99, &qword_1002A9BF8, &qword_10023EA00);
  v79 = *sub_1000A09E0(v98, v98[3]);
  v80 = *(v78 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer);
  v97 = sub_1001F29A8(_swiftEmptyArrayStorage);
  v81 = *(&v100 + 1);
  if (*(&v100 + 1))
  {
    v82 = v100;

    sub_1001DA564(v82, v81, 1701667182, 0xE400000000000000);
  }

  v83 = *(v79 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (v83)
  {
    v84 = v83;
    v85 = [v80 identifier];
    if (!v85)
    {
      __break(1u);
      return;
    }

    v86 = v85;
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90 = v97;
    if (*&v84[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
    {
      v84[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 3;
      v91 = *&v84[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
      sub_100156798(v87, v89, 1, v90, 0);
      sub_1001B61BC(&v100);
    }

    else
    {
      sub_1001B61BC(&v100);
    }
  }

  else
  {
    sub_1001B61BC(&v100);
  }

  sub_100095808(v98);
}

uint64_t sub_1001B380C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = a4;
  v7(v8, v10, a3, a4);
}

void sub_1001B38D8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
  v12 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token + 8);
  v40 = (v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
  v13 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_tokenUUID;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v43 = v7 + 16;
  v44 = v13;
  v42 = v14;
  v14(v10, v1 + v13, v6);
  v15 = v1 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
  swift_beginAccess();
  v16 = *(v15 + 8);
  *(v15 + 8) = 0;
  sub_1000A0CD8(v11, v12);

  *(v15 + 16) = 2;
  v17 = *(v15 + 32);
  *(v15 + 24) = 0;
  *(v15 + 32) = 0xE000000000000000;

  v18 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  (*(v7 + 24))(v15 + *(v18 + 36), v10, v6);
  v19 = (v15 + *(v18 + 40));
  v20 = *v19;
  v21 = v19[1];
  *v19 = v11;
  v19[1] = v12;
  sub_1000A0CD8(v11, v12);
  sub_1000A0D2C(v20, v21);
  sub_1001B23F4();
  v22 = *(v7 + 8);
  v22(v10, v6);
  swift_endAccess();
  sub_1000A0D2C(v11, v12);
  (*(v45 + 16))(v5, v1 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v46);

  v41 = v5;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v39 = v22;
    v26 = v25;
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    v42(v10, v1 + v44, v6);
    v28 = UUID.uuidString.getter();
    v30 = v29;
    v39(v10, v6);
    v31 = sub_1000952D4(v28, v30, aBlock);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "Activating token for %s", v26, 0xCu);
    sub_100095808(v27);

    v22 = v39;
  }

  (*(v45 + 8))(v41, v46);
  v32 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_manager);
  v33 = *v40;
  v34 = v40[1];
  sub_1000A0CD8(*v40, v34);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v33, v34);
  v42(v10, v1 + v44, v6);
  UUID.uuidString.getter();
  v22(v10, v6);
  v36 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001B6174;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001B2348;
  aBlock[3] = &unk_10027A8F0;
  v37 = _Block_copy(aBlock);

  [v32 requestActivationForAuthToken:isa withUUID:v36 completionHandler:v37];
  _Block_release(v37);
}

void sub_1001B3DE0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v21 = &v79 - v20;
  __chkstk_darwin(v19);
  v26 = &v79 - v22;
  if (a3)
  {
    v27 = v12;
    v28 = v12;
    v29 = v23;
    (*(v23 + 16))(&v79 - v22, a4 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v28);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v84 = v27;
      v33 = v32;
      v34 = swift_slowAlloc();
      v87[0] = v34;
      *v33 = 136315138;
      swift_getErrorValue();
      v35 = Error.localizedDescription.getter();
      v37 = sub_1000952D4(v35, v36, v87);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Auth activation request failed: %s", v33, 0xCu);
      sub_100095808(v34);

      (*(v29 + 8))(v26, v84);
    }

    else
    {

      (*(v29 + 8))(v26, v27);
    }

    sub_1001B50F0(a3);
  }

  else
  {
    v82 = v7;
    if (a2 >> 60 == 15)
    {
      v38 = v23;
      (*(v23 + 16))(v21, a4 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v12);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Auth activation request failed: No data returned", v41, 2u);
      }

      (*(v38 + 8))(v21, v12);
      sub_1000B346C();
      v42 = swift_allocError();
      *v43 = 2;
      sub_1001B50F0(v42);
    }

    else
    {
      v81 = v25;
      v79 = v24;
      v80 = a2;
      v44 = v23;
      v84 = v12;
      v45 = (a4 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry);
      swift_beginAccess();
      if (*(v45 + 16) == 2)
      {
        swift_beginAccess();
        v46 = *v45;
        sub_1001059EC();
        *(v45 + 16) = 0;
        v47 = v45[4];
        v45[3] = 0;
        v45[4] = 0xE000000000000000;

        v48 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
        v49 = (v45 + *(v48 + 40));
        v50 = *v49;
        v51 = v49[1];
        *v49 = xmmword_10023BF90;
        sub_1000A0D2C(v50, v51);
        UUID.init()();
        (*(v8 + 40))(v45 + *(v48 + 36), v11, v82);
        v52 = v45[1];
        v45[1] = 0;
        v45[5] = 0;
        swift_endAccess();

        v53 = *(v44 + 16);
        v53(v81, a4 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v84);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "Auth activation successful.", v56, 2u);
        }

        v57 = *(v44 + 8);
        v58 = v84;
        v82 = v44 + 8;
        v57(v81, v84);
        v59 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate;
        swift_beginAccess();
        sub_1001B6040(a4 + v59, v87);
        if (v87[3])
        {
          sub_1000A097C(v87, v86);
          sub_100095C84(v87, &qword_1002A9BF8, &qword_10023EA00);
          v60 = sub_1000A09E0(v86, v86[3]);
          v61 = *(a4 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer);
          v62 = v79;
          v53(v79, *v60 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v58);
          v63 = v61;
          v64 = v83;
          v65 = v80;
          sub_1000B4F20(v83, v80);
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.default.getter();
          sub_1000A452C(v64, v65);
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v81 = v57;
            v69 = v68;
            v70 = v63;
            v71 = swift_slowAlloc();
            v85 = v71;
            *v69 = 136315138;
            v72 = Data.base64EncodedString(options:)(0);
            v73 = sub_1000952D4(v72._countAndFlagsBits, v72._object, &v85);

            *(v69 + 4) = v73;
            _os_log_impl(&_mh_execute_header, v66, v67, "Provisioning new SW auth token: %s", v69, 0xCu);
            sub_100095808(v71);
            v63 = v70;

            v81(v62, v58);
          }

          else
          {

            v57(v62, v58);
          }

          isa = Data._bridgeToObjectiveC()().super.isa;
          [v63 provisionToken:isa];

          sub_100095808(v86);
        }

        else
        {
          sub_100095C84(v87, &qword_1002A9BF8, &qword_10023EA00);
        }
      }

      else
      {
        v74 = v84;
        (*(v44 + 16))(v16, a4 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v84);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&_mh_execute_header, v75, v76, "Ignoring auth response, accessory not activating or already activated.", v77, 2u);
        }

        (*(v44 + 8))(v16, v74);
      }
    }
  }
}

void sub_1001B46E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v48 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v40 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v3 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
  swift_beginAccess();
  v15 = *(v14 + 8);
  *(v14 + 8) = 0;

  *(v14 + 16) = 3;
  v16 = *(v14 + 32);
  *(v14 + 24) = 0;
  *(v14 + 32) = 0xE000000000000000;

  v17 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  v18 = a3;
  (*(v7 + 24))(v14 + *(v17 + 36), a3, v6);
  v19 = (v14 + *(v17 + 40));
  v20 = *v19;
  v21 = v19[1];
  v22 = v48;
  *v19 = a1;
  v19[1] = v22;
  v46 = a1;
  sub_1000A0CD8(a1, v22);
  sub_1000A0D2C(v20, v21);
  sub_1001B23F4();
  swift_endAccess();
  v23 = *(v47 + 16);
  v45 = v10;
  v23(v13, v49 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v10);
  v41 = v7;
  v42 = v18;
  v24 = *(v7 + 16);
  v25 = v40;
  v43 = v6;
  v24();
  v44 = v13;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315138;
    v30 = v25;
    v31 = UUID.uuidString.getter();
    v33 = v32;
    (*(v41 + 8))(v30, v43);
    v34 = sub_1000952D4(v31, v33, aBlock);

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "Confirming token for %s", v28, 0xCu);
    sub_100095808(v29);
  }

  else
  {

    (*(v41 + 8))(v25, v43);
  }

  (*(v47 + 8))(v44, v45);
  v35 = v49;
  v36 = *(v49 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_manager);
  isa = Data._bridgeToObjectiveC()().super.isa;
  UUID.uuidString.getter();
  v38 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001B616C;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10015C1F8;
  aBlock[3] = &unk_10027A8C8;
  v39 = _Block_copy(aBlock);

  [v36 confirmActivationForAuthToken:isa withUUID:v38 completionHandler:v39];
  _Block_release(v39);
}

void sub_1001B4B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v15 = __chkstk_darwin(v12);
  v17 = v48 - v16 + 24;
  __chkstk_darwin(v15);
  v19 = v48 - v18 + 24;
  if (a1)
  {
    (*(v10 + 16))(v48 - v18 + 24, a2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v9);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = sub_1000952D4(v24, v25, v49);
      v47 = v9;
      v27 = v26;

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Auth confirmation request failed: %s", v22, 0xCu);
      sub_100095808(v23);

      (*(v10 + 8))(v19, v47);
    }

    else
    {

      (*(v10 + 8))(v19, v9);
    }

    sub_1001B50F0(a1);
  }

  else
  {
    v28 = (a2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry);
    swift_beginAccess();
    if (*(v28 + 16) == 3)
    {
      swift_beginAccess();
      v29 = *v28;
      sub_1001059EC();
      *(v28 + 16) = 0;
      v30 = v28[4];
      v28[3] = 0;
      v28[4] = 0xE000000000000000;

      v31 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
      v32 = (v28 + *(v31 + 40));
      v33 = *v32;
      v34 = v32[1];
      *v32 = xmmword_10023BF90;
      sub_1000A0D2C(v33, v34);
      UUID.init()();
      (*(v5 + 40))(v28 + *(v31 + 36), v8, v4);
      v35 = v28[1];
      v28[1] = 0;
      v28[5] = 0;
      swift_endAccess();

      (*(v10 + 16))(v17, a2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v9);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Auth token confirmed.", v38, 2u);
      }

      (*(v10 + 8))(v17, v9);
      v39 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate;
      swift_beginAccess();
      sub_1001B6040(a2 + v39, v49);
      if (v49[3])
      {
        sub_1000A097C(v49, v48);
        sub_100095C84(v49, &qword_1002A9BF8, &qword_10023EA00);
        v40 = sub_1000A09E0(v48, v48[3]);
        v41 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer);
        v42 = *v40;
        v43 = v41;
        sub_100161B78(v41, 0);

        sub_100095808(v48);
      }

      else
      {
        sub_100095C84(v49, &qword_1002A9BF8, &qword_10023EA00);
      }
    }

    else
    {
      (*(v10 + 16))(v14, a2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v9);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Ignoring confirmation response, accessory not confirming or already confirmed.", v46, 2u);
      }

      (*(v10 + 8))(v14, v9);
    }
  }
}

void sub_1001B50F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v37 = v4;
  v39[0] = a1;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  type metadata accessor for MFAAError(0);
  if (swift_dynamicCast())
  {
    v36 = v10;
    v14 = v38[0];
    v39[0] = v38[0];
    sub_1001B6124(&qword_1002A6D48, type metadata accessor for MFAAError);
    if (_BridgedStoredNSError.errorCode.getter() == -5)
    {
      v35 = v14;
      v15 = (v1 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry);
      swift_beginAccess();
      if (v15[5] <= 2)
      {
        v16 = v36;
        (*(v36 + 16))(v13, v1 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v9);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "Network error occurred, attempting retry.", v19, 2u);
        }

        (*(v16 + 8))(v13, v9);
        swift_beginAccess();
        v20 = *v15;
        sub_1001059EC();
        sub_1001B23F4();
        swift_endAccess();

        return;
      }
    }

    else
    {
    }
  }

  v21 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate;
  swift_beginAccess();
  sub_1001B6040(v2 + v21, v39);
  v22 = v37;
  if (v39[3])
  {
    sub_1000A097C(v39, v38);
    sub_100095C84(v39, &qword_1002A9BF8, &qword_10023EA00);
    v23 = sub_1000A09E0(v38, v38[3]);
    v24 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer);
    v25 = *v23;
    v26 = v24;
    sub_100161B78(v24, a1);

    sub_100095808(v38);
  }

  else
  {
    sub_100095C84(v39, &qword_1002A9BF8, &qword_10023EA00);
  }

  v27 = (v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry);
  swift_beginAccess();
  v28 = *v27;
  sub_1001059EC();
  *(v27 + 16) = 0;
  v29 = v27[4];
  v27[3] = 0;
  v27[4] = 0xE000000000000000;

  v30 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  v31 = (v27 + *(v30 + 40));
  v32 = *v31;
  v33 = v31[1];
  *v31 = xmmword_10023BF90;
  sub_1000A0D2C(v32, v33);
  UUID.init()();
  (*(v5 + 40))(v27 + *(v30 + 36), v8, v22);
  v34 = v27[1];
  v27[1] = 0;
  v27[5] = 0;
  swift_endAccess();
}

uint64_t sub_1001B5560()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_tokenUUID;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1000A0D2C(*(v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token), *(v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token + 8));
  sub_1001B60B0(v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry);

  sub_100095C84(v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate, &qword_1002A9BF8, &qword_10023EA00);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1001B56D8()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for DockAccessorySWAuth.AuthRetry(319);
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1001B5838(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1001B58F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001B599C()
{
  type metadata accessor for Transaction();
  if (v0 <= 0x3F)
  {
    sub_1001B5A5C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001B5A5C()
{
  if (!qword_1002ABDF8)
  {
    sub_10009589C(&qword_1002A7268, &unk_10023C680);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002ABDF8);
    }
  }
}

uint64_t getEnumTagSinglePayload for DockAccessorySWAuth.AuthRetryStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}