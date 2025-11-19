uint64_t sub_10001DCF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncLibraryInfoResponse(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DD54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001EDC4;

  return sub_1000187F8(a1, v4, v5, v6);
}

unint64_t sub_10001DE08()
{
  result = qword_100098B40;
  if (!qword_100098B40)
  {
    sub_100009C90(255, &qword_100098B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098B40);
  }

  return result;
}

uint64_t sub_10001DE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001DED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001DF94()
{
  result = qword_100098B48;
  if (!qword_100098B48)
  {
    type metadata accessor for IDSMessagingService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098B48);
  }

  return result;
}

uint64_t sub_10001DFEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[18];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001EDC4;

  return sub_10001D79C(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_10001E124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000154C0;

  return sub_10001D97C(a1, v4, v5, v6);
}

uint64_t sub_10001E1E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001EDC4;

  return sub_10001DA40(a1, v4, v5, v6);
}

uint64_t sub_10001E2AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001E310(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001EDC4;

  return sub_100014EBC(a1, a2);
}

uint64_t sub_10001E3BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001EDC4;

  return sub_100014F60(a1, a2, v6);
}

uint64_t sub_10001E484(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001EDC4;

  return sub_100015190(a1, a2);
}

uint64_t sub_10001E530(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001EDC4;

  return sub_100015234(a1, a2, v6);
}

uint64_t sub_10001E5F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001EDC4;

  return sub_100015334(a1);
}

uint64_t sub_10001E694(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000154C0;

  return sub_1000153CC(a1, v4);
}

uint64_t sub_10001E748()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001EDC4;

  return sub_10001458C();
}

uint64_t sub_10001E7FC(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_10001E854(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001EDC4;

  return sub_100014390(a1, v4, v5, v6);
}

uint64_t sub_10001E908()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001EDC4;

  return sub_1000155B4(v0);
}

uint64_t sub_10001E998()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t getEnumTagSinglePayload for NanoPhotosSyncServerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NanoPhotosSyncServerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10001EB3C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001EB50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001EB70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

unint64_t sub_10001EBBC()
{
  result = qword_100098B80;
  if (!qword_100098B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098B80);
  }

  return result;
}

uint64_t sub_10001ECC0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001ED00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001EDC4;

  return sub_10001DBE8(a1, v4, v5, v6);
}

uint64_t sub_10001EDC8()
{

  return sub_10001BEA0();
}

void *sub_10001EE48()
{
  v1 = *v0;
  if (v1 != 2)
  {
    *&v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v29 + 1) = v2;
    AnyHashable.init<A>(_:)();
    v30 = &type metadata for Bool;
    LOBYTE(v29) = v1;
    sub_100004BEC(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10001F518(v28, v31, isUniquelyReferenced_nonNull_native);
    sub_10001F664(v31);
  }

  if ((v0[16] & 1) == 0)
  {
    v4 = *(v0 + 1);
    *&v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v29 + 1) = v5;
    AnyHashable.init<A>(_:)();
    v30 = &type metadata for Int;
    *&v29 = v4;
    sub_100004BEC(&v29, v28);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_10001F518(v28, v31, v6);
    sub_10001F664(v31);
  }

  v7 = v0[17];
  if (v7 != 2)
  {
    *&v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v29 + 1) = v8;
    AnyHashable.init<A>(_:)();
    v30 = &type metadata for Bool;
    LOBYTE(v29) = v7;
    sub_100004BEC(&v29, v28);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_10001F518(v28, v31, v9);
    sub_10001F664(v31);
  }

  if ((v0[32] & 1) == 0)
  {
    v10 = *(v0 + 3);
    *&v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v29 + 1) = v11;
    AnyHashable.init<A>(_:)();
    v30 = &type metadata for Double;
    *&v29 = v10;
    sub_100004BEC(&v29, v28);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_10001F518(v28, v31, v12);
    sub_10001F664(v31);
  }

  v13 = *(v0 + 6);
  if (v13)
  {
    v14 = *(v0 + 5);
    *&v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v29 + 1) = v15;

    AnyHashable.init<A>(_:)();
    v30 = &type metadata for String;
    *&v29 = v14;
    *(&v29 + 1) = v13;
    sub_100004BEC(&v29, v28);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_10001F518(v28, v31, v16);
    sub_10001F664(v31);
  }

  v17 = v0[56];
  if (v17 != 2)
  {
    *&v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v29 + 1) = v18;
    AnyHashable.init<A>(_:)();
    v30 = &type metadata for Bool;
    LOBYTE(v29) = v17;
    sub_100004BEC(&v29, v28);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_10001F518(v28, v31, v19);
    sub_10001F664(v31);
  }

  v20 = *(v0 + 9);
  if (v20)
  {
    v21 = *(v0 + 8);
    *&v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v29 + 1) = v22;

    AnyHashable.init<A>(_:)();
    v30 = &type metadata for String;
    *&v29 = v21;
    *(&v29 + 1) = v20;
    sub_100004BEC(&v29, v28);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_10001F518(v28, v31, v23);
    sub_10001F664(v31);
  }

  v24 = v0[80];
  if (v24 != 2)
  {
    *&v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v29 + 1) = v25;
    AnyHashable.init<A>(_:)();
    v30 = &type metadata for Bool;
    LOBYTE(v29) = v24;
    sub_100004BEC(&v29, v28);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_10001F518(v28, v31, v26);
    sub_10001F664(v31);
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_10001F294(__int128 *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000474E0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100041624();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100040A74(v14, a3 & 1);
    v9 = sub_1000474E0(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;
    sub_100009B58(v20);

    return sub_100002B00(a1, v20);
  }

  else
  {

    return sub_10001F6B8(v9, a2, a1, v19);
  }
}

uint64_t sub_10001F3C4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100047550(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000417A4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100040D10(v16, a4 & 1);
    v11 = sub_100047550(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    sub_100009B58(v22);

    return sub_100002B00(a1, v22);
  }

  else
  {
    sub_10001F724(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_10001F518(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000475C8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10004194C();
      goto LABEL_7;
    }

    sub_100040FD4(v13, a3 & 1);
    v19 = sub_1000475C8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10001F810(a2, v21);
      return sub_10001F794(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100009B58(v17);

  return sub_100004BEC(a1, v17);
}

uint64_t sub_10001F6B8(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_100002B00(a3, a4[7] + 40 * a1);
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

uint64_t sub_10001F724(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100002B00(a4, a5[7] + 40 * a1);
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

_OWORD *sub_10001F794(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100004BEC(a3, (a4[7] + 32 * a1));
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

__n128 sub_10001F86C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10001F890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10001F8EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_10001F968(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for SHA256Digest();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for SHA256();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v5 = type metadata accessor for SyncCollectionTargetList(0);
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v6 = type metadata accessor for SyncLibrary(0);
  v2[33] = v6;
  v2[34] = *(v6 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return _swift_task_switch(sub_10001FB8C, 0, 0);
}

uint64_t sub_10001FB8C()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001FCA8;
  v2 = swift_continuation_init();
  v0[17] = sub_100004180(&qword_100098B90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100020478;
  v0[13] = &unk_10008A4F0;
  v0[14] = v2;
  [v1 composeSyncRequestWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001FCA8()
{

  return _swift_task_switch(sub_10001FD88, 0, 0);
}

void sub_10001FD88()
{
  v1 = v0[18];
  v2 = [v1 library];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v2 data];

  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  BinaryDecodingOptions.init()();
  sub_100020BE0(&qword_100098B98, type metadata accessor for SyncLibrary);
  Message.init(serializedData:extensions:partial:options:)();
  v5 = [v1 collectionTargetList];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v5 data];

  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  BinaryDecodingOptions.init()();
  sub_100020BE0(&qword_100098BA0, type metadata accessor for SyncCollectionTargetList);
  Message.init(serializedData:extensions:partial:options:)();
  v43 = v1;
  v8 = v0[34];
  v38 = v0[35];
  v9 = v0[33];
  v34 = v0[36];
  v35 = v9;
  v41 = v0[29];
  v42 = v0[30];
  v10 = v0[28];
  v44 = v0[27];
  v11 = v0[19];
  UnknownStorage.init()();
  v12 = type metadata accessor for SyncLibraryInfoResponse(0);
  v13 = v12[5];
  v36 = *(v8 + 56);
  v36(v11 + v13, 1, 1, v9);
  v14 = v12[6];
  v15 = *(v10 + 56);
  v15(v11 + v14, 1, 1, v44);
  v16 = (v11 + v12[7]);
  *v16 = 0;
  v16[1] = 0;
  v33 = v16;
  sub_1000204F4(v34, v38, type metadata accessor for SyncLibrary);
  sub_100009BA4(v11 + v13, &qword_100098BA8);
  sub_10002055C(v38, v11 + v13, type metadata accessor for SyncLibrary);
  v36(v11 + v13, 0, 1, v35);
  sub_1000204F4(v42, v41, type metadata accessor for SyncCollectionTargetList);
  sub_100009BA4(v11 + v14, &qword_100098BB0);
  sub_10002055C(v41, v11 + v14, type metadata accessor for SyncCollectionTargetList);
  v15(v11 + v14, 0, 1, v44);
  SHA256.init()();
  v17 = Message.serializedData(partial:)();
  v19 = v18;
  sub_10001D464(v17, v18);
  sub_1000208BC(v17, v19);
  sub_10001D4B8(v17, v19);
  sub_10001D4B8(v17, v19);
  sub_100020BE0(&qword_100098BB8, type metadata accessor for SyncLibraryInfoResponse);
  v20 = Message.serializedData(partial:)();
  v21 = v0[36];
  v23 = v0[25];
  v22 = v0[26];
  v24 = v0[23];
  v39 = v0[30];
  v40 = v0[24];
  v25 = v0[22];
  v37 = v0[21];
  v26 = v20;
  v28 = v27;
  sub_10001D464(v20, v27);
  sub_1000208BC(v26, v28);
  sub_10001D4B8(v26, v28);
  sub_10001D4B8(v26, v28);
  SHA256.finalize()();
  v29 = sub_100020624();
  v31 = v30;

  (*(v25 + 8))(v24, v37);
  sub_1000205C4(v39, type metadata accessor for SyncCollectionTargetList);
  sub_1000205C4(v21, type metadata accessor for SyncLibrary);
  *v33 = v29;
  v33[1] = v31;
  (*(v23 + 8))(v22, v40);

  v32 = v0[1];

  v32();
}

uint64_t sub_100020478(uint64_t a1, void *a2)
{
  v3 = sub_10001DCAC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1000204F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002055C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000205C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100020624()
{
  v1 = type metadata accessor for SHA256Digest();
  __chkstk_darwin(v1);
  (*(v3 + 16))(&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  sub_100020BE0(&qword_100098BC0, &type metadata accessor for SHA256Digest);
  result = dispatch thunk of Sequence.makeIterator()();
  v5 = v20;
  v6 = v21;
  v7 = v20[2];
  v8 = &_swiftEmptyArrayStorage;
  if (v21 == v7)
  {
LABEL_2:

    v20 = v8;
    sub_100004180(&qword_1000986C0);
    sub_100020A9C();
    v9 = BidirectionalCollection<>.joined(separator:)();

    return v9;
  }

  else
  {
    v19 = xmmword_10006FCE0;
    v10 = v21;
    while ((v6 & 0x8000000000000000) == 0)
    {
      if (v10 >= v5[2])
      {
        goto LABEL_13;
      }

      v11 = *(v5 + v10 + 32);
      sub_100004180(&qword_100098678);
      v12 = swift_allocObject();
      *(v12 + 16) = v19;
      *(v12 + 56) = &type metadata for UInt8;
      *(v12 + 64) = &protocol witness table for UInt8;
      *(v12 + 32) = v11;
      v13 = String.init(format:_:)();
      v15 = v14;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100046FA8(0, v8[2] + 1, 1, v8);
        v8 = result;
      }

      v17 = v8[2];
      v16 = v8[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_100046FA8((v16 > 1), v17 + 1, 1, v8);
        v8 = result;
      }

      ++v10;
      v8[2] = v17 + 1;
      v18 = &v8[2 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      if (v7 == v10)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000208BC(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_100020BE0(&unk_100098BD0, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100020B00(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_100020B00(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_100020BE0(&unk_100098BD0, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

unint64_t sub_100020A9C()
{
  result = qword_100098BC8;
  if (!qword_100098BC8)
  {
    sub_1000055FC(&qword_1000986C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098BC8);
  }

  return result;
}

uint64_t sub_100020B00(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100020BE0(&unk_100098BD0, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100020BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100020C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100020CBC;

  return sub_100021AE0();
}

uint64_t sub_100020CBC()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100020DCC, v1, 0);
}

uint64_t sub_100020DCC()
{
  sub_1000211F8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100020E84()
{
  if (*(v0 + 144))
  {

    Task.cancel()();
  }

  if (*(v0 + 152))
  {

    Task.cancel()();
  }

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100020F4C()
{
  sub_100020E84();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100020F98()
{
  v1 = *(v0 + 16);
  if ((*(v1 + 136) & 1) == 0)
  {
    *(v1 + 136) = 1;
    v2 = *(v1 + 160);
    if (v2)
    {
      [v2 resume];
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100021058()
{
  v1 = *(v0 + 16);
  if (*(v1 + 136) == 1)
  {
    *(v1 + 136) = 0;
    v2 = *(v1 + 160);
    if (v2)
    {
      [v2 pause];
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000210F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;

  sub_10003F3C4(0, 0, v8, a4, v10);
}

uint64_t sub_1000211F8()
{
  v1 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  if (*(v0 + 144))
  {

    Task.cancel()();
  }

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  *(v0 + 144) = sub_10003F3C4(0, 0, v3, &unk_1000704A0, v6);
}

uint64_t sub_10002135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_100004180(&qword_100098C50);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100021454, 0, 0);
}

uint64_t sub_100021454()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v2 = sub_100023BB8();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_10002156C;
  v4 = v0[7];
  v5 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_10002156C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10002187C;
  }

  else
  {
    v2 = sub_100021680;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002169C()
{
  v1 = v0[7];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v0[13] = Strong;
    if (Strong)
    {
      v6 = swift_task_alloc();
      v0[14] = v6;
      *v6 = v0;
      v6[1] = sub_100021908;

      return sub_100021AE0();
    }

    else
    {
      sub_100009BA4(v0[7], &qword_100098C50);
      v7 = sub_100023BB8();
      v8 = swift_task_alloc();
      v0[11] = v8;
      *v8 = v0;
      v8[1] = sub_10002156C;
      v9 = v0[7];
      v10 = v0[8];

      return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v7);
    }
  }
}

uint64_t sub_10002187C()
{
  *(v0 + 40) = *(v0 + 96);
  sub_100004180(&unk_100098B20);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100021908()
{

  return _swift_task_switch(sub_100021A20, 0, 0);
}

uint64_t sub_100021A20()
{
  sub_100009BA4(v0[7], &qword_100098C50);
  v1 = sub_100023BB8();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10002156C;
  v3 = v0[7];
  v4 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_100021AE0()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = sub_100009C90(0, &unk_100098C30);

  return _swift_task_switch(sub_100021B60, 0, 0);
}

uint64_t sub_100021B60()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_100004180(&qword_100098B10);
  *v3 = v0;
  v3[1] = sub_100021C64;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x6168735F6F74706ELL, 0xEB00000000646572, sub_10001D5D0, v2, v4);
}

uint64_t sub_100021C64()
{

  return _swift_task_switch(sub_100021D7C, 0, 0);
}

uint64_t sub_100021D7C()
{
  v1 = v0[5];
  v0[9] = v0[2];
  return _swift_task_switch(sub_100021DA0, v1, 0);
}

uint64_t sub_100021DA0()
{
  v21 = v0;
  v1 = v0[5];
  if (v0[9])
  {
    v2 = *(v1 + 112);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_1000220C8;

    return sub_1000438E0(v2);
  }

  else if (*(v1 + 128))
  {
    v0[12] = 0;
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100004D08(v5, qword_10009C6A8);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = *(v1 + 128);
      v0[3] = v9;
      v10 = v9;
      sub_100004180(&unk_100098C40);
      v11 = String.init<A>(describing:)();
      v13 = sub_1000095B0(v11, v12, &v20);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      v0[4] = 0;
      v14 = String.init<A>(describing:)();
      v16 = sub_1000095B0(v14, v15, &v20);

      *(v8 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "[DeviceController] NRDevice has been updated from %s to %s!", v8, 0x16u);
      swift_arrayDestroy();
    }

    v17 = *(v1 + 128);
    *(v1 + 128) = 0;

    sub_100022680();
    v18 = swift_task_alloc();
    v0[13] = v18;
    *v18 = v0;
    v18[1] = sub_100022510;

    return sub_1000231A0();
  }

  else
  {
    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000220C8(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 40);
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1000221F8, v3, 0);
}

uint64_t sub_1000221F8()
{
  v27 = v0;
  v1 = v0[11];
  v2 = v0[5];
  v3 = *(v2 + 128);
  if (v1)
  {
    if (v3)
    {
      sub_100009C90(0, &qword_100098258);
      v4 = v3;
      v5 = v1;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {

LABEL_7:
        v7 = v0[1];

        return v7();
      }

      v1 = v0[11];
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v1 = 0;
  }

  v0[12] = v1;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100004D08(v9, qword_10009C6A8);
  v10 = v1;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = *(v2 + 128);
    v0[3] = v14;
    v15 = v14;
    sub_100004180(&unk_100098C40);
    v16 = String.init<A>(describing:)();
    v18 = sub_1000095B0(v16, v17, &v26);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v0[4] = v1;
    v19 = v10;
    v20 = String.init<A>(describing:)();
    v22 = sub_1000095B0(v20, v21, &v26);

    *(v13 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "[DeviceController] NRDevice has been updated from %s to %s!", v13, 0x16u);
    swift_arrayDestroy();
  }

  v23 = *(v2 + 128);
  *(v2 + 128) = v1;
  v24 = v10;

  sub_100022680();
  v25 = swift_task_alloc();
  v0[13] = v25;
  *v25 = v0;
  v25[1] = sub_100022510;

  return sub_1000231A0();
}

uint64_t sub_100022510()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100022620, v1, 0);
}

uint64_t sub_100022620()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022680()
{
  v1 = v0;
  v2 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  if (*(v0 + 152))
  {

    Task.cancel()();
  }

  v5 = *(v0 + 128);
  if (v5)
  {
    v6 = qword_1000988C0;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100004D08(v8, qword_10009C6A8);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v5;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "[DeviceController] Observing device capability updates for %@.", v12, 0xCu);
      sub_100009BA4(v13, &qword_1000985D8);
    }

    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v9;
    v17[5] = v16;
    *(v1 + 152) = sub_10003F3C4(0, 0, v4, &unk_100070458, v17);
  }

  else
  {
    *(v0 + 152) = 0;
  }
}

uint64_t sub_10002294C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_100004180(&qword_100098C10);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_100004180(&qword_100098C18);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = sub_100004180(&qword_100098C20);
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_100022AE8, 0, 0);
}

uint64_t sub_100022AE8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v13 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v12 = v0[5];
  sub_100004180(&qword_100098C28);
  type metadata accessor for UUID();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10006FCE0;
  v7 = [objc_opt_self() npto_photosSyncV2Capability];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  *v3 = 1;
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v5);
  v8 = swift_task_alloc();
  *(v8 + 16) = v12;
  *(v8 + 24) = v6;
  AsyncStream.init(_:bufferingPolicy:_:)();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v13);
  swift_beginAccess();
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_100022D74;
  v10 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v0 + 19, 0, 0, v10);
}

uint64_t sub_100022D74()
{

  return _swift_task_switch(sub_100022E70, 0, 0);
}

uint64_t sub_100022E70()
{
  if (*(v0 + 152))
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    *(v0 + 136) = Strong;
    if (Strong)
    {
      v4 = swift_task_alloc();
      *(v0 + 144) = v4;
      *v4 = v0;
      v4[1] = sub_100023014;

      return sub_1000231A0();
    }

    else
    {
      v5 = swift_task_alloc();
      *(v0 + 128) = v5;
      *v5 = v0;
      v5[1] = sub_100022D74;
      v6 = *(v0 + 104);

      return AsyncStream.Iterator.next(isolation:)(v0 + 152, 0, 0, v6);
    }
  }
}

uint64_t sub_100023014()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 128) = v3;
  *v3 = v2;
  v3[1] = sub_100022D74;
  v4 = *(v1 + 104);

  return AsyncStream.Iterator.next(isolation:)(v1 + 152, 0, 0, v4);
}

uint64_t sub_1000231A0()
{
  v1[3] = v0;
  v2 = type metadata accessor for UUID();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100023260, v0, 0);
}

uint64_t sub_100023260()
{
  v20 = v0;
  v1 = v0[3];
  v2 = *(v1 + 128);
  v0[7] = v2;
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 npto_photosSyncV2Capability];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_task_switch(sub_1000234E4, 0, 0);
  }

  else
  {
    *(v1 + 160) = 0;
    swift_unknownObjectRelease();
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100004D08(v6, qword_10009C6A8);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[3];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v0[2] = *(v9 + 160);
      swift_unknownObjectRetain();
      sub_100004180(&qword_100098C08);
      v12 = String.init<A>(describing:)();
      v14 = sub_1000095B0(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "[DeviceController] Concrete device controller has been updated to %s.", v10, 0xCu);
      sub_100009B58(v11);
    }

    v15 = v0[3];
    if (*(v15 + 136) == 1)
    {
      v16 = *(v15 + 160);
      if (v16)
      {
        [v16 resume];
      }
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1000234E4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1000235DC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 10, 0, 0, 0xD00000000000001BLL, 0x80000001000780B0, sub_100023A34, v3, &type metadata for Bool);
}

uint64_t sub_1000235DC()
{

  return _swift_task_switch(sub_1000236F4, 0, 0);
}

uint64_t sub_1000236F4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 81) = *(v0 + 80);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100023774, v4, 0);
}

