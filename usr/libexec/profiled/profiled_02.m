uint64_t sub_1000BC678()
{
  v1 = v0 + OBJC_IVAR____TtC8profiled9MCAdapter_previousSettings;
  swift_beginAccess();
  sub_1000B6694(v1, v23);
  v3 = v26;
  v2 = v27;
  v4 = v25;
  [v25 lock];
  v5 = v24;
  if (*(v24 + 16) && (v6 = sub_1000BB124(v3, v2), (v7 & 1) != 0))
  {
    sub_1000B32AC(*(v5 + 56) + 32 * v6, &v21);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  [v4 unlock];
  if (*(&v22 + 1))
  {
    sub_1000A74C0(&qword_1001369A0, &qword_1000DD9F0);
    if (swift_dynamicCast())
    {
      v8 = v20;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1000BEB04(&v21);
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_10:
  sub_1000B42A8(v23);
  v9 = sub_1000A72AC();

  v10 = sub_1000BF10C(v8);

  v12 = sub_1000BF10C(v11);

  v13 = sub_1000BF1A4(v10, v12);
  v15 = v14;

  if (v13[2])
  {
    sub_1000BBA30(2, v13);
  }

  if (*(v15 + 16))
  {
    sub_1000BBA30(1, v15);
  }

  swift_beginAccess();
  v23[3] = sub_1000A74C0(&qword_1001369A0, &qword_1000DD9F0);
  v23[0] = v9;
  v17 = *(v1 + 56);
  v16 = *(v1 + 64);
  v18 = *(v1 + 48);

  [v18 lock];
  sub_1000BF26C(v23, &v21);
  sub_1000BC4DC(&v21, v17, v16);
  sub_1000BAA2C();
  [*(v1 + 48) unlock];
  sub_1000BEB04(v23);
  return swift_endAccess();
}

uint64_t sub_1000BC8CC(void *a1)
{
  v2 = v1;
  v4 = sub_1000A6B10();
  if (sub_1000BCB4C(v4, v5))
  {
  }

  else
  {
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000A2468(v7, qword_100136A28);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136446210;

      v12 = Array.description.getter();
      v14 = v13;

      v15 = sub_1000B30D4(v12, v14, v19);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Applying blockedApplications settings: %{public}s", v10, 0xCu);
      sub_1000A24A0(v11);
    }

    sub_1000AD574((v2 + OBJC_IVAR____TtC8profiled9MCAdapter_mcInterface), *(v2 + OBJC_IVAR____TtC8profiled9MCAdapter_mcInterface + 24));
    sub_1000B4CAC(v19);
    v16 = v19[8];
    v17 = v19[9];

    sub_1000BF2DC(v19);
    v18 = sub_1000BC178(v4);
    sub_1000B4304(v16, v17, v18, a1, &type metadata for MCInterface, &off_10011DF60);
  }
}

uint64_t sub_1000BCB4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000BCBDC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1000BD278(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_1000BCD08(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_1000BD84C(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_1000BD614(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_1000A74B8();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BD278(uint64_t a1, uint64_t a2)
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
    sub_1000BDA70();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1000BDE04(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1000BD3B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000A74C0(&qword_1001369A8, &qword_1000DD9F8);
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

unint64_t *sub_1000BD614(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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

          return sub_1000BD84C(v32, a2, v31, a3);
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

uint64_t sub_1000BD84C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000A74C0(&qword_1001369A8, &qword_1000DD9F8);
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

void *sub_1000BDA70()
{
  v1 = v0;
  sub_1000A74C0(&qword_1001369A8, &qword_1000DD9F8);
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

uint64_t sub_1000BDBCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000A74C0(&qword_1001369A8, &qword_1000DD9F8);
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

unint64_t sub_1000BDE04(unint64_t result)
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

double sub_1000BDFC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000BB124(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000BE690();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1000BB654((*(v12 + 56) + 32 * v9), a3);
    sub_1000BE324(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1000BE06C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000A74C0(&qword_100136980, &qword_1000DD9A0);
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1000BB654(v25, v37);
      }

      else
      {
        sub_1000B32AC(v25, v37);
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1000BB654(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000BE324(uint64_t result, uint64_t a2)
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
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1000BE4D4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000BB124(a2, a3);
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
      sub_1000BE690();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000BE06C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000BB124(a2, a3);
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
    sub_1000A24A0(v23);

    return sub_1000BB654(a1, v23);
  }

  else
  {
    sub_1000BE624(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1000BE624(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000BB654(a4, (a5[7] + 32 * a1));
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

void *sub_1000BE690()
{
  v1 = v0;
  sub_1000A74C0(&qword_100136980, &qword_1000DD9A0);
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
        sub_1000B32AC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000BB654(v25, (*(v4 + 56) + v22));
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

uint64_t sub_1000BE834(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000BE984(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1000BE984(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000BD3B4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000BDA70();
      goto LABEL_16;
    }

    sub_1000BDBCC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000BEB04(uint64_t a1)
{
  v2 = sub_1000A74C0(&qword_100136998, &qword_1000DD9E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000BEB6C(void *a1)
{
  v2 = sub_1000A6D1C();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyAppClips settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4CAC(&v9);

    sub_1000BF2DC(&v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BECD4(void *a1)
{
  v2 = sub_1000A6E80();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyAppInstallation settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4CAC(v9);

    sub_1000BF2DC(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BEE3C(void *a1)
{
  v2 = sub_1000A6FE4();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyAppRemoval settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4CAC(v9);

    sub_1000BF2DC(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BEFA4(void *a1)
{
  v2 = sub_1000A7148();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyBackgroundAppRefresh settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4CAC(v9);

    sub_1000BF2DC(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

uint64_t sub_1000BF10C(uint64_t a1)
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

      sub_1000BE834(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_1000BF1A4(void *a1, void *a2)
{
  if (a1[2] <= a2[2] >> 3)
  {

    sub_1000BCBDC(a1);
    v4 = a2;
  }

  else
  {

    v4 = sub_1000BCD08(a1, a2);
  }

  if (a2[2] <= a1[2] >> 3)
  {

    sub_1000BCBDC(a2);
  }

  else
  {

    sub_1000BCD08(a2, a1);
  }

  return v4;
}

uint64_t sub_1000BF26C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A74C0(&qword_100136998, &qword_1000DD9E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1000BF330()
{
  v0 = objc_opt_self();
  [v0 gameCenterOtherPlayerTypesNone];
  [v0 gameCenterOtherPlayerTypesFriendsOnly];
  return [v0 gameCenterOtherPlayerTypesEveryone];
}

void sub_1000BF3B4(void *a1)
{
  v2 = sub_1000A9664();
  if (v2 != (v2 & 0xFF00) >> 8)
  {
    sub_1000BF330();
    v4 = v3;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000A2468(v5, qword_100136A28);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134349056;
      *(v8 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v6, v7, "Applying allowedOtherPlayerTypes settings: %{public}f", v8, 0xCu);
    }

    sub_1000B5108(v11);

    sub_1000C0424(v11);
    v9 = String._bridgeToObjectiveC()();

    v10 = [objc_allocWithZone(NSNumber) initWithDouble:v4];
    [a1 MCSetValueRestriction:v9 value:v10];
  }
}

void sub_1000BF53C(void *a1)
{
  v2 = sub_1000A97B4();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyAddingFriends settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(&v9);

    sub_1000C0424(&v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BF6A4(void *a1)
{
  v2 = sub_1000A9918();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyGameCenter settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BF80C(void *a1)
{
  v2 = sub_1000A9A7C();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyMultiplayerGaming settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BF974(void *a1)
{
  v2 = sub_1000A9BE0();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyNearbyMultiplayer settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BFADC(void *a1)
{
  v2 = sub_1000A9D44();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyPrivateMessaging settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BFC44(void *a1)
{
  v2 = sub_1000A9EA8();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying lockFriendsSharing settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BFDAC(void *a1)
{
  v2 = sub_1000AA00C();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying lockProfile settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BFF14(void *a1)
{
  v2 = sub_1000AA170();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying lockProfilePrivacy settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

uint64_t sub_1000C007C()
{
  v0 = [objc_allocWithZone(NSMutableDictionary) init];
  sub_1000BF3B4(v0);
  sub_1000BF53C(v0);
  sub_1000BF6A4(v0);
  sub_1000BF80C(v0);
  sub_1000BF974(v0);
  sub_1000BFADC(v0);
  sub_1000BFC44(v0);
  sub_1000BFDAC(v0);
  sub_1000BFF14(v0);
  v1 = v0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000C0190(uint64_t a1, void *a2)
{
  if (qword_1001366C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A2468(v4, qword_100136A28);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Applying effective GameCenter settings", v7, 2u);
  }

  v8 = sub_1000C007C();
  if (*(v8 + 16))
  {
    sub_1000B3940(v8, a1, a2);
  }

  else
  {

    sub_1000B3940(0, a1, a2);
  }
}

void sub_1000C0478(void *a1)
{
  v2 = sub_1000A90D4();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyFaceTime settings: %{BOOL,public}d", v7, 8u);
    }

    v8 = objc_opt_self();
    v9 = [v8 videoConferencingAllowed];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();

      v9 = v10;
    }

    v11 = v9;
    [a1 MCSetBoolRestriction:? value:?];
  }
}

void sub_1000C0638(void *a1)
{
  v2 = sub_1000A9238();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denySharePlay settings: %{BOOL,public}d", v7, 8u);
    }

    v8 = objc_opt_self();
    v9 = [v8 groupActivityAllowed];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    [a1 MCSetBoolRestriction:v9 value:(v3 & 1) == 0];
  }
}

uint64_t sub_1000C07F4()
{
  v0 = [objc_allocWithZone(NSMutableDictionary) init];
  sub_1000C0478(v0);
  sub_1000C0638(v0);
  v1 = v0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000C08D0(uint64_t a1, void *a2)
{
  if (qword_1001366C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A2468(v4, qword_100136A28);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Applying effective FaceTime settings", v7, 2u);
  }

  v8 = sub_1000C07F4();
  if (*(v8 + 16))
  {
    sub_1000B3940(v8, a1, a2);
  }

  else
  {

    sub_1000B3940(0, a1, a2);
  }
}

uint64_t sub_1000C0B64()
{
  if (qword_100137088 != -1)
  {
    sub_1000C2EF0();
  }

  dispatch_sync(qword_100137090, &stru_10011E338);
  return dword_100137080;
}

void sub_1000C0BAC(id a1)
{
  if (!dword_100137080)
  {
    dword_100137080 = sub_1000C0C18("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t sub_1000C0C18(char *path, const char *a2)
{
  connect = 0;
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3 || (v4 = v3, v5 = IOServiceOpen(v3, mach_task_self_, 0, &connect), IOObjectRelease(v4), v5))
  {
    v6 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      IOObjectRelease(v8);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t sub_1000C0D6C(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t sub_1000C0DA4(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void sub_1000C0DBC(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 - 104);
  *(v16 - 96) = a1;
  *(v16 - 88) = v17;
  *(v16 - 80) = a16;
}

uint64_t sub_1000C0DE4(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t sub_1000C0E74(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t sub_1000C0EA0()
{
  v3 = v1 + *(v0 + 1) - v0;

  return ccder_blob_encode_body();
}

uint64_t sub_1000C0ED8()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t sub_1000C0EF8()
{

  return ccder_blob_encode_tl();
}

uint64_t sub_1000C0F54()
{

  return ccder_sizeof();
}

void *sub_1000C0F70()
{

  return calloc(0x18uLL, 1uLL);
}

void *sub_1000C0F88(size_t a1)
{

  return calloc(a1, 1uLL);
}

void sub_1000C0FC0()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1048()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C10D0()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1158()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C11E0()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1268()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C12F0()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1378()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1400()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1488()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1510()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1598()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1620()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C16A8()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1730()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C17B8()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1840()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C18C8()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1950()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C19D8()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1A60()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1AE8()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1B70()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1BF8()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1C80()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1D08(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MCProfileServiceServer.m" lineNumber:1903 description:@"mach_timebase_info not available"];
}

void sub_1000C1D74()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1DFC()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1E84()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1F0C()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C1F94(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCDNSProxyPayloadHandler.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"neProfileIngestionHandler"}];
}

void sub_1000C2010(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCDNSProxyPayloadHandler.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"payloadBase"}];
}

void sub_1000C208C()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C2114()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C219C()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C2224()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C22AC()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C2334()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C23BC()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C2444()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C24CC()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C2554()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v6);
}

void sub_1000C26CC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCRelayPayloadHandler.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"neProfileIngestionHandler"}];
}

void sub_1000C2748(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCRelayPayloadHandler.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"payloadBase"}];
}

void sub_1000C2828(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCProfileServicer.m" lineNumber:216 description:@"Improper use. Entitlement required for call"];
}

void sub_1000C289C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCProfileServicer.m" lineNumber:253 description:@"Improper use. No array entitlement demanded from process."];
}

void sub_1000C2910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MCNewWiFiPayloadHandler.m" lineNumber:999 description:{@"MCNewWiFiPayloadHandler's new WiFi service %@ isn't in the new network set", a3}];
}

void sub_1000C2984(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Caught exception %{public}@ while attempting to remove an account.", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1000C2A40(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Caught exception %{public}@ while attempting to remove an account.", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1000C2B10(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Caught exception %{public}@ while attempting to remove an account.", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1000C2BCC(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Caught exception %{public}@ while attempting to remove an account.", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1000C2D14(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Caught exception %{public}@ while attempting to remove an account.", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1000C2DF8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCDNSSettingsPayloadHandler.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"neProfileIngestionHandler"}];
}

void sub_1000C2E74(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCDNSSettingsPayloadHandler.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"payloadBase"}];
}

uint64_t sub_1000C2F04(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v62 = 0;
  sub_1000C0D98();
  v60 = 0;
  __n = 0;
  v8 = sub_1000C0B64();
  if (v8)
  {
    v9 = v8;
    CFNumberGetTypeID();
    v10 = sub_1000C0D8C();
    if (!sub_1000C31F8(v10, v11, v12))
    {
      CFNumberGetTypeID();
      v13 = sub_1000C0D8C();
      if (!sub_1000C31F8(v13, v14, v15))
      {
        CFNumberGetTypeID();
        v16 = sub_1000C0D8C();
        if (!sub_1000C31F8(v16, v17, v18))
        {
          CFNumberGetTypeID();
          v19 = sub_1000C0D8C();
          if (!sub_1000C31F8(v19, @"EscrowPasscodePeriod", v20))
          {
            CFNumberGetTypeID();
            v21 = sub_1000C0D8C();
            if (!sub_1000C31F8(v21, @"EscrowTokenPeriod", v22))
            {
              CFDataGetTypeID();
              v23 = sub_1000C0D8C();
              if (!sub_1000C31F8(v23, v24, v25))
              {
                CFDataGetTypeID();
                v26 = sub_1000C0D8C();
                if (!sub_1000C31F8(v26, v27, v28))
                {
                  CFBooleanGetTypeID();
                  v29 = sub_1000C0D8C();
                  if (!sub_1000C31F8(v29, v30, v31))
                  {
                    CFBooleanGetTypeID();
                    v32 = sub_1000C0D8C();
                    if (!sub_1000C31F8(v32, v33, v34) && !sub_1000C0E64(&v60))
                    {
                      if (!a2)
                      {
                        goto LABEL_24;
                      }

                      v35 = &off_1001369B0;
                      if (!a4)
                      {
                        v35 = &off_1001369B8;
                      }

                      v36 = *v35;
                      if (!sub_1000C34C4())
                      {
LABEL_24:
                        if (!sub_1000C32F4(&v60, &v62, &__n))
                        {
                          sub_1000C0DBC(a1, v45, v47, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, __n);
                          v4 = sub_1000C0D6C(v9, 0x1Eu, v37, 3u, v38, v39, v40, v41, v46, v48);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1000C0D58();
    fprintf(v43, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v44, v49, v50, v51, v52, v53, v54, ":", 1587, "", "");
    v4 = (v4 - 6);
  }

  sub_1000C0DE4(&v60);
  if (v62)
  {
    sub_1000C0DA4(v62, __n);
    free(v62);
  }

  return v4;
}

uint64_t sub_1000C31F8(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    if (CFGetTypeID(value) == a3)
    {
      if (CFNumberGetTypeID() == a3)
      {
        v8 = 0;
        if (!CFNumberGetValue(value, kCFNumberSInt64Type, &v8))
        {
          return 0xFFFFFFFFLL;
        }

        v5 = sub_1000C0DD8();
        if (sub_1000C36D0(v5, v6, v7))
        {
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      if (CFBooleanGetTypeID() == a3)
      {
        CFBooleanGetValue(value);
        sub_1000C0DD8();
        if (sub_1000C35A8())
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (CFDataGetTypeID() != a3)
        {
          return 0xFFFFFFFFLL;
        }

        CFDataGetBytePtr(value);
        CFDataGetLength(value);
        sub_1000C0DD8();
        if (sub_1000C34C4())
        {
          return 0xFFFFFFFFLL;
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000C32F4(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15 = *(v14 + 1);
                v15 += 16;
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, sub_1000C38D4);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v27 = v17;
              v28 = &v17[v16];
              v19 = v8 - 1;
              v20 = &v13[-v9 - 8];
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v24 = *(v20 - 1);
                v23 = *v20;
                v25 = ccder_blob_encode_body();
                v20 = v22;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v27 != v28)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_1000C34C4()
{
  result = sub_1000C0FA0();
  if (v0 && v3 && v4)
  {
    v5 = *(v3 + 1);
    ccder_sizeof();
    v6 = sub_1000C0F54();
    if (sub_1000C0F88(v6))
    {
      sub_1000C0F1C();
      v7 = ccder_blob_encode_body();
      if (v7 && (sub_1000C0F48(v7, v8, v9, v10, v11, v12, v13, v14, v17), ccder_blob_encode_tl()) && (sub_1000C0EA0(), sub_1000C0E90(), sub_1000C0EF8(), sub_1000C0E90(), v15 == v1) && (v16 = sub_1000C0F70()) != 0)
      {
        return sub_1000C0E74(v16);
      }

      else
      {
        sub_1000C0ED8();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_1000C35A8()
{
  result = sub_1000C0FA0();
  if (v0)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v2 + 2;
      v5 = *(v2 + 1);
      ccder_sizeof();
      v6 = sub_1000C0F54();
      v7 = sub_1000C0F88(v6);
      if (v7)
      {
        v8 = v7;
        if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (v9 = v4 + *(v3 + 1), ccder_blob_encode_body(), sub_1000C0ECC(), sub_1000C0F30(), ccder_blob_encode_tl(), sub_1000C0ECC(), v10 == v8) && (v11 = sub_1000C0F70()) != 0)
        {
          return sub_1000C0E74(v11);
        }

        else
        {
          sub_1000C0ED8();
          free(v8);
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        return 4294967279;
      }
    }
  }

  return result;
}

uint64_t sub_1000C36D0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v11 = 8;
  }

  else
  {
    v7 = 9;
    v8 = 48;
    v9 = 1;
    while ((v7 - 2) >= 2)
    {
      v10 = a3 >> v8;
      --v7;
      v8 -= 8;
      if (v6 != v10)
      {
        v9 = v7 - 1;
        goto LABEL_8;
      }
    }

    v7 = 2;
LABEL_8:
    if ((((a3 >> (8 * v9 - 8)) ^ v6) & 0x80) != 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }
  }

  v22 = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v13 = a2 + 2;
    v14 = *(a2 + 1);
    ccder_sizeof();
    v15 = ccder_sizeof();
    v16 = calloc(v15, 1uLL);
    if (v16)
    {
      v17 = v16;
      v18 = v11;
      do
      {
        *(&v22 + v18 - 1) = v3;
        v3 >>= 8;
        --v18;
      }

      while (v18);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (v19 = v13 + *(a2 + 1), ccder_blob_encode_body(), sub_1000C0E90(), sub_1000C0F30(), ccder_blob_encode_tl(), sub_1000C0E90(), v20 == v17) && sub_1000C0F70())
      {
        result = sub_1000C0F3C();
        v21[1] = v17;
        v21[2] = v15;
        *v21 = *a1;
        *a1 = v21;
      }

      else
      {
        memset_s(v17, v15, 0, v15);
        free(v17);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_1000C38D4(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *a1 + *(a1 + 8);
  __s2 = *a2;
  v5 = *a2 + *(a2 + 8);
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v6 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v6, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}