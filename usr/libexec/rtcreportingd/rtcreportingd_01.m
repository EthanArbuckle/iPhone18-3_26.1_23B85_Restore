uint64_t sub_100014714()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 304);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_1000043E4();
  *v5 = v4;

  return _swift_task_switch(sub_100014814, v3, 0);
}

uint64_t sub_100014814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  v13 = *(v12 + 296);

  sub_100001EF0();
  v24 = v14;

  sub_100001D4C();
  sub_100008E44();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

char *sub_1000148D0()
{
  v1 = *(v0 + 15);

  v2 = *(v0 + 17);
  v3 = *(v0 + 18);
  v4 = *(v0 + 21);

  v5 = *(v0 + 23);

  v6 = *(v0 + 25);
  v7 = *(v0 + 27);
  v8 = *(v0 + 29);

  v9 = OBJC_IVAR____TtC13rtcreportingd7Session_creation;
  v10 = type metadata accessor for Date();
  sub_100003C44(v10);
  (*(v11 + 8))(&v0[v9]);
  v12 = *&v0[OBJC_IVAR____TtC13rtcreportingd7Session_realtimeBackend];
  swift_unknownObjectRelease();
  v13 = *&v0[OBJC_IVAR____TtC13rtcreportingd7Session_immediateBackend];
  swift_unknownObjectRelease();
  v14 = *&v0[OBJC_IVAR____TtC13rtcreportingd7Session_eventExtraFieldProvider + 24];
  v15 = *&v0[OBJC_IVAR____TtC13rtcreportingd7Session_eventExtraFieldProvider + 40];
  v16 = *&v0[OBJC_IVAR____TtC13rtcreportingd7Session_eventExtraFieldProvider + 56];
  v17 = *&v0[OBJC_IVAR____TtC13rtcreportingd7Session_eventExtraFieldProvider + 72];
  v18 = *&v0[OBJC_IVAR____TtC13rtcreportingd7Session_eventExtraFieldProvider + 88];

  v19 = *&v0[OBJC_IVAR____TtC13rtcreportingd7Session_parentSessionID + 8];

  v20 = *&v0[OBJC_IVAR____TtC13rtcreportingd7Session_hierarchySessionID + 8];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100014A18()
{
  sub_1000148D0();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_100014A44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v50 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v31;
    v12 = v32;
    v13 = v33;

    sub_100014F64(0, 1, 1, &_swiftEmptyArrayStorage);
    v14 = v34;
    v9 = *(v34 + 16);
    a7 = *(v34 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 16) = v10;
      v38 = (v14 + 32 * v9);
      v38[4] = v7;
      v38[5] = v11;
      v38[6] = v12;
      v38[7] = v13;
      return v14;
    }

LABEL_41:
    sub_100014F64(a7 > 1, v10, 1, v14);
    v14 = v39;
    goto LABEL_38;
  }

  v7 = a4;
  v14 = 4 * v16;
  v48 = &_swiftEmptyArrayStorage;
  v17 = 15;
  while (1)
  {
    v46 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v14)
      {
        v17 = v46;
        goto LABEL_30;
      }

      v18 = String.subscript.getter();
      v12 = v19;
      v49[0] = v18;
      v49[1] = v19;
      v20 = v50(v49);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = String.index(after:)();
    }

    v23 = (v46 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v46 >> 14)
    {
      break;
    }

    v47 = String.subscript.getter();
    v42 = v25;
    v43 = v24;
    v41 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100014F64(0, v48[2] + 1, 1, v48);
      v48 = v29;
    }

    v13 = v48[2];
    v27 = v48[3];
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      sub_100014F64(v27 > 1, v13 + 1, 1, v48);
      v48 = v30;
    }

    v48[2] = v12;
    v28 = &v48[4 * v13];
    v28[4] = v47;
    v28[5] = v43;
    v28[6] = v42;
    v28[7] = v41;
LABEL_20:
    v17 = String.index(after:)();
    if ((v23 & 1) == 0 && v48[2] == a1)
    {
LABEL_30:
      if (v17 >> 14 == v14 && (a2 & 1) != 0)
      {

        return v48;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = String.subscript.getter();
        v11 = v35;
        v12 = v36;
        v13 = v37;

        v14 = v48;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 16);
          a7 = *(v14 + 24);
          goto LABEL_37;
        }
      }

      sub_100014F64(0, *(v14 + 16) + 1, 1, v14);
      v14 = v40;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100014DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_100014E70(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  sub_100001E9C();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_1000228D4(a5, a6);
      v16 = swift_allocObject();
      v17 = j__malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 32);
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = &_swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_100003D10();
  if (!v12)
  {
    sub_100009798();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_100014F94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32 * v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return v3;
}

void sub_100015018(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100015060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100003BC0();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_1000150B0()
{
  sub_1000054BC();
  v2 = sub_100002974();
  sub_100009B4C(v2, v3);
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  sub_1000228D4(&qword_10008EE08, &qword_10006E898);
  v9 = sub_100003CC0();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10))
  {
    v11 = *v1;
    sub_10000C6AC();
    sub_100003BC0();
    sub_100008EB0();
    if (!v13)
    {
      goto LABEL_14;
    }

    v7 = v12;
  }

  if (v8)
  {
    v14 = *(*v1 + 56);
    v15 = *(v14 + 8 * v7);
    *(v14 + 8 * v7) = v0;
    sub_10000CE54();
  }

  else
  {
    v18 = sub_10000BEFC();
    sub_10000D044(v18, v19, v20, v21, v22);
    sub_10000CE54();
  }
}