uint64_t sub_100023774()
{
  v21 = v0;
  v1 = *(v0 + 24);
  v2 = v1[14];
  v3 = v1[15];
  v4 = *(v0 + 56);
  if (*(v0 + 81) == 1)
  {
    type metadata accessor for ServerDeviceController();
    swift_allocObject();
    v5 = sub_100013974(v2, v3);
  }

  else
  {
    v5 = [objc_allocWithZone(NPTOLegacyCompanionSyncDeviceController) initWithDevice:v2 service:v3];
  }

  v6 = v5;

  v1[20] = v6;
  swift_unknownObjectRelease();
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100004D08(v7, qword_10009C6A8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 24);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v0 + 16) = *(v10 + 160);
    swift_unknownObjectRetain();
    sub_100004180(&qword_100098C08);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000095B0(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "[DeviceController] Concrete device controller has been updated to %s.", v11, 0xCu);
    sub_100009B58(v12);
  }

  v16 = *(v0 + 24);
  if (*(v16 + 136) == 1)
  {
    v17 = *(v16 + 160);
    if (v17)
    {
      [v17 resume];
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100023A3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001EDC4;

  return sub_10002294C(a1, v4, v5, v7, v6);
}

uint64_t sub_100023B04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000154C0;

  return sub_10002135C(a1, v4, v5, v6);
}

unint64_t sub_100023BB8()
{
  result = qword_100098C58;
  if (!qword_100098C58)
  {
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098C58);
  }

  return result;
}

uint64_t sub_100023C10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001EDC4;

  return sub_100021038(a1, v4, v5, v6);
}

uint64_t sub_100023CC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001EDC4;

  return sub_100020F78(a1, v4, v5, v6);
}

id sub_100023D78(void *a1, void *a2)
{
  v5 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  swift_defaultActor_initialize();
  *(v2 + 120) = a2;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 144) = 0;
  *(v2 + 112) = a1;
  v8 = type metadata accessor for MiddlewareDeviceController();
  v16.receiver = v2;
  v16.super_class = v8;
  v9 = a1;
  v10 = a2;
  v11 = objc_msgSendSuper2(&v16, "init");
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v14 = v11;
  sub_10003F3C4(0, 0, v7, &unk_1000704E0, v13);

  return v14;
}

uint64_t sub_100023ED4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100023F14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001EDC4;

  return sub_100020C28(a1, v4, v5, v6);
}

id sub_100023FC8()
{
  v1 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100004D08(v2, qword_10009C6A8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *(v1 + 112);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[InitialSync] Configured sync coordinator %@.", v5, 0xCu);
    sub_100024314(v6);
  }

  v9 = *(v1 + 112);

  return [v9 setDelegate:v1];
}

uint64_t sub_100024150()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_10002421C(void *a1)
{
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100004D08(v2, qword_10009C6A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[InitialSync] Received sync session begin. Complete immediately.", v5, 2u);
  }

  return [a1 syncDidComplete];
}

uint64_t sub_100024314(uint64_t a1)
{
  v2 = sub_100004180(&qword_1000985D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002437C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return _swift_task_switch(sub_1000243A4, v4, 0);
}

uint64_t sub_1000243A4()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v10 = *(v0 + 128);
  (*(v10 + 40))(v1, *(v0 + 128));
  sub_100030D68(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v10;
  *(v5 + 40) = v2;
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v6 = v0;
  v6[1] = sub_1000244F8;
  v8 = *(v0 + 104);

  return withCancellationHandlingContinuation<A>(timeout:_:)(v8, v3, v4, sub_100030DBC, v5, AssociatedTypeWitness);
}

uint64_t sub_1000244F8()
{
  v2 = *v1;
  v2[20] = v0;

  if (v0)
  {
    v3 = v2[17];

    return _swift_task_switch(sub_100024634, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100024634()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100024698(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v13 = a1;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v11 - 8);
  __chkstk_darwin(v11);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  swift_defaultActor_initialize();
  v2[16] = &_swiftEmptyDictionarySingleton;
  v2[17] = &_swiftEmptyDictionarySingleton;
  sub_100009C90(0, &qword_1000983B0);
  static DispatchQoS.unspecified.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_100030DC8(&qword_100098DB0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004180(&unk_1000983C0);
  sub_100030BB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  v2[18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = v13;
  v2[14] = v12;
  v2[15] = v8;
  v9 = type metadata accessor for IDSMessagingService();
  v14.receiver = v2;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_10002491C()
{
  v1 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100004D08(v2, qword_10009C6A8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v1;
    *v6 = v1;

    _os_log_impl(&_mh_execute_header, v3, v4, "[Messaging] Resuming messaging service %@", v5, 0xCu);
    sub_100009BA4(v6, &qword_1000985D8);
  }

  v7 = *(v1 + 120);
  v8 = *(v1 + 144);

  return [v7 addDelegate:v1 queue:v8];
}

uint64_t sub_100024A84(uint64_t a1, char a2)
{
  *(v3 + 200) = a2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v2;
  *(v3 + 160) = a1;
  return _swift_task_switch(sub_100024AAC, v2, 0);
}

uint64_t sub_100024AAC()
{
  v25 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004D08(v1, qword_10009C6A8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    *(v0 + 168) = v5;
    type metadata accessor for TemporaryResourceFile();
    v8 = String.init<A>(describing:)();
    v10 = sub_1000095B0(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Messaging] Handling request %s", v6, 0xCu);
    sub_100009B58(v7);
  }

  else
  {
  }

  v11 = *(v0 + 184);
  swift_beginAccess();
  v12 = *(v11 + 128);
  if (*(v12 + 16) && (v13 = sub_1000474E0(*(v0 + 200)), (v14 & 1) != 0))
  {
    sub_10001E2AC(*(v12 + 56) + 40 * v13, v0 + 16);
    if (*(v0 + 40))
    {
      v15 = *(v0 + 184);
      sub_10001E2AC(v0 + 16, v0 + 56);
      sub_100009BA4(v0 + 16, &qword_100098B78);
      v16 = *(v0 + 80);
      v17 = *(v0 + 88);
      sub_10001DCAC((v0 + 56), v16);
      *(v0 + 120) = type metadata accessor for IDSMessagingService();
      *(v0 + 128) = &off_10008A608;
      *(v0 + 96) = v15;
      v18 = *(v17 + 8);

      v23 = (v18 + *v18);
      v19 = swift_task_alloc();
      *(v0 + 192) = v19;
      v20 = type metadata accessor for TemporaryResourceFile();
      *v19 = v0;
      v19[1] = sub_100024E2C;

      return v23(v0 + 160, v0 + 96, v20, v16, v17);
    }
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_100009BA4(v0 + 16, &qword_100098B78);
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100024E2C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);

  sub_100009B58(v1 + 96);

  return _swift_task_switch(sub_100024F44, v2, 0);
}

uint64_t sub_100024F44()
{
  sub_100009B58(v0 + 56);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100024FA4(uint64_t a1, char a2)
{
  *(v3 + 200) = a2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v2;
  *(v3 + 160) = a1;
  return _swift_task_switch(sub_100024FCC, v2, 0);
}

uint64_t sub_100024FCC()
{
  v26 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = type metadata accessor for Logger();
  sub_100004D08(v2, qword_10009C6A8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    *(v0 + 168) = v6;
    sub_100004180(&unk_100098D80);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000095B0(v9, v10, &v25);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[Messaging] Handling request %s", v7, 0xCu);
    sub_100009B58(v8);
  }

  else
  {
  }

  v12 = *(v0 + 184);
  swift_beginAccess();
  v13 = *(v12 + 128);
  if (*(v13 + 16) && (v14 = sub_1000474E0(*(v0 + 200)), (v15 & 1) != 0))
  {
    sub_10001E2AC(*(v13 + 56) + 40 * v14, v0 + 16);
    if (*(v0 + 40))
    {
      v16 = *(v0 + 184);
      sub_10001E2AC(v0 + 16, v0 + 56);
      sub_100009BA4(v0 + 16, &qword_100098B78);
      v17 = *(v0 + 80);
      v18 = *(v0 + 88);
      sub_10001DCAC((v0 + 56), v17);
      *(v0 + 120) = type metadata accessor for IDSMessagingService();
      *(v0 + 128) = &off_10008A608;
      *(v0 + 96) = v16;
      v19 = *(v18 + 8);

      v24 = (v19 + *v19);
      v20 = swift_task_alloc();
      *(v0 + 192) = v20;
      v21 = sub_100004180(&unk_100098D80);
      *v20 = v0;
      v20[1] = sub_10002535C;

      return v24(v0 + 160, v0 + 96, v21, v17, v18);
    }
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_100009BA4(v0 + 16, &qword_100098B78);
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10002535C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);

  sub_100009B58(v1 + 96);

  return _swift_task_switch(sub_1000314B0, v2, 0);
}

uint64_t sub_100025474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[15] = a1;
  return _swift_task_switch(sub_10002549C, v3, 0);
}

uint64_t sub_10002549C()
{
  v25 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004D08(v1, qword_10009C6A8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 136);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    *(v0 + 128) = v5;
    type metadata accessor for TemporaryResourceFile();
    v8 = String.init<A>(describing:)();
    v10 = sub_1000095B0(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Messaging] Handling response %s", v6, 0xCu);
    sub_100009B58(v7);
  }

  else
  {
  }

  v11 = *(v0 + 160);
  swift_beginAccess();
  v12 = *(v11 + 136);
  if (!*(v12 + 16))
  {
    goto LABEL_13;
  }

  v14 = *(v0 + 144);
  v13 = *(v0 + 152);

  v15 = sub_100047550(v14, v13);
  if ((v16 & 1) == 0)
  {

LABEL_13:
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_14;
  }

  sub_10001E2AC(*(v12 + 56) + 40 * v15, v0 + 16);

  if (*(v0 + 40))
  {
    sub_10001E2AC(v0 + 16, v0 + 56);
    sub_100009BA4(v0 + 16, &qword_100098B50);
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);
    sub_10001DCAC((v0 + 56), v17);
    v23 = (*(v18 + 8) + **(v18 + 8));
    v19 = swift_task_alloc();
    *(v0 + 168) = v19;
    v20 = type metadata accessor for TemporaryResourceFile();
    *v19 = v0;
    v19[1] = sub_100025810;

    return v23(v0 + 120, v20, v17, v18);
  }

LABEL_14:
  sub_100009BA4(v0 + 16, &qword_100098B50);
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100025810()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_100024F44, v1, 0);
}

uint64_t sub_100025920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[15] = a1;
  return _swift_task_switch(sub_100025948, v3, 0);
}

uint64_t sub_100025948()
{
  v26 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = type metadata accessor for Logger();
  sub_100004D08(v2, qword_10009C6A8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    *(v0 + 128) = v6;
    sub_100004180(&unk_100098D80);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000095B0(v9, v10, &v25);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[Messaging] Handling response %s", v7, 0xCu);
    sub_100009B58(v8);
  }

  else
  {
  }

  v12 = *(v0 + 160);
  swift_beginAccess();
  v13 = *(v12 + 136);
  if (!*(v13 + 16))
  {
    goto LABEL_13;
  }

  v15 = *(v0 + 144);
  v14 = *(v0 + 152);

  v16 = sub_100047550(v15, v14);
  if ((v17 & 1) == 0)
  {

LABEL_13:
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_14;
  }

  sub_10001E2AC(*(v13 + 56) + 40 * v16, v0 + 16);

  if (*(v0 + 40))
  {
    sub_10001E2AC(v0 + 16, v0 + 56);
    sub_100009BA4(v0 + 16, &qword_100098B50);
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);
    sub_10001DCAC((v0 + 56), v18);
    v24 = (*(v19 + 8) + **(v19 + 8));
    v20 = swift_task_alloc();
    *(v0 + 168) = v20;
    v21 = sub_100004180(&unk_100098D80);
    *v20 = v0;
    v20[1] = sub_100025CCC;

    return v24(v0 + 120, v21, v18, v19);
  }

LABEL_14:
  sub_100009BA4(v0 + 16, &qword_100098B50);
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100025CCC()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_1000314B0, v1, 0);
}

uint64_t sub_100025DDC(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return _swift_task_switch(sub_100025E00, v2, 0);
}

uint64_t sub_100025E00()
{
  v21 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004D08(v1, qword_10009C6A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    v6 = String.init<A>(describing:)();
    v8 = sub_1000095B0(v6, v7, &v20);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Messaging] Handling response %s", v4, 0xCu);
    sub_100009B58(v5);
  }

  v9 = *(v0 + 136);
  swift_beginAccess();
  v10 = *(v9 + 136);
  if (!*(v10 + 16))
  {
    goto LABEL_12;
  }

  v12 = *(v0 + 120);
  v11 = *(v0 + 128);

  v13 = sub_100047550(v12, v11);
  if ((v14 & 1) == 0)
  {

LABEL_12:
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_13;
  }

  sub_10001E2AC(*(v10 + 56) + 40 * v13, v0 + 16);

  if (*(v0 + 40))
  {
    sub_10001E2AC(v0 + 16, v0 + 56);
    sub_100009BA4(v0 + 16, &qword_100098B50);
    v15 = *(v0 + 88);
    sub_10001DCAC((v0 + 56), *(v0 + 80));
    v19 = (*(v15 + 8) + **(v15 + 8));
    v16 = swift_task_alloc();
    *(v0 + 144) = v16;
    *v16 = v0;
    v16[1] = sub_100026144;

    return v19();
  }

LABEL_13:
  sub_100009BA4(v0 + 16, &qword_100098B50);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100026144()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_1000314B0, v1, 0);
}

uint64_t sub_100026254(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = v4;
  *(v5 + 129) = a2;
  *(v5 + 136) = a1;
  *(v5 + 144) = a3;
  return _swift_task_switch(sub_10002627C, v4, 0);
}

uint64_t sub_10002627C()
{
  v31 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 129);
  v3 = type metadata accessor for Logger();
  sub_100004D08(v3, qword_10009C6A8);
  sub_100030B4C(v1, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_100030A48(v1, v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = *(v0 + 129);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    *(v0 + 120) = v6;
    *(v0 + 128) = v7;
    sub_100030B4C(v6, v7);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000095B0(v10, v11, &v30);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "[Messaging] Handling error %s", v8, 0xCu);
    sub_100009B58(v9);
  }

  v13 = *(v0 + 160);
  swift_beginAccess();
  v14 = *(v13 + 136);
  if (!*(v14 + 16))
  {
    goto LABEL_12;
  }

  v16 = *(v0 + 144);
  v15 = *(v0 + 152);

  v17 = sub_100047550(v16, v15);
  if ((v18 & 1) == 0)
  {

LABEL_12:
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_13;
  }

  sub_10001E2AC(*(v14 + 56) + 40 * v17, v0 + 16);

  if (*(v0 + 40))
  {
    v19 = *(v0 + 136);
    v20 = *(v0 + 129);
    sub_10001E2AC(v0 + 16, v0 + 56);
    sub_100009BA4(v0 + 16, &qword_100098B50);
    v21 = *(v0 + 80);
    v22 = *(v0 + 88);
    sub_10001DCAC((v0 + 56), v21);
    sub_100030B60();
    v23 = swift_allocError();
    *(v0 + 168) = v23;
    *v24 = v19;
    *(v24 + 8) = v20;
    v25 = *(v22 + 16);
    sub_100030B4C(v19, v20);
    v29 = (v25 + *v25);
    v26 = swift_task_alloc();
    *(v0 + 176) = v26;
    *v26 = v0;
    v26[1] = sub_100026638;

    return v29(v23, v21, v22);
  }

LABEL_13:
  sub_100009BA4(v0 + 16, &qword_100098B50);
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100026638()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_100024F44, v1, 0);
}

uint64_t sub_100026798()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100026814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a3, a4);
  v17 = sub_100030DC8(&qword_100098B48, v16, type metadata accessor for IDSMessagingService);
  v18 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = v17;
  v21 = v24;
  *(v20 + 4) = a4;
  *(v20 + 5) = v21;
  *(v20 + 6) = a2;
  (*(v9 + 32))(&v20[v18], v11, a4);
  *&v20[v19] = a1;
  swift_retain_n();

  sub_10001C888(0, 0, v14, &unk_1000706E8, v20);
}

uint64_t sub_100026A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v8[18] = *(a7 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[21] = AssociatedTypeWitness;
  v8[22] = *(AssociatedTypeWitness - 8);
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_100026BB0, a4, 0);
}

uint64_t sub_100026BB0()
{
  v40 = v0;
  if ([*(v0[13] + 112) isTinkerPaired])
  {
    v1 = 300;
  }

  else
  {
    v1 = (*(v0[17] + 64))(v0[16]);
  }

  v2 = v0[23];
  v3 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  (*(v4 + 24))(v5, v4);
  (*(v4 + 40))(v5, v4);
  v6 = sub_100027448(v2, v1, (v0 + 2), v3);
  v8 = v7;
  v0[24] = v6;
  v0[25] = v7;
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_100030D68((v0 + 2));
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v9 = v0[20];
  v10 = v0[18];
  v11 = v0[16];
  v12 = v0[14];
  v13 = type metadata accessor for Logger();
  sub_100004D08(v13, qword_10009C6A8);
  v14 = *(v10 + 16);
  v14(v9, v12, v11);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[20];
  if (v17)
  {
    v37 = v16;
    v19 = v0[18];
    v20 = v0[19];
    v35 = v14;
    v21 = v0[16];
    v22 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_1000095B0(v6, v8, v39);
    *(v22 + 12) = 2080;
    v35(v20, v18, v21);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    (*(v19 + 8))(v18, v21);
    v26 = sub_1000095B0(v23, v25, v39);

    *(v22 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v37, "[Messaging] Sent message with %s for %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v27 = v0[18];
    v28 = v0[16];

    (*(v27 + 8))(v18, v28);
  }

  v29 = v0[15];
  v30 = swift_allocObject();
  v0[26] = v30;
  v38 = *(v0 + 8);
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  v0[27] = v31;
  *(v31 + 16) = v38;
  *(v31 + 32) = v6;
  *(v31 + 40) = v8;
  *(v31 + 48) = v30;
  v32 = *(*v29 + 168);

  v36 = (v32 + *v32);
  v33 = swift_task_alloc();
  v0[28] = v33;
  *v33 = v0;
  v33[1] = sub_1000270C8;

  return v36(&unk_1000706F8, v31);
}

uint64_t sub_1000270C8()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_100027218, v1, 0);
}

uint64_t sub_100027218()
{
  v1 = (*(v0[17] + 32))(v0[16]);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_1000272D8;
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[15];

  return sub_100027B18(v4, v3, v1, v5);
}

uint64_t sub_1000272D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100027448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = *(v7 + 16);
  v11(&v18 - v12, a1, v13);
  type metadata accessor for TemporaryResourceFile();
  if (swift_dynamicCast())
  {
    v14 = sub_100028130(v19, a2);
  }

  else
  {
    v11(v10, a1, a4);
    sub_100009C90(0, qword_100098DE8);
    if (swift_dynamicCast())
    {
      v15 = v19;
      v14 = sub_1000283E8(v19, a2);
    }

    else
    {
      sub_100030B60();
      v14 = swift_allocError();
      *v16 = 1;
      *(v16 + 8) = 3;
      swift_willThrow();
    }
  }

  return v14;
}

uint64_t sub_100027668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for CancellationError();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  v4[14] = sub_1000055FC(&unk_100098B20);
  v6 = type metadata accessor for Result();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_100027810, 0, 0);
}

uint64_t sub_100027810()
{
  v20 = v0;
  (*(v0[16] + 16))(v0[17], v0[7], v0[15]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[17];
  if (EnumCaseMultiPayload == 1)
  {
    v0[5] = *v2;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      (*(v0[12] + 8))(v0[13], v0[11]);
      if (qword_1000988C0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100004D08(v3, qword_10009C6A8);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v7 = v0[8];
        v6 = v0[9];
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v19 = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_1000095B0(v7, v6, &v19);
        _os_log_impl(&_mh_execute_header, v4, v5, "[Messaging] Message with %s is cancelled.", v8, 0xCu);
        sub_100009B58(v9);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = String._bridgeToObjectiveC()();
        v0[6] = 0;
        v13 = [v11 cancelIdentifier:v12 error:v0 + 6];

        v14 = v0[6];
        if (v13)
        {
          v15 = v14;
        }

        else
        {
          v18 = v14;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }
    }
  }

  else
  {
    (*(v0[16] + 8))(v2, v0[15]);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100027B18(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 168) = a3;
  *(v5 + 104) = a1;
  *(v5 + 112) = a2;
  *(v5 + 136) = *a4;
  return _swift_task_switch(sub_100027B68, v4, 0);
}

uint64_t sub_100027B68()
{
  v34 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004D08(v1, qword_10009C6A8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000095B0(v5, v4, &v30);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Messaging] Creating response handler for: %s", v6, 0xCu);
    sub_100009B58(v7);
  }

  v8 = *(v0 + 128);
  swift_beginAccess();
  v9 = *(v8 + 136);
  if (*(v9 + 16))
  {
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);

    v12 = sub_100047550(v11, v10);
    if (v13)
    {
      v15 = *(v0 + 104);
      v14 = *(v0 + 112);
      sub_10001E2AC(*(v9 + 56) + 40 * v12, v0 + 16);

      sub_100009BA4(v0 + 16, &qword_100098B50);
      v30 = 0;
      v31 = 0xE000000000000000;
      _StringGuts.grow(_:)(67);
      v16._object = 0x8000000100077F20;
      v16._countAndFlagsBits = 0xD000000000000041;
      String.append(_:)(v16);
      v17._countAndFlagsBits = v15;
      v17._object = v14;
      String.append(_:)(v17);
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  v19 = *(v0 + 136);
  v20 = *(v0 + 112);
  v21 = *(v0 + 120);
  v22 = *(v0 + 168);
  v23 = *(v0 + 104);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_100009BA4(v0 + 16, &qword_100098B50);
  v24 = *(v19 + 80);
  v32 = type metadata accessor for IDSMessagingService.ResponseHandler();
  v33 = &off_10008A890;
  LOBYTE(v30) = v22;
  v31 = v21;
  swift_beginAccess();

  swift_retain_n();
  sub_10001AEB0(&v30, v23, v20);
  swift_endAccess();
  v25 = swift_allocObject();
  *(v0 + 144) = v25;
  swift_weakInit();
  v26 = swift_allocObject();
  *(v0 + 152) = v26;
  v26[2] = v24;
  v26[3] = v25;
  v26[4] = v23;
  v26[5] = v20;
  v27 = *(*v21 + 168);

  v29 = (v27 + *v27);
  v28 = swift_task_alloc();
  *(v0 + 160) = v28;
  *v28 = v0;
  v28[1] = sub_100027FE0;

  return (v29)(&unk_1000706D0, v26);
}

uint64_t sub_100027FE0()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_10001C828, v1, 0);
}