void sub_100015194()
{
  sub_100007BB0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_100001E9C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1000043B0(v5);
    if (v2)
    {
      sub_1000228D4(&qword_10008E218, &qword_10006CC78);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      sub_10000BBA0(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000511C();
        sub_10005FE74(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_100007A14();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_100003D10();
  if (!v6)
  {
    sub_100009798();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_100015480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100015260, 0, 0);
}

uint64_t sub_1000154A4()
{
  sub_100008E60();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_100003900(v3);
  *v4 = v5;
  v6 = sub_1000043F4(v4);

  return sub_100015480(v6, v7, v8, v9, v10, v2);
}

uint64_t XPCConnection.__deallocating_deinit()
{
  XPCConnection.deinit();
  v0 = sub_100005274();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t XPCConnection.deinit()
{
  xpc_connection_cancel(*(v0 + 16));
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100015C94(v0 + 24);

  return v0;
}

uint64_t sub_1000155B4()
{
  v1 = *(v0 + 40);

  os_unfair_lock_lock(v1 + 6);
  sub_100015C78();
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t *sub_100015624()
{
  v1 = *v0;
  v2 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  sub_100001D80(v2);
  v4 = *(v3 + 64);
  sub_100003EC8();
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  swift_beginAccess();
  v8 = v0[19];
  v10 = v0[16];
  v9 = v0[17];
  v11 = type metadata accessor for TaskPriority();
  sub_1000026BC(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v8;
  v12[5] = v10;
  v12[6] = v9;
  v12[7] = v1;

  sub_10002D48C(0, 0, v7, &unk_10006E0D0, v12);

  v13 = v0[14];

  v14 = v0[17];

  v15 = v0[18];

  v16 = v0[19];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100015798()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100015814(unint64_t result)
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
      type metadata accessor for Client();
      sub_100015CBC(&qword_10008E898);
      do
      {
        v11 = *(v3 + 40);
        v22 = *(*(v3 + 48) + 8 * v6);
        v12 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_15:
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

uint64_t sub_100015A04()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) == 0)
  {
    v19 = v0;
    v6 = *(v1 + 40);
    type metadata accessor for Client();
    sub_100002044(&qword_10008E898);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v7 = *(v1 + 32);
    sub_1000029D4();
    v10 = ~v9;
    while (1)
    {
      v11 = v8 & v10;
      if (((*(v1 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v1 + 48) + 8 * v11);
      sub_100009938();
      sub_100015CBC(&unk_1000902A0);

      v13 = Identifiable<>.id.getter();
      v14 = Identifiable<>.id.getter();

      if (v13 == v14)
      {
        v15 = *v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v19;
        v20 = *v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10004F498();
          v17 = v20;
        }

        v5 = *(*(v17 + 48) + 8 * v11);
        sub_100015814(v11);
        *v19 = v20;
        return v5;
      }

      v8 = v11 + 1;
    }

    return 0;
  }

  if (v1 < 0)
  {
    v2 = *v0;
  }

  v3 = *v0;

  v4 = __CocoaSet.contains(_:)();

  if ((v4 & 1) == 0)
  {

    return 0;
  }

  v5 = sub_10004FE8C();

  return v5;
}

Swift::Int sub_100015BC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100015ECC(&unk_1000902A0, v2, type metadata accessor for Client);
  v3 = Identifiable<>.id.getter();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_100015C4C()
{
  sub_100015624();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100015CBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Client();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100015D00()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100003BC0();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v8 = *(*v1 + 24);
  sub_1000228D4(&unk_10008F3A0, &qword_10006E890);
  sub_100004D70();
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
  v9 = *(*(v12 + 48) + 16 * v5 + 8);

  v10 = *(*(v12 + 56) + 8 * v5);
  _NativeDictionary._delete(at:)();
  *v1 = v12;
  return v10;
}

BOOL sub_100015DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_100015ECC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_100015F14(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v9 = *(v7 + 32);
  sub_1000029D4();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  sub_1000160CC(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

void sub_10001605C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
}

uint64_t sub_100016084(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_1000160CC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10004E7B8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10004F5E8(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_10004F210();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_100016260()
{
  v0 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for EventValue();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.init(cString:)();
  v15 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v15, v3);
  v16 = type metadata accessor for XPCObject();
  result = sub_100002694(v3, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10000B09C(v3);
    result = sub_100002694(v10, 1, v11);
    if (result != 1)
    {
      sub_10000B670();
      sub_1000096D4();
      sub_1000026BC(v8, 0, 1, v11);
      sub_10000B810();
      sub_10000A80C(v14, type metadata accessor for EventValue);
      return 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000164A0()
{
  result = qword_10008F380;
  if (!qword_10008F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F380);
  }

  return result;
}

uint64_t sub_1000164F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008F370, &qword_10006E358);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100016564()
{
  sub_1000054BC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = sub_100003BC0();
  sub_100009B4C(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
  v16 = sub_100003CC0();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v16, v17))
  {
    goto LABEL_5;
  }

  v18 = *v1;
  sub_100007C1C();
  v19 = sub_100003BC0();
  if ((v15 & 1) != (v20 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v19;
LABEL_5:
  v21 = *v1;
  if (v15)
  {
    v22 = *(v21 + 56);
    v23 = type metadata accessor for EventValue();
    sub_100001D80(v23);
    v25 = *(v24 + 72);
    sub_10000FF94();
    sub_100045B58();
    sub_10000CE54();
  }

  else
  {
    sub_10000B9D0(v14, v5, v3, v7, v21);
    sub_10000CE54();
  }
}

uint64_t sub_1000166B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016724()
{
}

uint64_t sub_10001673C()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_10001676C()
{

  return Error.localizedDescription.getter();
}

void sub_100016788(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v65._countAndFlagsBits = a1;
  v65._object = a2;
  v8 = type metadata accessor for JSONEncoder.OutputFormatting();
  v9 = sub_100001EDC(v8);
  v64 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100001EAC();
  v13 = type metadata accessor for String.Encoding();
  v66 = sub_100001EDC(v13);
  v67 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v66);
  sub_100001EAC();
  v19 = v18 - v17;
  v20 = type metadata accessor for Date();
  v21 = sub_100001EDC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_100001EAC();
  v28 = v27 - v26;
  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  if (byte_100095B00 == 1)
  {
    if (qword_10008DDD0 != -1)
    {
      swift_once();
    }

    if (byte_100095B10 == 1)
    {
      v62 = v5;
      v63 = a5;
      _StringGuts.grow(_:)(25);

      v69 = 40;
      v70 = 0xE100000000000000;
      static Date.now.getter();
      v29 = Date.description.getter();
      v31 = v30;
      (*(v23 + 8))(v28, v20);
      v32._countAndFlagsBits = v29;
      v32._object = v31;
      String.append(_:)(v32);

      v33._countAndFlagsBits = 5972009;
      v33._object = 0xE300000000000000;
      String.append(_:)(v33);
      String.append(_:)(v65);
      v34._object = 0x8000000100071820;
      v34._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v34);
      static String.Encoding.utf8.getter();
      v35 = String.data(using:allowLossyConversion:)();
      v37 = v36;
      v38 = *(v67 + 8);
      v38(v19, v66);
      if (v37 >> 60 == 15)
      {

        sub_10002A810();
        swift_allocError();
        sub_100001D34();
      }

      else
      {
        v69 = v35;
        v70 = v37;
        v39 = type metadata accessor for JSONEncoder();
        v40 = *(v39 + 48);
        v41 = *(v39 + 52);
        swift_allocObject();
        JSONEncoder.init()();
        sub_1000228D4(&qword_10008E6B0, &qword_10006DC00);
        v42 = *(v64 + 72);
        v43 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        *(swift_allocObject() + 16) = xmmword_10006CAD0;
        static JSONEncoder.OutputFormatting.prettyPrinted.getter();
        sub_10002C5B4(&qword_10008E6B8, &type metadata accessor for JSONEncoder.OutputFormatting);
        sub_1000228D4(&qword_10008E6C0, &qword_10006DC08);
        sub_10000F978(&qword_10008E6C8, &qword_10008E6C0, &qword_10006DC08);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        dispatch thunk of JSONEncoder.outputFormatting.setter();
        v68[0] = v63;
        sub_10002A864();

        dispatch thunk of JSONEncoder.encode<A>(_:)();
        if (v6)
        {

          sub_100005954(v69, v70);
        }

        else
        {

          sub_1000043D8();
          Data.append(_:)();
          static String.Encoding.utf8.getter();
          v44 = String.data(using:allowLossyConversion:)();
          v46 = v45;
          v38(v19, v66);
          if (v46 >> 60 == 15)
          {
            __break(1u);
          }

          else
          {

            Data.append(_:)();
            sub_100022E50(v44, v46);
            v47 = *(v62 + 120);
            v68[0] = v69;
            v68[1] = v70;
            v48 = v47;
            v49 = sub_100003D28();
            sub_100025CD8(v49, v50);
            sub_10002A8B8();
            NSFileHandle.write<A>(contentsOf:)();
            sub_100005954(v69, v70);

            v51 = *(v62 + 120);
            v68[0] = 0;
            if ([v51 synchronizeAndReturnError:v68])
            {
              v52 = v68[0];
              v53 = sub_100003D28();
              sub_100005954(v53, v54);
              v55 = sub_1000043D8();
              sub_100005954(v55, v56);
            }

            else
            {
              v57 = v68[0];
              _convertNSErrorToError(_:)();

              swift_willThrow();
              v58 = sub_1000043D8();
              sub_100005954(v58, v59);

              v60 = sub_100003D28();
              sub_100005954(v60, v61);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100016DD4()
{
  sub_100002624();
  v1 = v0[7];
  v2 = v0[2];
  v3 = *(v2 + 136);
  v0[10] = v3;
  v4 = *(v3 + 16);
  v0[11] = v4;
  v0[12] = 0;
  v0[13] = 0;

  if (v4)
  {
    if (*(v5 + 16))
    {
      v8 = v0[9];
      v9 = *(v1 + 80);
      sub_1000020A0();
      v5 = sub_100006EAC();
      v10 = qword_100095AF8;
      v0[14] = qword_100095AF8;
      if (v10)
      {
        sub_1000616D4();
        sub_1000020A0();
        sub_100006EAC();
        sub_100009A9C();
        sub_100061634();

        sub_100004D7C();
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  if (!*(*(v2 + 136) + 16))
  {
    v16 = qword_100095AF8;
    v0[18] = qword_100095AF8;
    if (v16)
    {

LABEL_5:
      sub_1000614E8();

      return _swift_task_switch(v5, v6, v7);
    }

LABEL_16:
    __break(1u);
    return _swift_task_switch(v5, v6, v7);
  }

  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[6];

  sub_100001D4C();

  return v14();
}

uint64_t sub_100016F4C()
{
  sub_100002624();
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  sub_100016788(*(v0 + 120), *(v0 + 128), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  *(v0 + 136) = v2;
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);
  if (v2)
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 16);

    v7 = sub_10005E49C;
  }

  else
  {
    v6 = *(v0 + 16);
    v8 = *(v0 + 128);

    v7 = sub_1000172C0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100017018()
{
  sub_100003F58();
  sub_100005464();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  swift_task_alloc();
  sub_100008D5C();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_100010C30;
  sub_100008E70();

  return sub_1000171C4(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1000170E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 32);
  sub_100008DE4((v1 + a1), *(v1 + a1 + 24));
  result = v2 + 8;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10001710C()
{
  v6 = *(v2 + 224);
  v7 = *(v2 + 152);
  *(v0 + 16) = v1;
  v8 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v4;

  return sub_1000385C4(v7, v8);
}

uint64_t sub_100017144()
{
  v2 = *(v0 + 64);

  return sub_10002211C();
}

uint64_t sub_1000171A4()
{
  v2 = v0[50];
  result = v0[51];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v9 = v0[38];
  v10 = v0[35];
  return result;
}

uint64_t sub_1000171C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = *(*(type metadata accessor for SessionConfiguration.BackendHTTP(0) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();
  v10 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v7[7] = v10;
  v11 = *(v10 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return _swift_task_switch(sub_100016DD4, a4, 0);
}

uint64_t sub_1000172C0()
{
  sub_100002624();
  v1 = v0[9];
  sub_100004500();
  v4 = sub_10000A864(v2, v3);
  v7 = v0[13] + 1;
  v0[12] = v0[17];
  v0[13] = v7;
  if (v7 != v0[11])
  {
    if (v7 >= *(v0[10] + 16))
    {
      __break(1u);
    }

    else
    {
      v15 = v0[9];
      v16 = v0[7];
      v17 = *(v16 + 80);
      v18 = *(v16 + 72);
      sub_1000020A0();
      v4 = sub_100006EAC();
      v19 = qword_100095AF8;
      v0[14] = qword_100095AF8;
      if (v19)
      {
        sub_1000616D4();
        sub_1000020A0();
        sub_100006EAC();
        sub_100009A9C();
        sub_100061634();

        sub_100004D7C();
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return _swift_task_switch(v4, v5, v6);
  }

  v8 = v0[10];
  v9 = v0[2];

  if (!*(*(v9 + 136) + 16))
  {
    v20 = qword_100095AF8;
    v0[18] = qword_100095AF8;
    if (v20)
    {

LABEL_11:
      sub_1000614E8();

      return _swift_task_switch(v4, v5, v6);
    }

    goto LABEL_16;
  }

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[6];

  sub_100001D4C();

  return v13();
}

uint64_t sub_100017458()
{
  sub_100004680();
  sub_1000183A8(*(v0 + 144), (v0 + 16));
  *(v0 + 120) = *(v0 + 64);
  sub_1000026E4(v0 + 120, &unk_100090270, &qword_10006D778);
  *(v0 + 104) = *(v0 + 80);
  sub_10000D9BC(v0 + 104);
  *(v0 + 128) = *(v0 + 96);
  sub_1000026E4(v0 + 128, &qword_10008E568, &qword_10006D770);
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 136);
  *v5 = *(v0 + 16);
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
  sub_100001D4C();

  return v6();
}

uint64_t sub_100017530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100017598()
{

  return sub_10002282C();
}

uint64_t sub_1000175B0()
{

  return swift_slowAlloc();
}

uint64_t sub_1000175DC(float a1)
{
  *v1 = a1;
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
}

uint64_t sub_100017640()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (v0)
  {
    v9 = *(v3 + 120);
    v10 = sub_100016754();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    sub_100005284((v3 + 64));
    v13 = *(v3 + 56);
    v14 = *(v3 + 40);
    v15 = *(v3 + 48);
    v16 = *(v3 + 32);
    v17 = *(v3 + 104);
    *v17 = *(v3 + 16);
    *(v17 + 16) = v16;
    *(v17 + 24) = v14;
    *(v17 + 32) = v15;
    *(v17 + 40) = v13;
    sub_100001D4C();

    return v18();
  }
}

void sub_100017780(char *a1, uint64_t a2, char a3)
{
  v7 = ~a3;
  v64 = type metadata accessor for EventValue();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v64);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v7)
  {
    goto LABEL_6;
  }

  if ((a3 & 1) == 0)
  {
    sub_100017ED4();
    goto LABEL_8;
  }

  v12 = sub_100059EF0(a1, a2, *(v3 + 32));
  if (v13 == 255)
  {
    goto LABEL_6;
  }

  a1 = v12;
  if (v13)
  {
    sub_1000260D4(v12, v13);
LABEL_6:
    a1 = &_swiftEmptyArrayStorage;
  }

LABEL_8:
  v14 = *(a1 + 2);
  sub_100017F24();
  v60 = v15;
  v16 = *(a1 + 2);
  if (!v16)
  {
LABEL_75:

    return;
  }

  v17 = 0;
  v18 = a1 + 32;
  v56 = 0x8000000100071720;
  v19 = v16;
  v59 = a1;
  v58 = v16;
  v57 = a1 + 32;
  while (v17 < v19)
  {
    memcpy(__dst, &v18[88 * v17], sizeof(__dst));
    if (__dst[7])
    {
      goto LABEL_29;
    }

    v20 = __dst[1];
    sub_100020478(__dst, v65);

    v62 = sub_100051058(v21);
    v22 = *(v20 + 16);
    if (v22)
    {
      v65[0] = &_swiftEmptyArrayStorage;
      sub_100060BA4(0, v22, 0);
      v23 = v65[0];
      v24 = (v20 + 40);
      do
      {
        v25 = *v24;
        *v11 = *(v24 - 1);
        v11[1] = v25;
        swift_storeEnumTagMultiPayload();
        v65[0] = v23;
        v27 = v23[2];
        v26 = v23[3];

        if (v27 >= v26 >> 1)
        {
          sub_100060BA4(v26 > 1, v27 + 1, 1);
          v23 = v65[0];
        }

        v23[2] = v27 + 1;
        sub_100017530(v11, v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v27, type metadata accessor for EventValue);
        v24 += 2;
        --v22;
      }

      while (v22);
    }

    else
    {
      v23 = &_swiftEmptyArrayStorage;
    }

    v28 = __dst[4];
    v29 = __dst[5];

    v31 = sub_1000182BC(v30);

    v33 = sub_1000182BC(v32);
    v34 = v28 == 0x776F6C6C61 && v29 == 0xE500000000000000;
    if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v35 = &unk_100087E30;
      v36 = &off_1000881C8;
LABEL_25:
      v63 = v36;
      v37 = v33;
      v38 = v31;
      sub_1000204EC(__dst);
      goto LABEL_26;
    }

    v47 = v28 == 0x65766F6D6572 && v29 == 0xE600000000000000;
    if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v35 = &unk_100087EB0;
      v36 = &off_1000881E8;
      goto LABEL_25;
    }

    v48 = v28 == 0x363532616873 && v29 == 0xE600000000000000;
    if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v35 = &unk_100087F30;
      v36 = &off_100088208;
      goto LABEL_25;
    }

    v49 = v28 == 0x73696C6574696877 && v29 == 0xEF7365756C615674;
    if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v35 = &unk_100087FB0;
      v36 = &off_100088228;
      goto LABEL_25;
    }

    v50 = v28 == 0x73696C6B63616C62 && v29 == 0xEF7365756C615674;
    if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v35 = &unk_100088030;
      v36 = &off_100088248;
      goto LABEL_25;
    }

    v51 = v28 == 0xD000000000000018 && v56 == v29;
    if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v35 = &unk_1000880B0;
      v36 = &off_100088268;
      goto LABEL_25;
    }

    v52 = v28 == 0x646E65707061 && v29 == 0xE600000000000000;
    if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v35 = &unk_100088130;
      v36 = &off_100088288;
      goto LABEL_25;
    }

    if (v28 == 0x646E6570657270 && v29 == 0xE700000000000000)
    {
      v35 = &unk_1000881B0;
      v36 = &off_1000882A8;
      goto LABEL_25;
    }

    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000204EC(__dst);
    if ((v54 & 1) == 0)
    {

      a1 = v59;
      v16 = v58;
      v18 = v57;
      goto LABEL_29;
    }

    v37 = v33;
    v38 = v31;
    v35 = &unk_1000881B0;
    v63 = &off_1000882A8;
LABEL_26:
    v39 = v63;
    v40 = v63[1];
    v65[3] = v35;
    v65[4] = v63;
    v61 = sub_100025FDC(v65);
    v41 = v40(v62, v23, v38, v37, v35, v39);
    v67 = v60;
    v42 = *(v60 + 16);
    if (v42 >= *(v60 + 24) >> 1)
    {
      sub_100017F24();
      v60 = v41;
      v67 = v41;
    }

    v43 = *(*(v35 - 1) + 64);
    __chkstk_darwin(v41);
    v45 = &v55 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v45, v61, v35);
    sub_10002603C(v42, v45, &v67, v35, v63);
    sub_100005284(v65);
    a1 = v59;
    v16 = v58;
    v18 = v57;
LABEL_29:
    if (++v17 == v16)
    {
      goto LABEL_75;
    }

    v19 = *(a1 + 2);
  }

  __break(1u);
}

uint64_t sub_100017EE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_100017F24()
{
  sub_100007BB0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_100001E9C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1000043B0(v5);
    if (v2)
    {
      sub_1000228D4(&qword_10008E230, &qword_10006CC90);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      sub_10000BBA0(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000511C();
        sub_10005FD40(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1000228D4(&qword_10008E238, &qword_10006CC98);
    sub_100007A14();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_100003D10();
  if (!v6)
  {
    sub_100009798();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_100018000(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000228D4(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000180FC()
{
  sub_100006F8C();
  if (v4)
  {
    sub_100001D00();
    if (v6 != v7)
    {
      sub_10001171C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000038DC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_100003F30(v2, v5, &qword_10008E228, &qword_10006CC88);
  v9 = sub_100008F24();
  v10 = type metadata accessor for SessionConfiguration.Backend(v9);
  sub_10000B6C4(v10);
  v12 = *(v11 + 80);
  sub_1000170D4();
  if (v1)
  {
    v14 = sub_10000CD40(v13);
    sub_10005FD80(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000282C();
  }
}

uint64_t sub_1000181C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018228(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void))
{
  v6 = *(a1 + 16);
  v7 = Set.init(minimumCapacity:)();
  v13 = v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 32;
    do
    {
      a4(&v12, *(a1 + v9));
      v9 += 8;
      --v8;
    }

    while (v8);

    return v13;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

BOOL sub_1000182F8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_1000183A8(void *a1@<X0>, void *a2@<X8>)
{
  v178 = a2;
  v4 = type metadata accessor for SessionConfiguration.Backend(0);
  v171 = *(v4 - 8);
  v5 = *(v171 + 64);
  __chkstk_darwin(v4 - 8);
  sub_100001EAC();
  v170 = v7 - v6;
  v169 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v8 = *(*(v169 - 8) + 64);
  __chkstk_darwin(v169);
  sub_100001EAC();
  v175 = (v10 - v9);
  v11 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v192 = &v166 - v13;
  v195 = type metadata accessor for URL();
  v14 = sub_100001EDC(v195);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10000286C();
  v174 = v19 - v20;
  __chkstk_darwin(v21);
  v173 = &v166 - v22;
  v199 = type metadata accessor for Locale();
  v23 = sub_100001EDC(v199);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_10000286C();
  v194 = (v28 - v29);
  __chkstk_darwin(v30);
  v196 = &v166 - v31;
  v32 = a1[3];
  v33 = a1[4];
  sub_100008DE4(a1, v32);
  v200 = (*(v33 + 16))(v32, v33);
  v35 = v34;
  v36 = a1[3];
  v37 = a1[4];
  v193 = a1;
  sub_100008DE4(a1, v36);
  v208 = (*(v37 + 24))(v36, v37);
  v179 = v2;
  v39 = *v2;
  v40 = *(*v2 + 64);
  v186 = *v2 + 64;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v40;
  v44 = (v41 + 63) >> 6;
  v198 = v25 + 8;
  v172 = (v16 + 32);
  v167 = (v16 + 8);
  v168 = (v16 + 16);
  v45 = v38;

  v46 = v43;
  v47 = v44;
  v48 = 0;
  v207 = 0;
  v180 = 2;
  *&v49 = 136446466;
  v176 = v49;
  *&v49 = 136315138;
  v182 = v49;
  v181 = &_swiftEmptyArrayStorage;
  v197 = v35;
  v206 = v45;
  v183 = v44;
  v184 = v39;
  while (v46)
  {
LABEL_9:
    v51 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v52 = v51 | (v48 << 6);
    v53 = (*(v39 + 56) + 24 * v52);
    v54 = v53[1];
    if (v54)
    {
      v55 = v53[2];
      v204 = *(v55 + 16);
      if (v204)
      {
        v190 = v48;
        v191 = v46;
        v56 = (*(v39 + 48) + 16 * v52);
        v57 = v56[1];
        v177 = *v56;
        v58 = *v53;
        v203 = v55 + 32;
        v187 = v57;

        v188 = v58;
        v189 = v54;
        sub_10001BBF0(v58, v54);
        v59 = 0;
        v205 = v55;
        while (1)
        {
          if (v59 >= *(v55 + 16))
          {
            goto LABEL_108;
          }

          memcpy(v215, (v203 + 240 * v59), 0xE9uLL);
          if (!v215[1])
          {
            break;
          }

          v211 = v215[0];
          v212 = v215[1];
          v209 = 44;
          v210 = 0xE100000000000000;
          sub_10001F54C(v215, &v213);
          sub_10001F5A8();
          v60 = StringProtocol.components<A>(separatedBy:)();
          v213 = v200;
          v214 = v35;
          __chkstk_darwin(v60);
          sub_100009AE0(&v166);
          v62 = sub_1000182F8(sub_10001F5FC, v61, v60);
          sub_1000038F4();

          if (v62)
          {
            goto LABEL_17;
          }

          sub_100019404(v215);
LABEL_70:
          if (++v59 == v204)
          {

            sub_100017EE0(v188, v189);
            goto LABEL_73;
          }
        }

        sub_10001F54C(v215, &v213);
LABEL_17:
        if (v215[3])
        {
          v213 = v215[2];
          v214 = v215[3];
          v211 = 44;
          v212 = 0xE100000000000000;
          sub_10001F5A8();
          v63 = StringProtocol.components<A>(separatedBy:)();
          v64 = (v63 + 40);
          v65 = -*(v63 + 16);
          v66 = -1;
          while (1)
          {
            if (v65 + v66 == -1)
            {

              sub_100019404(v215);
              goto LABEL_69;
            }

            if (++v66 >= *(v63 + 16))
            {
              break;
            }

            v67 = v64 + 2;
            v69 = *(v64 - 1);
            v68 = *v64;

            sub_10000CD50();
            LOBYTE(v69) = sub_10001F618();

            v64 = v67;
            if (v69)
            {

              goto LABEL_23;
            }
          }

          __break(1u);
          goto LABEL_107;
        }

LABEL_23:
        v71 = (v215[27] & 1) == 0 && LOBYTE(v215[27]) != 2;
        if ((DiagnosticLogSubmissionEnabled() & 1) == 0 && !v71)
        {
          sub_100019404(v215);

          if (qword_10008DD18 != -1)
          {
            sub_1000097C8();
            swift_once();
          }

          v123 = type metadata accessor for Logger();
          sub_1000050E4(v123, qword_100095990);

          v124 = Logger.logObject.getter();
          v125 = static os_log_type_t.debug.getter();

          v126 = os_log_type_enabled(v124, v125);
          v39 = v184;
          if (v126)
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            v129 = sub_10000287C(v128);
            *(v127 + 14) = sub_100009004(v129);
            v130 = v125;
            v131 = v124;
            v132 = "skipping %{public}s:%{public}s: dnu disabled";
            goto LABEL_82;
          }

LABEL_83:

          sub_100017EE0(v188, v189);
          goto LABEL_84;
        }

        v72 = LOBYTE(v215[29]);
        if (sub_10000CB08() && v72 != 2 && (v72 & 1) == 0)
        {
          sub_100019404(v215);

          if (qword_10008DD18 != -1)
          {
            sub_1000097C8();
            swift_once();
          }

          v133 = type metadata accessor for Logger();
          sub_1000050E4(v133, qword_100095990);

          v124 = Logger.logObject.getter();
          v134 = static os_log_type_t.debug.getter();

          v135 = os_log_type_enabled(v124, v134);
          v39 = v184;
          if (v135)
          {
            v127 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            v137 = sub_10000287C(v136);
            *(v127 + 14) = sub_100009004(v137);
            v130 = v134;
            v131 = v124;
            v132 = "skipping %{public}s:%{public}s: PE disabled";
LABEL_82:
            _os_log_impl(&_mh_execute_header, v131, v130, v132, v127, 0x16u);
            swift_arrayDestroy();
            sub_100001D1C();
            sub_100001D1C();
          }

          goto LABEL_83;
        }

        v73 = String._bridgeToObjectiveC()();
        v74 = MGCopyAnswer();

        if (!v74)
        {
          goto LABEL_110;
        }

        v75 = v215[13];
        type metadata accessor for CFString(0);
        v76 = swift_dynamicCastUnknownClassUnconditional();
        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v78;

        v81 = v207;
        if (v75 && (v213 = v77, v214 = v79, __chkstk_darwin(v80), sub_100009AE0(&v166), , v82 = sub_1000182F8(sub_10001F5FC, (&v166 - 4), v75), v80 = , !v82))
        {
          sub_1000038F4();
        }

        else
        {
          v83 = v215[12];
          if (v215[12])
          {
            v213 = v77;
            v214 = v79;
            __chkstk_darwin(v80);
            sub_100009AE0(&v166);

            v84 = sub_1000182F8(sub_10001F5FC, (&v166 - 4), v83);

            v207 = v81;
            if (v84)
            {
LABEL_55:
              sub_100019404(v215);
LABEL_69:
              v55 = v205;
              goto LABEL_70;
            }
          }

          else
          {
            sub_1000038F4();
          }

          v85 = v215[26];
          if (!v215[26])
          {
LABEL_47:
            v93 = v215[28];
            v94 = v194;
            static Locale.current.getter();
            v95 = v94;
            v202 = Locale.regionCode.getter();
            v96 = sub_100007BBC();
            v98 = v97(v96);
            v185 = v71;
            if (v94)
            {
              v99 = v207;
              if (v93)
              {
                v100 = 0;
                v201 = *(v93 + 16);
                v101 = (v93 + 40);
                while (v201 != v100)
                {
                  if (v100 >= *(v93 + 16))
                  {
                    goto LABEL_109;
                  }

                  v102 = *(v101 - 1);
                  v103 = *v101;
                  v213 = v202;
                  v214 = v95;
                  __chkstk_darwin(v98);
                  sub_100009AE0(&v166);
                  swift_bridgeObjectRetain_n();
                  v104 = sub_1000182F8(sub_100014E24, (&v166 - 4), v102);

                  if (v104)
                  {

                    v35 = v197;
                    goto LABEL_61;
                  }

                  ++v100;
                  v101 += 2;
                }
              }

              v35 = v197;
            }

            else
            {
              v35 = v197;
              v99 = v207;
            }

            if (LOBYTE(v215[7]))
            {
              v103 = 1.0;
            }

            else
            {
              v103 = *&v215[6];
            }

LABEL_61:
            v207 = v99;
            v105 = v193[4];
            sub_100008DE4(v193, v193[3]);
            v106 = *(v105 + 48);
            v107 = sub_100003D1C();
            if (v108(v107) >= v103)
            {

              sub_100019404(v215);
              sub_100017EE0(v188, v189);
LABEL_73:
              v39 = v184;
LABEL_84:
              v47 = v183;
              v48 = v190;
              v46 = v191;
              continue;
            }

            LODWORD(v201) = BYTE1(v215[25]);
            v109 = v215[20];
            v110 = v215[21];
            v111 = v215[22];
            v112 = BYTE1(v215[19]);
            v113 = v215[17];
            v114 = v215[16];
            v115 = v215[5];
            v116 = v192;
            v202 = v215[4];
            URL.init(string:)();
            if (sub_100002694(v116, 1, v195) != 1)
            {
              v204 = v114;
              v138 = v173;
              v139 = v116;
              v140 = v195;
              v141 = *v172;
              (*v172)(v173, v139, v195);
              if (v112 == 2)
              {
                v142 = v180;
              }

              else
              {
                v142 = v112 & 1;
              }

              v180 = v142;
              sub_100017780(v109, v110, v111);
              v144 = v143;
              (*v168)(v174, v138, v140);
              if (v201 == 2)
              {
                v145 = 0;
                v146 = v170;
                v147 = v113;
                if (!v113)
                {
                  v148 = &_swiftEmptyArrayStorage;
                  goto LABEL_96;
                }

LABEL_94:
                v149 = v141;
                v148 = v147;
              }

              else
              {
                v145 = (v201 & 1) == 0;
                v147 = v113;
                if (v113)
                {
                  v146 = v170;
                  goto LABEL_94;
                }

                v148 = &_swiftEmptyArrayStorage;
                v146 = v170;
LABEL_96:
                v149 = v141;
              }

              v150 = sub_1000182BC(v148);
              v151 = v204;
              if (v204)
              {
              }

              else
              {
                v151 = &_swiftEmptyArrayStorage;
              }

              sub_100019404(v215);
              v152 = sub_1000182BC(v151);
              v153 = v174;
              v154 = v175;
              v155 = v187;
              *v175 = v177;
              *(v154 + 1) = v155;
              v154[2] = v103;
              v156 = v169;
              v149(v154 + *(v169 + 24), v153, v195);
              *(v154 + v156[7]) = v144;
              *(v154 + v156[8]) = v145;
              *(v154 + v156[9]) = v150;
              *(v154 + v156[10]) = v152;
              *(v154 + v156[11]) = v185;
              sub_1000181C4(v154, v146);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v159 = v181[2];
                sub_1000180FC();
                v181 = v160;
              }

              v35 = v197;
              v39 = v184;
              v157 = v181[2];
              if (v157 >= v181[3] >> 1)
              {
                sub_1000180FC();
                v181 = v161;
              }

              sub_100017EE0(v188, v189);
              sub_10001969C(v175);
              (*v167)(v173, v195);
              v158 = v181;
              v181[2] = v157 + 1;
              sub_100017530(v146, v158 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v157, type metadata accessor for SessionConfiguration.Backend);
              goto LABEL_84;
            }

            sub_100025F74(v116);
            if (qword_10008DD18 != -1)
            {
              sub_1000097C8();
              swift_once();
            }

            v117 = type metadata accessor for Logger();
            sub_1000050E4(v117, qword_100095990);
            sub_10001F54C(v215, &v213);
            v118 = Logger.logObject.getter();
            v119 = static os_log_type_t.error.getter();
            sub_100019404(v215);
            if (os_log_type_enabled(v118, v119))
            {
              v120 = swift_slowAlloc();
              v121 = swift_slowAlloc();
              v213 = v121;
              *v120 = v182;

              sub_100019404(v215);
              v122 = sub_1000053A0(v202, v115, &v213);

              *(v120 + 4) = v122;
              _os_log_impl(&_mh_execute_header, v118, v119, "invalid URL %s", v120, 0xCu);
              sub_100005284(v121);
              sub_100001D1C();
              sub_100001D1C();
            }

            else
            {

              sub_100019404(v215);
            }

            v35 = v197;
            goto LABEL_69;
          }

          v86 = v196;
          static Locale.current.getter();
          v87 = Locale.regionCode.getter();
          v88 = sub_100007BBC();
          v90 = v89(v88);
          if (v86)
          {
            v213 = v87;
            v214 = v86;
            __chkstk_darwin(v90);
            sub_100009AE0(&v166);
            v92 = sub_1000182F8(sub_10001F5FC, v91, v85);
            sub_1000038F4();

            if (!v92)
            {
              goto LABEL_55;
            }

            goto LABEL_47;
          }
        }

        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v50 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v50 >= v47)
    {

      v163 = v179[2];
      v162 = v179[3];

      v165 = v178;
      *v178 = v181;
      v165[1] = &_swiftEmptyArrayStorage;
      *(v165 + 16) = 0;
      v165[3] = v163;
      v165[4] = v164;
      *(v165 + 40) = v180;
      return;
    }

    v46 = *(v186 + 8 * v50);
    ++v48;
    if (v46)
    {
      v48 = v50;
      goto LABEL_9;
    }
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
}

uint64_t sub_100019458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_100019478(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_1000194D0(void *a1, int64_t a2, char a3)
{
  result = sub_100019510(a1, a2, a3, *v3, &qword_10008FD78, &qword_100070068, &unk_10008FD80, &qword_100070070);
  *v3 = result;
  return result;
}

void *sub_100019510(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_1000228D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 8);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || &a4[v14 + 4] <= v16 + 4)
    {
      v19 = sub_1000132F8();
      memmove(v19, v20, v21);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000228D4(a7, a8);
    sub_1000132F8();
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_100019638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.Backend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001969C(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000196F8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_100019C80(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))), &qword_10008F8B0, &qword_10006FBB8);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10001980C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_19:
    v36 = 0;
    v21 = 0;
    v22 = 1 << *(a3 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(a3 + 56);
    v25 = (v22 + 63) >> 6;
LABEL_23:
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_30:
      v29 = v26 | (v21 << 6);
      v30 = *(*(a3 + 48) + 8 * v29);
      v31 = *(a4 + 40);
      result = static Hasher._hash(seed:_:)();
      v32 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v33 = result & v32;
        if (((*(a4 + 56 + (((result & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v32)) & 1) == 0)
        {
          break;
        }

        result = v33 + 1;
        if (*(*(a4 + 48) + 8 * v33) == v30)
        {
          *(v35 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
          v20 = __OFADD__(v36++, 1);
          if (!v20)
          {
            goto LABEL_23;
          }

          __break(1u);
          goto LABEL_36;
        }
      }
    }

    v27 = v21;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v21 >= v25)
      {
        goto LABEL_36;
      }

      v28 = *(a3 + 56 + 8 * v21);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_30;
      }
    }
  }

  else
  {
    v36 = 0;
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
LABEL_6:
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = *(*(a4 + 48) + 8 * (v11 | (v6 << 6)));
      v15 = *(a3 + 40);
      result = static Hasher._hash(seed:_:)();
      v16 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v17 = result & v16;
        v18 = (result & v16) >> 6;
        v19 = 1 << (result & v16);
        if ((v19 & *(a3 + 56 + 8 * v18)) == 0)
        {
          break;
        }

        result = v17 + 1;
        if (*(*(a3 + 48) + 8 * v17) == v14)
        {
          v35[v18] |= v19;
          v20 = __OFADD__(v36++, 1);
          if (!v20)
          {
            goto LABEL_6;
          }

          __break(1u);
          goto LABEL_19;
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
LABEL_36:

        return sub_100019A9C(v35, a2, v36, a3);
      }

      v13 = *(a4 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100019A9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000228D4(&qword_10008F8B0, &qword_10006FBB8);
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
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = v9[5];
    result = static Hasher._hash(seed:_:)();
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_100019C80(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = *v4;
  v11 = *(v10 + 40);
  v12 = static Hasher._hash(seed:_:)();
  v13 = ~(-1 << *(v10 + 32));
  while (1)
  {
    v14 = v12 & v13;
    v15 = (1 << (v12 & v13)) & *(v10 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v15)
    {
      break;
    }

    if (*(*(v10 + 48) + 8 * v14) == a2)
    {
      goto LABEL_6;
    }

    v12 = v14 + 1;
  }

  v16 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  sub_10004EF28(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4);
  *v7 = v19;
LABEL_6:
  result = v15 == 0;
  *a1 = a2;
  return result;
}

void sub_100019D78(Swift::String a1)
{

  String.append(_:)(a1);
}

uint64_t sub_100019D90(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10006FE20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_100019DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100019E64(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_1000228D4(&unk_100090280, &qword_1000709F8), sub_100003F24(), v2 = static _SetStorage.allocate(capacity:)(), v3 = v2, (v27 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v25 = v1;
    v26 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v26 + 8 * v4++);
      v7 = v3[5];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v28 = v6;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      sub_100005B84();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = *(v5 + 8 * v12);
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        v15 = *(v3[6] + 8 * v11);
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

          goto LABEL_17;
        }

        sub_1000680A8();
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_17;
        }

        v8 = v11 + 1;
      }

      *(v5 + 8 * v12) = v14 | v13;
      *(v3[6] + 8 * v11) = v28;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v3[2] = v24;
LABEL_17:
      v1 = v25;
      if (v4 == v27)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_10001A058()
{
  if (qword_10008DDC8 != -1)
  {
    swift_once();
  }

  v0 = qword_100095B08;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 integerForKey:v1];

  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = sub_1000244F8(v2);
  if (v3 == 4)
  {
    if (qword_10008DD18 != -1)
    {
      sub_1000097C8();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000050E4(v4, qword_100095990);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v5, v6, "invalid environmentType override from defaults: %{public}ld", v7, 0xCu);
      sub_100001D1C();
    }

LABEL_10:
    if (qword_10008DDC0 != -1)
    {
      sub_100001EBC();
    }

    if (byte_100095B00)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  v8 = v3;
  if (qword_10008DD18 != -1)
  {
    sub_1000097C8();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000050E4(v9, qword_100095990);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446466;
    v14 = String.init<A>(describing:)();
    v16 = sub_1000053A0(v14, v15, &v18);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2050;
    *(v12 + 14) = v2;
    _os_log_impl(&_mh_execute_header, v10, v11, "overriding environmentType to %{public}s (%{public}ld) from defaults", v12, 0x16u);
    sub_100005284(v13);
    sub_100001D1C();
    sub_100001D1C();
  }

  return v8;
}

uint64_t sub_10001A320@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10001ABB8();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:format:)();
  if (v2)
  {

    v8 = sub_10000CD50();
    return sub_100005954(v8, v9);
  }

  else
  {
    v11 = v22;
    v12 = v24;
    v13 = sub_10001F378(a1, v25);
    if (!v13)
    {
      v13 = Dictionary.init(dictionaryLiteral:)();
    }

    v14 = v13;
    if (v23)
    {
      v11 = 86400;
    }

    if (v24)
    {

      v15 = v21;

      v16 = sub_10000CD50();
      sub_100005954(v16, v17);
    }

    else
    {
      v15 = v21;

      v12 = Dictionary.init(dictionaryLiteral:)();

      v18 = sub_10000CD50();
      sub_100005954(v18, v19);
    }

    *a2 = v14;
    *(a2 + 8) = v11;
    *(a2 + 16) = v20;
    *(a2 + 24) = v15;
    *(a2 + 32) = v12;
  }

  return result;
}

uint64_t sub_10001A4EC()
{
  *(v3 - 104) = v0;
  v4 = *(v1 + 8);
  return v2;
}

uint64_t sub_10001A508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A550@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000228D4(&qword_10008E558, &qword_10006D768);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  sub_100008DE4(a1, a1[3]);
  sub_10001DD84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005284(a1);
  }

  v50 = 4;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v41 = v11;
  v49 = 5;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = v13;
  sub_1000228D4(&qword_10008E568, &qword_10006D770);
  v48 = 6;
  sub_10001C654(&qword_10008E570, &qword_10008E568, &qword_10006D770, sub_100026680);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v36 = v46;
  v37 = v6;
  v38 = v5;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = *(v15 + 16);
  v35 = v15;
  if (v16)
  {
    v17 = (v15 + 32);
    v18 = _swiftEmptyArrayStorage;
    v43 = a2;
    while (1)
    {
      v19 = *v17;
      v44 = v17 + 1;
      v45 = v18;
      v20 = 1;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      switch(v19)
      {
        case 1:
          v22 = 0;
          v21 = 1;
          v23 = 1;
          goto LABEL_12;
        case 2:
          v21 = 0;
          v22 = 1;
          v23 = 1;
          goto LABEL_12;
        case 3:
          v21 = 0;
          v22 = 0;
          v20 = 0;
          v23 = 0;
          goto LABEL_12;
        case 4:
          goto LABEL_12;
        case 5:
          v21 = 0;
          v22 = 0;
          v23 = 1;
          goto LABEL_12;
        case 6:
          v21 = 0;
          v22 = 0;
          v23 = 1;
LABEL_12:
          v42 = v23;
          v47 = v20;
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
          LOBYTE(v19) = (v24 & 1) == 0;
          if (v24 & 1) != 0 || (v21)
          {
            goto LABEL_24;
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
          LOBYTE(v19) = (v25 & 1) != 0 ? 1 : 2;
          if ((v25 | v22))
          {
            goto LABEL_24;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            LOBYTE(v19) = 2;
LABEL_24:

            a2 = v43;
            v18 = v45;
            goto LABEL_25;
          }

          if ((v47 | v42) != 1)
          {
            LOBYTE(v19) = 3;
            goto LABEL_24;
          }

          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v18 = v45;
          if ((v26 & 1) == 0)
          {
            a2 = v43;
            goto LABEL_30;
          }

          LOBYTE(v19) = 3;
          a2 = v43;
LABEL_25:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = v18[2];
            sub_10001E0C8();
            v18 = v29;
          }

          v27 = v18[2];
          if (v27 >= v18[3] >> 1)
          {
            sub_10001E0C8();
            v18 = v30;
          }

          v18[2] = v27 + 1;
          *(v18 + v27 + 32) = v19;
LABEL_30:
          v17 = v44;
          if (!--v16)
          {
            goto LABEL_34;
          }

          break;
        default:
          goto LABEL_24;
      }
    }
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_34:

  __chkstk_darwin(v31);
  *(&v35 - 2) = v9;
  v32 = sub_10001C920(sub_10001E184, (&v35 - 4), v18);

  v33 = sub_10001E740(v32);
  (*(v37 + 8))(v9, v38);
  result = sub_100005284(a1);
  v34 = v40;
  *a2 = v41;
  *(a2 + 8) = v34;
  BYTE4(v34) = BYTE4(v39);
  *(a2 + 16) = v39;
  *(a2 + 20) = BYTE4(v34) & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = v33;
  return result;
}

double sub_10001AB70@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001A550(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_10001ABB8()
{
  result = qword_10008E4F8;
  if (!qword_10008E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E4F8);
  }

  return result;
}

uint64_t sub_10001AC0C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return sub_100001F2C(sub_10001AC2C, v2);
}

uint64_t sub_10001AC2C()
{
  v1 = v0[18];
  v2 = v1[3];
  v3 = v1[4];
  sub_100008DE4(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  sub_10000DD08(v4, v5);
  v7 = v6;

  v0[20] = v7;
  if (v7)
  {
    v8 = *(v0[19] + 128);
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_10001BA98;

    return sub_10001ADD8();
  }

  else
  {
    v11 = v0[17];
    *v11 = &_swiftEmptyArrayStorage;
    *(v11 + 8) = &_swiftEmptyArrayStorage;
    *(v11 + 16) = 0;
    *(v11 + 24) = 1701736302;
    *(v11 + 32) = 0xE400000000000000;
    *(v11 + 40) = 2;
    sub_100001D4C();

    return v12();
  }
}

uint64_t sub_10001AD88()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return sub_100004EA4();
}

uint64_t sub_10001ADD8()
{
  sub_100002624();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v5 = sub_1000228D4(&unk_100090260, &qword_10006DC48);
  sub_100001D80(v5);
  v7 = *(v6 + 64);
  v1[35] = sub_100003D60();
  v8 = type metadata accessor for URLResourceValues();
  v1[36] = v8;
  sub_10000392C(v8);
  v1[37] = v9;
  v11 = *(v10 + 64);
  v1[38] = sub_100003D60();
  v12 = type metadata accessor for Date();
  v1[39] = v12;
  sub_10000392C(v12);
  v1[40] = v13;
  v15 = *(v14 + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v16 = type metadata accessor for URL();
  v1[44] = v16;
  sub_10000392C(v16);
  v1[45] = v17;
  v19 = *(v18 + 64);
  v1[46] = sub_100003D60();
  v20 = sub_1000228D4(&unk_10008F390, &qword_10006EED0);
  sub_100001D80(v20);
  v22 = *(v21 + 64) + 15;
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v23 = type metadata accessor for CachedStorebag(0);
  v1[49] = v23;
  sub_100001D80(v23);
  v25 = *(v24 + 64) + 15;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();

  return _swift_task_switch(sub_10001B018, v0, 0);
}

uint64_t sub_10001B018()
{
  v119 = v0;
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  v9 = *(v0 + 256);
  sub_10000EF4C();
  if (sub_100002694(v6, 1, v5) != 1)
  {
    v16 = *(v0 + 408);
    sub_10001C114(*(v0 + 384), v16);
    v117 = *(v16 + 8);
    v17 = *(v16 + 24);
    v114 = *(v16 + 16);
    v115 = *v16;
    v18 = *(v16 + 32);

    v113 = v17;

    v112 = v18;

    sub_1000099D0();
    sub_10001BA40(v16, v19);
LABEL_5:
    v21 = *(v0 + 400);
    v20 = *(v0 + 408);
    v23 = *(v0 + 376);
    v22 = *(v0 + 384);
    v24 = *(v0 + 368);
    v26 = *(v0 + 336);
    v25 = *(v0 + 344);
    v27 = *(v0 + 328);
    v28 = *(v0 + 304);
    v110 = *(v0 + 280);
    v29 = *(v0 + 248);

    *v29 = v115;
    *(v29 + 8) = v117;
    *(v29 + 16) = v114;
    *(v29 + 24) = v113;
    *(v29 + 32) = v112;
    sub_100001D4C();
    goto LABEL_6;
  }

  v10 = *(v0 + 368);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v13 = *(v0 + 256);
  sub_100005000(*(v0 + 384), &unk_10008F390, &qword_10006EED0);
  sub_100005394();
  sub_10000F2FC();
  v14 = URL.checkResourceIsReachable()();
  if (v15)
  {

LABEL_11:
    *(v0 + 120) = &unk_100086700;
    *(v0 + 128) = &off_100086940;
    v36 = swift_task_alloc();
    *(v0 + 416) = v36;
    *v36 = v0;
    v36[1] = sub_100065348;
    v37 = *(v0 + 264);
    v38 = *(v0 + 272);
    v39 = *(v0 + 256);
    sub_100017624();

    return sub_1000661E8();
  }

  if (!v14)
  {
    goto LABEL_11;
  }

  v32 = *(v0 + 368);
  v33 = *(v0 + 304);
  sub_1000228D4(&qword_10008E760, &qword_10006DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 32) = NSURLContentModificationDateKey;
  v35 = NSURLContentModificationDateKey;
  sub_100019E64(inited);
  URL.resourceValues(forKeys:)();
  sub_100068150();
  URLResourceValues.contentModificationDate.getter();
  v41 = sub_10000B798();
  v42(v41, v1);
  result = sub_100002694(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v44 = sub_100012360();
  v45(v44);
  v46 = Data.init(contentsOf:options:)();
  v48 = v47;
  v49 = sub_10001A058();
  sub_100006F6C(v49);
  sub_100011D18(v53);
  static Date.now.getter();
  sub_10000534C();
  static Date.< infix(_:_:)();
  v54 = sub_100008FBC();
  v3(v54);
  if ((v46 & 1) == 0)
  {
    v117 = v1;
    v111 = v3;
    v77 = *(v0 + 392);
    v76 = *(v0 + 400);
    v78 = *(v0 + 376);
    v80 = *(v0 + 264);
    v79 = *(v0 + 272);
    v81 = *(v0 + 56);
    v82 = *(v0 + 80);
    v114 = *(v0 + 72);
    v116 = *(v0 + 256);
    v83 = *(v0 + 88);
    (*(*(v0 + 320) + 16))(v76 + *(v77 + 20), *(v0 + 336), *(v0 + 312));
    v84 = *(v0 + 88);
    v85 = *(v0 + 72);
    *v76 = *(v0 + 56);
    *(v76 + 16) = v85;
    *(v76 + 32) = v84;
    sub_10000525C();
    sub_10001B9E0(v76, v78, v86);
    sub_1000026BC(v78, 0, 1, v77);
    sub_10000277C();

    v113 = v82;

    sub_10001F3E0();
    swift_endAccess();
    if (qword_10008DDF8 != -1)
    {
      sub_1000020EC();
    }

    v112 = v83;
    v115 = v81;
    v87 = *(v0 + 264);
    v88 = type metadata accessor for Logger();
    sub_1000050E4(v88, qword_100095B38);

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.debug.getter();

    v91 = os_log_type_enabled(v89, v90);
    v92 = *(v0 + 400);
    v93 = *(v0 + 360);
    v95 = *(v0 + 344);
    v94 = *(v0 + 352);
    v109 = *(v0 + 336);
    v96 = *(v0 + 312);
    if (v91)
    {
      v106 = *(v0 + 264);
      v108 = *(v0 + 368);
      v97 = *(v0 + 256);
      v107 = *(v0 + 352);
      v98 = sub_100004D20();
      v99 = sub_100004F18();
      sub_1000680F0(v99);
      *v98 = 136446210;
      *(v98 + 4) = sub_1000053A0(v97, v106, &v118);
      _os_log_impl(&_mh_execute_header, v89, v90, "storing storebag %{public}s in cache", v98, 0xCu);
      sub_10000393C();
      sub_100001D1C();

      sub_1000099D0();
      sub_10001BA40(v92, v100);
      (v111)(v109, v96);
      (v111)(v95, v96);
      (*(v93 + 8))(v108, v107);
    }

    else
    {

      sub_1000099D0();
      sub_10001BA40(v92, v102);
      (v111)(v109, v96);
      v103 = sub_1000132F8();
      v111(v103);
      v104 = sub_10000B798();
      v105(v104, v94);
    }

    goto LABEL_5;
  }

  *(v0 + 216) = *(v0 + 56);
  sub_100005000(v0 + 216, &unk_100090270, &qword_10006D778);
  *(v0 + 200) = *(v0 + 72);
  sub_10000D9BC(v0 + 200);
  *(v0 + 224) = *(v0 + 88);
  sub_100005000(v0 + 224, &qword_10008E568, &qword_10006D770);
  if (qword_10008DDF8 != -1)
  {
    sub_1000020EC();
  }

  v55 = *(v0 + 264);
  v56 = type metadata accessor for Logger();
  sub_1000050E4(v56, qword_100095B38);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v48 = *(v0 + 256);
    v59 = *(v0 + 264);
    v60 = sub_100004D20();
    v61 = sub_100004F18();
    sub_1000680F0(v61);
    *v60 = 136446210;
    v62 = sub_100005394();
    *(v60 + 4) = sub_1000053A0(v62, v63, v64);
    sub_100038750(&_mh_execute_header, v65, v66, "removing expired storebag %{public}s");
    sub_10000393C();
    sub_100001D1C();
  }

  v67 = *(v0 + 368);
  v68 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v69);
  v71 = v70;
  *(v0 + 240) = 0;
  v72 = [v68 removeItemAtURL:v70 error:v0 + 240];

  if (!v72)
  {
    v101 = sub_100005328();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (v3)(v48, v4);
    (v3)(v2, v4);
    v68[1]();
    v51 = *(v0 + 400);
    v50 = *(v0 + 408);
    sub_100004518();
    v52 = *(v0 + 280);

    sub_100001D4C();
LABEL_6:
    sub_100017624();

    __asm { BRAA            X1, X16 }
  }

  v73 = *(v0 + 240);
  v74 = swift_task_alloc();
  *(v0 + 448) = v74;
  *v74 = v0;
  sub_100002A38(v74);
  sub_100017624();

  return sub_10001ADD8();
}

uint64_t sub_10001B9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100003C44(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10001BA40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100003C44(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10001BA98()
{
  v2 = *v1;
  sub_100001D58();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *(v4 + 160);
  v7 = *v1;
  sub_100001D58();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v2 + 152);

    return _swift_task_switch(sub_100017458, v11, 0);
  }
}

uint64_t sub_10001BBF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10001BC34()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return sub_100004EA4();
}

uint64_t sub_10001BC84()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return sub_100004EA4();
}

uint64_t sub_10001BCD4()
{
  sub_100002618();
  sub_100005BD0();
  swift_task_alloc();
  sub_100008D5C();
  *(v0 + 16) = v1;
  *v1 = v2;
  sub_1000091A0(v1);
  sub_100008E44();

  return sub_10001C304(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10001BD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for EventValue();
  v5 = sub_100001EDC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000286C();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  sub_100004CD0();
  __chkstk_darwin(v14);
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100003BC0();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(a3 + 56);
  v17 = *(v7 + 72);
  sub_1000098A8();
  sub_1000096D4();
  sub_10000B670();
  sub_10000B670();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return *v12;
    }

    sub_100001FE8();
    sub_10000A80C(v12, v20);
    return 0;
  }

  result = *v12;
  if ((*v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001BF00()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001BFF4()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = v3[11];

    return _swift_task_switch(sub_10005E598, v9, 0);
  }

  else
  {
    v10 = v3[12];

    sub_100001D4C();

    return v11();
  }
}

uint64_t sub_10001C114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedStorebag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C178()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10001C1B8()
{
  sub_100002624();
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  sub_100016788(0x6B6E756C7073, 0xE600000000000000, *(v0 + 24), *(v0 + 32), *(v0 + 40));
  *(v0 + 152) = v2;
  if (v2)
  {
    v3 = *(v0 + 16);

    return _swift_task_switch(sub_10005E51C, v3, 0);
  }

  else
  {
    v4 = *(v0 + 144);

    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 48);

    sub_100001D4C();

    return v8();
  }
}

uint64_t sub_10001C2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v10;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  return (_swift_task_switch)(sub_10001C330, 0);
}

uint64_t sub_10001C330()
{
  sub_100005464();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v22 = v0[7];
  v4 = v0[6];
  ObjectType = swift_getObjectType();
  sub_1000228D4(&unk_10008FD30, &qword_100070028);
  v6 = swift_allocObject();
  v0[12] = v6;
  sub_100011A04(v6, xmmword_10006CAD0, v7, v8, v9, v10, v11, v12, v13, v19, v20, v22);

  v21 = (v3 + *v3);
  v14 = v3[1];
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_10001BFF4;
  v17 = v0[6];
  v16 = v0[7];

  return v21(v6, ObjectType, v16);
}

uint64_t sub_10001C494@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0xE700000000000000;
  *(v1 + v2) = 0;

  return type metadata accessor for EventValue();
}

char *sub_10001C4B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000228D4(&unk_10008FD30, &qword_100070028);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001C5CC(char *a1, int64_t a2, char a3)
{
  result = sub_10001C4B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10001C5EC(uint64_t a1)
{
  v2 = type metadata accessor for EventValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001C654(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100025D78(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001C6D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else
  {
    v7 = a1 == 0x5F68736572666572 && a2 == 0xED0000656C637963;
    if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 5;
    }

    else
    {
      v8 = a1 == 0x765F646572616873 && a2 == 0xEC00000073656C61;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 6;
      }

      else
      {
        v9 = 0;
        while (1)
        {
          v5 = *(&off_100085AF8 + v9++ + 32);
          v10 = 0xE700000000000000;
          v11 = 0x657361656C6572;
          switch(v5)
          {
            case 1:
              v11 = 0x6E695F656C707061;
              v10 = 0xEE006C616E726574;
              break;
            case 2:
              v10 = 0xE400000000000000;
              v11 = 1684366707;
              break;
            case 3:
              break;
            default:
              v11 = 0x6D706F6C65766564;
              v10 = 0xEB00000000746E65;
              break;
          }

          if (v11 == a1 && v10 == a2)
          {
            break;
          }

          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v13)
          {
            goto LABEL_33;
          }

          if (v9 == 4)
          {

            return 7;
          }
        }

LABEL_33:
      }
    }
  }

  return v5;
}

void *sub_10001C920(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = (a3 + 32);
  v6 = _swiftEmptyArrayStorage;
  if (v4)
  {
    while (1)
    {
      v18 = *v5;
      a1(&v16, &v18);
      if (v3)
      {
        break;
      }

      v7 = v17;
      if (v17)
      {
        v8 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = v6[2];
          sub_10001EF18();
          v6 = v12;
        }

        v9 = v6[2];
        if (v9 >= v6[3] >> 1)
        {
          sub_10001EF18();
          v6 = v13;
        }

        v6[2] = v9 + 1;
        v10 = &v6[2 * v9];
        *(v10 + 32) = v8;
        v10[5] = v7;
      }

      ++v5;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_10001CA44@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_1000228D4(&qword_10008E558, &qword_10006D768);
  sub_10001CB74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v2)
  {

    sub_1000228D4(&unk_100090270, &qword_10006D778);
    sub_10001C654(&qword_10008E588, &unk_100090270, &qword_10006D778, sub_1000266D4);
    result = KeyedDecodingContainer.decode<A>(_:forKey:)();
    *a2 = v4;
    a2[1] = v6;
  }

  else
  {
    result = sub_100005954(v6, v7);
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

unint64_t sub_10001CB74()
{
  result = qword_10008E580;
  if (!qword_10008E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E580);
  }

  return result;
}

uint64_t sub_10001CBC8(uint64_t *a1)
{
  v3 = a1[4];
  sub_100008DE4(a1, a1[3]);
  v4 = dispatch thunk of Decoder.codingPath.getter();
  sub_10001CDEC(v4, v18);

  if (v19)
  {
    sub_100008DE4(v18, v19);
    v6 = dispatch thunk of CodingKey.stringValue.getter();
    v8 = v7;
    sub_100005284(v18);
    v9 = v6 == 0x6F7A6E6F67 && v8 == 0xE500000000000000;
    if (v9 || (sub_100009850() & 1) != 0 || (v6 == sub_100001F54() ? (v10 = v8 == 0xE600000000000000) : (v10 = 0), v10 || (sub_100009850() & 1) != 0 || (v6 == (sub_100001F54() & 0xFFFFFFFFFFFFLL | 0x685F000000000000) ? (v12 = v8 == v11) : (v12 = 0), v12 || (sub_100009850() & 1) != 0 || (v6 == (sub_100001F54() & 0xFFFFFFFFFFFFLL | 0x615F000000000000) ? (v14 = v8 == v13) : (v14 = 0), v14 || (sub_100009850() & 1) != 0 || (v6 == 0xD000000000000012 ? (v15 = 0x8000000100071BA0 == v8) : (v15 = 0), v15)))))
    {
    }

    else
    {
      v16 = sub_100009850();

      if ((v16 & 1) == 0)
      {
        v8 = 0;
LABEL_31:
        sub_100005284(a1);
        return v8;
      }
    }

    sub_100009658(a1, v18);
    v17 = sub_10001CE18(v18);
    if (!v1)
    {
      v8 = v17;
    }

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001CDBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001CBC8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

double sub_10001CDEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100009658(a1 + 40 * v2 - 8, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10001CE18(uint64_t *a1)
{
  v3 = sub_1000228D4(&qword_10008EBD8, &qword_10006E5D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13[-1] - v6;
  v8 = a1[4];
  sub_100008DE4(a1, a1[3]);
  sub_10001D044();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005284(a1);
    return v8;
  }

  v9 = a1[4];
  sub_100008DE4(a1, a1[3]);
  v10 = dispatch thunk of Decoder.codingPath.getter();
  sub_10001CDEC(v10, v13);

  if (v14)
  {
    sub_100008DE4(v13, v14);
    v8 = dispatch thunk of CodingKey.stringValue.getter();
    sub_100005284(v13);
    sub_1000228D4(&qword_10008EBE8, &qword_10006E5D8);
    sub_1000336E0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    sub_100005284(a1);
    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_10001D044()
{
  result = qword_10008EBE0;
  if (!qword_10008EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBE0);
  }

  return result;
}

_BYTE *sub_10001D0B4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10001D150);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_10001D180@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000228D4(&qword_10008F490, &qword_10006F248);
  v6 = v5;
  v7 = sub_100001EDC(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v53 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v80 = a1;
  sub_100008DE4(a1, v14);
  sub_10001E35C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v146 = v2;
    LODWORD(v13) = 0;
    LODWORD(v16) = 0;
    LODWORD(v17) = 0;
    v6 = 0;
    LODWORD(v18) = 0;
    v19 = 0;
    LODWORD(a2) = 0;
    LODWORD(v81) = 0;
    LODWORD(v82) = 0;
    LODWORD(v83) = 0;
    LODWORD(v84) = 0;
  }

  else
  {
    v19 = v9;
    LOBYTE(v86) = 0;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v79 = v21;
    sub_1000029B0(1);
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v78 = v23;
    sub_1000029B0(2);
    v84 = KeyedDecodingContainer.decode(_:forKey:)();
    v77 = v24;
    sub_1000029B0(3);
    v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v145 = v25 & 1;
    sub_1000029B0(4);
    v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v76 = v26;
    sub_1000029B0(5);
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v146 = 0;
    v64 = v27;
    v143 = v28 & 1;
    LOBYTE(v85[0]) = 6;
    sub_10001E3BC();
    sub_100007014();
    sub_10000CDB0();
    v81 = v29;
    sub_100001DDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v146 = 0;
    v63 = v86;
    v16 = sub_1000228D4(&qword_10008E4E8, &qword_10006D370);
    LOBYTE(v85[0]) = 7;
    sub_10001E418(&qword_10008F4A8, &qword_10008E4E8, &qword_10006D370);
    sub_100007014();
    v66 = v30;
    sub_100001DDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v75 = v86;
    LOBYTE(v85[0]) = 8;
    sub_100007014();
    v65 = v16;
    LODWORD(v18) = v13;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v146 = 0;
    v73 = v86;
    sub_1000029B0(9);
    v31 = v146;
    v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v74 = v32;
    v146 = v31;
    if (v31)
    {
      v33 = sub_100009B60();
      v34(v33);
      sub_1000044A0();
      sub_100002000();
    }

    else
    {
      v18 = &qword_10008F4B0;
      v16 = sub_1000228D4(&qword_10008F4B0, &qword_100070600);
      LOBYTE(v85[0]) = 10;
      sub_10001E418(&qword_10008F4B8, &qword_10008F4B0, &qword_100070600);
      sub_100007014();
      v71 = v16;
      LODWORD(v16) = v35;
      sub_100001DDC();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v146 = 0;
      v72 = v86;
      LOBYTE(v85[0]) = 11;
      sub_100007014();
      sub_10000CDB0();
      sub_100001DDC();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v146 = 0;
      v71 = v86;
      sub_1000029B0(12);
      v36 = v146;
      v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v146 = v36;
      if (v36)
      {
        v38 = sub_100009B60();
        v39(v38);
        LODWORD(v83) = 0;
        LODWORD(v84) = 0;
        LODWORD(v13) = 1;
        sub_1000098C0();
        LODWORD(v82) = v40;
      }

      else
      {
        v140 = v37 & 1;
        LOBYTE(v85[0]) = 13;
        sub_1000090A0();
        v146 = 0;
        v60 = v86;
        LOBYTE(v85[0]) = 14;
        sub_1000090A0();
        v146 = 0;
        v59 = v86;
        LODWORD(v18) = sub_1000228D4(&qword_10008F4C0, &qword_10006F250);
        LOBYTE(v85[0]) = 15;
        sub_10004662C();
        sub_100007014();
        sub_100001DDC();
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v146 = 0;
        v69 = v87;
        v70 = v86;
        v68 = v88;
        sub_1000029B0(16);
        v41 = v146;
        v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v67 = v42;
        v146 = v41;
        if (!v41)
        {
          LOBYTE(v85[0]) = 17;
          sub_1000090A0();
          v146 = 0;
          v57 = v86;
          LOBYTE(v85[0]) = 18;
          sub_1000090A0();
          v146 = 0;
          v56 = v86;
          LOBYTE(v85[0]) = 19;
          sub_100007014();
          sub_10000CDB0();
          sub_100001DDC();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v146 = 0;
          v66 = v86;
          LOBYTE(v85[0]) = 20;
          sub_1000090A0();
          v146 = 0;
          v46 = v86;
          LOBYTE(v85[0]) = 21;
          sub_1000090A0();
          v146 = 0;
          v55 = v86;
          sub_1000228D4(&qword_10008F4D0, &qword_10006F258);
          LOBYTE(v85[0]) = 22;
          sub_10001EE8C();
          sub_100007014();
          sub_100001DDC();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v146 = 0;
          v65 = v86;
          v131 = 23;
          sub_10000CDB0();
          sub_100001DDC();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v146 = 0;
          v47 = sub_100009B60();
          v48(v47);
          v54 = v132;
          v85[0] = v17;
          v85[1] = v79;
          v85[2] = v22;
          v85[3] = v78;
          v85[4] = v84;
          v85[5] = v77;
          v85[6] = v83;
          LODWORD(v81) = v145;
          LOBYTE(v85[7]) = v145;
          *(&v85[7] + 1) = *v144;
          HIDWORD(v85[7]) = *&v144[3];
          v85[8] = v82;
          v85[9] = v76;
          v85[10] = v64;
          *(&v85[19] + 3) = v138;
          HIDWORD(v85[22]) = *&v137[3];
          *(&v85[22] + 1) = *v137;
          *(&v85[25] + 2) = v135;
          *(&v85[27] + 2) = v133;
          HIDWORD(v53) = v143;
          LOBYTE(v85[11]) = v143;
          BYTE1(v85[11]) = v63;
          *(&v85[11] + 2) = v141;
          HIWORD(v85[11]) = v142;
          v85[12] = v75;
          v85[13] = v73;
          v85[14] = v62;
          v85[15] = v74;
          v85[16] = v72;
          v85[17] = v71;
          v85[18] = v61;
          HIBYTE(v85[19]) = v139;
          HIWORD(v85[25]) = v136;
          HIWORD(v85[27]) = v134;
          v49 = v140;
          LOBYTE(v85[19]) = v140;
          v50 = v59;
          v51 = v60;
          BYTE1(v85[19]) = v60;
          BYTE2(v85[19]) = v59;
          v52 = v69;
          v85[20] = v70;
          v85[21] = v69;
          LOBYTE(v85[22]) = v68;
          v85[23] = v58;
          v85[24] = v67;
          LOBYTE(v85[25]) = v57;
          BYTE1(v85[25]) = v56;
          v85[26] = v66;
          LOBYTE(v85[27]) = v46;
          BYTE1(v85[27]) = v55;
          v85[28] = v65;
          LOBYTE(v85[29]) = v132;
          sub_10001F54C(v85, &v86);
          sub_100005284(v80);
          v86 = v17;
          v87 = v79;
          v88 = v22;
          v89 = v78;
          v90 = v84;
          v91 = v77;
          v92 = v83;
          v93 = v81;
          *v94 = *v144;
          *&v94[3] = *&v144[3];
          v95 = v82;
          v96 = v76;
          v97 = v64;
          v98 = BYTE4(v53);
          v99 = v63;
          v101 = v142;
          v100 = v141;
          v102 = v75;
          v103 = v73;
          v104 = v62;
          v105 = v74;
          v106 = v72;
          v107 = v71;
          v108 = v61;
          v109 = v49;
          v110 = v51;
          v111 = v50;
          v112 = v138;
          v113 = v139;
          v114 = v70;
          v115 = v52;
          v116 = v68;
          *&v117[3] = *&v137[3];
          *v117 = *v137;
          v118 = v58;
          v119 = v67;
          v120 = v57;
          v121 = v56;
          v123 = v136;
          v122 = v135;
          v124 = v66;
          v125 = v46;
          v126 = v55;
          v128 = v134;
          v127 = v133;
          v129 = v65;
          v130 = v54;
          sub_100019404(&v86);
          return memcpy(a2, v85, 0xE9uLL);
        }

        v43 = sub_100009B60();
        v44(v43);
        LODWORD(v84) = 0;
        LODWORD(v13) = 1;
        sub_1000098C0();
        LODWORD(v82) = v45;
        LODWORD(v83) = v45;
      }
    }
  }

  result = sub_100005284(v80);
  if (v13)
  {

    if (v16)
    {
      goto LABEL_6;
    }
  }

  else if (v16)
  {
LABEL_6:

    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

  if (!v17)
  {
LABEL_7:
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:

  if (v6)
  {
LABEL_8:

    if ((v18 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (!v18)
  {
LABEL_9:
    if (v19)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:

  if (v19)
  {
LABEL_10:

    if ((a2 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (!a2)
  {
LABEL_11:
    if (v81)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:

  if (v81)
  {
LABEL_12:

    if ((v82 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (!v82)
  {
LABEL_13:
    if (v83)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:

  if (v83)
  {
LABEL_14:
    result = sub_100046608(v70, v69, v68);
    if ((v84 & 1) == 0)
    {
      return result;
    }
  }

LABEL_25:
  if (v84)
  {
  }

  return result;
}

unint64_t sub_10001DD84()
{
  result = qword_10008E560;
  if (!qword_10008E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E560);
  }

  return result;
}

uint64_t sub_10001DDD8(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0x6E695F656C707061;
      break;
    case 2:
      result = 1684366707;
      break;
    case 3:
      result = 0x657361656C6572;
      break;
    case 4:
      return result;
    case 5:
      result = 0x5F68736572666572;
      break;
    case 6:
      result = 0x765F646572616873;
      break;
    default:
      result = 0x6D706F6C65766564;
      break;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Storebag._StorebagRoot.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
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

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x10001DFB4);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10001DFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001C6D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Storebag._StorebagRoot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA)
  {
    v2 = a2 + 6;
    if (a2 + 6 >= 0xFFFF00)
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

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 6;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 6;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x10001E0B4);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 6;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

void sub_10001E0C8()
{
  sub_100007BB0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_100001E9C();
  if (v7 == v8)
  {
LABEL_7:
    sub_1000043B0(v6);
    if (v3)
    {
      sub_1000228D4(&qword_10008E338, &qword_10006D180);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * v10 - 64;
      if (v1)
      {
LABEL_9:
        v11 = sub_10000511C();
        sub_10005FD18(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = sub_100007A14();
    memcpy(v14, v15, v16);
    goto LABEL_12;
  }

  sub_100003D10();
  if (!v7)
  {
    sub_100009798();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_10001E1A0()
{
  sub_100004680();
  sub_100003B0C();
  v3 = *(v2 + 112);
  v4 = *(v2 + 88);
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v7 + 120) = v0;

  if (v0)
  {
    v8 = sub_100035CB4;
  }

  else
  {
    v8 = sub_100035878;
  }

  return _swift_task_switch(v8, v4, 0);
}

uint64_t getEnumTagSinglePayload for BackendGroup.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

void *sub_10001E308@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10001D180(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0xE9uLL);
  }

  return result;
}

unint64_t sub_10001E35C()
{
  result = qword_10008F498;
  if (!qword_10008F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F498);
  }

  return result;
}

unint64_t sub_10001E3BC()
{
  result = qword_10008F4A0;
  if (!qword_10008F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4A0);
  }

  return result;
}

uint64_t sub_10001E418(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100025D78(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001E480(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10001E508@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v21 = type metadata accessor for StorebagSectionMaybeShared();
  v4 = sub_100001EDC(v21);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v20 = (&v20 - v12);
  v13 = a1[4];
  sub_100008DE4(a1, a1[3]);
  sub_100003E74();
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {

    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_100063B5C(v22);
    sub_100009658(a1, v24);
    dispatch thunk of Decodable.init(from:)();
    v15 = v21;
    swift_storeEnumTagMultiPayload();
    v16 = *(v6 + 32);
    v17 = v20;
    v16(v20, v11, v15);
  }

  else
  {
    sub_1000096BC(v22, v24);
    sub_100008DE4(v24, v24[3]);
    sub_100003E74();
    v14 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v17 = v20;
    v15 = v21;
    *v20 = v14;
    v17[1] = v18;
    swift_storeEnumTagMultiPayload();
    sub_100005284(v24);
    v16 = *(v6 + 32);
  }

  v16(v25, v17, v15);
  return sub_100005284(a1);
}

void *sub_10001E740(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000228D4(&unk_10008FDF0, &qword_10006E8E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v2;
  sub_10001EFFC(a1, 1, &v4);
  return v4;
}

unint64_t sub_10001E7E8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 + 1);
  v4 = Hasher._finalize()();

  return sub_10001F2C4(a1, v4);
}

unint64_t sub_10001E858()
{
  result = qword_10008E790;
  if (!qword_10008E790)
  {
    type metadata accessor for EventValue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E790);
  }

  return result;
}

uint64_t sub_10001E8B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001E8EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

__n128 sub_10001E92C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10001E938()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_10001E968(char a1)
{
  result = 0x746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x65636976726573;
      break;
    case 2:
      result = 0x6C72755F74736F70;
      break;
    case 3:
    case 14:
    case 18:
      result = 0xD000000000000012;
      break;
    case 4:
    case 5:
    case 21:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x5F64656C62616E65;
      break;
    case 10:
      result = 0x6C625F746E657665;
      break;
    case 11:
      result = 0x68775F746E657665;
      break;
    case 12:
      result = 0x68745F746E657665;
      break;
    case 13:
      result = 0x6574696465707865;
      break;
    case 15:
      result = 0x737265746C6966;
      break;
    case 16:
      result = 0x635F646568736168;
      break;
    case 17:
      result = 0x6863726172656968;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x656469727265766FLL;
      break;
    case 22:
      result = 0xD00000000000001FLL;
      break;
    case 23:
      result = 0x5F656C6261736964;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_10001EC54(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10001ED20);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10001ED48(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10001EE14);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10001EE6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return sub_10001E508(a1, a3);
}

unint64_t sub_10001EE8C()
{
  result = qword_10008F4D8;
  if (!qword_10008F4D8)
  {
    sub_100025D78(&qword_10008F4D0, &qword_10006F258);
    sub_100046690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4D8);
  }

  return result;
}

void sub_10001EF18()
{
  sub_100007BB0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_100001E9C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1000043B0(v5);
    if (v2)
    {
      sub_1000228D4(&qword_10008E340, &qword_10006D188);
      v8 = sub_10000FF3C();
      v9 = j__malloc_size(v8);
      sub_100004604(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000511C();
        sub_10001EFDC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1000228D4(&qword_10008E348, &qword_10006D190);
    sub_100007A14();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_100003D10();
  if (!v6)
  {
    sub_100009798();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_10001EFDC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1000047D8(a3, result);
  }

  return result;
}

uint64_t sub_10001EFFC(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v28 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 8);
    v8 = *i;
    v9 = *a3;
    v10 = sub_10001E7E8(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1000228D4(&qword_10008EE30, &qword_10006E8E8);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v21[6] + v15) = v7;
    *(v21[7] + 8 * v15) = v8;
    v22 = v21[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v21[2] = v24;
    ++v5;
    a2 = 1;
  }

  sub_10005FFC0(v14, a2 & 1);
  v18 = *a3;
  v19 = sub_10001E7E8(v7);
  if ((v16 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v15 = v19;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();

  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v26._object = 0x8000000100071D70;
  v26._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v26);
  _print_unlocked<A, B>(_:_:)();
  v27._countAndFlagsBits = 39;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_10001F2C4(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

uint64_t sub_10001F324(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

__n128 sub_10001F364(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001F378(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10001E7E8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_10001F3C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_10001F3E0()
{
  sub_1000054BC();
  sub_100002654();
  v3 = sub_1000228D4(&unk_10008F390, &qword_10006EED0);
  sub_100001D80(v3);
  v5 = *(v4 + 64);
  sub_100003EC8();
  __chkstk_darwin(v6);
  v7 = sub_100005B54();
  v8 = type metadata accessor for CachedStorebag(v7);
  v9 = sub_100003C44(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100001EAC();
  if (sub_100002694(v0, 1, v12) == 1)
  {
    v13 = sub_10000BF10();
    sub_100005000(v13, v14, &qword_10006EED0);
    sub_10000B728();
    sub_10000C6AC();
    sub_1000456C4(v15, v16);

    sub_100005000(v2, &unk_10008F390, &qword_10006EED0);
  }

  else
  {
    sub_10000BF10();
    sub_10000B670();
    v17 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1000119A4();
    sub_100045954(v18, v19, v20, v21);

    *v1 = v22;
  }

  sub_10000CE54();
}

unint64_t sub_10001F5A8()
{
  result = qword_10008E500;
  if (!qword_10008E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E500);
  }

  return result;
}

uint64_t sub_10001F618()
{

  do
  {
    while (1)
    {
      v0 = String.Iterator.next()();
      if (!v0.value._object)
      {

        object = String.Iterator.next()().value._object;

        if (object)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v1 = String.Iterator.next()();
      if (!v1.value._object)
      {

        return 1;
      }

      if (v0.value._countAndFlagsBits != v1.value._countAndFlagsBits || v0.value._object != v1.value._object)
      {
        break;
      }
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v3 & 1) != 0);

LABEL_15:

  return 0;
}

uint64_t sub_10001F75C(uint64_t *a1)
{
  sub_100009658(a1, v6);
  sub_10001F844();
  v3 = Array<A>.init(from:)();
  if (v1)
  {

    sub_100009658(a1, v6);
    v4 = Array<A>.init(from:)();
  }

  else
  {
    v4 = v3;
  }

  sub_100005284(a1);
  return v4;
}

unint64_t sub_10001F844()
{
  result = qword_10008F5E8;
  if (!qword_10008F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F5E8);
  }

  return result;
}

void *sub_10001F898@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000228D4(&qword_10008FF10, &unk_1000705F0);
  v6 = sub_100001EDC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = a1[4];
  v77 = a1;
  sub_100008DE4(a1, a1[3]);
  sub_10001FFD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005284(a1);
  }

  v75 = a2;
  v89 = _swiftEmptyArrayStorage;
  sub_1000228D4(&qword_10008E4E8, &qword_10006D370);
  LOBYTE(v78[0]) = 0;
  sub_10001E418(&qword_10008F4A8, &qword_10008E4E8, &qword_10006D370);
  sub_1000099AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v79[0])
  {
    sub_100062F04(v79[0]);
  }

  LOBYTE(v78[0]) = 1;
  sub_1000099AC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100062F04(v79[0]);
  sub_1000047E8(1);
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v71 = v11;
  v12 = v10;
  v13 = v89;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = v89[2];
    sub_1000039D8();
    sub_100020328();
    v13 = v45;
  }

  v15 = v13[2];
  v14 = v13[3];
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    sub_100009128(v14);
    sub_100020328();
    v16 = v69;
    v13 = v46;
  }

  v13[2] = v16;
  v17 = &v13[2 * v15];
  v17[4] = v12;
  v17[5] = v71;
  v89 = v13;
  v88 = _swiftEmptyArrayStorage;
  LOBYTE(v78[0]) = 2;
  sub_1000099AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v79[0])
  {
    sub_100062F04(v79[0]);
  }

  LOBYTE(v78[0]) = 3;
  sub_1000099AC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100062F04(v79[0]);
  sub_1000047E8(3);
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v19;
  v72 = v18;
  v21 = v88;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = v88[2];
    sub_1000039D8();
    sub_100020328();
    v21 = v48;
  }

  v22 = v21[2];
  if (v22 >= v21[3] >> 1)
  {
    sub_100020328();
    v21 = v49;
  }

  v21[2] = v22 + 1;
  v23 = &v21[2 * v22];
  v23[4] = v72;
  v23[5] = v20;
  v88 = v21;
  v87 = _swiftEmptyArrayStorage;
  sub_1000228D4(&qword_10008F4B0, &qword_100070600);
  LOBYTE(v78[0]) = 4;
  sub_10001E418(&qword_10008F4B8, &qword_10008F4B0, &qword_100070600);
  sub_1000099AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v79[0])
  {
    sub_100062FC4(v79[0]);
  }

  sub_1000047E8(5);
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if ((v25 & 1) == 0)
  {
    v73 = v24;
    v26 = v87;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = v87[2];
      v51 = sub_1000039D8();
      sub_10002325C(v51, v52, v53, v87);
      v26 = v54;
    }

    v28 = v26[2];
    v27 = v26[3];
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v55 = sub_100009128(v27);
      sub_10002325C(v55, v56, v57, v26);
      v29 = v69;
      v26 = v58;
    }

    v26[2] = v29;
    v26[v28 + 4] = v73;
    v87 = v26;
  }

  v86 = _swiftEmptyArrayStorage;
  LOBYTE(v78[0]) = 6;
  sub_1000099AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v79[0])
  {
    sub_100062FC4(v79[0]);
  }

  sub_1000047E8(7);
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v86;
  if ((v33 & 1) == 0)
  {
    v34 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = v86[2];
      v60 = sub_1000039D8();
      sub_10002325C(v60, v61, v62, v86);
      v32 = v63;
    }

    v36 = v32[2];
    v35 = v32[3];
    if (v36 >= v35 >> 1)
    {
      sub_10002325C(v35 > 1, v36 + 1, 1, v32);
      v32 = v64;
    }

    v32[2] = v36 + 1;
    v32[v36 + 4] = v34;
    v86 = v32;
  }

  v74 = v89;
  v38 = v87;
  v37 = v88;
  sub_1000047E8(8);
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v70 = v40;
  v68 = v39;
  v80 = 9;
  sub_100020424();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v41 = sub_1000020D8();
  v42(v41);
  v76 = v81;
  v66 = v83;
  v67 = v82;
  v65 = v84;
  v43 = v85;
  v78[0] = v74;
  v78[1] = v37;
  v78[2] = v38;
  v78[3] = v32;
  v78[4] = v68;
  v78[5] = v70;
  v78[6] = v81;
  v78[7] = v82;
  v78[8] = v83;
  v78[9] = v84;
  v78[10] = v85;
  sub_100020478(v78, v79);
  sub_100005284(v77);
  v79[0] = v74;
  v79[1] = v37;
  v79[2] = v38;
  v79[3] = v32;
  v79[4] = v68;
  v79[5] = v70;
  v79[6] = v76;
  v79[7] = v67;
  v79[8] = v66;
  v79[9] = v65;
  v79[10] = v43;
  sub_1000204EC(v79);
  return memcpy(v75, v78, 0x58uLL);
}

void *sub_10001FF88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10001F898(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x58uLL);
  }

  return result;
}

unint64_t sub_10001FFD4()
{
  result = qword_10008FF18;
  if (!qword_10008FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FF18);
  }

  return result;
}

uint64_t sub_100020028@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10001F75C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_100020058(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100020094(char a1)
{
  result = 1937335659;
  switch(a1)
  {
    case 1:
      result = 7955819;
      break;
    case 2:
      result = 0x7365756C6176;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    case 4:
      result = 0x69726F6765746163;
      break;
    case 5:
      result = 0x79726F6765746163;
      break;
    case 6:
      result = 0x7365707974;
      break;
    case 7:
      result = 1701869940;
      break;
    case 8:
      result = 0x6E6F69746361;
      break;
    case 9:
      result = 0x6F697469646E6F63;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_1000201AC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100020278);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000202A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_100020328()
{
  sub_100007BB0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_100001E9C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1000043B0(v5);
    if (v2)
    {
      sub_1000228D4(&unk_10008FD90, &qword_10006CC48);
      v8 = sub_10000FF3C();
      v9 = j__malloc_size(v8);
      sub_100004604(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000511C();
        sub_10001EFDC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_100007A14();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_100003D10();
  if (!v6)
  {
    sub_100009798();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1000203DC(uint64_t a1)
{
  v2 = sub_10001FFD4();

  return CodingKey.description.getter(a1, v2);
}

unint64_t sub_100020424()
{
  result = qword_10008FF20[0];
  if (!qword_10008FF20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008FF20);
  }

  return result;
}

uint64_t sub_1000204D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100020548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000205AC()
{
  sub_100003F58();
  sub_100005464();
  sub_10001605C();
  v0 = swift_task_alloc();
  v1 = sub_100003900(v0);
  *v1 = v2;
  sub_100001F7C(v1);
  sub_1000127DC();
  sub_100008E70();

  return sub_10002063C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10002063C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v8 = swift_task_alloc();
  v6[14] = v8;
  *v8 = v6;
  v8[1] = sub_10001E1A0;

  return static Task<>.sleep(nanoseconds:)(1000000000);
}

uint64_t sub_100020714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = sub_100002694(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002075C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for URL();

  return sub_1000026BC(a1, v5, a3, v6);
}

uint64_t sub_1000207E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002448C(*v1);
  *a1 = result;
  return result;
}

BOOL sub_10002081C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100085D40, v2);

  return v3 != 0;
}

BOOL sub_100020864(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100085D78, v2);

  return v3 != 0;
}

uint64_t sub_10002097C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000209B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100020A20()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020AB4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020AEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100020B2C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100020B7C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020BDC()
{
  v1 = type metadata accessor for Date();
  sub_100003C44(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100020D4C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100020D94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100020DD4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100020E8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100020ECC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_100020F54(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1000047D8(a3, result);
  }

  return result;
}

uint64_t sub_100020F9C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002107C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  sub_100005284(v0 + 8);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000210CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = sub_100002694(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100021114(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for URL();

  return sub_1000026BC(a1, v5, a3, v6);
}

uint64_t sub_1000211D0()
{
  v1 = sub_1000228D4(&unk_1000904F0, &qword_100070D40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

const char *sub_1000212C0(int a1, uint64_t a2, uint64_t a3)
{
  v4 = 0x6F727245204C5153;
  if (a3)
  {
    v4 = a2;
  }

  v11 = v4;

  v5._countAndFlagsBits = 8250;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);

  result = sqlite3_errstr(a1);
  if (result)
  {
    v7 = String.init(cString:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000213CC(char a1)
{
  switch(a1)
  {
    case 1:
      sub_100009AC8();
      break;
    case 2:
    case 3:
      return;
    default:
      sub_100001D10();
      break;
  }
}

void sub_100021444(char a1)
{
  switch(a1)
  {
    case 1:
      sub_100009AC8();
      break;
    case 2:
    case 3:
      return;
    default:
      sub_100001D10();
      break;
  }
}

Swift::Int sub_1000214E4(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100021548()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10002159C()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100001EAC();
  v7 = v6 - v5;
  v8 = type metadata accessor for SQLiteDB.Location();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_100001EAC();
  v12 = v11 - v10;
  sub_1000234A4(v1, v11 - v10);
  if (sub_100002694(v12, 1, v2) == 1)
  {
    return 0x3A79726F6D656D3ALL;
  }

  (*(v3 + 32))(v7, v12, v2);
  v13 = URL.path.getter();
  (*(v3 + 8))(v7, v2);
  return v13;
}

uint64_t *sub_100021704(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  *(v2 + 24) = 0;
  v10 = 0;
  sub_10002159C();
  v5 = String.utf8CString.getter();

  v6 = sqlite3_open_v2((v5 + 32), &v10, 32774, 0);

  v7 = v10;
  if (!v10 || v6)
  {
    sub_10002282C();
    swift_allocError();
    *v8 = v6;
    *(v8 + 8) = 0xD000000000000017;
    *(v8 + 16) = 0x8000000100071450;
    swift_willThrow();
    sub_100023508(a1, type metadata accessor for SQLiteDB.Location);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100023508(a1, type metadata accessor for SQLiteDB.Location);
    v2[2] = v7;
  }

  return v2;
}

uint64_t sub_100021888()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    *(v0 + 24) = 1;
    return sqlite3_close_v2(*(v0 + 16));
  }

  return result;
}

uint64_t sub_1000218A4()
{
  sub_100021888();

  return _swift_deallocClassInstance(v0, 25, 7);
}

uint64_t sub_1000218D8()
{
  v1 = sqlite3_expanded_sql(*(v0 + 16));
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = String.init(cString:)();
  sqlite3_free(v2);
  return v3;
}

uint64_t sub_100021934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v40 = a2;
  v41 = a4;
  v42 = type metadata accessor for EventValue();
  v7 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v43 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for String.Encoding();
  v9 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = (v11 + 8);
  while (1)
  {
    v12 = sub_10000C50C();
    if (v5)
    {
    }

    v13 = v12;
    if (!v12)
    {
    }

    v14 = *(v12 + 16);

    if (!sqlite3_column_text(v14, 1))
    {

      sub_100022DA8();
      swift_allocError();
      *v37 = 0;
      swift_willThrow();
      goto LABEL_18;
    }

    String.init(cString:)();

    v15 = sqlite3_column_int64(*(v13 + 16), 0);
    v16 = a3;

    v17 = v45;
    static String.Encoding.utf8.getter();
    v18 = String.data(using:allowLossyConversion:)();
    v20 = v19;

    (*v44)(v17, v46);
    if (v20 >> 60 == 15)
    {

      sub_100022DFC();
      swift_allocError();
      swift_willThrow();
      goto LABEL_18;
    }

    v21 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v47 = 0;
    v23 = [v21 JSONObjectWithData:isa options:0 error:&v47];

    v24 = v47;
    if (!v23)
    {
      v38 = v24;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100022E50(v18, v20);
      goto LABEL_18;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v25 = v43;
    sub_1000440BC(v48, v43);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      break;
    }

    sub_100005284(v48);
    sub_100022E50(v18, v20);
    v26 = *v25;
    v27 = v41;
    v28 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v27 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100014E70(0, *(v28 + 16) + 1, 1, v28, &unk_10008E1D0, &unk_10006CC30, &type metadata for CachedEvent, sub_10005FE9C);
      v28 = v34;
      *v41 = v34;
    }

    v31 = *(v28 + 16);
    v30 = *(v28 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_100014E70(v30 > 1, v31 + 1, 1, v28, &unk_10008E1D0, &unk_10006CC30, &type metadata for CachedEvent, sub_10005FE9C);
      v28 = v35;
      *v41 = v35;
    }

    *(v28 + 16) = v31 + 1;
    v32 = (v28 + 32 * v31);
    v33 = v40;
    v32[4] = v15;
    v32[5] = v33;
    a3 = v16;
    v32[6] = v16;
    v32[7] = v26;
  }

  sub_100023508(v25, type metadata accessor for EventValue);
  sub_100022DFC();
  swift_allocError();
  swift_willThrow();
  sub_100022E50(v18, v20);
  sub_100005284(v48);
LABEL_18:
}

uint64_t (*sub_100021E98(uint64_t a1, uint64_t (*a2)(uint64_t)))(uint64_t)
{
  v4 = sub_10000C50C();
  if (!v2)
  {
    if (v4)
    {
      a2 = a2(v4);
      if (sub_10000C50C())
      {
        do
        {
        }

        while (sub_10000C50C());
        sub_100022880();
        v7 = sub_100004F00();
        sub_100009728(v7, v8);
      }
    }

    else
    {
      sub_100022880();
      sub_100004F00();
      *v5 = 0;
      swift_willThrow();
    }
  }

  return a2;
}

uint64_t sub_100021F80(uint64_t a1)
{
  if (sqlite3_column_count(*(a1 + 16)) == 1)
  {

    return sub_100022758(v1, 0);
  }

  else
  {
    sub_100022880();
    swift_allocError();
    *v3 = 2;
    return swift_willThrow();
  }
}

sqlite3_int64 sub_100021FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (sqlite3_column_count(v1) == 1)
  {
    return sqlite3_column_int64(v1, 0);
  }

  sub_100022880();
  swift_allocError();
  *v3 = 2;
  return swift_willThrow();
}

uint64_t sub_100022084()
{
  if (*(v0 + 24))
  {
    sub_10002282C();
    sub_100004F00();
    *v2 = 1;
    *(v2 + 8) = 0xD00000000000001DLL;
    *(v2 + 16) = 0x8000000100071310;
    return swift_willThrow();
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + 16);
    sub_100008CE4();
    result = sub_10002211C();
    if (!v1)
    {
      *(v4 + 24) = 1;
    }
  }

  return result;
}

uint64_t sub_10002211C()
{
  v1 = *(v0 + 112);
  if (*(v1 + 24))
  {
    sub_100022880();
    sub_100004F00();
    *v2 = 3;
  }

  else
  {
    v3 = *(v1 + 16);
    v4 = String.utf8CString.getter();
    LODWORD(v3) = sub_100003AF0(v3, (v4 + 32));

    if (!v3)
    {
      return result;
    }

    sub_10002282C();
    v6 = sub_100004F00();
    sub_10000BE84(v6, v7);
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
  }

  return swift_willThrow();
}

uint64_t sub_1000221C4()
{
  v1 = *(v0 + 16);

  sub_10000C644();

  return _swift_deallocClassInstance(v2, v3, v4);
}

void *sub_1000221F8(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = type metadata accessor for SQLiteDB.Location();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100001EAC();
  v10 = v9 - v8;
  swift_defaultActor_initialize();
  sub_1000234A4(a1, v10);
  type metadata accessor for SQLiteDB.DBHandle();
  sub_10000C644();
  swift_allocObject();
  v11 = sub_100021704(v10);
  if (!v2)
  {
    v12 = v11;
    v13 = 0xD000000000000013;
    v14 = sub_100003AF0(v11[2], "PRAGMA journal_mode=WAL;");
    if (v14)
    {
      v15 = v14;
      v16 = "PRAGMA journal_mode=WAL;";
      v13 = 0xD000000000000014;
    }

    else
    {
      v17 = sub_100003AF0(v12[2], "PRAGMA foreign_keys=ON;");
      if (!v17)
      {
        sub_100008FDC();
        v3[14] = v12;
        return v3;
      }

      v15 = v17;
      v16 = "PRAGMA foreign_keys=ON;";
    }

    v18 = v16 | 0x8000000000000000;
    sub_10002282C();
    sub_100004F00();
    *v19 = v15;
    *(v19 + 8) = v13;
    *(v19 + 16) = v18;
    swift_willThrow();
  }

  swift_defaultActor_destroy();
  sub_100008FDC();
  swift_deallocPartialClassInstance();
  return v3;
}

void *sub_1000223A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_100009400();
  if (v7)
  {
  }

  v14 = v12;
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAC0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 32) = a4;
  *(inited + 40) = a5;
  *(inited + 96) = &type metadata for Int64;
  *(inited + 104) = &off_100086270;
  *(inited + 72) = a6;
  *(inited + 136) = &type metadata for Int64;
  *(inited + 144) = &off_100086270;
  *(inited + 112) = a7;

  sub_100009524(inited);
  swift_setDeallocating();
  sub_10000C4AC();
  v16 = _swiftEmptyArrayStorage;

  sub_100021934(v14, a4, a5, &v16);

  return v16;
}

void *sub_10002252C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_100009400();
  if (!v4)
  {
    sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006CAD0;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &off_100086250;
    *(inited + 32) = a4;
    sub_100009524(inited);
    swift_setDeallocating();
    sub_10000C4AC();
    a3 = sub_10003D6C8();
  }

  return a3;
}

uint64_t sub_100022640(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SQLiteDB.Transaction();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 16) = a1;

  sub_10002211C();
  if (!v2)
  {
    sub_10003E2B8(inited, a2);
    if ((*(inited + 24) & 1) == 0)
    {
      sub_100008CE4();
      sub_10002211C();
    }
  }
}

uint64_t sub_100022720()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100022758(uint64_t result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v2 = sqlite3_column_int(*(result + 16), a2);

    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_10002282C()
{
  result = qword_10008E1A8;
  if (!qword_10008E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1A8);
  }

  return result;
}

unint64_t sub_100022880()
{
  result = qword_10008E1B0;
  if (!qword_10008E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1B0);
  }

  return result;
}

uint64_t sub_1000228D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10002291C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100022968()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_1000229C0()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100022A38(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100022AB4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100022B34@<X0>(void *a1@<X8>)
{
  result = sub_100023AA8();
  *a1 = result;
  return result;
}

uint64_t sub_100022B64()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100022BA4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

uint64_t sub_100022C00(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_100022C6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100059F44();
}

uint64_t sub_100022C78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100022CC0@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100022CEC(uint64_t a1)
{
  v2 = sub_100023988(&qword_10008E358, type metadata accessor for URLResourceKey);
  v3 = sub_100023988(&unk_10008E360, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_100022DA8()
{
  result = qword_10008E1C0;
  if (!qword_10008E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1C0);
  }

  return result;
}

unint64_t sub_100022DFC()
{
  result = qword_10008F2E0;
  if (!qword_10008F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F2E0);
  }

  return result;
}

uint64_t sub_100022E50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005954(a1, a2);
  }

  return a1;
}

void sub_100022E64()
{
  sub_100006F8C();
  if (v4)
  {
    sub_100001D00();
    if (v6 != v7)
    {
      sub_10001171C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000038DC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_100003F30(v2, v5, &qword_10008FDE0, &qword_1000700E0);
  sub_100008F24();
  v9 = type metadata accessor for URL();
  sub_10000B6C4(v9);
  v11 = *(v10 + 80);
  sub_1000170D4();
  if (v1)
  {
    v13 = sub_10000CD40(v12);
    sub_10005FE5C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000282C();
  }
}

void sub_100022F2C()
{
  sub_100007BB0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_100001E9C();
  if (v7 == v8)
  {
LABEL_7:
    sub_1000043B0(v6);
    if (v3)
    {
      sub_1000228D4(&unk_10008E240, &unk_10006CCA0);
      v9 = sub_10000FF3C();
      v10 = j__malloc_size(v9);
      sub_100004604(v10);
      if (v1)
      {
LABEL_9:
        v11 = sub_10000511C();
        sub_10001EFDC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v9 + 4, (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  sub_100003D10();
  if (!v7)
  {
    sub_100009798();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100022FE0()
{
  sub_100007BB0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_100001E9C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1000043B0(v5);
    if (v2)
    {
      sub_1000228D4(&qword_10008E200, &qword_10006CC60);
      v8 = sub_10000FF3C();
      v9 = j__malloc_size(v8);
      sub_100004604(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000511C();
        sub_10001EFDC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1000228D4(&qword_10008E208, &qword_10006CC68);
    sub_100007A14();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_100003D10();
  if (!v6)
  {
    sub_100009798();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1000230A4()
{
  sub_100006F8C();
  if (v4)
  {
    sub_100001D00();
    if (v6 != v7)
    {
      sub_10001171C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000038DC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_100003F30(v2, v5, &qword_10008E1F0, &qword_10006CC50);
  v9 = sub_100008F24();
  v10 = type metadata accessor for CachedSession(v9);
  sub_10000B6C4(v10);
  v12 = *(v11 + 80);
  sub_1000170D4();
  if (v1)
  {
    v14 = sub_10000CD40(v13);
    sub_10005FFA8(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000282C();
  }
}

void sub_10002316C()
{
  sub_100006F8C();
  if (v4)
  {
    sub_100001D00();
    if (v6 != v7)
    {
      sub_10001171C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000038DC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_100003F30(v2, v5, &unk_10008FDC0, &unk_1000700C0);
  sub_100008F24();
  v9 = type metadata accessor for EventValue();
  sub_10000B6C4(v9);
  v11 = *(v10 + 80);
  sub_1000170D4();
  if (v1)
  {
    v13 = sub_10000CD40(v12);
    sub_10005FD68(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000282C();
  }
}

void sub_100023284(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_100001E9C();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_1000228D4(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  sub_100003D10();
  if (!v11)
  {
    sub_100009798();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_100023370(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000228D4(&unk_10008E1E0, &qword_10006CC40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_1000233F0(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008E210, &qword_10006CC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SQLiteDB.Location()
{
  result = qword_10008E2C0;
  if (!qword_10008E2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000234A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLiteDB.Location();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100023594()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t _s9ZLibErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9ZLibErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DBError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DBError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1000237CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000237E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_100023834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1000238A4()
{
  result = qword_10008E308;
  if (!qword_10008E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E308);
  }

  return result;
}

uint64_t sub_100023988(unint64_t *a1, void (*a2)(uint64_t))
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

NSString sub_100023AA8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_100023B00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100023B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100023BB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100023BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100023C54()
{
  v1 = type metadata accessor for EventValue();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = (v22 - v6);
  sub_1000228D4(&qword_10008E4A0, &unk_100070080);
  v8 = (sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10006D1B0;
  v12 = (v11 + v10);
  v13 = v8[14];
  *v12 = 0xD000000000000011;
  v12[1] = 0x8000000100071530;
  v26 = *(v0 + 24);
  *(v12 + v13) = v26;
  sub_1000043C0();
  v14 = (v12 + v9);
  v15 = v8[14];
  *v14 = 0xD000000000000012;
  v14[1] = 0x8000000100071550;
  v25 = *(v0 + 40);
  *(v14 + v15) = v25;
  sub_1000043C0();
  v16 = (v12 + 2 * v9);
  v17 = v8[14];
  *v16 = 0xD000000000000014;
  v16[1] = 0x8000000100071570;
  *(v16 + v17) = *v0;
  swift_storeEnumTagMultiPayload();
  v18 = v12 + 3 * v9;
  v19 = v8[14];
  strcpy(v18, "X-RTC-Sender");
  v18[13] = 0;
  *(v18 + 7) = -5120;
  v24 = *(v0 + 8);
  *&v18[v19] = v24;
  sub_1000043C0();
  sub_100005CC0(&v26, &v23);
  sub_100005CC0(&v25, &v23);
  sub_100005CC0(&v24, &v23);
  v20 = Dictionary.init(dictionaryLiteral:)();
  if (*(v0 + 56))
  {
    v23 = *(v0 + 64);
    *v7 = v23;
    sub_1000043C0();
    sub_1000166B4(v7, v5);
    sub_100005CC0(&v23, v22);
    swift_isUniquelyReferenced_nonNull_native();
    v22[0] = v20;
    sub_100016564();
    return v22[0];
  }

  return v20;
}

uint64_t sub_100023F3C()
{
  v0 = 960051513;
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_1000242E8(v1);
  if (v2)
  {
    sub_100059E8C(v2, &v5);

    if (v6)
    {
      sub_1000243C8(&v5, v7);
      sub_1000243C8(v7, &v5);
      if (swift_dynamicCast())
      {
        return v4;
      }
    }

    else
    {
      sub_100024360(&v5);
    }
  }

  return v0;
}

void sub_100024028(uint64_t *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = MobileGestalt_copy_deviceName_obj();
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = MobileGestalt_copy_marketingProductName_obj();
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = MobileGestalt_copy_productType_obj();
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = MobileGestalt_copy_productVersion_obj();
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v22;
  v43 = v21;

  v23 = MobileGestalt_copy_supplementalBuildVersion_obj();
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v26;
  v39 = v25;

  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  v40 = v18;
  v41 = v16;
  v27 = v13;
  v28 = v11;
  if (byte_100095B00 != 1)
  {
    v31 = v8;
    v32 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_13;
  }

  v29 = MobileGestalt_copy_serialNumber_obj();
  if (v29)
  {
    v30 = v29;
    v31 = v8;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

LABEL_13:
    v35 = sub_100023F3C();
    v37 = v36;

    *a1 = v6;
    a1[1] = v31;
    a1[2] = v28;
    a1[3] = v27;
    a1[4] = v41;
    a1[5] = v40;
    a1[6] = v43;
    a1[7] = v42;
    a1[8] = v39;
    a1[9] = v38;
    a1[10] = v35;
    a1[11] = v37;
    a1[12] = v32;
    a1[13] = v34;
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_100024254()
{
  v1 = v0[65];
  v2 = v0[62];
  v3 = v0[59];

  sub_10000D9BC((v0 + 44));
  sub_10000D9BC((v0 + 46));
  sub_10000D9BC((v0 + 48));

  v4 = v0[1];
  v5 = v0[70];

  return v4();
}

uint64_t sub_1000242E8(void *a1)
{
  v2 = [a1 infoDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100024360(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008E4B0, &qword_10006D2D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1000243C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000243D8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100024418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002446C(unint64_t a1)
{
  if (a1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

uint64_t sub_1000244BC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002446C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000244F8(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

id sub_10002451C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v74[1] = a2;
  v3 = type metadata accessor for SHA256();
  v4 = sub_100001EDC(v3);
  v76 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100001EAC();
  v10 = v9 - v8;
  *&v83 = type metadata accessor for String.Encoding();
  v11 = sub_100001EDC(v83);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100001EAC();
  v18 = (v17 - v16);
  v19 = type metadata accessor for SHA256Digest();
  v20 = sub_100001EDC(v19);
  v78 = v21;
  v79 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_10000286C();
  v75 = v24 - v25;
  __chkstk_darwin(v26);
  v77 = v74 - v27;
  v28 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  sub_10000286C();
  v32 = v30 - v31;
  v34 = __chkstk_darwin(v33);
  v36 = v74 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = v74 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = v74 - v41;
  __chkstk_darwin(v40);
  v44 = v74 - v43;
  v45 = type metadata accessor for URL();
  v46 = sub_100001EDC(v45);
  v81 = v47;
  v82 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v46);
  sub_100001EAC();
  v80 = v51 - v50;
  switch(a1)
  {
    case 1:
      goto LABEL_10;
    case 2:
      goto LABEL_4;
    case 3:
      goto LABEL_8;
    default:
      URL.init(string:)();
      if (sub_100006F9C(v44) != 1)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_4:
      a1 = v82;
      if (qword_10008DDC0 == -1)
      {
        goto LABEL_5;
      }

      break;
  }

  while (1)
  {
    sub_100001EBC();
LABEL_5:
    if (byte_100095B00 == 1)
    {
      URL.init(string:)();
      v44 = v39;
      if (sub_100002694(v39, 1, a1) != 1)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_8:
      URL.init(string:)();
      v44 = v32;
      if (sub_100006F9C(v32) != 1)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_10:
      URL.init(string:)();
      v44 = v42;
      if (sub_100006F9C(v42) != 1)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    URL.init(string:)();
    result = sub_100002694(v36, 1, a1);
    v44 = v36;
    if (result == 1)
    {
      goto LABEL_33;
    }

LABEL_13:
    (*(v81 + 32))(v80, v44, a1);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      break;
    }

    v53 = result;
    result = MobileGestalt_copy_marketingProductName_obj();
    if (!result)
    {
      goto LABEL_31;
    }

    v54 = result;
    v74[0] = v53;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.Encoding.utf8.getter();
    v36 = String.data(using:allowLossyConversion:)();
    v39 = v55;
    result = (*(v13 + 8))(v18, v83);
    if (v39 >> 60 == 15)
    {
      goto LABEL_32;
    }

    v32 = sub_100025D30(&qword_10008E4D0, &type metadata accessor for SHA256);
    dispatch thunk of HashFunction.init()();
    v56 = sub_100003D1C();
    sub_100025CD8(v56, v57);
    v58 = sub_100003D1C();
    sub_100025C3C(v58, v59);
    v60 = sub_100003D1C();
    sub_100022E50(v60, v61);
    v62 = v77;
    dispatch thunk of HashFunction.finalize()();
    (*(v76 + 8))(v10, v3);
    v63 = sub_100003D1C();
    sub_100022E50(v63, v64);
    (*(v78 + 16))(v75, v62, v79);
    sub_100025D30(&qword_10008E4D8, &type metadata accessor for SHA256Digest);
    dispatch thunk of Sequence.makeIterator()();
    v65 = v84;
    v3 = v85;
    v13 = v84[2];
    v18 = _swiftEmptyArrayStorage;
    if (v85 == v13)
    {
LABEL_17:

      v84 = v18;
      sub_1000228D4(&qword_10008E4E8, &qword_10006D370);
      sub_100026538(&qword_10008E4F0, &qword_10008E4E8, &qword_10006D370);
      BidirectionalCollection<>.joined(separator:)();

      v66 = v80;
      URL.appendingPathComponent(_:isDirectory:)();

      (*(v78 + 8))(v77, v79);
      return (*(v81 + 8))(v66, v82);
    }

    a1 = (v84 + 4);
    v83 = xmmword_10006CAD0;
    v10 = v85;
    while ((v3 & 0x8000000000000000) == 0)
    {
      if (v10 >= v65[2])
      {
        goto LABEL_28;
      }

      v67 = *(a1 + v10);
      sub_1000228D4(&qword_10008E4E0, &unk_10006FAE0);
      v68 = swift_allocObject();
      *(v68 + 16) = v83;
      *(v68 + 56) = &type metadata for UInt8;
      *(v68 + 64) = &protocol witness table for UInt8;
      *(v68 + 32) = v67;
      v39 = String.init(format:_:)();
      v32 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = v18[2];
        sub_100020328();
        v18 = v72;
      }

      v36 = v18[2];
      v42 = (v36 + 1);
      if (v36 >= v18[3] >> 1)
      {
        sub_100020328();
        v18 = v73;
      }

      ++v10;
      v18[2] = v42;
      v70 = &v18[2 * v36];
      v70[4] = v39;
      v70[5] = v32;
      if (v13 == v10)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_100024D2C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000244F8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100024D68()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095990);
  sub_1000050E4(v0, qword_100095990);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100024E08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100024DE0();
  *a1 = result;
  return result;
}

uint64_t sub_100024E30(uint64_t a1)
{
  v2 = sub_10001DD84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100024E6C(uint64_t a1)
{
  v2 = sub_10001DD84();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100024EA8(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1)
    {
      return 0xD000000000000025;
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  else
  {
    _StringGuts.grow(_:)(19);

    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    return 0xD000000000000011;
  }
}

uint64_t sub_100024F8C()
{
  result = sub_100024FAC();
  qword_10008E4B8 = result;
  return result;
}

uint64_t sub_100024FAC()
{
  v0 = type metadata accessor for Data.Deallocator();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  size[0] = 0;
  v5 = _NSGetMachExecuteHeader();
  if (getsectiondata(v5, "__TEXT", "__info_plist", size) && size[0])
  {
    if ((size[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    (*(v1 + 104))(v4, enum case for Data.Deallocator.none(_:), v0);
    v6 = Data.init(bytesNoCopy:count:deallocator:)();
    v8 = v7;
    v9 = type metadata accessor for PropertyListDecoder();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    v33 = 100;
    v12 = objc_autoreleasePoolPush();
    sub_100025B84();
    v31 = v8;
    v32 = v6;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:format:)();
    objc_autoreleasePoolPop(v12);
    v13 = size[9];
    v14 = size[10];
    sub_1000228D4(&qword_10008E4C8, &qword_10006D358);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006D1D0;
    *(inited + 32) = kSecAttrKeyType;
    *(inited + 40) = kSecAttrKeyTypeRSA;
    *(inited + 48) = kSecAttrKeyClass;
    *(inited + 56) = kSecAttrKeyClassPublic;
    type metadata accessor for CFString(0);
    sub_100025D30(&qword_10008E310, type metadata accessor for CFString);
    v16 = kSecAttrKeyType;
    v17 = kSecAttrKeyTypeRSA;
    v18 = kSecAttrKeyClass;
    v19 = kSecAttrKeyClassPublic;
    Dictionary.init(dictionaryLiteral:)();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v21 = Dictionary._bridgeToObjectiveC()().super.isa;
    v22 = SecKeyCreateWithData(isa, v21, 0);

    if (v22)
    {

      sub_100005954(v32, v31);

      sub_100005954(v13, v14);
      return v22;
    }

    if (qword_10008DD18 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000050E4(v28, qword_100095990);
    v25 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v25, v29, "unable to parse storebag key", v30, 2u);
    }
  }

  else
  {
    if (qword_10008DD18 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000050E4(v24, qword_100095990);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "unable to load Info.plist section", v27, 2u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_1000255D8(uint64_t *a1)
{
  v3 = sub_1000228D4(&qword_10008E540, &qword_10006D760);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100008DE4(a1, a1[3]);
  sub_1000265D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005284(a1);
  }

  else
  {
    sub_10002662C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_100005284(a1);
  }

  return v9;
}

void *sub_10002574C(uint64_t *a1)
{
  v3 = sub_1000228D4(&qword_10008E5C0, &qword_10006DA40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100008DE4(a1, a1[3]);
  sub_1000269D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005284(a1);
  }

  else
  {
    sub_10001CB74();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_100005284(a1);
  }

  return v9;
}

BOOL sub_1000258D0@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002081C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100025904@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000255B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_100025930@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10002081C(a1);
  *a2 = result;
  return result;
}