id sub_100028130(uint64_t a1, uint64_t a2)
{
  v20 = *(v2 + 120);
  URL._bridgeToObjectiveC()(direct field offset for TemporaryResourceFile.url);
  v4 = v3;
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  sub_100004180(&qword_100098DC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006FCE0;
  v7 = IDSCopyIDForDevice();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v23[1] = v10;
  sub_100004180(&qword_100098DD0);
  sub_100030C18();
  AnyHashable.init<A>(_:)();
  sub_10002FAE8(inited);
  swift_setDeallocating();
  sub_10001F664(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  sub_10001EE48();
  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = 0;
  v23[0] = 0;
  v13 = [v20 sendResourceAtURL:v4 metadata:v5.super.isa toDestinations:isa priority:a2 options:v12 identifier:v23 error:&v22];

  v14 = v22;
  v15 = v23[0];
  if (v13)
  {
    if (v23[0])
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_100030B60();
      swift_allocError();
      *v18 = 0;
      *(v18 + 8) = 3;
      swift_willThrow();
    }

    v16 = v14;
  }

  else
  {
    v17 = v22;
    v15 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v15;
}

id sub_1000283E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);
  sub_100004180(&qword_100098DC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006FCE0;
  v7 = IDSCopyIDForDevice();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v21[1] = v10;
  sub_100004180(&qword_100098DD0);
  sub_100030C18();
  AnyHashable.init<A>(_:)();
  sub_10002FAE8(inited);
  swift_setDeallocating();
  sub_10001F664(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  sub_10001EE48();
  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = 0;
  v21[0] = 0;
  v13 = [v5 sendProtobuf:a1 toDestinations:isa priority:a2 options:v12 identifier:v21 error:&v20];

  v14 = v20;
  v15 = v21[0];
  if (v13)
  {
    if (v21[0])
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_100030B60();
      swift_allocError();
      *v18 = 0;
      *(v18 + 8) = 3;
      swift_willThrow();
    }

    v16 = v14;
  }

  else
  {
    v17 = v20;
    v15 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v15;
}

uint64_t sub_100028640(uint64_t a1, unint64_t a2)
{
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100004D08(v4, qword_10009C6A8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v10[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000095B0(a1, a2, v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "[Messaging] Removing response handler for: %s", v7, 0xCu);
    sub_100009B58(v8);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();

  sub_10001AEB0(v10, a1, a2);
  return swift_endAccess();
}

uint64_t sub_1000287D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  *(v8 + 24) = a6;
  *(v8 + 32) = a8;
  *(v8 + 72) = a7;
  *(v8 + 16) = a5;
  return _swift_task_switch(sub_100028800, 0, 0);
}

uint64_t sub_100028800()
{
  v1 = *(v0 + 16);
  if (v1 && (v2 = [v1 incomingResponseIdentifier]) != 0)
  {
    v3 = *(v0 + 72);
    v4 = v2;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *(v0 + 40) = v7;
    if ((v3 & 0x100) != 0)
    {
      v25 = *(v0 + 72);
      v26 = swift_task_alloc();
      *(v0 + 64) = v26;
      *v26 = v0;
      v26[1] = sub_100028DBC;
      v27 = *(v0 + 24);

      return sub_100026254(v27, v25, v5, v7);
    }

    else
    {
      v8 = *(v0 + 24);
      v9 = swift_task_alloc();
      *(v0 + 48) = v9;
      *v9 = v0;
      v9[1] = sub_100028BA8;

      return sub_100025474(v8, v5, v7);
    }
  }

  else
  {
    v11 = *(v0 + 72);
    if ((v11 & 0x100) != 0)
    {
      if (qword_1000988C0 != -1)
      {
        swift_once();
        LOBYTE(v11) = *(v0 + 72);
      }

      v14 = *(v0 + 24);
      v15 = type metadata accessor for Logger();
      sub_100004D08(v15, qword_10009C6A8);
      sub_100030B4C(v14, v11);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      sub_100030A3C(v14, v11, 1);
      if (os_log_type_enabled(v16, v17))
      {
        v18 = *(v0 + 24);
        v19 = *(v0 + 72);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        sub_100030B60();
        swift_allocError();
        *v22 = v18;
        *(v22 + 8) = v19;
        sub_100030B4C(v18, v19);
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v23;
        *v21 = v23;
        _os_log_impl(&_mh_execute_header, v16, v17, "[Messaging] Failed to handle the incoming request with error: %@", v20, 0xCu);
        sub_100009BA4(v21, &qword_1000985D8);
      }

      v24 = *(v0 + 8);

      return v24();
    }

    else
    {
      v12 = *(v0 + 24);
      v13 = swift_task_alloc();
      *(v0 + 56) = v13;
      *v13 = v0;
      v13[1] = sub_100028CC0;

      return sub_100024A84(v12, 4);
    }
  }
}

uint64_t sub_100028BA8()
{

  return _swift_task_switch(sub_1000314B4, 0, 0);
}

uint64_t sub_100028CC0()
{

  return _swift_task_switch(sub_1000314B4, 0, 0);
}

uint64_t sub_100028DBC()
{

  return _swift_task_switch(sub_1000314B4, 0, 0);
}

uint64_t sub_1000290B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  return _swift_task_switch(sub_1000290DC, 0, 0);
}

id sub_1000290DC()
{
  result = *(v0 + 16);
  if (result && (result = [result incomingResponseIdentifier]) != 0)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    *(v0 + 40) = v5;
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_100028BA8;
    v7 = *(v0 + 32);

    return sub_100025920(v7, v3, v5);
  }

  else
  {
    v8 = *(v0 + 32);
    if (v8)
    {
      v9 = sub_100032BD8([*(v0 + 32) type]);
      if (v9 == 5)
      {
        if (qword_1000988C0 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_100004D08(v10, qword_10009C6A8);
        v11 = v8;
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 33554688;
          *(v14 + 4) = [v11 type];

          _os_log_impl(&_mh_execute_header, v12, v13, "[Messaging] Unrecognized request type: %hu", v14, 6u);
        }

        else
        {
        }

        v18 = *(v0 + 8);

        return v18();
      }

      else
      {
        v15 = v9;
        v16 = swift_task_alloc();
        *(v0 + 56) = v16;
        *v16 = v0;
        v16[1] = sub_100028CC0;
        v17 = *(v0 + 32);

        return sub_100024FA4(v17, v15);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100029444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v11 = swift_task_alloc();
    *(v8 + 16) = v11;
    *v11 = v8;
    v11[1] = sub_100029574;

    return sub_100025DDC(a7, a8);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v8 + 24) = v13;
    *v13 = v8;
    v13[1] = sub_100029684;

    return sub_100026254(v15, 0, a7, a8);
  }
}

uint64_t sub_100029574()
{

  return _swift_task_switch(sub_100029670, 0, 0);
}

uint64_t sub_100029684()
{

  return _swift_task_switch(sub_1000314B4, 0, 0);
}

uint64_t sub_100029844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[81] = a8;
  v8[80] = a7;
  v8[79] = a6;
  v8[78] = a5;
  v8[77] = a4;
  v8[76] = a3;
  v8[75] = a2;
  v8[74] = a1;
  v8[82] = type metadata accessor for ErrorResponse();
  v8[83] = swift_task_alloc();
  v8[84] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[85] = AssociatedTypeWitness;
  v8[86] = *(AssociatedTypeWitness - 8);
  v8[87] = swift_task_alloc();
  v8[88] = *(a6 - 8);
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v8[92] = sub_100009C90(255, &qword_100098F80);
  sub_1000312CC();
  v13 = type metadata accessor for Result();
  v8[93] = v13;
  v8[94] = *(v13 - 8);
  v8[95] = swift_task_alloc();
  v8[96] = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  v8[97] = swift_task_alloc();
  v14 = type metadata accessor for Optional();
  v8[98] = v14;
  v8[99] = *(v14 - 8);
  v8[100] = swift_task_alloc();
  v15 = *(a5 - 8);
  v8[101] = v15;
  v8[102] = v15;
  v8[103] = swift_task_alloc();
  v8[104] = *(a7 - 8);
  v8[105] = swift_task_alloc();

  return _swift_task_switch(sub_100029BC8, 0, 0);
}

id sub_100029BC8()
{
  v46 = v0;
  (*(v0[104] + 16))(v0[105], v0[74], v0[80]);
  sub_100009C90(0, qword_100098DE8);
  if (!swift_dynamicCast())
  {
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100004D08(v7, qword_10009C6A8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v44[0] = v11;
      *v10 = 136315138;
      v12 = _typeName(_:qualified:)();
      v14 = sub_1000095B0(v12, v13, v44);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[Messaging] Failed to handle message request with type %s", v10, 0xCu);
      sub_100009B58(v11);
    }

    goto LABEL_16;
  }

  v1 = v0[70];
  v0[106] = v1;
  if (!swift_conformsToProtocol2())
  {
LABEL_11:
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100004D08(v17, qword_10009C6A8);
    v8 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v44[0] = v20;
      *v19 = 136315138;
      v21 = _typeName(_:qualified:)();
      v23 = sub_1000095B0(v21, v22, v44);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v8, v18, "[Messaging] Failed to decode protobuf request to expected type %s ", v19, 0xCu);
      sub_100009B58(v20);
    }

LABEL_16:
LABEL_17:

    v24 = v0[1];

    return v24();
  }

  swift_task_alloc();
  result = [v1 data];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = 0;
  memset(v44, 0, sizeof(v44));
  BinaryDecodingOptions.init()();
  Message.init(serializedData:extensions:partial:options:)();
  v4 = v0[102];
  v5 = v0[100];
  v6 = v0[78];
  v15 = swift_dynamicCast();
  (*(v4 + 56))(v5, v15 ^ 1u, 1, v6);

  v16 = (*(v4 + 48))(v5, 1, v6);
  if (v16 == 1)
  {
    (*(v0[99] + 8))(v0[100], v0[98]);
    goto LABEL_11;
  }

  (*(v0[102] + 32))(v0[103], v0[100], v0[78]);
  v25 = [v1 context];
  if (!v25 || (v26 = v25, v27 = [v25 outgoingResponseIdentifier], v26, !v27))
  {
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100004D08(v35, qword_10009C6A8);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[103];
    v40 = v0[102];
    v41 = v0[78];
    if (v38)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "[Messaging] Failed to handle request message because messageID is nil", v42, 2u);
    }

    (*(v40 + 8))(v39, v41);
    goto LABEL_17;
  }

  v28 = v0[76];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v0[107] = v29;
  v0[108] = v31;
  v43 = (v28 + *v28);
  v32 = swift_task_alloc();
  v0[109] = v32;
  *v32 = v0;
  v32[1] = sub_10002A330;
  v33 = v0[103];
  v34 = v0[91];

  return v43(v34, v33);
}

uint64_t sub_10002A330()
{
  *(*v1 + 880) = v0;

  if (v0)
  {
    v2 = sub_10002B988;
  }

  else
  {
    v2 = sub_10002A444;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002A444()
{
  v76 = v0;
  (*(*(v0 + 704) + 16))(*(v0 + 768), *(v0 + 728), *(v0 + 632));
  swift_storeEnumTagMultiPayload();
  p_vtable = &OBJC_METACLASS___NMSIncomingResponse.vtable;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100004D08(v2, qword_10009C6A8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 864);
    v6 = *(v0 + 856);
    v73 = *(v0 + 728);
    v7 = *(v0 + 704);
    v8 = *(v0 + 632);
    v9 = swift_slowAlloc();
    v10 = v2;
    v11 = swift_slowAlloc();
    v75[0] = v11;
    *v9 = 136315138;

    v12 = sub_1000095B0(v6, v5, v75);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Messaging] Finished handling request %s", v9, 0xCu);
    sub_100009B58(v11);
    v2 = v10;

    p_vtable = (&OBJC_METACLASS___NMSIncomingResponse + 24);

    (*(v7 + 8))(v73, v8);
  }

  else
  {
    v13 = *(v0 + 728);
    v14 = *(v0 + 704);
    v15 = *(v0 + 632);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 880);
  (*(*(v0 + 752) + 16))(*(v0 + 760), *(v0 + 768), *(v0 + 744));
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v44 = *(v0 + 864);
    v45 = *(v0 + 856);
    v46 = *(v0 + 720);
    v47 = *(v0 + 712);
    v48 = *(v0 + 704);
    v49 = *(v0 + 648);
    v50 = *(v0 + 632);
    v51 = *(v0 + 600);
    (*(v48 + 32))(v46, *(v0 + 760), v50);
    (*(v48 + 16))(v47, v46, v50);
    v52 = (*(v49 + 56))(v0 + 464, v50, v49);
    *(v53 + 64) = v45;
    *(v53 + 72) = v44;

    v52(v0 + 464, 0);
    sub_10001DCAC(v51, v51[3]);
    v54 = swift_task_alloc();
    *(v0 + 888) = v54;
    *v54 = v0;
    v54[1] = sub_10002AC30;
    v55 = *(v0 + 712);
    v56 = *(v0 + 696);
    v57 = *(v0 + 648);
    v58 = *(v0 + 632);

    return sub_10002437C(v56, v55, v58, v57);
  }

  v17 = *(v0 + 672);
  v18 = *(v0 + 656);
  v19 = **(v0 + 760);
  *(v0 + 904) = v19;
  UnknownStorage.init()();
  v20 = (v17 + *(v18 + 20));
  *v20 = 0;
  v20[1] = 0;
  v21 = v17 + *(v18 + 24);
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = [v19 domain];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *v20 = v23;
  v20[1] = v25;
  v26 = [v19 code];
  if (v26 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v26 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = *(v0 + 672);
  v28 = *(v0 + 664);
  *v21 = v26;
  *(v21 + 4) = 0;
  sub_100031334(v27, v28);
  sub_100041E24(v28, v0 + 16);
  if (v16)
  {
    v29 = *(v0 + 672);

    sub_100031270(v29);
    if (p_vtable[280] == -1)
    {
LABEL_11:
      sub_100004D08(v2, qword_10009C6A8);
      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 824);
      v34 = *(v0 + 816);
      v35 = *(v0 + 768);
      v36 = *(v0 + 752);
      v37 = *(v0 + 744);
      v38 = *(v0 + 624);
      if (v32)
      {
        v74 = *(v0 + 824);
        v70 = *(v0 + 848);
        v72 = *(v0 + 768);
        v39 = swift_slowAlloc();
        v71 = v37;
        v40 = swift_slowAlloc();
        v75[0] = v40;
        *v39 = 136315138;
        *(v0 + 584) = v16;
        swift_errorRetain();
        sub_100004180(&unk_100098B20);
        v41 = String.init<A>(describing:)();
        v69 = v38;
        v43 = sub_1000095B0(v41, v42, v75);

        *(v39 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v30, v31, "[Messaging] Failed to send response message due to %s ", v39, 0xCu);
        sub_100009B58(v40);

        (*(v36 + 8))(v72, v71);
        (*(v34 + 8))(v74, v69);
      }

      else
      {

        (*(v36 + 8))(v35, v37);
        (*(v34 + 8))(v33, v38);
      }

      v68 = *(v0 + 8);

      return v68();
    }

LABEL_25:
    swift_once();
    goto LABEL_11;
  }

  v60 = *(v0 + 864);
  v61 = *(v0 + 856);
  v62 = *(v0 + 600);
  *(v0 + 528) = *(v0 + 88);
  sub_100009BA4(v0 + 528, &qword_100098DD0);
  v63 = *(v0 + 32);
  *(v0 + 432) = *(v0 + 16);
  *(v0 + 448) = v63;
  v64 = *(v0 + 48);
  *(v0 + 912) = v64;
  v65 = *(v0 + 56);
  *(v0 + 527) = v65;
  *(v0 + 496) = *(v0 + 57);
  *(v0 + 511) = *(v0 + 72);
  *(v0 + 544) = *(v0 + 104);
  v66 = *sub_10001DCAC(v62, v62[3]);
  v67 = *(v0 + 16);
  *(v0 + 136) = *(v0 + 32);
  *(v0 + 920) = v66;
  *(v0 + 120) = v67;
  *(v0 + 152) = v64;
  *(v0 + 160) = v65;
  *(v0 + 176) = *(v0 + 72);
  *(v0 + 161) = *(v0 + 57);
  *(v0 + 192) = v61;
  *(v0 + 200) = v60;
  *(v0 + 208) = *(v0 + 104);

  return _swift_task_switch(sub_10002B220, v66, 0);
}

uint64_t sub_10002AC30()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  if (v0)
  {
    v3 = sub_10002AEF4;
  }

  else
  {
    (*(v2[86] + 8))(v2[87], v2[85]);
    v3 = sub_10002AD60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002AD60()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 768);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v5 = *(v0 + 720);
  v6 = *(v0 + 712);
  v7 = *(v0 + 704);
  v8 = *(v0 + 632);
  v12 = *(v0 + 624);
  v13 = *(v0 + 824);

  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v13, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10002AEF4()
{
  v28 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 632);
  v3 = *(*(v0 + 704) + 8);
  v3(*(v0 + 712), v2);
  v3(v1, v2);
  v4 = *(v0 + 896);
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100004D08(v5, qword_10009C6A8);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 824);
  v10 = *(v0 + 816);
  v11 = *(v0 + 768);
  v12 = *(v0 + 752);
  v13 = *(v0 + 744);
  v14 = *(v0 + 624);
  if (v8)
  {
    v26 = *(v0 + 824);
    v23 = *(v0 + 848);
    v25 = *(v0 + 768);
    v15 = swift_slowAlloc();
    v24 = v13;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    *(v0 + 584) = v4;
    swift_errorRetain();
    sub_100004180(&unk_100098B20);
    v17 = String.init<A>(describing:)();
    v22 = v14;
    v19 = sub_1000095B0(v17, v18, &v27);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Messaging] Failed to send response message due to %s ", v15, 0xCu);
    sub_100009B58(v16);

    (*(v12 + 8))(v25, v24);
    (*(v10 + 8))(v26, v22);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v9, v14);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10002B220()
{
  v1 = *(v0 + 920);
  v2 = *(v0 + 527);
  v3 = swift_task_alloc();
  *(v0 + 928) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 120;
  v4 = swift_task_alloc();
  *(v0 + 936) = v4;
  *v4 = v0;
  v4[1] = sub_10002B304;
  v5 = *(v0 + 912);

  return withCancellationHandlingContinuation<A>(timeout:_:)(v4, v5, v2 & 1, sub_100031398, v3, &type metadata for () + 8);
}

uint64_t sub_10002B304()
{
  v2 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v3 = *(v2 + 920);
    v4 = sub_10002B608;
  }

  else
  {
    v4 = sub_10002B420;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10002B420()
{
  v13 = *(v0 + 527);
  v12 = *(v0 + 912);
  v1 = *(v0 + 904);
  v14 = *(v0 + 856);
  v15 = *(v0 + 864);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 768);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v7 = *(v0 + 672);
  v8 = *(v0 + 624);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v2, v8);
  sub_100031270(v7);
  v9 = *(v0 + 448);
  *(v0 + 328) = *(v0 + 432);
  *(v0 + 344) = v9;
  *(v0 + 360) = v12;
  *(v0 + 368) = v13;
  *(v0 + 369) = *(v0 + 496);
  *(v0 + 384) = *(v0 + 511);
  *(v0 + 400) = v14;
  *(v0 + 408) = v15;
  *(v0 + 416) = *(v0 + 544);
  sub_10001EC6C(v0 + 328);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10002B624()
{
  v31 = v0;
  v1 = *(v0 + 527);
  v2 = *(v0 + 912);
  v3 = *(v0 + 864);
  v4 = *(v0 + 856);
  v5 = *(v0 + 672);

  sub_100031270(v5);
  v6 = *(v0 + 448);
  *(v0 + 224) = *(v0 + 432);
  *(v0 + 240) = v6;
  *(v0 + 256) = v2;
  *(v0 + 264) = v1;
  *(v0 + 265) = *(v0 + 496);
  *(v0 + 280) = *(v0 + 511);
  *(v0 + 296) = v4;
  *(v0 + 304) = v3;
  *(v0 + 312) = *(v0 + 544);
  sub_10001EC6C(v0 + 224);

  v7 = *(v0 + 944);
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100004D08(v8, qword_10009C6A8);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 824);
  v13 = *(v0 + 816);
  v14 = *(v0 + 768);
  v15 = *(v0 + 752);
  v16 = *(v0 + 744);
  v17 = *(v0 + 624);
  if (v11)
  {
    v29 = *(v0 + 824);
    v26 = *(v0 + 848);
    v28 = *(v0 + 768);
    v18 = swift_slowAlloc();
    v27 = v16;
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136315138;
    *(v0 + 584) = v7;
    swift_errorRetain();
    sub_100004180(&unk_100098B20);
    v20 = String.init<A>(describing:)();
    v25 = v17;
    v22 = sub_1000095B0(v20, v21, &v30);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "[Messaging] Failed to send response message due to %s ", v18, 0xCu);
    sub_100009B58(v19);

    (*(v15 + 8))(v28, v27);
    (*(v13 + 8))(v29, v25);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v13 + 8))(v12, v17);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10002B988()
{
  v72 = v0;
  *(v0 + 568) = *(v0 + 880);
  sub_100004180(&unk_100098B20);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *(v0 + 576);
    **(v0 + 768) = v2;
    swift_storeEnumTagMultiPayload();
    v3 = qword_1000988C0;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100004D08(v5, qword_10009C6A8);

    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 864);
      v10 = *(v0 + 856);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v71[0] = v13;
      *v11 = 136315394;

      v14 = sub_1000095B0(v10, v9, v71);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v6;
      *v12 = v6;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "[Messaging] Failed to handle request %s due to %@", v11, 0x16u);
      sub_100009BA4(v12, &qword_1000985D8);

      sub_100009B58(v13);
    }

    else
    {
    }

    (*(*(v0 + 752) + 16))(*(v0 + 760), *(v0 + 768), *(v0 + 744));
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *(v0 + 672);
      v17 = *(v0 + 656);
      v18 = **(v0 + 760);
      *(v0 + 904) = v18;
      UnknownStorage.init()();
      v19 = (v16 + *(v17 + 20));
      *v19 = 0;
      v19[1] = 0;
      v20 = v16 + *(v17 + 24);
      *v20 = 0;
      *(v20 + 4) = 1;
      v21 = [v18 domain];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      *v19 = v22;
      v19[1] = v24;
      v25 = [v18 code];
      if (v25 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v25 <= 0x7FFFFFFF)
      {
        v26 = *(v0 + 672);
        v27 = *(v0 + 664);
        *v20 = v25;
        *(v20 + 4) = 0;
        sub_100031334(v26, v27);
        sub_100041E24(v27, v0 + 16);
        v57 = *(v0 + 864);
        v58 = *(v0 + 856);
        v59 = *(v0 + 600);
        *(v0 + 528) = *(v0 + 88);
        sub_100009BA4(v0 + 528, &qword_100098DD0);
        v60 = *(v0 + 32);
        *(v0 + 432) = *(v0 + 16);
        *(v0 + 448) = v60;
        v61 = *(v0 + 48);
        *(v0 + 912) = v61;
        v62 = *(v0 + 56);
        *(v0 + 527) = v62;
        *(v0 + 496) = *(v0 + 57);
        *(v0 + 511) = *(v0 + 72);
        *(v0 + 544) = *(v0 + 104);
        v63 = *sub_10001DCAC(v59, v59[3]);
        v64 = *(v0 + 16);
        *(v0 + 136) = *(v0 + 32);
        *(v0 + 920) = v63;
        *(v0 + 120) = v64;
        *(v0 + 152) = v61;
        *(v0 + 160) = v62;
        *(v0 + 176) = *(v0 + 72);
        *(v0 + 161) = *(v0 + 57);
        *(v0 + 192) = v58;
        *(v0 + 200) = v57;
        *(v0 + 208) = *(v0 + 104);

        return _swift_task_switch(sub_10002B220, v63, 0);
      }

      __break(1u);
      swift_once();
      sub_100004D08(v5, qword_10009C6A8);
      swift_errorRetain();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 824);
      v32 = *(v0 + 816);
      v33 = *(v0 + 768);
      v34 = *(v0 + 752);
      v35 = *(v0 + 744);
      v36 = *(v0 + 624);
      if (v30)
      {
        v70 = *(v0 + 824);
        v67 = *(v0 + 848);
        v69 = *(v0 + 768);
        v37 = swift_slowAlloc();
        v68 = v35;
        v38 = swift_slowAlloc();
        v71[0] = v38;
        *v37 = 136315138;
        *(v0 + 584) = v21;
        swift_errorRetain();
        sub_100004180(&unk_100098B20);
        v39 = String.init<A>(describing:)();
        v66 = v36;
        v41 = sub_1000095B0(v39, v40, v71);

        *(v37 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v28, v29, "[Messaging] Failed to send response message due to %s ", v37, 0xCu);
        sub_100009B58(v38);

        (*(v34 + 8))(v69, v68);
        (*(v32 + 8))(v70, v66);
      }

      else
      {

        (*(v34 + 8))(v33, v35);
        (*(v32 + 8))(v31, v36);
      }

      v65 = *(v0 + 8);

      return v65();
    }

    else
    {
      v42 = *(v0 + 864);
      v43 = *(v0 + 856);
      v44 = *(v0 + 720);
      v45 = *(v0 + 712);
      v46 = *(v0 + 704);
      v47 = *(v0 + 648);
      v48 = *(v0 + 632);
      v49 = *(v0 + 600);
      (*(v46 + 32))(v44, *(v0 + 760), v48);
      (*(v46 + 16))(v45, v44, v48);
      v50 = (*(v47 + 56))(v0 + 464, v48, v47);
      *(v51 + 64) = v43;
      *(v51 + 72) = v42;

      v50(v0 + 464, 0);
      sub_10001DCAC(v49, v49[3]);
      v52 = swift_task_alloc();
      *(v0 + 888) = v52;
      *v52 = v0;
      v52[1] = sub_10002AC30;
      v53 = *(v0 + 712);
      v54 = *(v0 + 696);
      v55 = *(v0 + 648);
      v56 = *(v0 + 632);

      return sub_10002437C(v54, v53, v56, v55);
    }
  }

  return result;
}

uint64_t sub_10002C1E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = *v4;
  v10 = v4[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[2];
  v14 = a4[3];
  v15 = a4[4];
  *v12 = v5;
  v12[1] = sub_10001EDC4;

  return sub_100029844(a1, a2, v11, v10, v13, v14, a3, v15);
}

uint64_t sub_10002C2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[4] = a1;
  v6[9] = *(a6 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = *(a5 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_10002C3D8, 0, 0);
}

uint64_t sub_10002C3D8()
{
  sub_10002CEF8(v0[4], v0[7], v0[8], v0[14]);
  log = (v0[5] + *v0[5]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_10002C808;
  v2 = v0[14];

  return (log)(v2);
}

uint64_t sub_10002C808()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[13] + 8))(v2[14], v2[7]);
  if (v0)
  {
    v3 = sub_10002CBB8;
  }

  else
  {
    v3 = sub_10002C970;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002C970()
{
  v25 = v0;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_100004D08(v5, qword_10009C6A8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  if (v9)
  {
    v11 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_1000095B0(v15, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "[Messaging] Finished handling message %s ", v14, 0xCu);
    sub_100009B58(v23);
  }

  else
  {
    v19 = v0[8];
    v20 = v0[9];

    (*(v20 + 8))(v10, v19);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10002CBB8()
{
  v30 = v0;
  v0[2] = v0[16];
  sub_100004180(&unk_100098B20);
  sub_100009C90(0, &qword_100098F80);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = v0[3];
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[8];
    v6 = v0[4];
    v7 = type metadata accessor for Logger();
    sub_100004D08(v7, qword_10009C6A8);
    v8 = *(v4 + 16);
    v8(v3, v6, v5);
    v9 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      log = v10;
      v13 = v0[10];
      v12 = v0[11];
      v15 = v0[8];
      v14 = v0[9];
      v16 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v16 = 136315394;
      v8(v12, v13, v15);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      (*(v14 + 8))(v13, v15);
      v20 = sub_1000095B0(v17, v19, &v29);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v9;
      *v26 = v9;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, log, v11, "[Messaging] Failed to handle message %s due to %@", v16, 0x16u);
      sub_100009BA4(v26, &qword_1000985D8);

      sub_100009B58(v27);
    }

    else
    {
      v22 = v0[9];
      v23 = v0[10];
      v24 = v0[8];

      (*(v22 + 8))(v23, v24);
    }

    v25 = v0[1];

    return v25();
  }

  return result;
}

id sub_10002CEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v43 = a4;
  v8 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Optional();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v42 = v37 - v14;
  v15 = *(a3 - 8);
  v16 = __chkstk_darwin(v13);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = *(v15 + 16);
  v49 = a1;
  v21 = a1;
  v22 = v19;
  v19(v37 - v20, v21, a3);
  sub_100009C90(0, qword_100098DE8);
  if (swift_dynamicCast())
  {
    v41 = v46;
    v23 = swift_conformsToProtocol2();
    if (v23 && a2)
    {
      v37[3] = v37;
      v38 = *(a2 - 8);
      v39 = v4;
      __chkstk_darwin(v23);
      v40 = v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      result = [v41 data];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v26 = result;
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v37[1] = v28;
      v37[2] = v27;

      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      BinaryDecodingOptions.init()();
      v29 = v39;
      Message.init(serializedData:extensions:partial:options:)();
      if (v29)
      {

        v30 = v42;
        (*(v38 + 56))(v42, 1, 1, a2);
      }

      else
      {

        v30 = v42;
        v31 = swift_dynamicCast();
        v32 = v38;
        (*(v38 + 56))(v30, v31 ^ 1u, 1, a2);
        if ((*(v32 + 48))(v30, 1, a2) != 1)
        {
          return (*(v32 + 32))(v43, v30, a2);
        }
      }

      (*(v44 + 8))(v30, v45);
    }

    else
    {
    }
  }

  v22(v18, v49, a3);
  v33 = swift_dynamicCast();
  v34 = *(*(a2 - 8) + 56);
  if (v33)
  {
    v35 = *(a2 - 8);
    v34(v12, 0, 1, a2);
    return (*(v35 + 32))(v43, v12, a2);
  }

  else
  {
    v34(v12, 1, 1, a2);
    (*(v44 + 8))(v12, v45);
    sub_100030B60();
    swift_allocError();
    *v36 = 1;
    *(v36 + 8) = 3;
    return swift_willThrow();
  }
}

uint64_t sub_10002D43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;
  v10 = v4[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 16);
  *v12 = v5;
  v12[1] = sub_10001EDC4;

  return sub_10002C2B0(a1, a2, v11, v10, v13, a3);
}

uint64_t sub_10002D504(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 280) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  sub_100004180(&qword_100098F70);
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  v9 = type metadata accessor for Optional();
  *(v5 + 96) = v9;
  *(v5 + 104) = *(v9 - 8);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = *(a5 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v10 = *(a4 - 8);
  *(v5 + 168) = v10;
  *(v5 + 176) = v10;
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  sub_1000055FC(&unk_100098B20);
  v11 = type metadata accessor for Result();
  *(v5 + 200) = v11;
  *(v5 + 208) = *(v11 - 8);
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  v12 = (*a3 + 160) & 0xFFFFFFFFFFFFLL | 0xCAE8000000000000;
  *(v5 + 240) = *(*a3 + 160);
  *(v5 + 248) = v12;

  return _swift_task_switch(sub_10002D800, a3, 0);
}

uint64_t sub_10002D800()
{
  *(v0 + 281) = (*(v0 + 240))() & 1;

  return _swift_task_switch(sub_10002D874, 0, 0);
}

id sub_10002D874()
{
  v128 = v0;
  if (*(v0 + 281))
  {
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 144);
    v2 = *(v0 + 128);
    v3 = *(v0 + 48);
    v4 = *(v0 + 24);
    v5 = type metadata accessor for Logger();
    sub_100004D08(v5, qword_10009C6A8);
    v6 = *(v2 + 16);
    v6(v1, v4, v3);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 144);
    if (!v9)
    {
      v32 = *(v0 + 128);
      v33 = *(v0 + 48);

      (*(v32 + 8))(v10, v33);
LABEL_19:

      v37 = *(v0 + 8);

      return v37();
    }

    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 48);
    v14 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *&v125 = v122;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_1000095B0(v15, v17, &v125);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "[Messaging][Response] Message was already completed, ignoring response: %s", v14, 0xCu);
    sub_100009B58(v122);

    goto LABEL_17;
  }

  v19 = *(v0 + 48);
  if (v19 != *(v0 + 40) && v19 == &type metadata for () + 8)
  {
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100004D08(v34, qword_10009C6A8);
    v7 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v7, v35))
    {
      goto LABEL_18;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v7, v35, "[Messaging][Response] Ignoring response due to type mismatch.", v36, 2u);
LABEL_17:

LABEL_18:

    goto LABEL_19;
  }

  v21 = *(v0 + 176);
  v22 = *(*(v0 + 128) + 16);
  v22(*(v0 + 160), *(v0 + 24), *(v0 + 48));
  v23 = swift_dynamicCast();
  v24 = *(v21 + 56);
  v25 = *(v0 + 40);
  if (!v23)
  {
    v39 = *(v0 + 152);
    v40 = *(v0 + 120);
    v41 = *(v0 + 96);
    v42 = *(v0 + 104);
    v43 = *(v0 + 48);
    v44 = *(v0 + 24);
    v121 = v24;
    v24(v40, 1, 1, *(v0 + 40));
    v45 = *(v42 + 8);
    v45(v40, v41);
    v22(v39, v44, v43);
    sub_100009C90(0, qword_100098DE8);
    v31 = v0;
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_25:
      v48 = *(v0 + 232);
      sub_100030B60();
      v49 = swift_allocError();
      *v50 = 2;
      *(v50 + 8) = 3;
      *v48 = v49;
LABEL_26:
      swift_storeEnumTagMultiPayload();
      goto LABEL_27;
    }

    v46 = *(v0 + 16);
    v47 = sub_100032BD8([v46 type]);
    if (v47 == 5)
    {

      goto LABEL_25;
    }

    v79 = v47;
    if (*(v0 + 280) == v47 && swift_conformsToProtocol2())
    {
      v80 = v45;
      swift_task_alloc();
      result = [v46 data];
      if (!result)
      {
        goto LABEL_54;
      }

      v81 = result;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v127 = 0;
      v125 = 0u;
      v126 = 0u;
      BinaryDecodingOptions.init()();
      Message.init(serializedData:extensions:partial:options:)();
      v82 = *(v31 + 176);
      v83 = *(v31 + 112);
      v84 = *(v31 + 40);
      v85 = swift_dynamicCast();
      v121(v83, v85 ^ 1u, 1, v84);

      if ((*(v82 + 48))(v83, 1, v84) != 1)
      {
        v115 = *(v31 + 232);
        v116 = *(v31 + 176);
        v117 = *(v31 + 184);
        v118 = *(v31 + 112);
        v119 = *(v31 + 40);

        v120 = *(v116 + 32);
        v120(v117, v118, v119);
        v120(v115, v117, v119);
        goto LABEL_26;
      }

      v80(*(v31 + 112), *(v31 + 96));
    }

    if (v79)
    {
      v86 = *(v31 + 232);
      sub_100030B60();
      v87 = swift_allocError();
      *v88 = 2;
      *(v88 + 8) = 3;

      *v86 = v87;
      goto LABEL_26;
    }

    v89 = v46;
    result = [v46 data];
    if (result)
    {
      v90 = result;
      v91 = v31;
      v92 = type metadata accessor for ErrorResponse();
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v127 = 0;
      v125 = 0u;
      v126 = 0u;
      BinaryDecodingOptions.init()();
      sub_100030DC8(&qword_100098F78, 255, type metadata accessor for ErrorResponse);
      Message.init(serializedData:extensions:partial:options:)();
      v94 = *(v31 + 64);
      v93 = *(v31 + 72);
      v95 = *(v92 - 8);
      (*(v95 + 56))(v93, 0, 1, v92);
      sub_100031208(v93, v94, &qword_100098F70);
      v96 = *(v95 + 48);
      v97 = v96(v94, 1, v92);
      v98 = *(v31 + 64);
      if (v97 == 1)
      {
        sub_100009BA4(*(v31 + 64), &qword_100098F70);
      }

      else
      {

        sub_100031270(v98);
      }

      v99 = *(v31 + 56);
      sub_100031208(*(v31 + 72), v99, &qword_100098F70);
      v100 = v96(v99, 1, v92);
      v101 = *(v31 + 56);
      if (v100 == 1)
      {
        sub_100009BA4(v101, &qword_100098F70);
        v102 = 0;
      }

      else
      {
        v103 = (v101 + *(v92 + 24));
        v104 = *v103;
        v105 = *(v103 + 4);
        sub_100031270(v101);
        if (v105)
        {
          v102 = 0;
        }

        else
        {
          v102 = v104;
        }
      }

      v106 = v91;
      v107 = *(v91 + 232);
      v108 = *(v91 + 72);
      v109 = objc_allocWithZone(NSError);
      v110 = String._bridgeToObjectiveC()();

      v111 = v102;
      v31 = v106;
      v112 = [v109 initWithDomain:v110 code:v111 userInfo:0];

      sub_100030B60();
      v113 = swift_allocError();
      *v114 = v112;
      *(v114 + 8) = 1;

      sub_100009BA4(v108, &qword_100098F70);
      *v107 = v113;
      goto LABEL_26;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v26 = *(v0 + 232);
  v27 = *(v0 + 192);
  v28 = *(v0 + 176);
  v29 = *(v0 + 120);
  v24(v29, 0, 1, *(v0 + 40));
  v30 = *(v28 + 32);
  v30(v27, v29, v25);
  v30(v26, v27, v25);
  swift_storeEnumTagMultiPayload();
  v31 = v0;
LABEL_27:
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v51 = *(v31 + 224);
  v52 = *(v31 + 232);
  v53 = *(v31 + 200);
  v54 = *(v31 + 208);
  v55 = type metadata accessor for Logger();
  sub_100004D08(v55, qword_10009C6A8);
  v56 = *(v54 + 16);
  v56(v51, v52, v53);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v31 + 224);
  if (v59)
  {
    v61 = *(v31 + 208);
    v62 = *(v31 + 216);
    v123 = v31;
    v63 = *(v31 + 200);
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v125 = v65;
    *v64 = 136315138;
    v56(v62, v60, v63);
    v66 = String.init<A>(describing:)();
    v68 = v67;
    v71 = *(v61 + 8);
    v69 = v61 + 8;
    v70 = v71;
    v72 = v63;
    v31 = v123;
    v71(v60, v72);
    v73 = sub_1000095B0(v66, v68, &v125);

    *(v64 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v57, v58, "[Messaging][Response] Resuming continuation with result %s", v64, 0xCu);
    sub_100009B58(v65);
  }

  else
  {
    v74 = *(v31 + 200);
    v75 = *(v31 + 208);

    v76 = *(v75 + 8);
    v69 = v75 + 8;
    v70 = v76;
    v76(v60, v74);
  }

  *(v31 + 256) = v69;
  *(v31 + 264) = v70;
  v124 = (*(**(v31 + 32) + 192) + **(**(v31 + 32) + 192));
  v77 = swift_task_alloc();
  *(v31 + 272) = v77;
  *v77 = v31;
  v77[1] = sub_10002E61C;
  v78 = *(v31 + 232);

  return v124(v78);
}

uint64_t sub_10002E61C()
{

  return _swift_task_switch(sub_10002E718, 0, 0);
}

uint64_t sub_10002E718()
{
  (*(v0 + 264))(*(v0 + 232), *(v0 + 200));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002E854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v4 = (*a3 + 160) & 0xFFFFFFFFFFFFLL | 0xCAE8000000000000;
  v3[6] = *(*a3 + 160);
  v3[7] = v4;
  return _swift_task_switch(sub_10002E890, a3, 0);
}

uint64_t sub_10002E890()
{
  *(v0 + 72) = (*(v0 + 48))() & 1;

  return _swift_task_switch(sub_10002E904, 0, 0);
}

uint64_t sub_10002E904()
{
  v25 = v0;
  if (*(v0 + 72))
  {
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100004D08(v1, qword_10009C6A8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 32);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v24 = v6;
      *v5 = 136315138;
      *(v0 + 24) = v4;
      swift_errorRetain();
      sub_100004180(&unk_100098B20);
      v7 = String.init<A>(describing:)();
      v9 = sub_1000095B0(v7, v8, &v24);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "[Messaging][Response] Message was already completed, ignoring error: %s", v5, 0xCu);
      sub_100009B58(v6);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100004D08(v12, qword_10009C6A8);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      *(v0 + 16) = v15;
      swift_errorRetain();
      sub_100004180(&unk_100098B20);
      v18 = String.init<A>(describing:)();
      v20 = sub_1000095B0(v18, v19, &v24);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "[Messaging][Response] Resuming continuation with error %s", v16, 0xCu);
      sub_100009B58(v17);
    }

    v23 = (*(**(v0 + 40) + 184) + **(**(v0 + 40) + 184));
    v21 = swift_task_alloc();
    *(v0 + 64) = v21;
    *v21 = v0;
    v21[1] = sub_10002ED00;
    v22 = *(v0 + 32);

    return v23(v22);
  }
}

uint64_t sub_10002ED00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002EDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = *v3;
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 16);
  *v10 = v4;
  v10[1] = sub_1000154C0;

  return sub_10002D504(a1, v9, v8, v11, a2);
}

uint64_t sub_10002EEB8(uint64_t a1)
{
  v4 = *(v1 + 1);
  v5 = *v1;
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001EDC4;

  return sub_10002E854(a1, v5, v4);
}

uint64_t sub_10002EF6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_10001F810(*(v6 + 48) + 40 * v9, v16);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_10001F664(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_10001F664(a2);
    sub_10001F810(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10001F810(a2, v16);
    v15 = *v3;
    sub_10002F318(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_10002F0B8()
{
  v1 = v0;
  v2 = *v0;
  sub_100004180(&qword_100098DE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v26 = *v17;
      v27 = *(v17 + 16);
      v28 = *(v17 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v26;
      *(v13 + 16) = v27;
      *(v13 + 32) = v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_10002F318(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002F0B8();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10002F490();
      goto LABEL_12;
    }

    sub_10002F608();
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_10001F810(*(v9 + 48) + 40 * a2, v19);
      v12 = static AnyHashable.== infix(_:_:)();
      result = sub_10001F664(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10002F490()
{
  v1 = v0;
  sub_100004180(&qword_100098DE0);
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
        result = sub_10001F810(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

uint64_t sub_10002F608()
{
  v1 = v0;
  v2 = *v0;
  sub_100004180(&qword_100098DE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_10001F810(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10002F834(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22[-v7 - 8];
  v9 = a3[5];
  v27 = a3[4];
  v28 = v9;
  v29 = *(a3 + 12);
  v10 = a3[1];
  v23 = *a3;
  v24 = v10;
  v11 = a3[3];
  v25 = a3[2];
  v26 = v11;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v14 = sub_100030DC8(&qword_100098B48, v13, type metadata accessor for IDSMessagingService);
  v15 = swift_allocObject();
  v16 = v25;
  *(v15 + 88) = v26;
  v17 = v28;
  *(v15 + 104) = v27;
  *(v15 + 120) = v17;
  v18 = v24;
  *(v15 + 40) = v23;
  *(v15 + 56) = v18;
  *(v15 + 16) = a2;
  *(v15 + 24) = v14;
  *(v15 + 32) = a2;
  v19 = v29;
  *(v15 + 72) = v16;
  *(v15 + 136) = v19;
  *(v15 + 144) = a1;
  swift_retain_n();
  sub_10001EC10(&v23, v22);

  sub_10001C888(0, 0, v8, &unk_100070890, v15);
}

uint64_t sub_10002F9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 + 80);
  *(v6 + 80) = *(a5 + 64);
  *(v6 + 96) = v12;
  *(v6 + 112) = *(a5 + 96);
  v13 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v13;
  v14 = *(a5 + 48);
  *(v6 + 48) = *(a5 + 32);
  *(v6 + 64) = v14;
  v15 = swift_task_alloc();
  *(v6 + 120) = v15;
  *v15 = v6;
  v15[1] = sub_10001D888;

  return sub_10001B634(a1, a2, a3, a4, v6 + 16, a6);
}

uint64_t sub_10002FAE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_10001F810(v4, v5);
      sub_10002EF6C(v6, v5);
      sub_10001F664(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_10002FB74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5, void *a6)
{
  v7 = v6;
  v48 = a3;
  v49 = a2;
  v11 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - v12;
  v14 = sub_100004180(&qword_100098D90);
  v15 = __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v47 - v19;
  __chkstk_darwin(v18);
  v22 = &v47 - v21;
  if (!a1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v50 = *(v7 + 112);
  v23 = v50;
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  v24 = [a1 linkedDeviceForFromID:a5 withRelationship:{objc_msgSend(v50, "relationship")}];

  if (v24)
  {
    sub_100009C90(0, &qword_100098D98);
    v25 = static NSObject.== infix(_:_:)();

    if ((v25 & 1) == 0)
    {
      return;
    }

    v47 = v13;
    v50 = a6;
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100004D08(v26, qword_10009C6A8);
    sub_100031208(v49, v22, &qword_100098D90);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_1000095B0(0xD00000000000003ELL, 0x80000001000783B0, v51);
      *(v29 + 12) = 2080;
      sub_100031208(v22, v20, &qword_100098D90);
      v30 = String.init<A>(describing:)();
      v32 = v31;
      sub_100009BA4(v22, &qword_100098D90);
      v33 = sub_1000095B0(v30, v32, v51);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "[Messaging] %s resourceURL: %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100009BA4(v22, &qword_100098D90);
    }

    v35 = v48;
    sub_100031208(v49, v17, &qword_100098D90);
    v36 = type metadata accessor for URL();
    if ((*(*(v36 - 8) + 48))(v17, 1, v36) != 1)
    {
      if (v35)
      {
        type metadata accessor for TemporaryResourceFile();

        v37 = TemporaryResourceFile.__allocating_init(idsResourceURL:metadata:)();

        v38 = objc_allocWithZone(NPTOTransaction);
        v39 = String._bridgeToObjectiveC()();
        v40 = [v38 initWithDescription:v39];

        v41 = type metadata accessor for TaskPriority();
        v42 = v47;
        (*(*(v41 - 8) + 56))(v47, 1, 1, v41);
        v43 = swift_allocObject();
        *(v43 + 16) = 0;
        *(v43 + 24) = 0;
        v44 = v50;
        *(v43 + 32) = v40;
        *(v43 + 40) = v44;
        *(v43 + 48) = v37;
        *(v43 + 56) = 0;
        *(v43 + 57) = 0;
        *(v43 + 64) = v7;
        v45 = v44;

        v46 = v40;
        sub_10003F3C4(0, 0, v42, &unk_100070688, v43);
        sub_100030A3C(v37, 0, 0);

        return;
      }

LABEL_20:
      __break(1u);
      return;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v34 = v50;
}

uint64_t sub_100030148(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  if (qword_1000988C0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100004D08(v9, qword_10009C6A8);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_1000095B0(0xD00000000000003CLL, 0x8000000100078330, &v26);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v10;
    *v14 = a1;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "[Messaging] %s protobuf: %@", v13, 0x16u);
    sub_100009BA4(v14, &qword_1000985D8);

    sub_100009B58(v15);
  }

  v17 = objc_allocWithZone(NPTOTransaction);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithDescription:v18];

  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v19;
  v21[5] = a2;
  v21[6] = v3;
  v21[7] = a1;
  v22 = a2;

  v23 = v10;
  sub_10003F3C4(0, 0, v8, &unk_100070648, v21);
}

void sub_100030438(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  if (a2)
  {
    v13 = qword_1000988C0;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100004D08(v14, qword_10009C6A8);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_1000095B0(0xD000000000000037, 0x8000000100078270, &v29);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1000095B0(a1, a2, &v29);
      _os_log_impl(&_mh_execute_header, v15, v16, "[Messaging] %s identifier: %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    v18 = objc_allocWithZone(NPTOTransaction);
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 initWithDescription:v19];

    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = v20;
    *(v22 + 40) = a3 & 1;
    *(v22 + 48) = v5;
    *(v22 + 56) = a1;
    *(v22 + 64) = a2;
    *(v22 + 72) = a4;

    swift_errorRetain();
    sub_10003F3C4(0, 0, v12, &unk_100070628, v22);
  }

  else
  {
    if (qword_1000988C0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100004D08(v23, qword_10009C6A8);
    v28 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1000095B0(0xD000000000000037, 0x8000000100078270, &v29);
      _os_log_impl(&_mh_execute_header, v28, v24, "[Messaging] %s received nil identifier", v25, 0xCu);
      sub_100009B58(v26);
    }

    else
    {
      v27 = v28;
    }
  }
}

uint64_t sub_100030878(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001EDC4;

  return sub_100029444(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100030968(uint64_t a1)
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
  v10[1] = sub_10001EDC4;

  return sub_1000290B8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100030A3C(uint64_t a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    return sub_100030A48(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_100030A48(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t sub_100030A5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56) | (*(v1 + 57) << 8);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001EDC4;

  return sub_1000287D8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100030B4C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_100030B60()
{
  result = qword_100098DA0;
  if (!qword_100098DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098DA0);
  }

  return result;
}

unint64_t sub_100030BB4()
{
  result = qword_100098DC0;
  if (!qword_100098DC0)
  {
    sub_1000055FC(&unk_1000983C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098DC0);
  }

  return result;
}

unint64_t sub_100030C18()
{
  result = qword_100098DD8;
  if (!qword_100098DD8)
  {
    sub_1000055FC(&qword_100098DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098DD8);
  }

  return result;
}

uint64_t sub_100030CAC(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001EDC4;

  return sub_10001DA40(a1, v4, v6, v5);
}

uint64_t sub_100030DC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100030E10(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001EDC4;

  return sub_100026A5C(a1, v7, v8, v9, v1 + v6, v10, v4, v5);
}

uint64_t sub_100030F4C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000154C0;

  return sub_100027668(a1, v4, v5, v6);
}

uint64_t sub_100031010()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10003104C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100031070()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000310AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000310F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100031148()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100031184(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000311CC(uint64_t result, int a2, int a3)
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

uint64_t sub_100031208(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100004180(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100031270(uint64_t a1)
{
  v2 = type metadata accessor for ErrorResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000312CC()
{
  result = qword_100098F88;
  if (!qword_100098F88)
  {
    sub_100009C90(255, &qword_100098F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098F88);
  }

  return result;
}

uint64_t sub_100031334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000313A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[18];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000154C0;

  return sub_10002F9FC(a1, v4, v5, v6, (v1 + 5), v7);
}

id sub_1000314BC@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void sub_100031560(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SyncSignal(0);
  sub_100031754();
  v5 = Message.serializedData(partial:)();
  if (v2)
  {
    sub_1000317AC(a1);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    v9 = objc_allocWithZone(IDSProtobuf);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = [v9 initWithProtobufData:isa type:101 isResponse:0];

    if (v11)
    {
      sub_10001D4B8(v7, v8);
      v12 = IDSMaxMessageTimeout;
      v15[88] = 0;
      v15[96] = 0;
      sub_1000317AC(a1);

      LOBYTE(v16) = 1;
      *(&v16 + 1) = 5;
      LOWORD(v17) = 512;
      *(&v17 + 1) = v12;
      LOBYTE(v18) = 0;
      *(&v18 + 1) = 0xD000000000000019;
      *&v19 = 0x8000000100078470;
      BYTE8(v19) = 0;
      v20 = 0;
      v21 = 0;
      v22 = 2;
      v40 = 2;
      v38 = v19;
      v39 = 0u;
      v35 = v16;
      v36 = v17;
      v37 = v18;
      v23[0] = 1;
      v24 = 5;
      v25 = 0;
      v26 = 2;
      v27 = v12;
      v28 = 0;
      v29 = 0xD000000000000019;
      v30 = 0x8000000100078470;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 2;
      sub_1000314DC(&v16, v15);
      sub_100030D68(v23);
      v13 = v38;
      *(a2 + 40) = v37;
      *(a2 + 56) = v13;
      *(a2 + 72) = v39;
      v14 = v36;
      *(a2 + 8) = v35;
      *a2 = v11;
      *(a2 + 88) = v40;
      *(a2 + 24) = v14;
      *(a2 + 89) = 1;
      *(a2 + 96) = 200;
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_100031754()
{
  result = qword_100098F90;
  if (!qword_100098F90)
  {
    type metadata accessor for SyncSignal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098F90);
  }

  return result;
}

uint64_t sub_1000317AC(uint64_t a1)
{
  v2 = type metadata accessor for SyncSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100031808(uint64_t a1, __int128 *a2)
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

uint64_t sub_100031834(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003187C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t ErrorResponse.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ErrorResponse();
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + *(result + 24);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t type metadata accessor for ErrorResponse()
{
  result = qword_100099050;
  if (!qword_100099050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ErrorResponse.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ErrorResponse() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ErrorResponse.code.setter(int a1)
{
  result = type metadata accessor for ErrorResponse();
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t ErrorResponse.domain.getter()
{
  v1 = (v0 + *(type metadata accessor for ErrorResponse() + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ErrorResponse.code.getter()
{
  v1 = (v0 + *(type metadata accessor for ErrorResponse() + 24));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

void (*ErrorResponse.domain.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ErrorResponse() + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_100031B34;
}

void sub_100031B34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall ErrorResponse.clearDomain()()
{
  v1 = (v0 + *(type metadata accessor for ErrorResponse() + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*ErrorResponse.code.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ErrorResponse() + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_100031C8C;
}

uint64_t sub_100031C8C(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall ErrorResponse.clearCode()()
{
  v1 = v0 + *(type metadata accessor for ErrorResponse() + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t ErrorResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ErrorResponse.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_100031E28()
{
  v0 = type metadata accessor for _NameMap();
  sub_100004D40(v0, static ErrorResponse._protobuf_nameMap);
  sub_100004D08(v0, static ErrorResponse._protobuf_nameMap);
  sub_100004180(&qword_1000990B0);
  v1 = (sub_100004180(&qword_1000990B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100070900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "code";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t ErrorResponse._protobuf_nameMap.unsafeMutableAddressor()
{
  if (qword_1000988B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for _NameMap();

  return sub_100004D08(v0, static ErrorResponse._protobuf_nameMap);
}

uint64_t static ErrorResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000988B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = sub_100004D08(v2, static ErrorResponse._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ErrorResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for ErrorResponse();
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for ErrorResponse();
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t ErrorResponse.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for ErrorResponse();
  if (!*(v0 + *(v2 + 20) + 8) || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    if (*(v0 + *(v2 + 24) + 4))
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (!v1)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

Swift::Int ErrorResponse.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for ErrorResponse();
  sub_1000328F0(&qword_100098FE0, type metadata accessor for ErrorResponse);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100032300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_100032374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000328F0(&qword_1000990A0, type metadata accessor for ErrorResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000323F0(uint64_t a1)
{
  v2 = sub_1000328F0(&qword_100098F78, type metadata accessor for ErrorResponse);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_10003245C()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000324B4()
{
  sub_1000328F0(&qword_100098F78, type metadata accessor for ErrorResponse);

  return Message.hash(into:)();
}

Swift::Int sub_100032530()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s14NanoPhotosSync13ErrorResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorResponse();
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000328F0(&qword_1000990A8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void sub_1000327E8()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000328A4(319, &qword_100099060);
    if (v1 <= 0x3F)
    {
      sub_1000328A4(319, &unk_100099068);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000328A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1000328F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_100032A88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 100);
  return Hasher._finalize()();
}

Swift::Int sub_100032B00()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 100);
  return Hasher._finalize()();
}

uint64_t sub_100032B44@<X0>(__int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100032BD8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100032B84()
{
  result = qword_1000990C0;
  if (!qword_1000990C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000990C0);
  }

  return result;
}

uint64_t sub_100032BD8(__int16 a1)
{
  if ((a1 - 100) >= 5u)
  {
    return 5;
  }

  else
  {
    return (a1 - 100);
  }
}

uint64_t sub_100032BFC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = 2;
  v3 = 0x4082C00000000000;
  *(a3 + 16) = 0;
  if (a2)
  {
    v3 = 0x404E000000000000;
  }

  *(a3 + 24) = 513;
  *(a3 + 32) = v3;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 2;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 770;
  *(a3 + 96) = 200;
  return result;
}

uint64_t sub_100032CAC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100004D40(v3, a2);
  sub_100004D08(v3, a2);

  return Logger.init(subsystem:category:)();
}

uint64_t SyncLibraryInfoResponse.syncHash.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncLibraryInfoResponse(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100032E28(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t SyncLibraryInfoResponse.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for SyncLibraryInfoResponse(0);
  v3 = v2[5];
  v4 = type metadata accessor for SyncLibrary(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for SyncCollectionTargetList(0);
  result = (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v8 = (a1 + v2[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t SyncLibraryInfoResponse.syncHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SyncLibraryInfoResponse(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SyncAssetResourceRequest.uuidData.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncAssetResourceRequest(0) + 20));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  sub_10001D450(*v1, v2);
  return v3;
}

uint64_t sub_100033028(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SyncLibraryInfoResponse.library.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncLibraryInfoResponse(0) + 20);
  sub_100009BA4(v1 + v3, &qword_100098BA8);
  sub_10002055C(a1, v1 + v3, type metadata accessor for SyncLibrary);
  v4 = type metadata accessor for SyncLibrary(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t SyncLibraryInfoResponse.collectionTargetList.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncLibraryInfoResponse(0) + 24);
  sub_100009BA4(v1 + v3, &qword_100098BB0);
  sub_10002055C(a1, v1 + v3, type metadata accessor for SyncCollectionTargetList);
  v4 = type metadata accessor for SyncCollectionTargetList(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_100033210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*SyncLibraryInfoRequest.syncHash.modify(uint64_t *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SyncLibraryInfoRequest(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_10003330C;
}

uint64_t sub_100033370@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = (a2 + *(result + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t SyncLibraryInfoResponse.library.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_100004180(&qword_100098BA8);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for SyncLibraryInfoResponse(0);
  sub_100031208(v1 + *(v6 + 20), v5, &qword_100098BA8);
  v7 = type metadata accessor for SyncLibrary(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_10002055C(v5, a1, type metadata accessor for SyncLibrary);
  }

  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100009BA4(v5, &qword_100098BA8);
  }

  return result;
}

void (*SyncLibraryInfoResponse.library.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100004180(&qword_100098BA8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for SyncLibrary(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for SyncLibraryInfoResponse(0) + 20);
  *(v4 + 12) = v14;
  sub_100031208(v1 + v14, v7, &qword_100098BA8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v13[1] = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100009BA4(v7, &qword_100098BA8);
    }
  }

  else
  {
    sub_10002055C(v7, v13, type metadata accessor for SyncLibrary);
  }

  return sub_100033730;
}

BOOL SyncLibraryInfoResponse.hasLibrary.getter()
{
  v1 = sub_100004180(&qword_100098BA8);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for SyncLibraryInfoResponse(0);
  sub_100031208(v0 + *(v4 + 20), v3, &qword_100098BA8);
  v5 = type metadata accessor for SyncLibrary(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100009BA4(v3, &qword_100098BA8);
  return v6;
}

Swift::Void __swiftcall SyncLibraryInfoResponse.clearLibrary()()
{
  v1 = *(type metadata accessor for SyncLibraryInfoResponse(0) + 20);
  sub_100009BA4(v0 + v1, &qword_100098BA8);
  v2 = type metadata accessor for SyncLibrary(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t SyncLibraryInfoResponse.collectionTargetList.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_100004180(&qword_100098BB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for SyncLibraryInfoResponse(0);
  sub_100031208(v1 + *(v6 + 24), v5, &qword_100098BB0);
  v7 = type metadata accessor for SyncCollectionTargetList(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_10002055C(v5, a1, type metadata accessor for SyncCollectionTargetList);
  }

  *a1 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100009BA4(v5, &qword_100098BB0);
  }

  return result;
}

void (*SyncLibraryInfoResponse.collectionTargetList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100004180(&qword_100098BB0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for SyncCollectionTargetList(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for SyncLibraryInfoResponse(0) + 24);
  *(v4 + 12) = v14;
  sub_100031208(v1 + v14, v7, &qword_100098BB0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100009BA4(v7, &qword_100098BB0);
    }
  }

  else
  {
    sub_10002055C(v7, v13, type metadata accessor for SyncCollectionTargetList);
  }

  return sub_100033C58;
}

void sub_100033C80(uint64_t **a1, char a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *a1;
  v8 = *(*a1 + 12);
  v9 = (*a1)[4];
  v10 = (*a1)[5];
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_1000204F4(v10, v9, a5);
    sub_100009BA4(v13 + v8, a3);
    sub_10002055C(v9, v13 + v8, a5);
    (*(v12 + 56))(v13 + v8, 0, 1, v11);
    sub_100033DB8(v10, a5);
  }

  else
  {
    sub_100009BA4(v13 + v8, a3);
    sub_10002055C(v10, v13 + v8, a5);
    (*(v12 + 56))(v13 + v8, 0, 1, v11);
  }

  free(v10);
  free(v9);
  free(v14);

  free(v7);
}

uint64_t sub_100033DB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL SyncLibraryInfoResponse.hasCollectionTargetList.getter()
{
  v1 = sub_100004180(&qword_100098BB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for SyncLibraryInfoResponse(0);
  sub_100031208(v0 + *(v4 + 24), v3, &qword_100098BB0);
  v5 = type metadata accessor for SyncCollectionTargetList(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100009BA4(v3, &qword_100098BB0);
  return v6;
}

Swift::Void __swiftcall SyncLibraryInfoResponse.clearCollectionTargetList()()
{
  v1 = *(type metadata accessor for SyncLibraryInfoResponse(0) + 24);
  sub_100009BA4(v0 + v1, &qword_100098BB0);
  v2 = type metadata accessor for SyncCollectionTargetList(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void (*SyncLibraryInfoResponse.syncHash.modify(uint64_t *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SyncLibraryInfoResponse(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_10003757C;
}

Swift::Void __swiftcall SyncLibraryInfoResponse.clearSyncHash()()
{
  v1 = (v0 + *(type metadata accessor for SyncLibraryInfoResponse(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t SyncAssetResourceRequest.uuidData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SyncAssetResourceRequest(0) + 20);
  result = sub_1000340F8(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_1000340F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001D4B8(a1, a2);
  }

  return a1;
}

uint64_t (*SyncAssetResourceRequest.uuidData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SyncAssetResourceRequest(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_10001D450(v5, v6);
  return sub_100034180;
}

uint64_t sub_100034180(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    sub_10001D464(*a1, v2);
    sub_1000340F8(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return sub_10001D4B8(v4, v2);
  }

  else
  {
    result = sub_1000340F8(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

Swift::Void __swiftcall SyncAssetResourceRequest.clearUuidData()()
{
  v1 = v0 + *(type metadata accessor for SyncAssetResourceRequest(0) + 20);
  sub_1000340F8(*v1, *(v1 + 8));
  *v1 = xmmword_100070BC0;
}

uint64_t SyncAssetResourceRequest.isUserInitiated.setter(char a1)
{
  result = type metadata accessor for SyncAssetResourceRequest(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*SyncAssetResourceRequest.isUserInitiated.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for SyncAssetResourceRequest(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_10003431C;
}

double SyncAssetResourceRequest.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for SyncAssetResourceRequest(0);
  result = 0.0;
  *(a1 + *(v2 + 20)) = xmmword_100070BC0;
  *(a1 + *(v2 + 24)) = 2;
  return result;
}

void (*SyncSignal.syncHash.modify(uint64_t *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SyncSignal(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_10003757C;
}

uint64_t sub_1000344C4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_100034680(uint64_t a1, uint64_t a2)
{
  v4 = sub_100036BD8(&qword_100099418, type metadata accessor for SyncLibraryInfoRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100034720(uint64_t a1)
{
  v2 = sub_100036BD8(&qword_100099148, type metadata accessor for SyncLibraryInfoRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10003478C()
{
  sub_100036BD8(&qword_100099148, type metadata accessor for SyncLibraryInfoRequest);

  return Message.hash(into:)();
}

uint64_t sub_100034830()
{
  v0 = type metadata accessor for _NameMap();
  sub_100004D40(v0, static SyncLibraryInfoResponse._protobuf_nameMap);
  sub_100004D08(v0, static SyncLibraryInfoResponse._protobuf_nameMap);
  sub_100004180(&qword_1000990B0);
  v1 = (sub_100004180(&qword_1000990B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100070BD0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "library";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collectionTargetList";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "syncHash";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t SyncLibraryInfoResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        type metadata accessor for SyncLibraryInfoResponse(0);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 2:
        sub_100034C10();
        break;
      case 1:
        sub_100034B5C();
        break;
    }
  }

  return result;
}

uint64_t sub_100034B5C()
{
  type metadata accessor for SyncLibraryInfoResponse(0);
  type metadata accessor for SyncLibrary(0);
  sub_100036BD8(&qword_100098B98, type metadata accessor for SyncLibrary);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100034C10()
{
  type metadata accessor for SyncLibraryInfoResponse(0);
  type metadata accessor for SyncCollectionTargetList(0);
  sub_100036BD8(&qword_100098BA0, type metadata accessor for SyncCollectionTargetList);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t SyncLibraryInfoResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v5 = sub_100004180(&qword_100098BB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for SyncCollectionTargetList(0);
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004180(&qword_100098BA8);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for SyncLibrary(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SyncLibraryInfoResponse(0);
  v18 = v17[5];
  v28 = v4;
  sub_100031208(v4 + v18, v12, &qword_100098BA8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100009BA4(v12, &qword_100098BA8);
  }

  else
  {
    sub_10002055C(v12, v16, type metadata accessor for SyncLibrary);
    sub_100036BD8(&qword_100098B98, type metadata accessor for SyncLibrary);
    v19 = v32;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_100033DB8(v16, type metadata accessor for SyncLibrary);
    if (v19)
    {
      return result;
    }

    v32 = 0;
  }

  v21 = v28;
  sub_100031208(v28 + v17[6], v7, &qword_100098BB0);
  if ((*(v26 + 48))(v7, 1, v27) == 1)
  {
    sub_100009BA4(v7, &qword_100098BB0);
    v22 = v32;
  }

  else
  {
    v23 = v25;
    sub_10002055C(v7, v25, type metadata accessor for SyncCollectionTargetList);
    sub_100036BD8(&qword_100098BA0, type metadata accessor for SyncCollectionTargetList);
    v22 = v32;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_100033DB8(v23, type metadata accessor for SyncCollectionTargetList);
    if (v22)
    {
      return result;
    }
  }

  if (!*(v21 + v17[7] + 8))
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  if (!v22)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100035140@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for SyncLibrary(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for SyncCollectionTargetList(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_100035234(uint64_t a1, uint64_t a2)
{
  v4 = sub_100036BD8(&qword_100099410, type metadata accessor for SyncLibraryInfoResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000352D4(uint64_t a1)
{
  v2 = sub_100036BD8(&qword_100098BB8, type metadata accessor for SyncLibraryInfoResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100035340()
{
  sub_100036BD8(&qword_100098BB8, type metadata accessor for SyncLibraryInfoResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000353E4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100004D40(v0, static SyncAssetResourceRequest._protobuf_nameMap);
  sub_100004D08(v0, static SyncAssetResourceRequest._protobuf_nameMap);
  sub_100004180(&qword_1000990B0);
  v1 = (sub_100004180(&qword_1000990B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100070900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuidData";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isUserInitiated";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t SyncAssetResourceRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for SyncAssetResourceRequest(0);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for SyncAssetResourceRequest(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t SyncAssetResourceRequest.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for SyncAssetResourceRequest(0);
  v3 = v0 + *(v2 + 20);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = v2;
    v6 = *v3;
    sub_10001D464(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    result = sub_1000340F8(v6, v4);
    if (v1)
    {
      return result;
    }

    v2 = v5;
  }

  if (*(v0 + *(v2 + 24)) == 2)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  if (!v1)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

double sub_1000357F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = xmmword_100070BC0;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_100035864(uint64_t a1, uint64_t a2)
{
  v4 = sub_100036BD8(&qword_100099408, type metadata accessor for SyncAssetResourceRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100035904(uint64_t a1)
{
  v2 = sub_100036BD8(&qword_100099170, type metadata accessor for SyncAssetResourceRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100035970()
{
  sub_100036BD8(&qword_100099170, type metadata accessor for SyncAssetResourceRequest);

  return Message.hash(into:)();
}

uint64_t sub_100035A24(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  sub_100004D40(v3, a2);
  sub_100004D08(v3, a2);
  sub_100004180(&qword_1000990B0);
  v4 = (sub_100004180(&qword_1000990B8) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10006FCE0;
  v7 = v6 + v5 + v4[14];
  *(v6 + v5) = 1;
  *v7 = "syncHash";
  *(v7 + 8) = 8;
  *(v7 + 16) = 2;
  v8 = enum case for _NameMap.NameDescription.same(_:);
  v9 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100035BB0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for _NameMap();

  return sub_100004D08(v3, a2);
}

uint64_t sub_100035C28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_100004D08(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100035CEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t sub_100035DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(v4 + *(a4(0) + 20) + 8))
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

Swift::Int sub_100035EBC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_100036BD8(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100035F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100036BD8(&qword_100099400, type metadata accessor for SyncSignal);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100036014@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_100004D08(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1000360B0(uint64_t a1)
{
  v2 = sub_100036BD8(&qword_100098F90, type metadata accessor for SyncSignal);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10003611C()
{
  sub_100036BD8(&qword_100098F90, type metadata accessor for SyncSignal);

  return Message.hash(into:)();
}

uint64_t _s14NanoPhotosSync0C20AssetResourceRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncAssetResourceRequest(0);
  v5 = *(v4 + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10001D450(v7, v6);
      sub_10001D450(v10, v9);
      sub_1000340F8(v7, v6);
      goto LABEL_8;
    }

LABEL_5:
    sub_10001D450(v7, v6);
    sub_10001D450(v10, v9);
    sub_1000340F8(v7, v6);
    sub_1000340F8(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_10001D450(v7, v6);
  sub_10001D450(v10, v9);
  v12 = sub_10003D4B4(v7, v6, v10, v9);
  sub_1000340F8(v10, v9);
  sub_1000340F8(v7, v6);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v13 = *(v4 + 24);
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 != 2)
  {
    if (v15 != 2 && ((v14 ^ v15) & 1) == 0)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v15 != 2)
  {
    return 0;
  }

LABEL_13:
  type metadata accessor for UnknownStorage();
  sub_100036BD8(&qword_1000990A8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _s14NanoPhotosSync0C19LibraryInfoResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncCollectionTargetList(0);
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v47 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100004180(&qword_100098BB0);
  __chkstk_darwin(v6 - 8);
  v48 = (&v46 - v7);
  v50 = sub_100004180(&qword_100099420);
  __chkstk_darwin(v50);
  v54 = &v46 - v8;
  v9 = type metadata accessor for SyncLibrary(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v49 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100004180(&qword_100098BA8);
  __chkstk_darwin(v12 - 8);
  v14 = (&v46 - v13);
  v15 = sub_100004180(&qword_100099428);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  v51 = type metadata accessor for SyncLibraryInfoResponse(0);
  v19 = *(v51 + 20);
  v20 = *(v16 + 56);
  v55 = a1;
  sub_100031208(a1 + v19, v18, &qword_100098BA8);
  v21 = a2 + v19;
  v22 = a2;
  sub_100031208(v21, &v18[v20], &qword_100098BA8);
  v23 = *(v10 + 48);
  if (v23(v18, 1, v9) == 1)
  {
    if (v23(&v18[v20], 1, v9) == 1)
    {
      sub_100009BA4(v18, &qword_100098BA8);
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  sub_100031208(v18, v14, &qword_100098BA8);
  if (v23(&v18[v20], 1, v9) == 1)
  {
    sub_100033DB8(v14, type metadata accessor for SyncLibrary);
LABEL_15:
    v36 = &qword_100099428;
LABEL_21:
    v39 = v18;
    goto LABEL_22;
  }

  v37 = v49;
  sub_10002055C(&v18[v20], v49, type metadata accessor for SyncLibrary);
  if ((sub_10003CB10(*v14, *v37) & 1) == 0 || (sub_10003D220(v14[1], v37[1]) & 1) == 0)
  {
    sub_100033DB8(v37, type metadata accessor for SyncLibrary);
    sub_100033DB8(v14, type metadata accessor for SyncLibrary);
    v36 = &qword_100098BA8;
    goto LABEL_21;
  }

  type metadata accessor for UnknownStorage();
  sub_100036BD8(&qword_1000990A8, &type metadata accessor for UnknownStorage);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100033DB8(v37, type metadata accessor for SyncLibrary);
  sub_100033DB8(v14, type metadata accessor for SyncLibrary);
  sub_100009BA4(v18, &qword_100098BA8);
  if ((v38 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_4:
  v24 = v51;
  v25 = *(v51 + 24);
  v26 = *(v50 + 48);
  v28 = v54;
  v27 = v55;
  sub_100031208(v55 + v25, v54, &qword_100098BB0);
  sub_100031208(v22 + v25, v28 + v26, &qword_100098BB0);
  v29 = v53;
  v30 = *(v52 + 48);
  if (v30(v28, 1, v53) != 1)
  {
    v42 = v48;
    sub_100031208(v28, v48, &qword_100098BB0);
    if (v30(v28 + v26, 1, v29) == 1)
    {
      sub_100033DB8(v42, type metadata accessor for SyncCollectionTargetList);
      goto LABEL_27;
    }

    v43 = v28 + v26;
    v44 = v47;
    sub_10002055C(v43, v47, type metadata accessor for SyncCollectionTargetList);
    if (sub_10003CA74(*v42, *v44))
    {
      type metadata accessor for UnknownStorage();
      sub_100036BD8(&qword_1000990A8, &type metadata accessor for UnknownStorage);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100033DB8(v44, type metadata accessor for SyncCollectionTargetList);
      sub_100033DB8(v42, type metadata accessor for SyncCollectionTargetList);
      sub_100009BA4(v28, &qword_100098BB0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_7;
    }

    sub_100033DB8(v44, type metadata accessor for SyncCollectionTargetList);
    sub_100033DB8(v42, type metadata accessor for SyncCollectionTargetList);
    v36 = &qword_100098BB0;
    v39 = v28;
LABEL_22:
    sub_100009BA4(v39, v36);
    goto LABEL_23;
  }

  if (v30(v28 + v26, 1, v29) != 1)
  {
LABEL_27:
    v36 = &qword_100099420;
    v39 = v28;
    goto LABEL_22;
  }

  sub_100009BA4(v28, &qword_100098BB0);
LABEL_7:
  v31 = *(v24 + 28);
  v32 = (v27 + v31);
  v33 = *(v27 + v31 + 8);
  v34 = (v22 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (v35 && (*v32 == *v34 && v33 == v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_33;
    }
  }

  else if (!v35)
  {
LABEL_33:
    type metadata accessor for UnknownStorage();
    sub_100036BD8(&qword_1000990A8, &type metadata accessor for UnknownStorage);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v40 & 1;
  }

LABEL_23:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_100036AFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v9)
  {
LABEL_8:
    type metadata accessor for UnknownStorage();
    sub_100036BD8(&qword_1000990A8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_100036BD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000370F0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000371EC(319, &qword_100099288, type metadata accessor for SyncLibrary);
    if (v1 <= 0x3F)
    {
      sub_1000371EC(319, &unk_100099290, type metadata accessor for SyncCollectionTargetList);
      if (v2 <= 0x3F)
      {
        sub_1000328A4(319, &qword_100099060);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000371EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100037268()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000328A4(319, &qword_100099330);
    if (v1 <= 0x3F)
    {
      sub_1000328A4(319, &unk_100099338);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100037338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100037418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_1000374D4()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000328A4(319, &qword_100099060);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100037590(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1000375AC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000375C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100037608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10003764C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t SyncLibrary.init()@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  type metadata accessor for SyncLibrary(0);
  return UnknownStorage.init()();
}

uint64_t SyncCollectionTargetList.init()@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  type metadata accessor for SyncCollectionTargetList(0);
  return UnknownStorage.init()();
}

uint64_t SyncAsset.uuidData.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncAsset(0) + 20));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  sub_10001D450(*v1, v2);
  return v3;
}

uint64_t SyncAsset.uuidData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SyncAsset(0) + 20);
  result = sub_1000340F8(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*SyncAsset.uuidData.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SyncAsset(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_10001D450(v5, v6);
  return sub_10003F3B4;
}

Swift::Void __swiftcall SyncAsset.clearUuidData()()
{
  v1 = v0 + *(type metadata accessor for SyncAsset(0) + 20);
  sub_1000340F8(*v1, *(v1 + 8));
  *v1 = xmmword_100070BC0;
}

uint64_t SyncAsset.date.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncAsset(0) + 24));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t SyncAsset.date.setter(uint64_t a1)
{
  result = type metadata accessor for SyncAsset(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SyncAsset.date.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SyncAsset(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_1000379A8;
}

uint64_t sub_1000379A8(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall SyncAsset.clearDate()()
{
  v1 = v0 + *(type metadata accessor for SyncAsset(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double SyncAsset.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for SyncAsset(0);
  result = 0.0;
  *(a1 + *(v2 + 20)) = xmmword_100070BC0;
  v4 = a1 + *(v2 + 24);
  *v4 = 0;
  *(v4 + 8) = 1;
  return result;
}

uint64_t SyncAssetCollection.uuidData.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncAssetCollection(0) + 24));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  sub_10001D450(*v1, v2);
  return v3;
}

uint64_t SyncAssetCollection.uuidData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SyncAssetCollection(0) + 24);
  result = sub_1000340F8(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*SyncAssetCollection.uuidData.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SyncAssetCollection(0) + 24);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_10001D450(v5, v6);
  return sub_10003F3B4;
}

Swift::Void __swiftcall SyncAssetCollection.clearUuidData()()
{
  v1 = v0 + *(type metadata accessor for SyncAssetCollection(0) + 24);
  sub_1000340F8(*v1, *(v1 + 8));
  *v1 = xmmword_100070BC0;
}

uint64_t SyncAssetCollection.assetIndex.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SyncAssetCollection.title.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncAssetCollection(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SyncAssetCollection.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SyncAssetCollection(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*SyncAssetCollection.title.modify(uint64_t *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SyncAssetCollection(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_10003757C;
}

Swift::Void __swiftcall SyncAssetCollection.clearTitle()()
{
  v1 = (v0 + *(type metadata accessor for SyncAssetCollection(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t SyncAssetCollection.deprecatedSubtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncAssetCollection(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SyncAssetCollection.deprecatedSubtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SyncAssetCollection(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*SyncAssetCollection.deprecatedSubtitle.modify(uint64_t *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SyncAssetCollection(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_10003330C;
}

Swift::Void __swiftcall SyncAssetCollection.clearDeprecatedSubtitle()()
{
  v1 = (v0 + *(type metadata accessor for SyncAssetCollection(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t SyncAssetCollection.deprecatedKeyAssetUuiddata.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncAssetCollection(0) + 36));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  sub_10001D450(*v1, v2);
  return v3;
}

uint64_t SyncAssetCollection.deprecatedKeyAssetUuiddata.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SyncAssetCollection(0) + 36);
  result = sub_1000340F8(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*SyncAssetCollection.deprecatedKeyAssetUuiddata.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SyncAssetCollection(0) + 36);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_10001D450(v5, v6);
  return sub_1000380B8;
}

Swift::Void __swiftcall SyncAssetCollection.clearDeprecatedKeyAssetUuiddata()()
{
  v1 = v0 + *(type metadata accessor for SyncAssetCollection(0) + 36);
  sub_1000340F8(*v1, *(v1 + 8));
  *v1 = xmmword_100070BC0;
}

double SyncAssetCollection.init()@<D0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for SyncAssetCollection(0);
  UnknownStorage.init()();
  result = 0.0;
  *(a1 + v2[6]) = xmmword_100070BC0;
  v4 = (a1 + v2[7]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[8]);
  *v5 = 0;
  v5[1] = 0;
  *(a1 + v2[9]) = xmmword_100070BC0;
  return result;
}

uint64_t SyncCollectionTargetItem.uuidData.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncCollectionTargetItem(0) + 28));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  sub_10001D450(*v1, v2);
  return v3;
}

uint64_t SyncCollectionTargetItem.uuidData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SyncCollectionTargetItem(0) + 28);
  result = sub_1000340F8(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*SyncCollectionTargetItem.uuidData.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SyncCollectionTargetItem(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_10001D450(v5, v6);
  return sub_10003F3B4;
}

Swift::Void __swiftcall SyncCollectionTargetItem.clearUuidData()()
{
  v1 = v0 + *(type metadata accessor for SyncCollectionTargetItem(0) + 28);
  sub_1000340F8(*v1, *(v1 + 8));
  *v1 = xmmword_100070BC0;
}

uint64_t SyncCollectionTargetItem.collectionTarget.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncCollectionTargetItem(0) + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t SyncCollectionTargetItem.collectionTarget.setter(int a1)
{
  result = type metadata accessor for SyncCollectionTargetItem(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*SyncCollectionTargetItem.collectionTarget.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for SyncCollectionTargetItem(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_100031C8C;
}

Swift::Void __swiftcall SyncCollectionTargetItem.clearCollectionTarget()()
{
  v1 = v0 + *(type metadata accessor for SyncCollectionTargetItem(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t SyncCollectionTargetItem.keyAssetIndex.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SyncCollectionTargetItem.title.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncCollectionTargetItem(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SyncCollectionTargetItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SyncCollectionTargetItem(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*SyncCollectionTargetItem.title.modify(uint64_t *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SyncCollectionTargetItem(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_10003757C;
}

Swift::Void __swiftcall SyncCollectionTargetItem.clearTitle()()
{
  v1 = (v0 + *(type metadata accessor for SyncCollectionTargetItem(0) + 36));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t SyncCollectionTargetItem.subtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncCollectionTargetItem(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SyncCollectionTargetItem.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SyncCollectionTargetItem(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*SyncCollectionTargetItem.subtitle.modify(uint64_t *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SyncCollectionTargetItem(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_10003757C;
}