uint64_t sub_10014C568()
{
  v1 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  static TaskPriority.background.getter();
  type metadata accessor for TaskPriority();
  v3 = sub_100005780();
  sub_100009BFC(v3, v4, v5, v6);
  v8 = sub_10014DE08(&qword_1001BDDE0, v7, type metadata accessor for RateLimiter);
  v9 = swift_allocObject();
  v9[2] = v0;
  v9[3] = v8;
  v9[4] = v0;
  swift_retain_n();
  sub_1000652FC();
  v10 = *(v0 + 256);
  *(v0 + 256) = v11;
}

uint64_t sub_10014C6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v6 = type metadata accessor for CancellationError();
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v8 = *(v7 + 64) + 15;
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v4[21] = v9;
  v10 = *(v9 - 8);
  v4[22] = v10;
  v11 = *(v10 + 64) + 15;
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_10014C7F8, a4, 0);
}

uint64_t sub_10014C7F8()
{
  v1 = v0[17];
  type metadata accessor for _OSActivity();
  v0[24] = swift_initStackObject();
  v0[25] = sub_10001B160("RateLimiter Expiration", 22, 2);
  swift_beginAccess();
  v2 = v0[17];
  if (*(*(v2 + 248) + 16))
  {
    v3 = v0[23];
    v4 = *(v2 + 240) + *(v2 + 240);
    static Duration.seconds(_:)();
    static Clock<>.continuous.getter();
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    sub_100005DF0(v5);
    v6 = sub_10000A760();

    return v7(v6);
  }

  else
  {
    v9 = v0[25];
    v10 = *(v2 + 256);
    *(v2 + 256) = 0;

    sub_100002D24();
    swift_beginAccess();
    os_activity_scope_leave((v9 + 24));
    swift_endAccess();
    sub_10000A350();

    sub_100001F00();

    return v11();
  }
}

uint64_t sub_10014C9B4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = v2[23];
  v6 = v2[22];
  v7 = v2[21];
  v8 = v2[17];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_10014CCD8;
  }

  else
  {
    v9 = sub_10014CB5C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10014CB5C()
{
  v1 = v0[17];
  sub_10014C0CC();
  v2 = v0[17];
  if (*(*(v2 + 248) + 16))
  {
    v3 = v0[23];
    v4 = *(v2 + 240) + *(v2 + 240);
    static Duration.seconds(_:)();
    static Clock<>.continuous.getter();
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    sub_100005DF0();
    v6 = sub_10000A760();

    return v7(v6);
  }

  else
  {
    v9 = v0[25];
    v10 = *(v2 + 256);
    *(v2 + 256) = 0;

    sub_100002D24();
    swift_beginAccess();
    os_activity_scope_leave((v9 + 24));
    swift_endAccess();
    sub_10000A350();

    sub_100001F00();

    return v11();
  }
}

uint64_t sub_10014CCD8()
{
  v0[16] = v0[27];
  v1 = v0[20];
  v2 = v0[18];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (swift_dynamicCast())
  {
    v3 = v0[27];
    v4 = v0[25];
    v6 = v0[19];
    v5 = v0[20];
    v7 = v0[18];

    (*(v6 + 8))(v5, v7);
    v8 = v0[16];
  }

  else
  {
    v9 = v0[16];

    if (qword_1001B8AC0 != -1)
    {
      sub_10000538C();
      swift_once();
    }

    v10 = v0[27];
    v11 = type metadata accessor for Logger();
    sub_10000641C(v11, qword_1001BDC68);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[27];
    if (v14)
    {
      v16 = swift_slowAlloc();
      sub_100005944();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Task.sleep threw %@", v16, 0xCu);
      sub_10000ECD8(v17, &qword_1001B8F68, &qword_10016FB80);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
    }

    v4 = v0[25];
    v19 = v0[17];
    v20 = *(v19 + 256);
    *(v19 + 256) = 0;
  }

  sub_100002D24();
  swift_beginAccess();
  os_activity_scope_leave((v4 + 24));
  swift_endAccess();
  sub_10000A350();

  sub_100001F00();

  return v21();
}

uint64_t sub_10014CF6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10014D020;

  return sub_10014C6AC(a1, v4, v5, v6);
}

uint64_t sub_10014D020()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_100001F00();

  return v2();
}

double sub_10014D138@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000236F4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100009CF4();
    v11 = sub_100065020(&qword_1001BCD58, &unk_100173508);
    sub_100003CBC(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
    v19 = *(*(v23 + 48) + 16 * v9 + 8);

    sub_100007B38();
    sub_100065020(&qword_1001BA8F8, "ޅ");
    _NativeDictionary._delete(at:)();
    *v4 = v23;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10014D230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_1000236F4(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v10;
    v18 = *(*v10 + 24);
    sub_100065020(a3, a4);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18);
    v19 = *(*(v28 + 48) + 16 * v15 + 8);

    v20 = *(v28 + 56);
    v21 = a5(0);
    sub_100002C00(v21);
    (*(v22 + 32))(a6, v20 + *(v22 + 72) * v15, v21);
    _NativeDictionary._delete(at:)();
    *v10 = v28;
    v23 = sub_100005780();
    v26 = v21;
  }

  else
  {
    a5(0);
    v23 = sub_1000128F4();
  }

  return sub_100009BFC(v23, v24, v25, v26);
}

uint64_t sub_10014D378(int a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10011739C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v9 = *(*v2 + 24);
  sub_100065020(&qword_1001BCD48, &qword_1001734F8);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
  v10 = *(*(v12 + 56) + 8 * v6);
  sub_100065020(&qword_1001B8C08, &qword_10016F808);
  _NativeDictionary._delete(at:)();
  *v2 = v12;
  return v10;
}

double sub_10014D450@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1001173E4();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100009CF4();
    v9 = sub_100065020(&qword_1001BCD50, &qword_100173500);
    sub_100003CBC(v9, v10, v11, v12, v13, v14, v15, v16, v21, v22);
    v17 = *(v23 + 48);
    v18 = type metadata accessor for UUID();
    sub_100002C00(v18);
    (*(v19 + 8))(v17 + *(v19 + 72) * v7, v18);
    sub_100007B38();
    sub_100065020(&qword_1001B8BF8, &qword_10016F800);
    sub_10014DE50(&qword_1001B8C00, &type metadata accessor for UUID);
    _NativeDictionary._delete(at:)();
    *v2 = v23;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10014D564(char a1, Swift::Int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = (*v3 + 16);
  v10 = *v9;
  v11 = type metadata accessor for Date();
  v12 = v11;
  if (v10 >= a2)
  {
    v18 = *(v11 - 8);
    v19 = *(v18 + 80);
    sub_100065020(&qword_1001BDDE8, &qword_100174388);
    v20 = *(v18 + 72);
    v17 = swift_allocObject();
    v21 = *(v8 + 24);
    *(v17 + 16) = v10;
    *(v17 + 24) = v21;
    if (v21 >= 1)
    {
      sub_10014DB44(v17 + 16, v17 + ((v19 + 40) & ~v19), v9, v8 + ((v19 + 40) & ~v19));
    }
  }

  else
  {
    Deque._Storage._growCapacity(to:linearly:)(a2, a3 & 1);
    v13 = *(v12 - 8);
    v14 = *(v13 + 80);
    if (a1)
    {
      v15 = *(v8 + 24);
      sub_100065020(&qword_1001BDDE8, &qword_100174388);
      v16 = *(v13 + 72);
      v17 = swift_allocObject();
      *(v17 + 16) = sub_10014D984();
      *(v17 + 24) = v15;
      *(v17 + 32) = 0;
      if (v15 >= 1)
      {
        sub_10014D864(v17 + 16, v17 + ((v14 + 40) & ~v14), v9, v8 + ((v14 + 40) & ~v14));
        *(v8 + 24) = 0;
      }
    }

    else
    {
      sub_100065020(&qword_1001BDDE8, &qword_100174388);
      v22 = *(v13 + 72);
      v17 = swift_allocObject();
      v23 = sub_10014D984();
      v24 = *(v8 + 24);
      *(v17 + 16) = v23;
      *(v17 + 24) = v24;
      *(v17 + 32) = 0;
      if (v24 >= 1)
      {
        sub_10014DA20(v17 + 16, v17 + ((v14 + 40) & ~v14), v9, v8 + ((v14 + 40) & ~v14));
      }
    }
  }

  *v4 = v17;
  return result;
}

void *sub_10014D790(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for Date();
        result = (*(*(v10 - 8) + 16))(a2 + *(*(v10 - 8) + 72) * v5, a3, v10);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_10014D864(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for Date() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v9)
  {
    v12 = v5 < v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v8 + 72);
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v10 >= 1)
  {
    if (a4)
    {
      v15 = a4 + v13 * v4;
      v16 = a2;
      sub_1000708D8(v15, v10, a2);
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = 0;
  v16 = a2;
LABEL_16:
  if (v5 < v7 && v9 >= 1)
  {
    if (v14)
    {
      sub_1000708D8(v14, v9, v16 + v13 * v10);
      return;
    }

LABEL_26:
    __break(1u);
  }
}

uint64_t sub_10014D984()
{
  v1 = j__malloc_size(v0);
  v2 = type metadata accessor for Date();
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  if (v6)
  {
    v7 = v1 - ((v5 + 40) & ~v5);
    if (v6 != -1 || v7 != 0x8000000000000000)
    {
      return v7 / v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10014DA20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for Date() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  v12 = *(v8 + 72);
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_10014DB44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for Date() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = *(v8 + 72) * v4;
  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_10014DC54()
{
  v1 = *v0;
  v2 = type metadata accessor for Date();
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  sub_100065020(&qword_1001BDDE8, &qword_100174388);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_10014DB44(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

void *sub_10014DD4C(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[2];
  if (!v6)
  {
LABEL_5:
    v7 = *result - 1;
    if (__OFSUB__(*result, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  v8 = type metadata accessor for Date();
  result = (*(*(v8 - 8) + 16))(a2 + *(*(v8 - 8) + 72) * v7, a3, v8);
  v5[2] = v7;
  v9 = v5[1];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    v5[1] = v11;
    return result;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10014DE08(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10014DE50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014DEBC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10011CAD4;

  return sub_10011C138();
}

uint64_t sub_10014DF8C(char a1)
{
  if (!a1)
  {
    return 0x6C61636974697263;
  }

  if (a1 == 1)
  {
    return 0x746972632D6E6F6ELL;
  }

  return 0x6E776F6E6B6E75;
}

_BYTE *storeEnumTagSinglePayload for MemoryPressure(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10014E0D4()
{
  result = qword_1001BDF30;
  if (!qword_1001BDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BDF30);
  }

  return result;
}

uint64_t sub_10014E138(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for CustomAssetConfiguration();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v43 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ModelCatalogAsset(0);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  __chkstk_darwin(v8 - 8);
  v53 = (v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  if (v11)
  {
    v41[0] = v2;
    v55 = _swiftEmptyArrayStorage;
    sub_10002045C(0, v11, 0);
    v54 = v55;
    result = sub_10001E724(a1);
    v15 = result;
    v16 = 0;
    v52 = a1 + 56;
    v41[2] = v5 + 16;
    v42 = v5;
    v41[1] = v5 + 8;
    v45 = a1 + 64;
    v46 = v11;
    v47 = a1;
    v48 = a2;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v15 < 1 << *(a1 + 32))
      {
        v17 = v15 >> 6;
        if ((*(v52 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_29;
        }

        if (*(a1 + 36) != v13)
        {
          goto LABEL_30;
        }

        v51 = v14;
        v50 = v13;
        v18 = v53;
        sub_100151098(*(a1 + 48) + *(v49 + 72) * v15, v53, type metadata accessor for ModelCatalogAsset);
        v19 = *v18;
        v20 = v18[1];
        if (*(a2 + 16) && (v21 = sub_1000236F4(*v18, v18[1]), (v22 & 1) != 0))
        {
          v24 = v42;
          v23 = v43;
          v25 = *(a2 + 56) + *(v42 + 72) * v21;
          v26 = v44;
          (*(v42 + 16))(v43, v25, v44);
          v19 = CustomAssetConfiguration.identifier.getter();
          v20 = v27;
          (*(v24 + 8))(v23, v26);
        }

        else
        {
        }

        result = sub_100059E78(v53, type metadata accessor for ModelCatalogAsset);
        v28 = v54;
        v55 = v54;
        v30 = v54[2];
        v29 = v54[3];
        if (v30 >= v29 >> 1)
        {
          result = sub_10002045C((v29 > 1), v30 + 1, 1);
          v28 = v55;
        }

        v28[2] = v30 + 1;
        v31 = &v28[2 * v30];
        v31[4] = v19;
        v31[5] = v20;
        if (v51)
        {
          goto LABEL_34;
        }

        a1 = v47;
        a2 = v48;
        v32 = 1 << *(v47 + 32);
        if (v15 >= v32)
        {
          goto LABEL_31;
        }

        v33 = *(v52 + 8 * v17);
        if ((v33 & (1 << v15)) == 0)
        {
          goto LABEL_32;
        }

        v54 = v28;
        if (*(v47 + 36) != v50)
        {
          goto LABEL_33;
        }

        v34 = v33 & (-2 << (v15 & 0x3F));
        if (v34)
        {
          v32 = __clz(__rbit64(v34)) | v15 & 0x7FFFFFFFFFFFFFC0;
          v35 = v46;
        }

        else
        {
          v36 = v17 << 6;
          v37 = v17 + 1;
          v35 = v46;
          v38 = (v45 + 8 * v17);
          while (v37 < (v32 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              result = sub_100016E94(v15, v50, 0);
              v32 = __clz(__rbit64(v39)) + v36;
              goto LABEL_23;
            }
          }

          result = sub_100016E94(v15, v50, 0);
        }

LABEL_23:
        if (++v16 == v35)
        {

          return v54;
        }

        v14 = 0;
        v13 = *(a1 + 36);
        v15 = v32;
        if (v32 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10014E56C(uint64_t a1)
{
  v3 = type metadata accessor for ModelCatalogAsset(0);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  __chkstk_darwin(v3 - 8);
  v33 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v29[1] = v1;
  v38 = _swiftEmptyArrayStorage;
  sub_10002045C(0, v6, 0);
  v7 = v38;
  result = sub_10001E724(a1);
  v11 = result;
  v12 = 0;
  v37 = a1 + 56;
  v30 = a1 + 64;
  v31 = v6;
  v32 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < 1 << *(a1 + 32))
    {
      v13 = v11 >> 6;
      if ((*(v37 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_25;
      }

      v36 = v10;
      v35 = v9;
      v14 = v33;
      sub_100151098(*(a1 + 48) + *(v34 + 72) * v11, v33, type metadata accessor for ModelCatalogAsset);
      v16 = *v14;
      v15 = v14[1];

      result = sub_100059E78(v14, type metadata accessor for ModelCatalogAsset);
      v38 = v7;
      v18 = v7[2];
      v17 = v7[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10002045C((v17 > 1), v18 + 1, 1);
        v7 = v38;
      }

      v7[2] = v18 + 1;
      v19 = &v7[2 * v18];
      v19[4] = v16;
      v19[5] = v15;
      if (v36)
      {
        goto LABEL_29;
      }

      a1 = v32;
      v20 = 1 << *(v32 + 32);
      if (v11 >= v20)
      {
        goto LABEL_26;
      }

      v21 = *(v37 + 8 * v13);
      if ((v21 & (1 << v11)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v32 + 36) != v35)
      {
        goto LABEL_28;
      }

      v22 = v21 & (-2 << (v11 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v23 = v31;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v23 = v31;
        v26 = (v30 + 8 * v13);
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_100016E94(v11, v35, 0);
            v20 = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v11, v35, 0);
      }

LABEL_19:
      if (++v12 == v23)
      {
        return v7;
      }

      v10 = 0;
      v9 = *(a1 + 36);
      v11 = v20;
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

uint64_t sub_10014E860(char a1)
{
  v3 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_100150604(v1 + v3, v1, a1);
  return swift_endAccess();
}

void sub_10014E8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22)
{
  sub_1000055B0();
  a19 = v22;
  a20 = v23;
  v101 = v24;
  v102 = v25;
  v97 = v27;
  v98 = v26;
  v99 = v28;
  v100 = v29;
  v31 = v30;
  v95 = a21;
  v96 = v32;
  v94 = a22;
  v33 = type metadata accessor for RequestMetadata();
  v34 = sub_100002BDC(v33);
  v92 = v35;
  v93 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v34);
  sub_100002B8C();
  v91 = (v39 - v38);
  sub_100003B1C();
  v40 = type metadata accessor for TaskPriority();
  v41 = sub_1000065D8(v40, &a16);
  v43 = v42;
  v84 = v42;
  v45 = *(v44 + 64);
  __chkstk_darwin(v41);
  sub_100002B8C();
  v90 = v47 - v46;
  sub_100003B1C();
  v48 = type metadata accessor for Version();
  v49 = sub_100002F04(v48);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  sub_100002B8C();
  v79 = v53 - v52;
  v54 = type metadata accessor for AuditToken();
  v55 = sub_100002BDC(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  __chkstk_darwin(v55);
  sub_100002B8C();
  v62 = v61 - v60;
  v87 = v61 - v60;
  v63 = type metadata accessor for UUID();
  v64 = sub_100002F04(v63);
  v66 = *(v65 + 64);
  __chkstk_darwin(v64);
  sub_100002B8C();
  v69 = v68 - v67;
  Session.Metadata.sessionSetID.getter();
  HIDWORD(v89) = Session.Metadata.onBehalfOfPID.getter();
  v88 = Session.Metadata.parentOfOnBehalfOfPID.getter();
  (*(v57 + 16))(v62, v31 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken, v54);
  v86 = AuditToken.auditUserIdentifier.getter();
  sub_1000480AC(v101, v103);
  v81 = Session.Metadata.useCaseID.getter();
  v80 = v70;
  Session.Metadata.inferenceInterfaceVersion.getter();
  (*(v43 + 16))(v90, v102, v40);
  v71 = Session.Metadata.loggingIdentifier.getter();
  v73 = v72;
  v74 = *(v31 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_isUnentitled);
  (*(v92 + 16))(v91, v94, v93);
  BYTE1(v77) = v95;
  LOBYTE(v77) = v74;
  LOBYTE(v76) = v96;
  sub_10014F74C(v69, v99, v100, HIDWORD(v89), v88, v87, v86, v103, v81, v80, v98, v97, v79, v76, v90, v71, v73, v77, v91, v78, v79, v80, v81, v82, v84, v85, v87, v88, v89, v90, BYTE1(v90), v91);

  (*(v92 + 8))(v94, v93);
  sub_10000854C(&a17);
  v75(v102, v83);
  sub_100003324(v101);
  sub_100002EEC();
}

uint64_t sub_10014ECA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 136) = a4;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  v8 = type metadata accessor for InferenceProviderRequestConfiguration();
  *(v6 + 80) = v8;
  v9 = *(v8 - 8);
  *(v6 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  v11 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002F04(v11);
  v13 = *(v12 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v14 = type metadata accessor for RequestMetadata();
  *(v6 + 112) = v14;
  v15 = *(v14 - 8);
  *(v6 + 120) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_10014EDFC, a5, 0);
}

uint64_t sub_10014EDFC()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  v4 = sub_10000C6C0(v3, 1, v1);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = *(v0 + 56);
  if (v4 == 1)
  {
    (*(v6 + 16))(v5, *(v0 + 40) + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata, *(v0 + 112));
    if (sub_10000C6C0(v8, 1, v7) != 1)
    {
      sub_1001510F8(*(v0 + 56));
    }
  }

  else
  {
    (*(v6 + 32))(v5, *(v0 + 56), *(v0 + 112));
  }

  v26 = *(v0 + 128);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  v11 = *(v0 + 88);
  v22 = *(v0 + 80);
  v12 = *(v0 + 72);
  v25 = *(v0 + 136);
  v13 = *(v0 + 40);
  v24 = *(v0 + 48);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  v23 = *(v13 + 72);
  v16 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_100151098(v13 + v16, v10, type metadata accessor for DaemonRequest.ManagerOwnedState);

  (*(v11 + 16))(v9, v10, v22);
  sub_100059E78(v10, type metadata accessor for DaemonRequest.ManagerOwnedState);
  v17 = *(v12 + 48);
  v18 = *(v12 + 52);
  v19 = swift_allocObject();
  sub_10014F630();

  v20 = *(v0 + 8);

  return v20(v19);
}

void sub_10014F010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char a22, unsigned __int8 a23, uint64_t a24)
{
  sub_1000055B0();
  a19 = v24;
  a20 = v25;
  v104 = v26;
  v99 = v28;
  v100 = v27;
  v30 = v29;
  v102 = v31;
  v103 = v32;
  v101 = v33;
  v98 = a21;
  v96 = a23;
  v97 = a22;
  v94 = a24;
  v95 = v34;
  v93 = type metadata accessor for RequestMetadata();
  v35 = sub_100002BDC(v93);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  sub_100002B8C();
  v92 = v41 - v40;
  sub_100003B1C();
  v42 = type metadata accessor for TaskPriority();
  v43 = sub_1000065D8(v42, &a17);
  v45 = v44;
  v86 = v44;
  v47 = *(v46 + 64);
  __chkstk_darwin(v43);
  sub_100002B8C();
  v50 = v49 - v48;
  v51 = type metadata accessor for Version();
  v52 = sub_100002BDC(v51);
  v54 = v53;
  v88 = v52;
  v90 = v53;
  v56 = *(v55 + 64);
  __chkstk_darwin(v52);
  sub_100002B8C();
  v59 = v58 - v57;
  v60 = type metadata accessor for AuditToken();
  v61 = sub_100002F04(v60);
  v63 = *(v62 + 64);
  __chkstk_darwin(v61);
  sub_100002B8C();
  v66 = v65 - v64;
  v67 = type metadata accessor for UUID();
  v68 = sub_100002F04(v67);
  v70 = *(v69 + 64);
  __chkstk_darwin(v68);
  sub_100002B8C();
  v73 = v72 - v71;
  UUID.init()();
  HIDWORD(v87) = getpid();
  AuditToken.init(_:)();
  sub_1000480AC(v104, v105);
  (*(v54 + 16))(v59, v30, v51);
  v74 = *(v45 + 16);
  v75 = v95;
  v74(v50, v95, v42);
  v76 = v37;
  v77 = *(v37 + 16);
  v78 = v93;
  v79 = v94;
  v77(v92, v94, v93);
  BYTE1(v82) = v96;
  LOBYTE(v82) = v97;
  LOBYTE(v81) = 0;
  sub_10014F74C(v73, v102, v103, HIDWORD(v87), 0, v66, 0, v105, 0, 0xE000000000000000, v101, v100, v59, v81, v50, v99, v98, v82, v92, v83, v84, v86, v87, v88, v90, v92, v93, v94, v95, v96, HIBYTE(v96), v98);
  (*(v76 + 8))(v79, v78);
  sub_10000854C(&a18);
  v80(v75, v85);
  (*(v91 + 8))(v30, v89);
  sub_100003324(v104);
  sub_100002EEC();
}

uint64_t sub_10014F3A8()
{
  v1 = type metadata accessor for RequestPriority();
  v2 = sub_100002BDC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100005630();
  v9 = (v7 - v8);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v14 = sub_100002F04(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100002B8C();
  v19 = v18 - v17;
  if (*(v0 + 72) == 1 && (*(v0 + 73) & 1) == 0)
  {
    v21 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    swift_beginAccess();
    sub_100151098(v0 + v21, v19, type metadata accessor for DaemonRequest.ManagerOwnedState);
    InferenceProviderRequestConfiguration.requestPriority.getter();
    sub_100059E78(v19, type metadata accessor for DaemonRequest.ManagerOwnedState);
    (*(v4 + 104))(v9, enum case for RequestPriority.userInitiated(_:), v1);
    sub_10005E6D4(&qword_1001B9428, &type metadata accessor for RequestPriority);
    v20 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v22 = *(v4 + 8);
    v22(v9, v1);
    v22(v12, v1);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_10014F5BC()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BDF38);
  sub_10000641C(v0, qword_1001BDF38);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void sub_10014F630()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  v16 = type metadata accessor for RequestMetadata();
  sub_100002C00(v16);
  (*(v17 + 32))(v0 + v15, v14);
  *(v0 + 16) = v12;
  *(v0 + 24) = v10;
  sub_100004A04(v8, v0 + 32);
  *(v0 + 72) = v6;
  *(v0 + 73) = v4;
  v18 = v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  v19 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v20 = v19[7];
  v21 = type metadata accessor for RequestCancellationReason();
  sub_100009BFC(v18 + v20, 1, 1, v21);
  v22 = type metadata accessor for InferenceProviderRequestConfiguration();
  sub_100002C00(v22);
  (*(v23 + 32))(v18, v2);
  *(v18 + v19[5]) = 0;
  *(v18 + v19[6]) = 0;
  sub_100002EEC();
}

void sub_10014F74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, uint64_t a29, unsigned __int8 a30, unsigned __int8 a31, char *a32)
{
  sub_1000055B0();
  a19 = v33;
  a20 = v34;
  v195 = v32;
  v215 = v35;
  v193 = v36;
  v216 = v37;
  v194 = v38;
  v189 = v39;
  v205 = v40;
  v204 = v41;
  v217 = v42;
  v43 = a32;
  v192 = a29;
  v191 = a28;
  v44 = a27;
  v45 = a26;
  v214 = a25;
  v172 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC(v172);
  v171[1] = v46;
  v48 = *(v47 + 64);
  sub_100004B1C();
  __chkstk_darwin(v49);
  v171[0] = v171 - v50;
  sub_100003B1C();
  v202 = type metadata accessor for RequestMetadata();
  v51 = sub_100002BDC(v202);
  v53 = v52;
  v55 = *(v54 + 64);
  __chkstk_darwin(v51);
  sub_100005630();
  v207 = (v56 - v57);
  __chkstk_darwin(v58);
  v190 = v171 - v59;
  sub_100003B1C();
  v60 = type metadata accessor for Version();
  v61 = sub_100002BDC(v60);
  v211 = v62;
  v212 = v61;
  v64 = *(v63 + 64);
  __chkstk_darwin(v61);
  sub_100002B8C();
  v187 = v66 - v65;
  v67 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v67);
  v69 = *(v68 + 64);
  sub_100004B1C();
  __chkstk_darwin(v70);
  v185 = v171 - v71;
  v72 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC(v72);
  v197 = v73;
  v75 = *(v74 + 64);
  sub_100004B1C();
  __chkstk_darwin(v76);
  v78 = v171 - v77;
  v79 = type metadata accessor for InferenceProviderRequestConfiguration();
  v80 = sub_100002BDC(v79);
  v209 = v81;
  v210 = v80;
  v83 = *(v82 + 64);
  __chkstk_darwin(v80);
  sub_100005630();
  sub_100002BF0();
  __chkstk_darwin(v84);
  sub_100002BF0();
  __chkstk_darwin(v85);
  v87 = v171 - v86;
  v203 = type metadata accessor for TaskPriority();
  v88 = sub_100002BDC(v203);
  v90 = v89;
  v92 = *(v91 + 64);
  __chkstk_darwin(v88);
  sub_100005630();
  sub_100002BF0();
  __chkstk_darwin(v93);
  v95 = v171 - v94;
  v96 = type metadata accessor for RequestPriority();
  v97 = sub_100002BDC(v96);
  v219 = v98;
  v220 = v97;
  v100 = *(v99 + 64);
  __chkstk_darwin(v97);
  sub_100005630();
  sub_100002BF0();
  __chkstk_darwin(v101);
  v218 = v171 - v102;
  v173 = v45;
  v208 = v87;
  if (v45 || (static TaskPriority.low.getter(), v103 = static TaskPriority.>= infix(_:_:)(), (*(v90 + 8))(v95, v203), (v103 & 1) == 0))
  {
    v104 = &enum case for RequestPriority.background(_:);
  }

  else
  {
    v104 = &enum case for RequestPriority.foreground(_:);
  }

  v184 = a31;
  v183 = a30;
  v182 = a24;
  v181 = a23;
  v180 = a22;
  v179 = a21;
  (*(v219 + 104))(v218, *v104, v220);
  v222[3] = &type metadata for GenerativeModels;
  v222[4] = sub_100026664();
  v105 = isFeatureEnabled(_:)();
  sub_100003324(v222);
  v106 = v205;
  v107 = v204;
  v213 = v53;
  v201 = v44;
  v198 = v90;
  if (v105)
  {

    v108 = sub_10014E138(v107, v106);
  }

  else
  {
    v108 = sub_10014E56C(v204);
  }

  v109 = v108;
  v178 = RequestMetadata.loggingIdentifier.getter();
  v177 = v110;
  v175 = sub_100077254(v109);
  v111 = type metadata accessor for UUID();
  v176 = v171;
  v112 = sub_100002BDC(v111);
  v114 = v113;
  v116 = *(v115 + 64);
  __chkstk_darwin(v112);
  RequestMetadata.uuid.getter();
  v117 = RequestMetadata.sessionID.getter();
  v174 = v171;
  __chkstk_darwin(v117);
  UUIDIdentifier.uuid.getter();
  sub_10000854C(&a9);
  v119 = v118(v78, v72);
  __chkstk_darwin(v119);
  v120 = v43;
  v196 = v114;
  v121 = *(v114 + 16);
  v197 = v111;
  v121(v171 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0), v217, v111);
  v122 = type metadata accessor for AuditToken();
  v188 = *(v122 - 8);
  v123 = v185;
  (*(v188 + 16))(v185, v216, v122);
  v189 = v122;
  sub_100009BFC(v123, 0, 1, v122);
  (*(v211 + 16))(v187, v214, v212);
  (*(v219 + 16))(v199, v218, v220);
  RequestMetadata.subrequestID.getter();
  v124 = v208;
  InferenceProviderRequestConfiguration.init(sessionLoggingIdentifier:requestLoggingIdentifier:assetIdentifiers:requestUUID:sessionUUID:sessionSetID:onBehalfOfPID:parentOfOnBehalfOfPID:auditToken:auditSessionUID:useCaseIdentifier:assetBundleIdentifier:requestVersion:requestPriority:subrequestID:)();
  v125 = *(v213 + 16);
  v126 = v202;
  v125(v190, v43, v202);
  sub_1000480AC(v215, v222);
  v127 = v210;
  v128 = *(v209 + 16);
  v128(v186, v124, v210);
  v129 = *(v195 + 48);
  v130 = *(v195 + 52);
  v205 = swift_allocObject();
  sub_10014F630();
  if (qword_1001B8AC8 != -1)
  {
    swift_once();
  }

  v131 = type metadata accessor for Logger();
  sub_10000641C(v131, qword_1001BDF38);
  v125(v207, v43, v126);
  v128(v206, v124, v127);
  v132 = v198;
  v133 = v200;
  v134 = v201;
  v135 = v203;
  (*(v198 + 16))(v200, v201, v203);
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  v138 = v137;
  if (os_log_type_enabled(v136, v137))
  {
    v139 = swift_slowAlloc();
    v204 = swift_slowAlloc();
    v222[0] = v204;
    *v139 = 136315906;
    v140 = v171[0];
    LODWORD(v195) = v138;
    v141 = v207;
    RequestMetadata.id.getter();
    sub_10005E334(&qword_1001B8F58);
    v142 = v172;
    v143 = dispatch thunk of CustomStringConvertible.description.getter();
    v145 = v144;
    sub_10000854C(&v204);
    v146(v140, v142);
    v194 = v136;
    v213 = *(v213 + 8);
    (v213)(v141, v126);
    v147 = sub_100004A3C(v143, v145, v222);

    *(v139 + 4) = v147;
    *(v139 + 12) = 2080;
    v148 = v206;
    InferenceProviderRequestConfiguration.requestPriority.getter();
    v149 = String.init<A>(describing:)();
    v151 = v150;
    v207 = v120;
    v209 = *(v209 + 8);
    (v209)(v148, v210);
    v152 = sub_100004A3C(v149, v151, v222);

    *(v139 + 14) = v152;
    *(v139 + 22) = 2080;
    v221 = v173;
    v153 = String.init<A>(describing:)();
    v155 = sub_100004A3C(v153, v154, v222);

    *(v139 + 24) = v155;
    *(v139 + 32) = 2080;
    sub_10005E6D4(&qword_1001BDBC8, &type metadata accessor for TaskPriority);
    v156 = v200;
    v157 = v203;
    v158 = dispatch thunk of CustomStringConvertible.description.getter();
    v160 = v159;
    v161 = *(v132 + 8);
    v161(v156, v157);
    v162 = sub_100004A3C(v158, v160, v222);

    *(v139 + 34) = v162;
    v163 = v194;
    _os_log_impl(&_mh_execute_header, v194, v195, "Resolved priority for request %s to %s (from %s and %s)", v139, 0x2Au);
    swift_arrayDestroy();

    (v213)(v207, v202);
    v161(v201, v157);
    (*(v211 + 8))(v214, v212);
    sub_100003324(v215);
    sub_10000854C(&v220);
    v164(v216, v189);
    sub_10000854C(&v223);
    v165(v217, v197);
    (v209)(v208, v210);
  }

  else
  {

    v166 = *(v213 + 8);
    v166(v120, v126);
    v167 = *(v132 + 8);
    v167(v134, v135);
    (*(v211 + 8))(v214, v212);
    sub_100003324(v215);
    sub_10000854C(&v220);
    v168(v216, v189);
    sub_10000854C(&v223);
    v169(v217, v197);
    v167(v133, v135);
    v170 = *(v209 + 8);
    v170(v206, v127);
    v166(v207, v126);
    v170(v208, v127);
  }

  (*(v219 + 8))(v218, v220);
  sub_100002EEC();
}

void sub_100150604(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  __chkstk_darwin(v5);
  v54 = &v50 - v7;
  v8 = type metadata accessor for RequestPriority();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v50 - v14;
  v53 = a1;
  InferenceProviderRequestConfiguration.requestPriority.getter();
  v52 = v9[13];
  v52(v13, enum case for RequestPriority.background(_:), v8);
  LOBYTE(a1) = sub_100116BA4(v15, v13);
  v16 = v9[1];
  v16(v13, v8);
  v16(v15, v8);
  if (a1)
  {
    if (qword_1001B8AC8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000641C(v17, qword_1001BDF38);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_12;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v57 = v21;
    *v20 = 136315138;
    v22 = v54;
    RequestMetadata.id.getter();
    sub_10005E334(&qword_1001B8F58);
    v23 = v56;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v55 + 8))(v22, v23);
    v27 = sub_100004A3C(v24, v26, &v57);

    *(v20 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Request %s updateSessionPriority doing nothing for background request", v20, 0xCu);
    sub_100003324(v21);

LABEL_11:

LABEL_12:

    return;
  }

  if (a3)
  {
    v52(v15, enum case for RequestPriority.userInitiated(_:), v8);
    InferenceProviderRequestConfiguration.requestPriority.setter();
    if (qword_1001B8AC8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000641C(v28, qword_1001BDF38);

    v18 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v18, v29))
    {
      goto LABEL_12;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v57 = v31;
    *v30 = 136315138;
    v32 = v54;
    RequestMetadata.id.getter();
    sub_10005E334(&qword_1001B8F58);
    v33 = v56;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    (*(v55 + 8))(v32, v33);
    v37 = sub_100004A3C(v34, v36, &v57);

    *(v30 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v18, v29, "Reducing priority of request %s to userInitiated", v30, 0xCu);
    sub_100003324(v31);

    goto LABEL_11;
  }

  if (qword_1001B8AC8 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_10000641C(v38, qword_1001BDF38);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v50 = v41;
    v51 = swift_slowAlloc();
    v57 = v51;
    *v41 = 136315138;
    v42 = v40;
    v43 = v54;
    RequestMetadata.id.getter();
    sub_10005E334(&qword_1001B8F58);
    v44 = v56;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    (*(v55 + 8))(v43, v44);
    v48 = sub_100004A3C(v45, v47, &v57);

    v49 = v50;
    *(v50 + 1) = v48;
    _os_log_impl(&_mh_execute_header, v39, v42, "Increasing priority of request %s to foreground", v49, 0xCu);
    sub_100003324(v51);
  }

  v52(v15, enum case for RequestPriority.foreground(_:), v8);
  InferenceProviderRequestConfiguration.requestPriority.setter();
}

uint64_t sub_100150D04()
{
  result = type metadata accessor for RequestMetadata();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DaemonRequest.ManagerOwnedState(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100150E20()
{
  type metadata accessor for InferenceProviderRequestConfiguration();
  if (v0 <= 0x3F)
  {
    sub_1000DD5C8();
    if (v1 <= 0x3F)
    {
      sub_100150EC4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100150EC4()
{
  if (!qword_1001BE098)
  {
    type metadata accessor for RequestCancellationReason();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BE098);
    }
  }
}

Swift::Int sub_100150FAC()
{
  Hasher.init(_seed:)();
  sub_10005C330();
  return Hasher._finalize()();
}

uint64_t sub_100150FEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_10005C434() & 1;
}

Swift::Int sub_100151058()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10005C330();
  return Hasher._finalize()();
}

uint64_t sub_100151098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100002C00(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001510F8(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B9CA8, &qword_100170720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100151160()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BE110);
  sub_10000641C(v0, qword_1001BE110);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001511D4()
{
  sub_100002BAC();
  *(v0 + 80) = v1;
  sub_1000059F8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10015125C()
{
  sub_100002BAC();
  type metadata accessor for _OSActivity();
  v0[11] = swift_initStackObject();
  v0[12] = sub_10001B160("Critical Memory Pressure Event Loop", 35, 2);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_100151344;
  v2 = v0[10];

  return sub_1001516E8();
}

uint64_t sub_100151344()
{
  sub_100002BAC();
  v1 = *(*v0 + 104);
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;

  sub_1000059F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10015145C()
{
  sub_100002BAC();
  v1 = *(v0 + 96);
  sub_100004B50();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  sub_100001F00();

  return v2();
}

uint64_t sub_100151500()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask;
  if (*(v0 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask);

    Task.cancel()();
  }

  sub_100003324((v0 + 112));
  sub_100003324((v0 + 152));
  sub_10000C790(v0 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID, &qword_1001BE260, &qword_1001747B8);
  v3 = *(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001515A8()
{
  sub_100151500();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for MemoryPressureObserver()
{
  result = qword_1001BE150;
  if (!qword_1001BE150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100151628()
{
  sub_100153474();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001516E8()
{
  sub_100002BAC();
  v1[2] = v0;
  v2 = sub_100065020(&qword_1001BE268, &qword_1001747D0);
  v1[3] = v2;
  sub_100002F44(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v6 = sub_100065020(&qword_1001BE270, &qword_1001747D8);
  v1[6] = v6;
  sub_100002F44(v6);
  v1[7] = v7;
  v9 = *(v8 + 64) + 15;
  v1[8] = swift_task_alloc();
  v10 = sub_100065020(&qword_1001BE278, &qword_1001747E0);
  v1[9] = v10;
  sub_100002F44(v10);
  v1[10] = v11;
  v13 = *(v12 + 64) + 15;
  v1[11] = swift_task_alloc();
  v14 = sub_100002C10();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_100151860()
{
  if (qword_1001B8AD0 != -1)
  {
    sub_1000053A0();
  }

  v1 = type metadata accessor for Logger();
  v0[12] = sub_10000641C(v1, qword_1001BE110);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100003A34(v3))
  {
    *sub_100007648() = 0;
    sub_1000059D8(&_mh_execute_header, v4, v5, "Listening for memory pressure events");
    sub_100002F64();
  }

  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  v12 = v0[4];

  (*(v12 + 104))(v10, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v11);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v8 + 8))(v7, v9);
  sub_1000065EC();
  v0[13] = sub_100154878(v13, v14);
  v15 = v0[2];
  v16 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v17 = swift_task_alloc();
  v0[14] = v17;
  *v17 = v0;
  sub_10000A780(v17);
  v18 = v0[11];
  v19 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 16);
}

uint64_t sub_100151A40()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 112);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100151B38()
{
  if (*(v0 + 128) == 3)
  {
    v1 = *(v0 + 96);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (sub_100003A34(v3))
    {
      *sub_100007648() = 0;
      sub_1000059D8(&_mh_execute_header, v4, v5, "Memory pressure events ended");
      sub_100002F64();
    }

    v6 = *(v0 + 88);
    v7 = *(v0 + 64);
    v8 = *(v0 + 40);

    sub_100001F00();

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 120) = v11;
    *v11 = v0;
    v11[1] = sub_100151C8C;
    v12 = *(v0 + 16);

    return sub_100151E00();
  }
}

uint64_t sub_100151C8C()
{
  sub_100003884();
  v1 = *v0;
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;
  v4 = v1[15];
  v5 = *v0;
  *v3 = *v0;

  v6 = v1[13];
  v7 = v1[2];
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v2[14] = v9;
  *v9 = v5;
  sub_10000A780();
  v10 = v1[11];
  v11 = v1[9];

  return AsyncStream.Iterator.next(isolation:)(v2 + 16);
}

uint64_t sub_100151E00()
{
  sub_100002BAC();
  *(v1 + 136) = v0;
  *(v1 + 288) = v2;
  v3 = type metadata accessor for Assertion.DaemonRep();
  *(v1 + 144) = v3;
  sub_100002F44(v3);
  *(v1 + 152) = v4;
  v6 = *(v5 + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  v7 = *(*(sub_100065020(&qword_1001BE260, &qword_1001747B8) - 8) + 64) + 15;
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  v8 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  *(v1 + 208) = v8;
  sub_100002F44(v8);
  *(v1 + 216) = v9;
  v11 = *(v10 + 64) + 15;
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  v12 = sub_100002C10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100151F90()
{
  v59 = v0;
  if (qword_1001B8AD0 != -1)
  {
    sub_1000053A0();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 248) = sub_10000641C(v1, qword_1001BE110);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v5 = sub_100007698();
    v6 = sub_1000031E0();
    v58 = v6;
    *v5 = 136315138;
    v7 = 0xEC0000006C616369;
    v8 = 0x746972632D6E6F6ELL;
    if (v4 != 1)
    {
      v8 = 0x6E776F6E6B6E75;
      v7 = 0xE700000000000000;
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x6C61636974697263;
    }

    if (v4)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    v11 = sub_100004A3C(v9, v10, &v58);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Processing memory pressure %s event", v5, 0xCu);
    sub_100003324(v6);
    sub_100002BB8();
    sub_100002F64();
  }

  v12 = *(v0 + 136);
  v13 = sub_100152E90(v12, *(v0 + 288));
  v14 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask;
  if (*(v12 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask))
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_100007648();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Cancelling critical memory pressure watchdog", v17, 2u);
      sub_100002BB8();
    }

    if (*(v12 + v14))
    {
      v18 = *(v12 + v14);

      Task.cancel()();

      v19 = *(v12 + v14);
    }

    *(v12 + v14) = 0;
  }

  if (!v13)
  {
    v26 = *(v0 + 208);
    v27 = *(v0 + 184);
    v28 = *(v0 + 136);
    v29 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
    *(v0 + 264) = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
    sub_100004BA0();
    sub_100154734(v28 + v29, v27);
    v30 = sub_100009D08();
    LODWORD(v26) = sub_10000C6C0(v30, v31, v26);
    sub_10000C790(v27, &qword_1001BE260, &qword_1001747B8);
    if (v26 == 1)
    {
      v32 = *(v0 + 224);
      v33 = *(v0 + 208);
      v34 = *(v0 + 192);
      v35 = *(v0 + 176);
      v36 = *(v0 + 136);
      type metadata accessor for Assertion();
      UUIDIdentifier.init()();
      Assertion.DaemonRep.init(policy:description:id:)();
      Assertion.DaemonRep.id.getter();
      sub_100009BFC(v34, 0, 1, v33);
      sub_100004B50();
      sub_1001547A4(v34, v28 + v29);
      swift_endAccess();
      v37 = *sub_100003370((v36 + 112), *(v36 + 136));
      v38 = swift_task_alloc();
      *(v0 + 272) = v38;
      *v38 = v0;
      v38[1] = sub_100152834;
      v39 = *(v0 + 176);
      sub_100016688();

      return sub_100073318();
    }

    v55 = *(v0 + 136);
    sub_10015333C();
LABEL_34:
    sub_1000115E0();

    sub_100001F00();
    sub_100016688();

    __asm { BRAA            X1, X16 }
  }

  if (v13 != 1)
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    if (sub_100003A34(v43))
    {
      *sub_100007648() = 0;
      sub_1000059D8(&_mh_execute_header, v44, v45, "Unknown memory pressure event");
      sub_100002F64();
    }

    goto LABEL_34;
  }

  v20 = *(v0 + 200);
  v21 = *(v0 + 208);
  v22 = *(v0 + 136);
  v23 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
  sub_100004BA0();
  sub_100154734(v22 + v23, v20);
  v24 = sub_100009D08();
  if (sub_10000C6C0(v24, v25, v21) == 1)
  {
    sub_10000C790(*(v0 + 200), &qword_1001BE260, &qword_1001747B8);
    goto LABEL_34;
  }

  v46 = *(v0 + 208);
  v47 = *(v0 + 192);
  v48 = *(v0 + 136);
  (*(*(v0 + 216) + 32))(*(v0 + 240), *(v0 + 200), v46);
  v49 = sub_100009D08();
  sub_100009BFC(v49, v50, 1, v46);
  sub_100004B50();
  sub_1001547A4(v47, v22 + v23);
  swift_endAccess();
  v51 = *sub_100003370((v48 + 112), *(v48 + 136));
  v52 = swift_task_alloc();
  *(v0 + 256) = v52;
  *v52 = v0;
  v52[1] = sub_100152540;
  v53 = *(v0 + 240);
  sub_100016688();

  return sub_100073748();
}

uint64_t sub_100152540()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 256);
  v3 = *(v1 + 136);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100152638()
{
  v21 = v0;
  v1 = v0[31];
  (*(v0[27] + 16))(v0[29], v0[30], v0[26]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[29];
  v6 = v0[30];
  v8 = v0[26];
  v7 = v0[27];
  if (v4)
  {
    v19 = v0[30];
    v9 = sub_100007698();
    v18 = sub_1000031E0();
    v20 = v18;
    *v9 = 136315138;
    sub_100154814();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = *(v7 + 8);
    v13(v5, v8);
    v14 = sub_100004A3C(v10, v12, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Released critical memory pressure assertion %s", v9, 0xCu);
    sub_100003324(v18);
    sub_100002BB8();
    sub_100002BB8();

    v13(v19, v8);
  }

  else
  {

    v15 = *(v7 + 8);
    v15(v5, v8);
    v15(v6, v8);
  }

  sub_1000115E0();

  sub_100001F00();

  return v16();
}

uint64_t sub_100152834()
{
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 272);
  *v4 = *v1;
  *(v3 + 280) = v0;

  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_100152B80;
  }

  else
  {
    v7 = sub_100152958;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100152958()
{
  v27 = v0;
  v1 = v0[31];
  (*(v0[19] + 16))(v0[21], v0[22], v0[18]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[27];
    v5 = v0[28];
    v6 = v0[26];
    v7 = v0[21];
    v8 = v0[19];
    v23 = v7;
    v24 = v0[18];
    v9 = sub_100007698();
    v25 = sub_1000031E0();
    v26 = v25;
    *v9 = 136315138;
    Assertion.DaemonRep.id.getter();
    sub_100154814();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v4 + 8))(v5, v6);
    v13 = *(v8 + 8);
    v13(v23, v24);
    v14 = sub_100004A3C(v10, v12, &v26);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Acquired critical memory pressure assertion %s", v9, 0xCu);
    sub_100003324(v25);
    sub_100002BB8();
    sub_100002BB8();
  }

  else
  {
    v15 = v0[21];
    v16 = v0[18];
    v17 = v0[19];

    v13 = *(v17 + 8);
    v13(v15, v16);
  }

  v18 = v0[22];
  v19 = v0[17];
  v20 = v0[18];
  sub_10015333C();
  v13(v18, v20);
  sub_1000115E0();

  sub_100001F00();

  return v21();
}

uint64_t sub_100152B80()
{
  v41 = v0;
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[17];
  v9 = v0[18];
  v11 = sub_100009D08();
  sub_100009BFC(v11, v12, 1, v13);
  sub_100004B50();
  sub_1001547A4(v5, v10 + v2);
  swift_endAccess();
  (*(v8 + 16))(v7, v6, v9);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[27];
    v16 = v0[28];
    v18 = v0[26];
    v39 = v0[22];
    v19 = v0[20];
    v34 = v0[19];
    v35 = v0[18];
    v36 = v0[35];
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = sub_1000031E0();
    v40 = v38;
    *v20 = 136315394;
    Assertion.DaemonRep.id.getter();
    sub_100154814();
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v17 + 8))(v16, v18);
    v24 = *(v34 + 8);
    v24(v19, v35);
    v25 = sub_100004A3C(v21, v23, &v40);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2112;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v37 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to acquire critical memory pressure assertion %s: %@", v20, 0x16u);
    sub_10000C790(v37, &qword_1001B8F68, &qword_10016FB80);
    sub_100002F64();
    sub_100003324(v38);
    sub_100002F64();
    sub_100002BB8();

    v24(v39, v35);
  }

  else
  {
    v27 = v0[22];
    v29 = v0[19];
    v28 = v0[20];
    v30 = v0[18];

    v31 = *(v29 + 8);
    v31(v28, v30);
    v31(v27, v30);
  }

  sub_1000115E0();

  sub_100001F00();

  return v32();
}

uint64_t sub_100152E90(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (sub_10015323C(a2))
  {
    sub_100003370((a1 + 152), *(a1 + 176));
    v2 = sub_100124528();
    if (qword_1001B8AD0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000641C(v4, qword_1001BE110);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136315138;
      if (v2)
      {
        if (v2 == 1)
        {
          v9 = 0x746972632D6E6F6ELL;
        }

        else
        {
          v9 = 0x6E776F6E6B6E75;
        }

        if (v2 == 1)
        {
          v10 = 0xEC0000006C616369;
        }

        else
        {
          v10 = 0xE700000000000000;
        }
      }

      else
      {
        v10 = 0xE800000000000000;
        v9 = 0x6C61636974697263;
      }

      v11 = sub_100004A3C(v9, v10, &v22);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Fetched memory pressure directly from kernel: %s", v7, 0xCu);
      sub_100003324(v8);
    }

    if (v2 == 2)
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "kernel memory pressure unknown!", v14, 2u);
      }

      v15 = type metadata accessor for ModelManagerError();
      sub_100154878(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
      swift_allocError();
      (*(*(v15 - 8) + 104))(v16, enum case for ModelManagerError.internalError(_:), v15);
      swift_willThrow();
      if (qword_1001B8AD0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000641C(v17, qword_1001BE110);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to query current kernel memory pressure. Assuming non-critical.", v20, 2u);
      }

      return 1;
    }
  }

  return v2;
}

uint64_t sub_10015323C(char a1)
{
  v3 = sub_100065020(&qword_1001BE260, &qword_1001747B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  if (a1 == 2)
  {
    return 1;
  }

  if (a1)
  {
    return 0;
  }

  v7 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
  sub_100004BA0();
  sub_100154734(v1 + v7, v6);
  sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v8 = sub_100009D08();
  v11 = sub_10000C6C0(v8, v9, v10) != 1;
  sub_10000C790(v6, &qword_1001BE260, &qword_1001747B8);
  return v11;
}

uint64_t sub_10015333C()
{
  v1 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  type metadata accessor for TaskPriority();
  v3 = sub_100009D08();
  sub_100009BFC(v3, v4, 1, v5);
  sub_1000065EC();
  v8 = sub_100154878(v6, v7);
  v9 = swift_allocObject();
  v9[2] = v0;
  v9[3] = v8;
  v9[4] = v0;
  swift_retain_n();
  sub_1000652FC();
  v10 = *(v0 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask);
  *(v0 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask) = v11;
}

void sub_100153474()
{
  if (!qword_1001BE160)
  {
    sub_10006A614(&qword_1001B8B78, &qword_10016F740);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BE160);
    }
  }
}

uint64_t sub_1001534D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v6 = *(*(sub_100065020(&qword_1001BE260, &qword_1001747B8) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v4[18] = v7;
  v8 = *(v7 - 8);
  v4[19] = v8;
  v9 = *(v8 + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100153600, a4, 0);
}

uint64_t sub_100153600()
{
  sub_100003884();
  v1 = v0[20];
  v2 = *(v0[16] + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogInterval);
  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_100153718;
  v4 = v0[20];

  return sub_1001542B4();
}

uint64_t sub_100153718()
{
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = v2[21];
  *v4 = *v1;
  *(v3 + 176) = v0;

  v6 = v2[20];
  v7 = v2[19];
  v8 = v2[18];
  v9 = v2[16];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v10 = sub_100153C84;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v10 = sub_1001538F0;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1001538F0()
{
  v36 = v0;
  v1 = v0[22];
  if (static Task<>.isCancelled.getter())
  {
    goto LABEL_8;
  }

  v3 = v0[16];
  v2 = v0[17];
  type metadata accessor for _OSActivity();
  v0[23] = swift_initStackObject();
  v4 = sub_10001B160("Critical Memory Pressure Watchdog", 33, 2);
  v0[24] = v4;
  v5 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask);
  *(v3 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask) = 0;

  v6 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
  sub_100004BA0();
  sub_100154734(v3 + v6, v2);
  v7 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  LODWORD(v6) = sub_10000C6C0(v2, 1, v7);
  sub_10000C790(v2, &qword_1001BE260, &qword_1001747B8);
  if (v6 == 1)
  {
    if (qword_1001B8AD0 != -1)
    {
      sub_1000053A0();
    }

    v8 = type metadata accessor for Logger();
    sub_10000641C(v8, qword_1001BE110);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (sub_100003A34(v10))
    {
      *sub_100007648() = 0;
      sub_100009DDC(&_mh_execute_header, v11, v12, "Critical memory pressure watchdog fired, but no assertion found.");
      sub_100002BB8();
    }

    sub_100004B50();
    os_activity_scope_leave((v4 + 3));
    swift_endAccess();
    v13 = v0[24];

LABEL_8:
    v14 = v0[20];
    v15 = v0[17];

    sub_100001F00();
    sub_100001FBC();

    __asm { BRAA            X1, X16 }
  }

  sub_100003370((v0[16] + 152), *(v0[16] + 176));
  v18 = sub_100124528();
  if (v1)
  {
  }

  else if (!v18)
  {
    goto LABEL_25;
  }

  if (qword_1001B8AD0 != -1)
  {
    sub_1000053A0();
  }

  v19 = type metadata accessor for Logger();
  sub_10000641C(v19, qword_1001BE110);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.fault.getter();
  if (sub_100003A34(v21))
  {
    v22 = sub_100007698();
    v23 = sub_1000031E0();
    v35 = v23;
    sub_100012B50(4.8149e-34);
    v26 = v25 | 0x746972632D6E0000;
    if (v24)
    {
      v27 = 0x6E776F6E6B6E75;
    }

    else
    {
      v27 = v26;
    }

    if (v24)
    {
      v28 = 0xE700000000000000;
    }

    else
    {
      v28 = 0xEC0000006C616369;
    }

    v29 = sub_100004A3C(v27, v28, &v35);

    *(v22 + 4) = v29;
    sub_100013DFC(&_mh_execute_header, v30, v31, "Kernel memory pressure (%s) no longer critical when watchdog fired.");
    sub_100003324(v23);
    sub_100002BB8();
    sub_100002F64();
  }

LABEL_25:
  v32 = swift_task_alloc();
  v0[25] = v32;
  *v32 = v0;
  sub_100002E80(v32);
  sub_100001FBC();

  return sub_100151E00();
}

uint64_t sub_100153C84()
{
  v34 = v0;
  if (static Task<>.isCancelled.getter())
  {
    goto LABEL_8;
  }

  v2 = v0[16];
  v1 = v0[17];
  type metadata accessor for _OSActivity();
  v0[23] = swift_initStackObject();
  v3 = sub_10001B160("Critical Memory Pressure Watchdog", 33, 2);
  v0[24] = v3;
  v4 = *(v2 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask);
  *(v2 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask) = 0;

  v5 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
  sub_100004BA0();
  sub_100154734(v2 + v5, v1);
  v6 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  LODWORD(v5) = sub_10000C6C0(v1, 1, v6);
  sub_10000C790(v1, &qword_1001BE260, &qword_1001747B8);
  if (v5 == 1)
  {
    if (qword_1001B8AD0 != -1)
    {
      sub_1000053A0();
    }

    v7 = type metadata accessor for Logger();
    sub_10000641C(v7, qword_1001BE110);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (sub_100003A34(v9))
    {
      *sub_100007648() = 0;
      sub_100009DDC(&_mh_execute_header, v10, v11, "Critical memory pressure watchdog fired, but no assertion found.");
      sub_100002BB8();
    }

    sub_100004B50();
    os_activity_scope_leave((v3 + 3));
    swift_endAccess();
    v12 = v0[24];

LABEL_8:
    v13 = v0[20];
    v14 = v0[17];

    sub_100001F00();
    sub_100001FBC();

    __asm { BRAA            X1, X16 }
  }

  sub_100003370((v0[16] + 152), *(v0[16] + 176));
  if (sub_100124528())
  {
    if (qword_1001B8AD0 != -1)
    {
      sub_1000053A0();
    }

    v17 = type metadata accessor for Logger();
    sub_10000641C(v17, qword_1001BE110);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (sub_100003A34(v19))
    {
      v20 = sub_100007698();
      v21 = sub_1000031E0();
      v33 = v21;
      sub_100012B50(4.8149e-34);
      v24 = v23 | 0x746972632D6E0000;
      if (v22)
      {
        v25 = 0x6E776F6E6B6E75;
      }

      else
      {
        v25 = v24;
      }

      if (v22)
      {
        v26 = 0xE700000000000000;
      }

      else
      {
        v26 = 0xEC0000006C616369;
      }

      v27 = sub_100004A3C(v25, v26, &v33);

      *(v20 + 4) = v27;
      sub_100013DFC(&_mh_execute_header, v28, v29, "Kernel memory pressure (%s) no longer critical when watchdog fired.");
      sub_100003324(v21);
      sub_100002BB8();
      sub_100002F64();
    }
  }

  v30 = swift_task_alloc();
  v0[25] = v30;
  *v30 = v0;
  sub_100002E80(v30);
  sub_100001FBC();

  return sub_100151E00();
}

uint64_t sub_100154018()
{
  sub_100002BAC();
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 128);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_100154148, v2, 0);
}

uint64_t sub_100154148()
{
  sub_100002BAC();
  v1 = v0[24];
  sub_100004B50();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  v2 = v0[24];

  v3 = v0[20];
  v4 = v0[17];

  sub_100001F00();

  return v5();
}

uint64_t sub_100154200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006F558;

  return sub_1001534D8(a1, v4, v5, v6);
}

uint64_t sub_1001542B4()
{
  sub_100003884();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  sub_100002F44(v12);
  *(v1 + 72) = v13;
  v15 = *(v14 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  sub_1000059F8();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_1001543A4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100154878(&qword_1001BBA88, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100154878(&qword_1001BDBE8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100154534;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_100154534()
{
  sub_100003884();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  sub_100002B9C();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (v0)
  {
    sub_1000059F8();

    return _swift_task_switch(v13, v14, v15);
  }

  else
  {
    v17 = v3[10];
    v16 = v3[11];

    sub_100001F00();

    return v18();
  }
}

uint64_t sub_1001546D0()
{
  sub_100002BAC();
  v2 = v0[10];
  v1 = v0[11];

  sub_100001F00();
  v4 = v0[15];

  return v3();
}

uint64_t sub_100154734(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BE260, &qword_1001747B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001547A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BE260, &qword_1001747B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100154814()
{
  result = qword_1001B9430;
  if (!qword_1001B9430)
  {
    sub_10006A614(&qword_1001B8B78, &qword_10016F740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9430);
  }

  return result;
}

uint64_t sub_100154878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001548C0()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BE280);
  sub_10000641C(v0, qword_1001BE280);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100154948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10001446C();
  a17 = v21;
  a18 = v22;
  sub_10000636C();
  a16 = v19;
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_10000A4F4(v23, qword_1001BE280);
  v25 = static os_log_type_t.fault.getter();
  if (sub_100006468(v25))
  {
    sub_100007698();
    a9 = sub_100018AB0();
    sub_10001378C(4.8149e-34);
    *(v19 + 16) = type metadata accessor for ModelXPCRequest.ExecuteRequest();
    sub_100065020(&qword_1001BE328, &qword_100174CA0);
    v26 = String.init<A>(describing:)();
    sub_100004A3C(v26, v27, &a9);
    sub_10000CFF4();
    *(v18 + 4) = v20;
    sub_100019B18(&_mh_execute_header, v28, v29, "Unhandled message with direct reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v30 = type metadata accessor for ModelManagerError();
  sub_100005E18();
  sub_100015FE4(v31, v32);
  sub_10000EF40();
  v33 = swift_allocError();
  sub_100011D90(v33, v34);
  sub_100006098(v30);
  (*(v35 + 104))();
  swift_willThrow();
  sub_100001F00();
  sub_100003770();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_100154B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10001446C();
  a17 = v21;
  a18 = v22;
  sub_10000636C();
  a16 = v19;
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_10000A4F4(v23, qword_1001BE280);
  v25 = static os_log_type_t.fault.getter();
  if (sub_100006468(v25))
  {
    sub_100007698();
    a9 = sub_100018AB0();
    sub_10001378C(4.8149e-34);
    *(v19 + 16) = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
    sub_100065020(&qword_1001BE330, &qword_100174CD8);
    v26 = String.init<A>(describing:)();
    sub_100004A3C(v26, v27, &a9);
    sub_10000CFF4();
    *(v18 + 4) = v20;
    sub_100019B18(&_mh_execute_header, v28, v29, "Unhandled message with direct reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v30 = type metadata accessor for ModelManagerError();
  sub_100005E18();
  sub_100015FE4(v31, v32);
  sub_10000EF40();
  v33 = swift_allocError();
  sub_100011D90(v33, v34);
  sub_100006098(v30);
  (*(v35 + 104))();
  swift_willThrow();
  sub_100001F00();
  sub_100003770();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_100154C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100154CBC, 0, 0);
}

uint64_t sub_100154CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchModelInstance();
    sub_100065020(&qword_1001BE318, &qword_100174C30);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_100154E88()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100003324((v2 + 16));
  sub_100001F00();

  return v6();
}

uint64_t sub_100154F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100154F90, 0, 0);
}

uint64_t sub_100154F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.CancelRequest();
    sub_100065020(&qword_1001BE320, &qword_100174C68);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_10015515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_10015517C, 0, 0);
}

uint64_t sub_10015517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.AcquireRequest();
    sub_100065020(&qword_1001BE310, &qword_100174BE8);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_100155348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100155368, 0, 0);
}

uint64_t sub_100155368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.PrewarmSession();
    sub_100065020(&qword_1001BE340, &qword_100174D48);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_100155534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100155554, 0, 0);
}

uint64_t sub_100155554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.ReleaseRequest();
    sub_100065020(&qword_1001BE308, &qword_100174BB0);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_100155720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100155740, 0, 0);
}

uint64_t sub_100155740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.HoldAssetBundle();
    sub_100065020(&qword_1001BE2C0, &qword_1001749B8);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_10015590C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_10015592C, 0, 0);
}

uint64_t sub_10015592C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.LoadAssetBundle();
    sub_100065020(&qword_1001BE2C8, &qword_1001749F0);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_100155AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100155B18, 0, 0);
}

uint64_t sub_100155B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchAssetsRequest();
    sub_100065020(&qword_1001BE2F0, &qword_100174B08);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_100155CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100155D04, 0, 0);
}

uint64_t sub_100155D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchPolicyRequest();
    sub_100065020(&qword_1001BE2E0, &qword_100174A98);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_100155ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100155EF0, 0, 0);
}

uint64_t sub_100155EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.IgnoreAssetUpdates();
    sub_100065020(&qword_1001BE2A0, &qword_1001748D8);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_1001560BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_1001560DC, 0, 0);
}

uint64_t sub_1001560DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.CancelSessionRequest();
    sub_100065020(&qword_1001BE338, &qword_100174D10);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_1001562A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_1001562C8, 0, 0);
}

uint64_t sub_1001562C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.CreateSessionRequest();
    sub_100065020(&qword_1001BE350, &qword_100174D98);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_100156494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_1001564B4, 0, 0);
}

uint64_t sub_1001564B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.DeleteSessionRequest();
    sub_100065020(&qword_1001BE348, &qword_100174D80);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_100156680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_1001566A0, 0, 0);
}

uint64_t sub_1001566A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.SetAssetsHaveUpdated();
    sub_100065020(&qword_1001BE2A8, &qword_100174910);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_10015686C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_10015688C, 0, 0);
}

uint64_t sub_10015688C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchAssertionsRequest();
    sub_100065020(&qword_1001BE300, &qword_100174B78);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_100156A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100156A78, 0, 0);
}

uint64_t sub_100156A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.ForceAssetVersionSwitch();
    sub_100065020(&qword_1001BE2B8, &qword_100174980);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_100156C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100156C64, 0, 0);
}

uint64_t sub_100156C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchAvailabilityRequest();
    sub_100065020(&qword_1001BE2D0, &qword_100174A28);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_100156E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100156E50, 0, 0);
}

uint64_t sub_100156E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.RestoreAssertionsRequest();
    sub_100065020(&qword_1001BE2F8, &qword_100174B40);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_10015701C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_10015703C, 0, 0);
}

uint64_t sub_10015703C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchDynamicAssetsRequest();
    sub_100065020(&qword_1001BE2E8, &qword_100174AD0);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_100157208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100157228, 0, 0);
}

uint64_t sub_100157228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.StartMonitoringInferences();
    sub_100065020(&qword_1001BE298, &qword_1001748A0);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_1001573F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100157414, 0, 0);
}

uint64_t sub_100157414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchDisabledUseCasesRequest();
    sub_100065020(&qword_1001BE2D8, &qword_100174A60);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t sub_1001575E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100157600, 0, 0);
}

uint64_t sub_100157600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.DumpState();
    sub_100065020(&qword_1001BE2B0, &qword_100174948);
    v16 = sub_1000119B4();
    sub_100008134(v16, v17, v18);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v19, v20, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v21 = *(v11 + 64);
  v22 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v23 = sub_10000CEC8(v22);
  sub_100008030(v23);
  v24 = type metadata accessor for ModelManagerError();
  sub_100005680(v24);
  v26 = *(v25 + 104);
  v27 = sub_100003754();
  v28(v27);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v43 = v29;
  v30 = *(v21 + 4);
  v31 = swift_task_alloc();
  v32 = sub_100012908(v31);
  *v32 = v33;
  sub_10000A7A0(v32);
  sub_100003770();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

void sub_1001577CC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((*(a6 + 24))(a5, a6) & 1) != 0 && (os_variant_has_internal_content() & 1) == 0)
  {
    v39 = type metadata accessor for ModelManagerError();
    sub_100005E18();
    sub_100015FE4(v40, v41);
    sub_10000EF40();
    v42 = swift_allocError();
    sub_100011D90(v42, v43);
    v44 = &enum case for ModelManagerError.notSupportedOnExternalBuild(_:);
LABEL_31:
    v56 = *v44;
    sub_100006098(v39);
    (*(v57 + 104))();
    swift_willThrow();
    return;
  }

  if ((a3 & 0x100) != 0)
  {
    *token.val = AuditToken.auditToken.getter();
    *&token.val[2] = v15;
    *&token.val[4] = v16;
    *&token.val[6] = v17;
    AuditToken.processIdentifier.getter();
    v14 = csops_audittoken();
    LOBYTE(a3) = 0;
    v13 = 0x8000000100178870;
    v11 = 0xD00000000000002CLL;
  }

  else
  {
    v11 = (*(a6 + 16))(a5, a6);
    v13 = v12;
  }

  __chkstk_darwin(v14);
  sub_1000316EC();
  sub_100157DC4((a4 + 16), &token);
  if (!v6)
  {
    os_unfair_lock_unlock((a4 + 24));
    v18 = token.val[0];

    if (v18)
    {
LABEL_32:

      return;
    }

    v19 = AuditToken.processIdentifier.getter();
    *token.val = AuditToken.token.getter();
    *&token.val[2] = v20;
    *&token.val[4] = v21;
    *&token.val[6] = v22;
    v23 = SecTaskCreateWithAuditToken(0, &token);
    v24 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
    if (!v23)
    {
LABEL_25:
      if (v24[347] != -1)
      {
        sub_100008808();
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000641C(v46, qword_1001BE280);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        sub_10000AAA8();
        v49 = swift_slowAlloc();
        sub_1000033D0();
        v50 = swift_slowAlloc();
        *token.val = v50;
        *v49 = 67109378;
        *(v49 + 4) = v19;
        *(v49 + 8) = 2080;
        *(v49 + 10) = sub_100004A3C(v11, v13, &token);
        _os_log_impl(&_mh_execute_header, v47, v48, "Client %d missing entitlement %s", v49, 0x12u);
        sub_100003324(v50);
        sub_100002BD0();

        sub_100002BD0();
      }

      if (a3)
      {
        v39 = type metadata accessor for ModelManagerError();
        sub_100005E18();
        sub_100015FE4(v51, v52);
        sub_10000EF40();
        v53 = swift_allocError();
        sub_100011D90(v53, v54);
        *v55 = v11;
        v55[1] = v13;
        v44 = &enum case for ModelManagerError.missingEntitlement(_:);
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    v25 = v23;
    *token.val = 0;
    v26 = String._bridgeToObjectiveC()();
    v59 = SecTaskCopyValueForEntitlement(v25, v26, &token);

    v27 = *token.val;
    if (*token.val)
    {
      v58 = v25;
      if (qword_1001B8AD8 != -1)
      {
        sub_100008808();
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000641C(v28, qword_1001BE280);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 67109120;
        *(v31 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v29, v30, "SecTaskCopyValueForEntitlement failed for client %d", v31, 8u);
        sub_100002BD0();
      }

      if (a3)
      {
        v32 = type metadata accessor for ModelManagerError();
        sub_100005E18();
        sub_100015FE4(v33, v34);
        sub_10000EF40();
        v35 = swift_allocError();
        sub_100011D90(v35, v36);
        *v37 = v11;
        v37[1] = v13;
        sub_100006098(v32);
        (*(v38 + 104))();
        swift_willThrow();
        swift_unknownObjectRelease();

        return;
      }

      LOBYTE(a3) = 0;
      v25 = v58;
    }

    if (v59)
    {
      swift_unknownObjectRetain();
      v45 = swift_dynamicCast();
      if (v45)
      {
        if (v60 == 1)
        {
          __chkstk_darwin(v45);
          sub_1000316EC();
          sub_10015D110();
          os_unfair_lock_unlock((a4 + 24));

          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
        goto LABEL_24;
      }

      swift_unknownObjectRelease();
    }

LABEL_24:
    v24 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
    goto LABEL_25;
  }

  os_unfair_lock_unlock((a4 + 24));
  __break(1u);
}

BOOL sub_100157DC4@<W0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000A130(*(v2 + 16), *(v2 + 24), *a1);
  *a2 = result;
  return result;
}

uint64_t sub_100157E04()
{

  sub_10007CC90();
}

uint64_t sub_100157E68(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100157F2C, 0, 0);
}

uint64_t sub_100157F2C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100157F88()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100157FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100158278(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10015833C, 0, 0);
}

uint64_t sub_10015833C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100158398()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1001583FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100158688(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10015874C, 0, 0);
}

uint64_t sub_10015874C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1001587A8()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_10015880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100158A98(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100158B5C, 0, 0);
}

uint64_t sub_100158B5C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100158BB8()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100158C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100158EA8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100158F6C, 0, 0);
}

uint64_t sub_100158F6C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100158FC8()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_10015902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001592B8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10015937C, 0, 0);
}

uint64_t sub_10015937C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1001593D8()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_10015943C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001596C8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10015978C, 0, 0);
}

uint64_t sub_10015978C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1001597E8()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_10015984C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100159AD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = Session.Metadata.id.getter();
  a3(v12);
  type metadata accessor for Session();
  v13 = static UUIDIdentifier.== infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v14(v11, v4);
  return v13 & 1;
}

BOOL sub_100159C44(void *a1)
{
  v1 = *a1 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken;
  v2 = AuditToken.processIdentifier.getter();
  return v2 == AuditToken.processIdentifier.getter();
}

uint64_t sub_100159CA0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100159D6C, 0, 0);
}

uint64_t sub_100159D6C()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.FetchModelInstance.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_100159E04()
{
  sub_100001ED0();
  v2 = v1;
  sub_100001EF4();
  v4 = v3[7];
  v5 = v3[6];
  v6 = v3[5];
  v7 = v3[4];
  v8 = *v0;
  sub_100002B9C();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);

  v10 = *(v8 + 8);

  return v10(v2 & 0x101);
}

uint64_t sub_100159F5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10015A028, 0, 0);
}

uint64_t sub_10015A028()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.CancelRequest.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_10015A0C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10015A18C, 0, 0);
}

uint64_t sub_10015A18C()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.ExecuteRequest.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_10015A224(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10015A2F0, 0, 0);
}

uint64_t sub_10015A2F0()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.PrewarmSession.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_10015A388(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10015A454, 0, 0);
}

uint64_t sub_10015A454()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.CancelSessionRequest.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_10015A4EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10015A5B8, 0, 0);
}

uint64_t sub_10015A5B8()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.DeleteSessionRequest.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_10015A650(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10015A71C, 0, 0);
}

uint64_t sub_10015A71C()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.ExecuteInputStreamRequest.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_10015A7B4()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174D90);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015A848()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174D78);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015A8DC()
{
  sub_100001ED0();
  sub_100003160(&unk_100174D68);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015A96C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174D58);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015AA00()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174D40);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015AA94()
{
  sub_100001ED0();
  sub_100003160(&unk_100174D30);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015AB24()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174D20);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015ABB8()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174D08);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015AC4C()
{
  sub_100001ED0();
  sub_100003160(&unk_100174CF8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015ACDC()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174CE8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015AD70()
{
  sub_100003884();
  sub_100003160(&unk_100174CD0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100045724(v1);

  return v4(v3);
}

uint64_t sub_10015AE14()
{
  sub_100001ED0();
  sub_100003160(&unk_100174CC0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015AEA4()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174CB0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015AF38()
{
  sub_100003884();
  sub_100003160(&unk_100174C98);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100045724(v1);

  return v4(v3);
}

uint64_t sub_10015AFDC()
{
  sub_100001ED0();
  sub_100003160(&unk_100174C88);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015B06C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174C78);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015B100()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174C60);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015B194()
{
  sub_100001ED0();
  sub_100003160(&unk_100174C50);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015B224()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174C40);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015B2B8()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174C28);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015B34C()
{
  sub_100001ED0();
  sub_100003160(&unk_100174C10);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015B3DC()
{
  sub_100002BAC();
  v3 = v2;
  sub_100001EF4();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;

  if (v0)
  {
    sub_100001F00();

    return v8();
  }

  else
  {
    v10 = *(v6 + 8);

    return v10(v3 & 0x101);
  }
}

uint64_t sub_10015B4FC()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(dword_100174BF8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015B590()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174BE0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015B624()
{
  sub_100001ED0();
  sub_100003160(&unk_100174BD0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015B6B4()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174BC0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015B748()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174BA8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015B7DC()
{
  sub_100001ED0();
  sub_100003160(&unk_100174B98);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015B86C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174B88);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015B900()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174B70);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015B994()
{
  sub_100001ED0();
  sub_100003160(&unk_100174B60);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015BA24()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174B50);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015BAB8()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174B38);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015BB4C()
{
  sub_100001ED0();
  sub_100003160(&unk_100174B28);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015BBDC()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174B18);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015BC70()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174B00);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015BD04()
{
  sub_100001ED0();
  sub_100003160(&unk_100174AF0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015BD94()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174AE0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015BE28()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174AC8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015BEBC()
{
  sub_100001ED0();
  sub_100003160(&unk_100174AB8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015BF4C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174AA8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015BFE0()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174A90);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015C074()
{
  sub_100001ED0();
  sub_100003160(&unk_100174A80);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015C104()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174A70);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015C198()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174A58);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015C22C()
{
  sub_100001ED0();
  sub_100003160(&unk_100174A48);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015C2BC()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174A38);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015C350()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174A20);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015C3E4()
{
  sub_100001ED0();
  sub_100003160(&unk_100174A10);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015C474()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174A00);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015C508()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_1001749E8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015C59C()
{
  sub_100001ED0();
  sub_100003160(&unk_1001749D8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015C62C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_1001749C8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015C6C0()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_1001749B0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015C754()
{
  sub_100001ED0();
  sub_100003160(&unk_1001749A0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015C7E4()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174990);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015C878()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174978);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015C90C()
{
  sub_100001ED0();
  sub_100003160(&unk_100174968);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015C99C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174958);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015CA30()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174940);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015CAC4()
{
  sub_100001ED0();
  sub_100003160(&unk_100174930);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015CB54()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174920);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015CBE8()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174908);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015CC7C()
{
  sub_100001ED0();
  sub_100003160(&unk_1001748F8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015CD0C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_1001748E8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015CDA0()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_1001748D0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015CE34()
{
  sub_100001ED0();
  sub_100003160(&unk_1001748C0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015CEC4()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_1001748B0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015CF58()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(dword_100174890);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015CFEC()
{
  sub_100001ED0();
  sub_100003160(&unk_100174880);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015D07C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174870);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015D110()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100157E04();
}

unint64_t sub_10015D12C()
{
  result = qword_1001B99F8;
  if (!qword_1001B99F8)
  {
    sub_10006A614(&qword_1001B99F0, &qword_100170530);
    sub_100015FE4(&qword_1001B9A00, &type metadata accessor for ModelManagerError);
    sub_100015FE4(&qword_1001B9A08, &type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B99F8);
  }

  return result;
}

uint64_t sub_10015D3D4(uint64_t a1, uint64_t a2)
{
  v2[10] = a2;
  v4 = type metadata accessor for ModelXPCDispatcher();
  v2[11] = v4;
  v2[5] = v4;
  v2[6] = &off_1001B0A90;
  v2[2] = a1;

  return _swift_task_switch(sub_10015D464, 0, 0);
}

uint64_t sub_10015D464()
{
  sub_100002BAC();
  v0[12] = *(*sub_100003370(v0 + 2, v0[11]) + 128);
  sub_10000ECC0();
  v1 = sub_10000209C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10015D4D4()
{
  sub_100002BAC();
  v1 = *(v0 + 96);
  swift_beginAccess();
  *(v0 + 104) = *(v1 + 112);

  v2 = sub_100003000();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10015D554()
{
  sub_100003884();
  v1 = v0[13];
  v2 = v0[10];
  v3 = swift_task_alloc();
  sub_10000364C(v3);
  v4 = sub_100003ADC();
  v7 = sub_100018BC4(v4, v5, v6);

  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
    v9 = *(*v8 + class metadata base offset for ManagedBuffer + 16);
    v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v8 + v10));
    LOBYTE(v9) = *(v8 + *(type metadata accessor for DaemonSession.LazyState(0) + 32) + v9);
    os_unfair_lock_unlock((v8 + v10));
    v11 = v9 ^ 1;
    LOBYTE(v8) = Session.Metadata.useFoundationModelsExtensionEntitlement.getter();

    if (v8)
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  sub_100003324(v0 + 2);
  v13 = v0[1];

  return v13(v12 | v11 & 1u);
}

uint64_t sub_10015D82C(uint64_t a1)
{
  v3 = type metadata accessor for ModelCatalogAsset(0);
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  __chkstk_darwin(v3 - 8);
  v39 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v34[1] = v1;
  v45 = _swiftEmptyArrayStorage;
  sub_10002045C(0, v6, 0);
  v7 = v45;
  result = sub_10001E724(a1);
  v11 = result;
  v12 = 0;
  v13 = a1 + 56;
  v35 = a1 + 64;
  v36 = v6;
  v37 = a1 + 56;
  v38 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_26;
      }

      v42 = v10;
      v41 = v9;
      v15 = *(a1 + 48);
      v16 = v39;
      sub_10005F6CC(v15 + *(v40 + 72) * v11, v39);
      v17 = *v16;
      v43 = 2108681;
      v44 = 0xE300000000000000;
      String.append(_:)(v17);
      v19 = v43;
      v18 = v44;
      result = sub_10005F730(v16);
      v45 = v7;
      v21 = v7[2];
      v20 = v7[3];
      v22 = v7;
      if (v21 >= v20 >> 1)
      {
        result = sub_10002045C((v20 > 1), v21 + 1, 1);
        v22 = v45;
      }

      v22[2] = v21 + 1;
      v23 = &v22[2 * v21];
      v23[4] = v19;
      v23[5] = v18;
      if (v42)
      {
        goto LABEL_30;
      }

      v13 = v37;
      a1 = v38;
      v24 = 1 << *(v38 + 32);
      if (v11 >= v24)
      {
        goto LABEL_27;
      }

      v25 = *(v37 + 8 * v14);
      if ((v25 & (1 << v11)) == 0)
      {
        goto LABEL_28;
      }

      v7 = v22;
      if (*(v38 + 36) != v41)
      {
        goto LABEL_29;
      }

      v26 = v25 & (-2 << (v11 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v27 = v36;
      }

      else
      {
        v28 = v22;
        v29 = v14 << 6;
        v30 = v14 + 1;
        v27 = v36;
        v31 = (v35 + 8 * v14);
        while (v30 < (v24 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_100016E94(v11, v41, 0);
            v24 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v11, v41, 0);
LABEL_19:
        v7 = v28;
      }

      if (++v12 == v27)
      {
        return v7;
      }

      v10 = 0;
      v9 = *(a1 + 36);
      v11 = v24;
      if (v24 < 0)
      {
        break;
      }
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
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void *sub_10015DB20(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = type metadata accessor for AssetInfo();
  v52 = sub_100002BDC(v4);
  v53 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v52);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_32:

    return _swiftEmptyArrayStorage;
  }

  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_32;
  }

LABEL_3:
  v61 = _swiftEmptyArrayStorage;
  sub_100070C48();
  v55 = v61;
  result = sub_10003DDD4(a1);
  v57 = result;
  v58 = v12;
  LOBYTE(v59) = v13 & 1;
  if ((v10 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v49 = v10;
    v50 = v53 + 32;
    if (a1 < 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v47 = a1 + 56;
    v48 = v15;
    v45 = v2;
    v46 = a1 + 64;
    while (!__OFADD__(v14++, 1))
    {
      v17 = v57;
      v18 = v58;
      v19 = v59;
      v20 = sub_100009ED4();
      sub_10003DE34(v20, v21, v19, a1, v22, v23, v24, v25, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56[0], v56[1], v56[2], v56[3], v57, v58, v59, v60, v61, v62, v63);
      sub_1000DB5F0(v9);

      v26 = v55;
      v61 = v55;
      v27 = v55[2];
      if (v27 >= v55[3] >> 1)
      {
        sub_100070C48();
        v26 = v61;
      }

      v26[2] = v27 + 1;
      v28 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v55 = v26;
      result = (*(v53 + 32))(v26 + v28 + *(v53 + 72) * v27, v9, v52);
      if (v51)
      {
        if (!v19)
        {
          goto LABEL_38;
        }

        sub_100009ED4();
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v33 = v49;
        sub_100065020(&qword_1001BB460, &qword_100171E78);
        v34 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v34(v56, 0);
      }

      else
      {
        if (v19)
        {
          goto LABEL_39;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        v29 = 1 << *(a1 + 32);
        if (v17 >= v29)
        {
          goto LABEL_34;
        }

        v30 = v17 >> 6;
        v31 = *(v47 + 8 * (v17 >> 6));
        if (((v31 >> v17) & 1) == 0)
        {
          goto LABEL_35;
        }

        if (*(a1 + 36) != v18)
        {
          goto LABEL_36;
        }

        v32 = v31 & (-2 << (v17 & 0x3F));
        if (v32)
        {
          v29 = __clz(__rbit64(v32)) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v35 = v30 << 6;
          v36 = v30 + 1;
          v37 = (v46 + 8 * v30);
          while (v36 < (v29 + 63) >> 6)
          {
            v39 = *v37++;
            v38 = v39;
            v35 += 64;
            ++v36;
            if (v39)
            {
              v40 = sub_100009ED4();
              result = sub_100016E94(v40, v41, 0);
              v29 = __clz(__rbit64(v38)) + v35;
              goto LABEL_28;
            }
          }

          v42 = sub_100009ED4();
          result = sub_100016E94(v42, v43, 0);
        }

LABEL_28:
        v44 = *(a1 + 36);
        v57 = v29;
        v58 = v44;
        LOBYTE(v59) = 0;
        v33 = v49;
      }

      if (v14 == v33)
      {
        sub_100016E94(v57, v58, v59);

        return v55;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_10015DED0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return sub_1000051C8();
}

uint64_t sub_10015DEE8()
{
  sub_100003884();
  v2 = v1[9];
  sub_1000020C0(v1 + 2);
  sub_100010CD8();
  v3 = *(v0 + 64);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v1;
  v5[1] = sub_10015E008;
  v6 = v1[8];
  v7 = sub_1000031B8(v1[7]);

  return v9(v7);
}

uint64_t sub_10015E008()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10015E100()
{
  sub_100002BAC();
  sub_100003324((v0 + 16));
  sub_100002F54();

  return v1();
}

uint64_t sub_10015E158(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return sub_1000051C8();
}

uint64_t sub_10015E16C()
{
  sub_100003884();
  v3 = v2[8];
  sub_1000020C0(v2 + 2);
  sub_100010CD8();
  v4 = *(v1 + 56);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v2[9] = v6;
  *v6 = v2;
  v6[1] = sub_10015E28C;
  v7 = sub_1000031B8(v2[7]);

  return v9(v7, v0, v1);
}

uint64_t sub_10015E28C()
{
  sub_100001ED0();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  sub_1000059F8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10015E398()
{
  sub_100002BAC();
  v1 = *(v0 + 88);
  sub_100003324((v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1 & 0x1010101);
}

uint64_t sub_10015E400()
{
  sub_100002BAC();
  sub_100003324((v0 + 16));
  sub_100001F00();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_10015E45C()
{
  sub_100002BAC();
  sub_100003324((v0 + 16));
  sub_100001F00();
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_10015E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return sub_1000051C8();
}

uint64_t sub_10015E4D4()
{
  sub_10000636C();
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[9];
  sub_1000020C0(v1 + 2);
  sub_100010CD8();
  v5 = swift_allocObject();
  v1[12] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(v0 + 48);

  v14 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v9 = sub_1000457C0(v8);
  *v9 = v10;
  v9[1] = sub_10005A2E0;
  v11 = v1[8];
  v12 = sub_1000031B8(v1[7]);

  return v14(v12);
}

uint64_t sub_10015E648()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BE400);
  sub_10000641C(v0, qword_1001BE400);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10015E744()
{
  sub_100002BAC();
  sub_1000B5008(*(v0 + 80));
  sub_100001F00();
  v2 = *(v0 + 136);

  return v1();
}

uint64_t sub_10015E7A0(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE428, &type metadata accessor for ModelXPCRequest.CreateSessionRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015E7F8()
{
  sub_100002BAC();
  v1[13] = v2;
  v1[14] = v0;
  SessionRequest = type metadata accessor for ModelXPCRequest.CreateSessionRequest();
  v1[15] = SessionRequest;
  sub_100002F44(SessionRequest);
  v1[16] = v4;
  v6 = *(v5 + 64);
  v1[17] = sub_100002C58();
  v7 = type metadata accessor for Session.Metadata();
  v1[18] = v7;
  sub_100002F44(v7);
  v1[19] = v8;
  v10 = *(v9 + 64);
  v1[20] = sub_10000BF98();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v11 = sub_100003000();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10015E900()
{
  sub_10000385C();
  sub_100003284();
  v1 = v0[22];
  v2 = v0[19];
  v27 = v0[18];
  v3 = v0[13];
  sub_10000A4C4(v3, v3[3]);
  sub_100007130(v4 + 144, (v0 + 2));
  v5 = sub_100003370(v0 + 2, v0[5]);
  ModelXPCRequest.CreateSessionRequest.metadata.getter();
  v6 = type metadata accessor for URL();
  sub_100002BDC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = sub_100002C58();
  Session.Metadata.assetBundleURI.getter();
  v12 = *(v2 + 8);
  v0[23] = v12;
  v0[24] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v27);
  v13 = *v5;
  sub_100003E80(v11);
  v0[25] = 0;
  v0[26] = v14;
  v15 = (v8 + 8);
  v16 = v0[21];
  v28 = v0[18];
  v18 = v0[13];
  v17 = v0[14];
  (*v15)(v11, v6);

  sub_100003324(v0 + 2);
  sub_10000A4C4(v18, v3[3]);
  sub_100007130(*(v19 + 128) + 416, (v0 + 7));
  v0[27] = type metadata accessor for DaemonSession(0);
  ModelXPCRequest.CreateSessionRequest.metadata.getter();
  v0[28] = Session.Metadata.useCaseID.getter();
  v0[29] = v20;
  v12(v16, v28);
  v21 = v0[11];
  sub_100003370(v0 + 7, v0[10]);
  v22 = swift_task_alloc();
  v0[30] = v22;
  *v22 = v0;
  sub_100004B28(v22);
  sub_100001F70();
  sub_100003540();

  return OSEligibilityChecking.isFoundationModelsEligible.getter(v23, v24);
}

uint64_t sub_10015EB9C()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 240);
  *v2 = *v0;
  *(v1 + 248) = v5;

  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10015EC84()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  sub_100009648();
  v8 = *(v0 + 232);
  if (v6)
  {
    v9 = *(v0 + 208);

    sub_100003324((v0 + 56));
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 160);
    v13 = *(v0 + 136);

    sub_100001F00();

    return v14();
  }

  else
  {
    v16 = v7;
    v17 = *(v0 + 232);

    if (v16)
    {
      if (qword_1001B8AE0 != -1)
      {
        sub_10000881C();
      }

      v18 = *(v0 + 208);
      v20 = *(v0 + 128);
      v19 = *(v0 + 136);
      v22 = *(v0 + 112);
      v21 = *(v0 + 120);
      v23 = type metadata accessor for Logger();
      sub_10000641C(v23, qword_1001BE400);
      v24 = *(v20 + 16);
      v25 = sub_100036724();
      v26(v25);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 208);
      if (v29)
      {
        v67 = *(v0 + 184);
        v31 = *(v0 + 160);
        v32 = *(v0 + 136);
        v33 = *(v0 + 144);
        v34 = *(v0 + 128);
        v68 = *(v0 + 120);
        v69 = *(v0 + 192);
        v35 = swift_slowAlloc();
        sub_1000080A4();
        *v35 = 136315394;
        v70 = v28;
        ModelXPCRequest.CreateSessionRequest.metadata.getter();
        v36 = Session.Metadata.useCaseID.getter();
        v67(v31, v33);
        (*(v34 + 8))(v32, v68);
        v37 = sub_100036724();
        sub_100004A3C(v37, v38, v39);
        sub_100012FD0();
        *(v35 + 4) = v36;
        *(v35 + 12) = 2080;
        v40 = sub_10015D82C(v30);

        *(v0 + 96) = v40;
        v41 = sub_100036724();
        sub_100065020(v41, v42);
        sub_1000082D4(&qword_1001B9F30, &qword_1001B9F28, &qword_100174190);
        v43 = BidirectionalCollection<>.joined(separator:)();

        v44 = sub_100036724();
        sub_100004A3C(v44, v45, v46);
        sub_100012FD0();
        *(v35 + 14) = v43;
        _os_log_impl(&_mh_execute_header, v27, v70, "Unentitled inference allowed for usecase: %s, with assets: \n%s", v35, 0x16u);
        swift_arrayDestroy();
        sub_100003420();
      }

      else
      {
        v49 = *(v0 + 128);
        v48 = *(v0 + 136);
        v50 = *(v0 + 120);
        v51 = *(v0 + 208);

        v52 = *(v49 + 8);
        v53 = sub_100007660();
        v54(v53);
      }
    }

    else
    {
      v47 = *(v0 + 208);
    }

    v56 = *(v0 + 184);
    v55 = *(v0 + 192);
    v58 = *(v0 + 168);
    v57 = *(v0 + 176);
    v59 = *(v0 + 160);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = ~v16;
    v63 = *(v0 + 112);
    ModelXPCRequest.CreateSessionRequest.metadata.getter();
    LOBYTE(v63) = Session.Metadata.useFoundationModelsExtensionEntitlement.getter();
    v56(v59, v60);
    sub_100003324((v0 + 56));

    if (v63)
    {
      v64 = 256;
    }

    else
    {
      v64 = 0;
    }

    v65 = v64 & 0xFFFFFFFE | v62 & 1;
    v66 = *(v0 + 8);

    return v66(v65);
  }
}

uint64_t sub_10015F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v11 = *(v10 + 120);
  v13 = *(v10 + 104);
  v12 = *(v10 + 112);
  v15 = *(v10 + 72);
  v14 = *(v10 + 80);
  v16 = *(v10 + 48);
  v17 = *(v10 + 96) + 8;
  (*(v10 + 176))(*(v10 + 128), *(v10 + 88));

  sub_100001F00();
  v18 = *(v10 + 200);
  sub_100006378();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_10015F14C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10015B3DC;

  return sub_10015E7F8();
}

uint64_t sub_10015F1E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_10003FD7C();
}

uint64_t sub_10015F26C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE430, &type metadata accessor for ModelXPCRequest.CreateSessionRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015F2C4(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE438, &type metadata accessor for ModelXPCRequest.DeleteSessionRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015F31C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE440, &type metadata accessor for ModelXPCRequest.DeleteSessionRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015F374(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE448, &type metadata accessor for ModelXPCRequest.PrewarmSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015F3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  v13 = *(v12 + 256);

  v23 = *(v12 + 304);
  sub_100061B10();

  sub_100001F00();
  sub_1000062BC();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, v23, a10, a11, a12);
}

uint64_t sub_10015F484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000133FC();
  sub_10000C72C();
  v18[5] = v18[42];
  v19 = v18[15];
  v20 = v18[10];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_1000062B0();
  if (sub_10001D344())
  {
    v21 = v18[42];
    v22 = v18[14];
    v23 = v18[15];
    v24 = v18[13];
    v25 = v18[10];
    v26 = v18[11];

    v27 = v26[4];
    v28 = sub_1000062B0();
    v29(v28);
    v30 = v26[2];
    v30(v24, v22, v25);
    v31 = v26[11];
    v32 = sub_100003754();
    if (v33(v32) == enum case for ModelManagerError.inferenceError(_:))
    {
      v34 = v18[11];
      v30(v18[12], v18[13], v18[10]);
      v35 = *(v34 + 96);
      v36 = sub_100001F70();
      v37(v36);
      v38 = type metadata accessor for InferenceError();
      sub_1000191C8(v38);
      v40 = v39;
      v41 = *(v39 + 88);
      v42 = sub_100001F70();
      if (v43(v42) == enum case for InferenceError.assetVersionMismatch(_:))
      {
        a11 = v18[27];
        a12 = v18[28];
        v44 = v18[23];
        a13 = v18[22];
        v77 = v18[37];
        v45 = v18[20];
        v46 = v18[21];
        v47 = v18[9];
        a9 = v44;
        a10 = v18[8];
        v48 = v18[7];
        type metadata accessor for TaskPriority();
        sub_100057A88();
        sub_100005640();
        v49 = swift_allocObject();
        v49[2] = 0;
        v49[3] = 0;
        v49[4] = v48;

        sub_10000A83C();
        sub_100065530();

        sub_100057A88();
        a11(v44, a10, v45);
        v50 = (*(v46 + 80) + 40) & ~*(v46 + 80);
        v51 = swift_allocObject();
        *(v51 + 2) = 0;
        *(v51 + 3) = 0;
        *(v51 + 4) = v48;
        (*(v46 + 32))(&v51[v50], v44, v45);
        *&v51[(a13 + v50 + 7) & 0xFFFFFFFFFFFFFFF8] = v77;

        sub_10000A83C();
        sub_100128ED0();
      }

      else
      {
        v56 = v18[12];
        v57 = v18[37];

        (*(v40 + 8))(v56, v38);
      }
    }

    else
    {
      v55 = v18[37];
    }

    v58 = v18[32];
    v59 = v18[14];
    v60 = v18[10];
    v61 = *(v18[11] + 8);
    (v61)(v18[13], v60);
    sub_100005E30();
    sub_100003814(v62, v63);
    v64 = sub_10001C184();
    v30(v65, v59, v60);
    v78 = v64;
    swift_willThrow();

    v66 = sub_1000071D0();
    v61(v66);
    v67 = v18[5];
  }

  else
  {
    v52 = v18[37];
    v53 = v18[32];

    v54 = v18[5];

    v78 = v18[42];
  }

  sub_100061B10();

  sub_100001F00();
  sub_1000037A0();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, v78, a15, a16, a17, a18);
}

uint64_t sub_10015F87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10015F89C, 0, 0);
}

uint64_t sub_10015F89C()
{
  sub_100002BAC();
  sub_100002EC0(*(v0 + 24));
  *(v0 + 32) = *(v1 + 24);

  v2 = swift_task_alloc();
  v3 = sub_10000E8D0(v2);
  *v3 = v4;
  sub_100004B28(v3);

  return sub_1000E0174();
}

uint64_t sub_10015F938()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 48) = v8;

  v10 = sub_100003000();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10015FA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for ModelManagerError();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();
  v13 = type metadata accessor for ContinuousClock();
  v6[12] = v13;
  v14 = *(v13 - 8);
  v6[13] = v14;
  v15 = *(v14 + 64) + 15;
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_10015FBC0, 0, 0);
}

uint64_t sub_10015FBC0()
{
  sub_100002BAC();
  v1 = *(v0 + 112);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_10015FC84;
  v3 = *(v0 + 112);
  sub_1000031B8(0xD586A20A4C00000);

  return sub_1001542B4();
}

uint64_t sub_10015FC84()
{
  sub_100001ED0();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v5 = v4[15];
  v6 = v4[14];
  v7 = v4[13];
  v8 = v4[12];
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;
  *(v11 + 128) = v0;

  v12 = *(v7 + 8);
  v13 = sub_1000060A4();
  v14(v13);
  sub_1000059F8();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_10015FDD4()
{
  sub_100001ED0();
  v1 = v0[11];
  v2 = v0[4];
  sub_100002EC0(v0[3]);
  v0[17] = *(v3 + 128);

  ModelXPCRequest.PrewarmSession.sessionID.getter();
  v0[18] = ModelXPCRequest.PrewarmSession.metadata.getter();
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_10015FEA4;
  v5 = v0[5];
  sub_1000031B8(v0[11]);

  return sub_100017334();
}

uint64_t sub_10015FEA4()
{
  sub_10000636C();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = v5[19];
  v7 = v5[18];
  v8 = v5[17];
  v9 = v5[11];
  v10 = v5[10];
  v11 = v5[9];
  v12 = *v1;
  sub_100002B9C();
  *v13 = v12;
  v3[20] = v0;

  (*(v10 + 8))(v9, v11);

  if (v0)
  {
    sub_1000059F8();

    return _swift_task_switch(v14, v15, v16);
  }

  else
  {
    v17 = v3[14];
    v18 = v3[11];
    v19 = v3[8];

    v20 = *(v12 + 8);

    return v20();
  }
}

uint64_t sub_100160098()
{
  sub_100001ED0();
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];

  sub_100001F00();

  return v5();
}

uint64_t sub_100160114()
{
  sub_100003884();
  v0[2] = v0[20];
  v1 = v0[8];
  v2 = v0[6];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_1000062B0();
  if (sub_10001D344())
  {
    v3 = (*(v0[7] + 88))(v0[8], v0[6]);
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[6];
    if (v3 == enum case for ModelManagerError.inferenceError(_:))
    {
      (*(v4 + 96))(v0[8], v6);
      v7 = type metadata accessor for InferenceError();
      sub_1000191C8(v7);
      v9 = v8;
      v10 = *(v8 + 88);
      v11 = sub_100001F70();
      if (v12(v11) == enum case for InferenceError.assetVersionMismatch(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      (*(v9 + 8))(v0[8], v7);
    }

    else
    {
      (*(v4 + 8))(v0[8], v6);
    }
  }

  v14 = v0[2];

  v15 = v0[20];
  v16 = v0[14];
  v17 = v0[11];
  v18 = v0[8];

  sub_100001F00();

  return v19();
}

uint64_t sub_100160304(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE450, &type metadata accessor for ModelXPCRequest.PrewarmSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016035C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE458, &type metadata accessor for ModelXPCRequest.CancelSessionRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001603B4()
{
  sub_100002BAC();
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];

  sub_100001F00();
  v5 = v0[14];

  return v4();
}

uint64_t sub_100160424(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE460, &type metadata accessor for ModelXPCRequest.CancelSessionRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016047C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE468, &type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001604D4()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  sub_1000089F0(v3, v4, v5);
  v6 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[7] = v6;
  sub_100002F44(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = sub_100002C58();
  v10 = type metadata accessor for RequestMetadata();
  v1[10] = v10;
  sub_100002F44(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = sub_100002C58();
  v14 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[13] = v14;
  sub_100002F44(v14);
  v1[14] = v15;
  v17 = *(v16 + 64);
  v1[15] = sub_100002C58();
  v18 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  v1[16] = v18;
  sub_100002F44(v18);
  v1[17] = v19;
  v21 = *(v20 + 64);
  v1[18] = sub_10000BF98();
  v1[19] = swift_task_alloc();
  v22 = sub_100003000();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_100160684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v105 = v20;
  v22 = v20[3];
  v103 = AuditToken.auditUserIdentifier.getter();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v23 = sub_1000077CC();
  sub_10000641C(v23, qword_1001BE400);
  v24 = *(v21 + 16);
  v25 = sub_100005E98();
  v24(v25);
  v26 = sub_100019220();
  v24(v26);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v31 = v20[18];
  v30 = v20[19];
  v33 = v20[16];
  v32 = v20[17];
  if (v29)
  {
    v34 = v20[14];
    v35 = v20[15];
    v91 = v20[16];
    v37 = v20[12];
    v36 = v20[13];
    v38 = v20[11];
    v89 = v20[10];
    v99 = v20[8];
    v95 = v20[9];
    v97 = v20[7];
    v93 = v20[18];
    v39 = swift_slowAlloc();
    v102 = sub_1000080A4();
    v104 = v102;
    *v39 = 136315394;
    v101 = v27;
    ModelXPCRequest.ExecuteInputStreamRequest.metadata.getter();
    RequestMetadata.id.getter();
    (*(v38 + 8))(v37, v89);
    sub_1000082D4(&qword_1001B8F58, &qword_1001B8F48, &qword_10016FB30);
    sub_100018980();
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_1000DAF38();
    (*(v34 + 8))(v35, v36);
    v41 = *(v32 + 8);
    v40 = v32 + 8;
    v28 = v41;
    v42 = v91;
    v41(v30, v91);
    sub_100004A3C(v37, v38 + 8, &v104);
    sub_100012E8C();
    sub_10000BF28();
    v44 = v93;
    v43 = v95;
    ModelXPCRequest.ExecuteInputStreamRequest.sessionID.getter();
    sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    sub_100018980();
    v45 = v97;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_10001B268(v46, v47, v48, v49, v50, v51, v52, v53, v87, v89, v91, v93, v95, v97, v99);
    v54(v43, v45);
    v41(v44, v42);
    v55 = sub_100001F70();
    v58 = sub_100004A3C(v55, v56, v57);

    *(v39 + 14) = v58;
    sub_100005FCC();
    _os_log_impl(v59, v60, v61, v62, v63, 0x16u);
    sub_1000190E0(v64, v65, &type metadata for Any + 8, v66, v67, v68, v69, v70, v88, v90, v92, v94, v96, v98, v100, v101, v102);
    swift_arrayDestroy();
    sub_100003A4C();
    sub_100004B78();
  }

  else
  {

    v71 = *(v32 + 8);
    v40 = v32 + 8;
    v71(v31, v33);
    v71(v30, v33);
  }

  sub_10001369C();
  v72 = swift_task_alloc();
  v73 = sub_100032354(v72);
  *(v74 + 32) = v103;
  *(v74 + 40) = v73;
  v75 = swift_task_alloc();
  v20[21] = v75;
  *(v75 + 16) = v40;
  *(v75 + 24) = v28;
  v76 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v77 = swift_task_alloc();
  v20[22] = v77;
  *v77 = v20;
  v77[1] = sub_100160A44;
  sub_100007F78();

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_100160A44()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v11 = *(v3 + 160);
    v10 = *(v3 + 168);

    sub_1000059F8();

    return _swift_task_switch(v12, v13, v14);
  }
}

uint64_t sub_100160B6C()
{
  sub_10000639C();
  sub_100003884();
  v0 = sub_10000A0F8();
  sub_100160BF4(v0);

  sub_100001F00();
  sub_100003D20();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_100160BF4(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  __chkstk_darwin(v2);
  v45 = &v38[-v4];
  v43 = type metadata accessor for RequestMetadata();
  isa = v43[-1].isa;
  v5 = *(isa + 8);
  __chkstk_darwin(v43);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v42 = *(v44 - 8);
  v8 = *(v42 + 64);
  __chkstk_darwin(v44);
  v10 = &v38[-v9];
  v11 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v38[-v17];
  if (qword_1001B8AE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000641C(v19, qword_1001BE400);
  v20 = v12[2];
  v20(v18, a1, v11);
  v20(v16, a1, v11);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v48 = v40;
    *v23 = 136315394;
    v39 = v22;
    ModelXPCRequest.ExecuteInputStreamRequest.metadata.getter();
    RequestMetadata.id.getter();
    (*(isa + 1))(v7, v43);
    sub_1000082D4(&qword_1001B8F58, &qword_1001B8F48, &qword_10016FB30);
    v24 = v44;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v21;
    v27 = v26;
    (*(v42 + 8))(v10, v24);
    v28 = v12[1];
    v28(v18, v11);
    v29 = sub_100004A3C(v25, v27, &v48);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    v30 = v45;
    ModelXPCRequest.ExecuteInputStreamRequest.sessionID.getter();
    sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    v31 = v47;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v46 + 8))(v30, v31);
    v28(v16, v11);
    v35 = sub_100004A3C(v32, v34, &v48);

    *(v23 + 14) = v35;
    v36 = v43;
    _os_log_impl(&_mh_execute_header, v43, v39, "Finished request %s (Session: %s)", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v37 = v12[1];
    v37(v16, v11);
    v37(v18, v11);
  }
}

uint64_t sub_100161140(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 424) = a4;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  v7 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  *(v6 + 136) = v7;
  v8 = *(v7 - 8);
  *(v6 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v10 = *(*(sub_100065020(&qword_1001BB050, &qword_10016F6E0) - 8) + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v11 = type metadata accessor for ModelManagerError();
  *(v6 + 168) = v11;
  v12 = *(v11 - 8);
  *(v6 + 176) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  v14 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  *(v6 + 224) = v14;
  v15 = *(v14 - 8);
  *(v6 + 232) = v15;
  *(v6 + 240) = *(v15 + 64);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v16 = type metadata accessor for RequestMetadata();
  *(v6 + 272) = v16;
  v17 = *(v16 - 8);
  *(v6 + 280) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  v19 = type metadata accessor for TaskPriority();
  *(v6 + 304) = v19;
  v20 = *(v19 - 8);
  *(v6 + 312) = v20;
  v21 = *(v20 + 64) + 15;
  *(v6 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_100161418, 0, 0);
}

uint64_t sub_100161418()
{
  sub_100005F88();
  sub_1000033DC();
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v7 = v0[16];
  v20 = v0[15];
  v8 = v0[14];
  sub_100002EC0(v0[13]);
  v0[41] = *(v9 + 128);

  ModelXPCRequest.ExecuteInputStreamRequest.taskPriority.getter();
  TaskPriority.init(rawValue:)();
  ModelXPCRequest.ExecuteInputStreamRequest.metadata.getter();
  v10 = sub_10000CEE0();
  v11(v10);
  sub_1000134CC();
  v12 = swift_allocObject();
  v13 = sub_100011A14(v12);
  v14(v13);
  v15 = (v8 + v2);
  *v15 = v20;
  v15[1] = v7;

  v16 = swift_task_alloc();
  v0[45] = v16;
  *v16 = v0;
  sub_100040330(v16);
  sub_1000031B8(v17);
  sub_1000062BC();

  return sub_10009ADE8();
}

uint64_t sub_10016155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  sub_100001EF4();
  v17 = v16;
  sub_100004B40();
  *v18 = v17;
  v20 = v19[45];
  v21 = v19[44];
  v22 = v19[41];
  v45 = v19[40];
  v23 = v19[39];
  v24 = v19[38];
  v25 = v19[37];
  v26 = v19[35];
  v27 = v19[34];
  v28 = *v15;
  sub_100002B9C();
  *v29 = v28;
  *(v17 + 368) = v14;

  v30 = sub_10001364C();
  v31(v30);
  (*(v23 + 8))(v45, v24);
  if (v14)
  {
    sub_1000059F8();
    sub_100003540();

    return _swift_task_switch(v32, v33, v34);
  }

  else
  {
    sub_100008048();

    sub_100002F54();
    sub_100003540();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, v45, a12, a13, a14);
  }
}

uint64_t sub_1001617BC()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  sub_100003324((v2 + 56));
  v8 = sub_100003000();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1001618A0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  sub_100003324((v2 + 16));
  v8 = sub_100003000();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1001620DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for InferenceProviderDescriptor();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = *(*(sub_100065020(&qword_1001B9C88, &qword_1001706E0) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v10 = type metadata accessor for RequestMetadata();
  v5[16] = v10;
  v11 = *(v10 - 8);
  v5[17] = v11;
  v12 = *(v11 + 64) + 15;
  v5[18] = swift_task_alloc();
  v13 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5[19] = v13;
  v14 = *(v13 - 8);
  v5[20] = v14;
  v15 = *(v14 + 64) + 15;
  v5[21] = swift_task_alloc();
  v16 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  v5[22] = v16;
  v17 = *(v16 - 8);
  v5[23] = v17;
  v18 = *(v17 + 64) + 15;
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_1001622FC, 0, 0);
}

uint64_t sub_1001622FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000133FC();
  sub_10000C72C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v21 = v18[23];
  v20 = v18[24];
  v22 = v18[22];
  v23 = v18[9];
  v24 = type metadata accessor for Logger();
  sub_10000641C(v24, qword_1001BE400);
  v25 = sub_100008440();
  v26(v25);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = sub_10000320C(v28);
  v31 = v18[23];
  v30 = v18[24];
  if (v29)
  {
    v32 = v18[20];
    v33 = v18[21];
    v34 = v18[18];
    a13 = v18[22];
    v35 = v18[17];
    a10 = v18[16];
    a11 = v18[19];
    sub_100007698();
    a15 = sub_100003890();
    sub_100026B58(4.8149e-34);
    ModelXPCRequest.ExecuteInputStreamRequest.metadata.getter();
    RequestMetadata.id.getter();
    (*(v35 + 8))(v34, a10);
    sub_100005070();
    sub_1000082D4(v36, v37, v38);
    sub_100003E14();
    dispatch thunk of CustomStringConvertible.description.getter();
    v39 = sub_10016BC1C();
    v40(v39);
    (*(v31 + 8))(v30, a13);
    v41 = sub_1000187CC();
    sub_100004A3C(v41, v34, v42);
    sub_10001AFBC();
    *(v19 + 4) = v34;
    sub_10000EEC0(&_mh_execute_header, "Responding to input stream subrequest: %s", BYTE4(a12));
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v43 = *(v31 + 8);
    v44 = sub_100013BBC();
    v45(v44);
  }

  v46 = v18[14];
  v47 = v18[15];
  v48 = v18[12];
  v49 = v18[13];
  v50 = v18[10];
  v52 = v18[7];
  v51 = v18[8];
  v18[5] = sub_100065020(&qword_1001BE620, &qword_1001755A0);
  v53 = sub_10016B918();
  sub_10006073C(v53);
  sub_10010C4AC(v52, v47, &qword_1001B9C88, &qword_1001706E0);
  (*(v49 + 16))(v46, v51, v48);
  sub_100001F70();
  ModelXPCRequest.ExecuteInputStreamRequest.Response.init(result:lockedInferenceProvider:)();
  swift_storeEnumTagMultiPayload();
  v66 = v50 + *v50;
  v54 = v50[1];
  swift_task_alloc();
  sub_100004B34();
  v18[25] = v55;
  *v55 = v56;
  sub_1000486D0(v55);
  sub_1000037A0();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, v66, a15, a16, a17, a18);
}

uint64_t sub_1001625DC()
{
  sub_10001881C();
  sub_100003884();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v5 = v4[25];
  v6 = v4[24];
  v7 = v4[21];
  v8 = v4[18];
  v9 = v4[15];
  v10 = v4[14];
  v11 = *v0;
  sub_100002B9C();
  *v12 = v11;

  sub_100003324((v2 + 16));

  sub_100001F00();
  sub_100007BB8();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_100162750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v12 = type metadata accessor for RequestMetadata();
  v5[11] = v12;
  v13 = *(v12 - 8);
  v5[12] = v13;
  v14 = *(v13 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v15 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  v5[15] = v15;
  v16 = *(v15 - 8);
  v5[16] = v16;
  v17 = *(v16 + 64) + 15;
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_100162954, 0, 0);
}

uint64_t sub_100162954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1000133FC();
  sub_10000C72C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v16 = sub_100013894();
  v17 = sub_10000641C(v16, qword_1001BE400);
  v18 = v17;
  v11[18] = v17;
  v19 = sub_100003CF0();
  v20(v19);
  v21 = v18;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = sub_10000320C(v23);
  v25 = v11[16];
  v26 = v11[17];
  v27 = v11[15];
  if (v24)
  {
    sub_100018498();
    sub_100003890();
    sub_100003E74(4.8149e-34);
    ModelXPCRequest.ExecuteInputStreamRequest.metadata.getter();
    sub_100026F6C();
    (*(v12 + 8))(v14, a10);
    UUIDIdentifier.uuidString.getter();
    sub_1000DAF38();
    (*(v13 + 8))(v15, a11);
    (*(v25 + 8))(v26, v27);
    v28 = sub_1000187CC();
    sub_100004A3C(v28, v14, v29);
    sub_100012E8C();
    *(v27 + 4) = v15;
    sub_10000EEC0(&_mh_execute_header, "xpcdispatcher: Request TaskCancellation handler, id: %s.", v21);
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v30 = *(v25 + 8);
    v31 = sub_100004CA4();
    v32(v31);
  }

  v34 = v11[12];
  v33 = v11[13];
  v35 = v11[11];
  v36 = v11[9];
  v37 = v11[6];
  v38 = v11[2];
  sub_100002EC0(v11[3]);
  v11[19] = *(v39 + 128);

  ModelXPCRequest.ExecuteInputStreamRequest.metadata.getter();
  RequestMetadata.id.getter();
  v40 = *(v34 + 8);
  v41 = sub_1000060A4();
  v42(v41);
  ModelXPCRequest.ExecuteInputStreamRequest.sessionID.getter();
  v43 = swift_task_alloc();
  v11[20] = v43;
  *v43 = v11;
  v43[1] = sub_100162B98;
  v44 = v11[6];
  sub_1000031B8(v11[9]);
  sub_1000037A0();

  return sub_10009D40C();
}

uint64_t sub_100162B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  sub_100001EF4();
  v15 = v14;
  sub_100004B40();
  *v16 = v15;
  v18 = v17[20];
  v19 = v17[19];
  v20 = v17[9];
  v21 = v17[8];
  v22 = v17[7];
  v23 = v17[6];
  v24 = v17[5];
  v25 = v17[4];
  v26 = *v13;
  sub_100002B9C();
  *v27 = v26;
  *(v15 + 168) = v12;

  v28 = sub_100003318();
  v29(v28, v25);
  v30 = *(v21 + 8);
  v31 = sub_1000071D0();
  v32(v31);
  if (v12)
  {
    sub_1000059F8();
    sub_1000062BC();

    return _swift_task_switch(v33, v34, v35);
  }

  else
  {
    sub_100005B6C();

    sub_100001F00();
    sub_1000062BC();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }
}

uint64_t sub_100162DA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1001604D4();
}

uint64_t sub_100162E5C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE470, &type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100162EB4(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE478, &type metadata accessor for ModelXPCRequest.ExecuteRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100162F0C()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  sub_1000089F0(v3, v4, v5);
  v6 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[7] = v6;
  sub_100002F44(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = sub_100002C58();
  v10 = type metadata accessor for RequestMetadata();
  v1[10] = v10;
  sub_100002F44(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = sub_100002C58();
  v14 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[13] = v14;
  sub_100002F44(v14);
  v1[14] = v15;
  v17 = *(v16 + 64);
  v1[15] = sub_100002C58();
  v18 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  v1[16] = v18;
  sub_100002F44(v18);
  v1[17] = v19;
  v21 = *(v20 + 64);
  v1[18] = sub_10000BF98();
  v1[19] = swift_task_alloc();
  v22 = sub_100003000();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_1001630BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t, uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, os_log_t log, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_100011AD8();
  v36 = v34[3];
  v37 = AuditToken.auditUserIdentifier.getter();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v38 = sub_1000077CC();
  sub_10000641C(v38, qword_1001BE400);
  v39 = *(v35 + 16);
  v40 = sub_100005E98();
  v39(v40);
  v41 = sub_100019220();
  v39(v41);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v34[18];
  v46 = v34[19];
  v47 = v34[16];
  v48 = v34[17];
  if (v44)
  {
    a17 = v34[18];
    v49 = v34[15];
    a15 = v34[14];
    v83 = v43;
    v50 = v34[12];
    v51 = v34[13];
    v52 = v34[10];
    a13 = v52;
    v82 = v34[11];
    a9 = v34[19];
    a16 = v34[9];
    a18 = v34[7];
    a19 = v34[8];
    a12 = swift_slowAlloc();
    sub_1000080A4();
    *a12 = 136315394;
    log = v42;
    ModelXPCRequest.ExecuteRequest.metadata.getter();
    RequestMetadata.id.getter();
    a14 = *(v82 + 8);
    a14(v50, v52);
    sub_100005070();
    a11 = v53;
    sub_1000082D4(v54, v55, v56);
    dispatch thunk of CustomStringConvertible.description.getter();
    a10 = v47;
    (*(a15 + 8))(v49, v51);
    v45 = *(v48 + 8);
    v45(v46, v47);
    v57 = sub_100007660();
    sub_100004A3C(v57, v58, v59);

    sub_10000BF28();
    v47 = a17;
    ModelXPCRequest.ExecuteRequest.metadata.getter();
    RequestMetadata.sessionID.getter();
    a14(v50, v52);
    sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(a19 + 8))(a16, a18);
    v45(a17, a10);
    v60 = sub_100001F70();
    v63 = sub_100004A3C(v60, v61, v62);

    *(a12 + 14) = v63;
    _os_log_impl(&_mh_execute_header, log, v83, "Received request %s (Session: %s)", a12, 0x16u);
    swift_arrayDestroy();
    sub_100003A4C();
    sub_100004B78();
  }

  else
  {

    v64 = *(v48 + 8);
    v65 = sub_10000CF04();
    v64(v65);
    v66 = sub_100013BBC();
    v64(v66);
  }

  sub_10001369C();
  v67 = swift_task_alloc();
  v68 = sub_100032354(v67);
  *(v69 + 32) = v37;
  *(v69 + 40) = v68;
  v70 = swift_task_alloc();
  v34[21] = v70;
  *(v70 + 16) = v47;
  *(v70 + 24) = v45;
  v71 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v72 = swift_task_alloc();
  v34[22] = v72;
  *v72 = v34;
  v72[1] = sub_10005A130;
  sub_100007F78();
  sub_100008228();

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, log);
}

void sub_1001634B8(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  __chkstk_darwin(v2);
  v49 = v41 - v4;
  v52 = type metadata accessor for RequestMetadata();
  v48 = *(v52 - 8);
  v5 = *(v48 + 64);
  __chkstk_darwin(v52);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  __chkstk_darwin(v8);
  v11 = v41 - v10;
  v12 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v41 - v18;
  if (qword_1001B8AE0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000641C(v20, qword_1001BE400);
  v21 = v13[2];
  v21(v19, a1, v12);
  v21(v17, a1, v12);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v44 = v22;
    v25 = v24;
    v42 = v24;
    v45 = swift_slowAlloc();
    v53 = v45;
    *v25 = 136315394;
    v43 = v23;
    ModelXPCRequest.ExecuteRequest.metadata.getter();
    RequestMetadata.id.getter();
    v48 = *(v48 + 8);
    (v48)(v7, v52);
    v41[1] = &protocol conformance descriptor for UUIDIdentifier<A>;
    sub_1000082D4(&qword_1001B8F58, &qword_1001B8F48, &qword_10016FB30);
    v26 = v47;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v46 + 8))(v11, v26);
    v30 = v13[1];
    v30(v19, v12);
    v31 = sub_100004A3C(v27, v29, &v53);

    v32 = v42;
    *(v42 + 4) = v31;
    *(v32 + 12) = 2080;
    ModelXPCRequest.ExecuteRequest.metadata.getter();
    v33 = v49;
    RequestMetadata.sessionID.getter();
    (v48)(v7, v52);
    sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    v34 = v51;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v50 + 8))(v33, v34);
    v30(v17, v12);
    v38 = sub_100004A3C(v35, v37, &v53);

    *(v32 + 14) = v38;
    v39 = v44;
    _os_log_impl(&_mh_execute_header, v44, v43, "Finished request %s (Session: %s)", v32, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v40 = v13[1];
    v40(v17, v12);
    v40(v19, v12);
  }
}

uint64_t sub_100163A30(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 424) = a4;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  v7 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  *(v6 + 136) = v7;
  v8 = *(v7 - 8);
  *(v6 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v10 = *(*(sub_100065020(&qword_1001BB050, &qword_10016F6E0) - 8) + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v11 = type metadata accessor for ModelManagerError();
  *(v6 + 168) = v11;
  v12 = *(v11 - 8);
  *(v6 + 176) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  v14 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  *(v6 + 224) = v14;
  v15 = *(v14 - 8);
  *(v6 + 232) = v15;
  *(v6 + 240) = *(v15 + 64);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v16 = type metadata accessor for RequestMetadata();
  *(v6 + 272) = v16;
  v17 = *(v16 - 8);
  *(v6 + 280) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  v19 = type metadata accessor for TaskPriority();
  *(v6 + 304) = v19;
  v20 = *(v19 - 8);
  *(v6 + 312) = v20;
  v21 = *(v20 + 64) + 15;
  *(v6 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_100163D08, 0, 0);
}

uint64_t sub_100163D08()
{
  sub_100005F88();
  sub_1000033DC();
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v7 = v0[16];
  v20 = v0[15];
  v8 = v0[14];
  sub_100002EC0(v0[13]);
  v0[41] = *(v9 + 128);

  ModelXPCRequest.ExecuteRequest.taskPriority.getter();
  TaskPriority.init(rawValue:)();
  ModelXPCRequest.ExecuteRequest.metadata.getter();
  v10 = sub_10000CEE0();
  v11(v10);
  sub_1000134CC();
  v12 = swift_allocObject();
  v13 = sub_100011A14(v12);
  v14(v13);
  v15 = (v8 + v2);
  *v15 = v20;
  v15[1] = v7;

  v16 = swift_task_alloc();
  v0[45] = v16;
  *v16 = v0;
  sub_100040330(v16);
  sub_1000031B8(v17);
  sub_1000062BC();

  return sub_10009CD90();
}

uint64_t sub_100163E4C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  sub_100003324((v2 + 56));
  v8 = sub_100003000();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100163F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v15 = *(v14 + 400);
  (*(v14 + 392))(*(v14 + 216), *(v14 + 168));
  v16 = *(v14 + 96);

  sub_100007710();

  sub_100002F54();
  sub_100003540();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100164004()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  sub_100003324((v2 + 16));
  v8 = sub_100003000();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1001640E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v15 = *(v14 + 368);

  sub_100007710();

  sub_100002F54();
  sub_100003540();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100164904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100164924, 0, 0);
}

uint64_t sub_100164924()
{
  sub_100002BAC();
  sub_100002EC0(*(v0 + 24));
  *(v0 + 32) = *(v1 + 24);

  v2 = swift_task_alloc();
  v3 = sub_10000E8D0(v2);
  *v3 = v4;
  sub_100004B28(v3);

  return sub_1000E0174();
}

uint64_t sub_1001649C0()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 48) = v8;

  v10 = sub_100003000();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100164AC0()
{
  **(v0 + 16) = *(v0 + 48);
  sub_100001F00();
  return v1();
}

uint64_t sub_100164AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  v5 = sub_100002BDC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v25 - v10;
  v12 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v13 = sub_100002F04(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = type metadata accessor for TaskPriority();
  sub_100009BFC(v17, 1, 1, v18);
  v19 = *(v7 + 16);
  v20 = sub_1000071D0();
  v21(v20);
  v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v7 + 32))(v23 + v22, v11, v4);
  *(v23 + ((v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  sub_1000652FC();
}

uint64_t sub_100164CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v12 = type metadata accessor for RequestMetadata();
  v5[11] = v12;
  v13 = *(v12 - 8);
  v5[12] = v13;
  v14 = *(v13 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v15 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  v5[15] = v15;
  v16 = *(v15 - 8);
  v5[16] = v16;
  v17 = *(v16 + 64) + 15;
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_100164EA4, 0, 0);
}

uint64_t sub_100164EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1000133FC();
  sub_10000C72C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v16 = sub_100013894();
  v17 = sub_10000641C(v16, qword_1001BE400);
  v18 = v17;
  v11[18] = v17;
  v19 = sub_100003CF0();
  v20(v19);
  v21 = v18;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = sub_10000320C(v23);
  v25 = v11[16];
  v26 = v11[17];
  v27 = v11[15];
  if (v24)
  {
    sub_100018498();
    sub_100003890();
    sub_100003E74(4.8149e-34);
    ModelXPCRequest.ExecuteRequest.metadata.getter();
    sub_100026F6C();
    (*(v12 + 8))(v14, a10);
    UUIDIdentifier.uuidString.getter();
    sub_1000DAF38();
    (*(v13 + 8))(v15, a11);
    (*(v25 + 8))(v26, v27);
    v28 = sub_1000187CC();
    sub_100004A3C(v28, v14, v29);
    sub_100012E8C();
    *(v27 + 4) = v15;
    sub_10000EEC0(&_mh_execute_header, "xpcdispatcher: Request TaskCancellation handler, id: %s.", v21);
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v30 = *(v25 + 8);
    v31 = sub_100004CA4();
    v32(v31);
  }

  v34 = v11[12];
  v33 = v11[13];
  v35 = v11[11];
  v36 = v11[9];
  v37 = v11[6];
  v38 = v11[2];
  sub_100002EC0(v11[3]);
  v11[19] = *(v39 + 128);

  ModelXPCRequest.ExecuteRequest.metadata.getter();
  RequestMetadata.id.getter();
  v40 = *(v34 + 8);
  v41 = sub_1000060A4();
  v42(v41);
  ModelXPCRequest.ExecuteRequest.sessionID.getter();
  v43 = swift_task_alloc();
  v11[20] = v43;
  *v43 = v11;
  v43[1] = sub_1001650E8;
  v44 = v11[6];
  sub_1000031B8(v11[9]);
  sub_1000037A0();

  return sub_10009D40C();
}

uint64_t sub_1001650E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  sub_100001EF4();
  v15 = v14;
  sub_100004B40();
  *v16 = v15;
  v18 = v17[20];
  v19 = v17[19];
  v20 = v17[9];
  v21 = v17[8];
  v22 = v17[7];
  v23 = v17[6];
  v24 = v17[5];
  v25 = v17[4];
  v26 = *v13;
  sub_100002B9C();
  *v27 = v26;
  *(v15 + 168) = v12;

  v28 = sub_100003318();
  v29(v28, v25);
  v30 = *(v21 + 8);
  v31 = sub_1000071D0();
  v32(v31);
  if (v12)
  {
    sub_1000059F8();
    sub_1000062BC();

    return _swift_task_switch(v33, v34, v35);
  }

  else
  {
    sub_100005B6C();

    sub_100001F00();
    sub_1000062BC();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }
}

uint64_t sub_1001652F0()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[21];
  v2 = v0[18];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[21];
  if (v5)
  {
    v7 = sub_100007698();
    v8 = sub_100003788();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "xpcdispatcher: Request TaskCancellation error %@", v7, 0xCu);
    sub_10000ECD8(v8, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  else
  {
  }

  v10 = v0[17];
  v11 = v0[13];
  v12 = v0[14];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[6];

  sub_100001F00();
  sub_100003D20();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_100165454()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return sub_100162F0C();
}

uint64_t sub_100165510(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE480, &type metadata accessor for ModelXPCRequest.ExecuteRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100165568(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE488, &type metadata accessor for ModelXPCRequest.CancelRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001655C0()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[6] = v5;
  sub_100002F44(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_10000BF98();
  v1[9] = swift_task_alloc();
  v9 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[10] = v9;
  sub_100002F44(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = sub_10000BF98();
  v1[13] = swift_task_alloc();
  v13 = type metadata accessor for ModelXPCRequest.CancelRequest();
  v1[14] = v13;
  sub_100002F44(v13);
  v1[15] = v14;
  v16 = *(v15 + 64);
  v1[16] = sub_10000BF98();
  v1[17] = swift_task_alloc();
  v17 = sub_100003000();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_10016573C()
{
  v1 = v0[4];
  v2 = AuditToken.processIdentifier.getter();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[5];
  v8 = type metadata accessor for Logger();
  sub_10000641C(v8, qword_1001BE400);
  v9 = *(v6 + 16);
  v10 = sub_100005E98();
  v9(v10);
  v11 = sub_100019220();
  v9(v11);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[14];
  v18 = v0[15];
  if (v14)
  {
    v73 = v0[16];
    v19 = v0[13];
    v82 = v2;
    v21 = v0[10];
    v20 = v0[11];
    v71 = v0[9];
    v77 = v0[6];
    v79 = v0[7];
    v22 = swift_slowAlloc();
    v83 = sub_1000080A4();
    *v22 = 136315650;
    v81 = v12;
    ModelXPCRequest.CancelRequest.id.getter();
    sub_100005070();
    v69 = v23;
    sub_1000082D4(v24, v25, v26);
    dispatch thunk of CustomStringConvertible.description.getter();
    HIDWORD(v75) = v13;
    (*(v20 + 8))(v19, v21);
    v27 = *(v18 + 8);
    v27(v15, v17);
    v28 = sub_100007660();
    sub_100004A3C(v28, v29, v30);

    sub_10000BF28();
    v32 = v71;
    v31 = v73;
    ModelXPCRequest.CancelRequest.sessionID.getter();
    sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    v33 = v77;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_10001B268(v34, v35, v36, v37, v38, v39, v40, v41, v67, v69, v71, v73, v75, v77, v79);
    v42(v32, v33);
    v27(v31, v17);
    v43 = sub_100001F70();
    v46 = sub_100004A3C(v43, v44, v45);

    *(v22 + 14) = v46;
    *(v22 + 22) = 1024;
    *(v22 + 24) = v82;
    sub_100005FCC();
    _os_log_impl(v47, v48, v49, v50, v51, 0x1Cu);
    sub_1000190E0(v52, v53, &type metadata for Any + 8, v54, v55, v56, v57, v58, v68, v70, v72, v74, v76, v78, v80, v81, v83);
    swift_arrayDestroy();
    sub_100003A4C();
    sub_100004B78();
  }

  else
  {

    v59 = *(v18 + 8);
    v59(v16, v17);
    v59(v15, v17);
  }

  v60 = v0[12];
  v61 = v0[8];
  v62 = v0[5];
  sub_100002EC0(v0[3]);
  v0[18] = *(v63 + 128);

  ModelXPCRequest.CancelRequest.id.getter();
  ModelXPCRequest.CancelRequest.sessionID.getter();
  v64 = swift_task_alloc();
  v0[19] = v64;
  *v64 = v0;
  v64[1] = sub_100165AC8;
  v65 = v0[8];
  sub_1000031B8(v0[12]);

  return sub_10009D40C();
}

uint64_t sub_100165AC8()
{
  sub_10000636C();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v5 = v4[19];
  v6 = v4[18];
  v7 = v4[12];
  v8 = v4[11];
  v9 = v4[10];
  v10 = v4[8];
  v11 = v4[7];
  v12 = v4[6];
  v13 = *v1;
  sub_100002B9C();
  *v14 = v13;
  *(v15 + 160) = v0;

  (*(v11 + 8))(v10, v12);
  v16 = *(v8 + 8);
  v17 = sub_100003754();
  v18(v17);
  sub_1000059F8();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_100165C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v11 = v10[16];
  v12 = v10[17];
  v14 = v10[12];
  v13 = v10[13];
  v16 = v10[8];
  v15 = v10[9];
  v17 = v10[2];
  ModelXPCRequest.CancelRequest.Response.init()();
  sub_100065020(&qword_1001BE5F8, &qword_100175500);
  swift_storeEnumTagMultiPayload();

  sub_100002F54();
  sub_100006378();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_100165D5C()
{
  sub_10000639C();
  sub_100003884();
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[8];
  v5 = v0[9];

  sub_100001F00();
  v7 = v0[20];
  sub_100003D20();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100165DF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1001655C0();
}

uint64_t sub_100165EA0(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE490, &type metadata accessor for ModelXPCRequest.CancelRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100165EF8(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE498, &type metadata accessor for ModelXPCRequest.FetchModelInstance);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100165F50()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[5] = v4;
  sub_100002F44(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_100002C58();
  v8 = type metadata accessor for ModelInstance();
  v1[8] = v8;
  sub_100002F44(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = sub_10000BF98();
  v1[11] = swift_task_alloc();
  v12 = sub_100003000();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10016605C()
{
  sub_100001ED0();
  v1 = v0[7];
  v2 = v0[4];
  sub_100002EC0(v0[3]);
  v0[12] = *(v3 + 128);

  ModelXPCRequest.FetchModelInstance.sessionID.getter();
  swift_task_alloc();
  sub_100004B34();
  v0[13] = v4;
  *v4 = v5;
  v4[1] = sub_10016611C;
  v6 = v0[11];
  v7 = v0[7];

  return sub_10009E130();
}

uint64_t sub_10016611C()
{
  sub_10000639C();
  sub_100003884();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[7];
  v8 = v4[6];
  v9 = v4[5];
  v10 = *v1;
  sub_100002B9C();
  *v11 = v10;
  *(v12 + 112) = v0;

  v13 = *(v8 + 8);
  v14 = sub_100003754();
  v15(v14);

  sub_1000059F8();
  sub_100003D20();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100166288()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[2];
  v6 = *(v3 + 16);
  v7 = sub_1000062B0();
  v8(v7);
  ModelXPCRequest.FetchModelInstance.Response.init(modelInstance:)();
  v9 = *(v3 + 8);
  v10 = sub_100007660();
  v11(v10);
  sub_100065020(&qword_1001BE5F0, &qword_1001754F0);
  swift_storeEnumTagMultiPayload();

  sub_100002F54();
  sub_100007BB8();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_100166368()
{
  sub_100002BAC();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  sub_100001F00();
  v5 = v0[14];

  return v4();
}

uint64_t sub_1001663D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return sub_100165F50();
}

uint64_t sub_100166480(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4A0, &type metadata accessor for ModelXPCRequest.FetchModelInstance);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001664D8(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4A8, &type metadata accessor for ModelXPCRequest.AcquireRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100166530()
{
  sub_100002BAC();
  sub_100057890(v1, v2, v3);
  v4 = type metadata accessor for Assertion.DaemonRep();
  v0[6] = v4;
  sub_100002F44(v4);
  v0[7] = v5;
  v7 = *(v6 + 64);
  v0[8] = sub_100002C58();
  v8 = type metadata accessor for AuditToken();
  v0[9] = v8;
  sub_100002F44(v8);
  v0[10] = v9;
  v11 = *(v10 + 64);
  v0[11] = sub_100002C58();
  v12 = sub_100003000();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10016661C()
{
  sub_1000094B0();
  sub_10000636C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v1 = sub_100011210();
  sub_10000641C(v1, qword_1001BE400);
  v2 = sub_100008440();
  v3(v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = sub_1000038BC(v5);
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  if (v6)
  {
    v10 = sub_100003788();
    *v10 = 67109120;
    v11 = AuditToken.processIdentifier.getter();
    v12 = sub_100007B68();
    v13(v12);
    v10[1] = v11;
    sub_100018ACC(&_mh_execute_header, v14, v15, "XPC Handling acquireAssertion for pid %d");
    sub_100004B78();
  }

  else
  {
    v16 = sub_100007B68();
    v17(v16);
  }

  v18 = v0[8];
  v19 = v0[5];
  v20 = v0[3];

  sub_10000A4C4((v20 + 16), *(v20 + 40));
  v0[12] = *(v21 + 16);

  ModelXPCRequest.AcquireRequest.assertion.getter();
  v22 = swift_task_alloc();
  v23 = sub_1000457C0(v22);
  *v23 = v24;
  v23[1] = sub_1001667A4;
  v25 = v0[4];
  sub_1000031B8(v0[8]);
  sub_100006378();

  return sub_1000FE87C();
}

uint64_t sub_1001667A4()
{
  sub_10000639C();
  sub_100003884();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[8];
  v8 = v4[7];
  v9 = v4[6];
  v10 = *v1;
  sub_100002B9C();
  *v11 = v10;
  *(v12 + 112) = v0;

  v13 = *(v8 + 8);
  v14 = sub_100003754();
  v15(v14);

  sub_1000059F8();
  sub_100003D20();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100166910()
{
  sub_100001ED0();
  sub_1000118EC();
  ModelXPCRequest.AcquireRequest.Response.init()();
  sub_100065020(&qword_1001BE5E8, &qword_1001754E0);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();

  return v0();
}

uint64_t sub_1001669A0()
{
  sub_100002BAC();
  v1 = v0[11];
  v2 = v0[8];

  sub_100001F00();
  v4 = v0[14];

  return v3();
}

uint64_t sub_100166A08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100166530();
}

uint64_t sub_100166AB8(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4B0, &type metadata accessor for ModelXPCRequest.AcquireRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100166B10(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4B8, &type metadata accessor for ModelXPCRequest.ReleaseRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100166B68()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v1[6] = v5;
  sub_100002F44(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_100002C58();
  v9 = type metadata accessor for AuditToken();
  v1[9] = v9;
  sub_100002F44(v9);
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = sub_100002C58();
  v13 = sub_100003000();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100166C68()
{
  sub_1000094B0();
  sub_10000636C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v1 = sub_100011210();
  sub_10000641C(v1, qword_1001BE400);
  v2 = sub_100008440();
  v3(v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = sub_1000038BC(v5);
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  if (v6)
  {
    v10 = sub_100003788();
    *v10 = 67109120;
    v11 = AuditToken.processIdentifier.getter();
    v12 = sub_100007B68();
    v13(v12);
    v10[1] = v11;
    sub_100018ACC(&_mh_execute_header, v14, v15, "XPC Handling releaseAssertion for pid %d");
    sub_100004B78();
  }

  else
  {
    v16 = sub_100007B68();
    v17(v16);
  }

  v18 = v0[8];
  v19 = v0[5];
  v20 = v0[3];

  sub_10000A4C4((v20 + 16), *(v20 + 40));
  v0[12] = *(v21 + 16);

  ModelXPCRequest.ReleaseRequest.id.getter();
  sub_100006378();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_100166DBC()
{
  sub_100002BAC();
  v1 = *(*(v0 + 96) + 152);
  v2 = swift_task_alloc();
  v3 = sub_1000457C0(v2);
  *v3 = v4;
  v3[1] = sub_100166E4C;
  sub_1000031B8(*(v0 + 64));

  return sub_100073748();
}

uint64_t sub_100166E4C()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[13];
  v3 = v1[12];
  v4 = v1[8];
  v5 = v1[7];
  v6 = v1[6];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v5 + 8);
  v10 = sub_1000060A4();
  v11(v10);

  v12 = sub_100003000();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100166FA4()
{
  sub_100001ED0();
  sub_1000118EC();
  ModelXPCRequest.ReleaseRequest.Response.init()();
  sub_100065020(&qword_1001BE5E0, &qword_1001754D0);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();

  return v0();
}

uint64_t sub_100167034()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100166B68();
}

uint64_t sub_1001670E4(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4C0, &type metadata accessor for ModelXPCRequest.ReleaseRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016713C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4C8, &type metadata accessor for ModelXPCRequest.FetchAssertionsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167194()
{
  sub_100002BAC();
  sub_1000089F0(v1, v2, v3);
  v4 = type metadata accessor for AuditToken();
  v0[5] = v4;
  sub_100002F44(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = sub_100002C58();
  v8 = sub_100003000();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100167238()
{
  sub_1000094B0();
  sub_10000636C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_10000641C(v5, qword_1001BE400);
  v6 = sub_100008440();
  v7(v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = sub_1000038BC(v9);
  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];
  if (v10)
  {
    v14 = sub_100003788();
    *v14 = 67109120;
    v15 = AuditToken.processIdentifier.getter();
    v16 = sub_100007B68();
    v17(v16);
    v14[1] = v15;
    sub_100018ACC(&_mh_execute_header, v18, v19, "XPC Handling fetchAssertions for pid %d");
    sub_100004B78();
  }

  else
  {
    v20 = sub_100007B68();
    v21(v20);
  }

  v22 = v0[3];

  sub_10000A4C4((v22 + 16), *(v22 + 40));
  v0[8] = *(v23 + 16);

  v24 = swift_task_alloc();
  v0[9] = v24;
  *v24 = v0;
  sub_100004B28(v24);
  sub_100006378();

  return sub_1000FEF08(v25);
}

uint64_t sub_1001673B4()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 72);
  v5 = *(v3 + 64);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 80) = v8;

  v10 = sub_100003000();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1001674B4()
{
  sub_100002BAC();
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[2];
  ModelXPCRequest.FetchAssertionsRequest.Response.init(assertions:)();
  sub_100065020(&qword_1001BE5D8, &qword_1001754C0);
  sub_10000CD70();

  sub_100002F54();

  return v4();
}

uint64_t sub_100167538()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100167194();
}

uint64_t sub_1001675E8(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4D0, &type metadata accessor for ModelXPCRequest.FetchAssertionsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167640(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4D8, &type metadata accessor for ModelXPCRequest.RestoreAssertionsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167698()
{
  sub_100002BAC();
  sub_100057890(v1, v2, v3);
  v4 = type metadata accessor for AuditToken();
  v0[6] = v4;
  sub_100002F44(v4);
  v0[7] = v5;
  v7 = *(v6 + 64);
  v0[8] = sub_100002C58();
  v8 = sub_100003000();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100167738()
{
  sub_1000094B0();
  sub_10000636C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_10000641C(v5, qword_1001BE400);
  v6 = sub_100008440();
  v7(v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = sub_1000038BC(v9);
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[6];
  if (v10)
  {
    v14 = sub_100003788();
    *v14 = 67109120;
    v15 = AuditToken.processIdentifier.getter();
    v16 = sub_100007B68();
    v17(v16);
    v14[1] = v15;
    sub_100018ACC(&_mh_execute_header, v18, v19, "XPC Handling restoreAssertions for pid %d");
    sub_100004B78();
  }

  else
  {
    v20 = sub_100007B68();
    v21(v20);
  }

  v22 = v0[5];
  v23 = v0[3];

  sub_10000A4C4((v23 + 16), *(v23 + 40));
  v0[9] = *(v24 + 16);

  v0[10] = ModelXPCRequest.RestoreAssertionsRequest.assertions.getter();
  sub_100006378();

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_100167898()
{
  sub_100002BAC();
  v1 = *(v0[9] + 152);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10016792C;
  v3 = sub_1000031B8(v0[10]);

  return sub_1000762D4(v3);
}

uint64_t sub_10016792C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[9];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  v7 = sub_100003000();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100167A48()
{
  sub_100002BAC();
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  ModelXPCRequest.RestoreAssertionsRequest.Response.init()();
  sub_100065020(&qword_1001BE5D0, &qword_1001754B0);
  sub_10000CD70();

  sub_100002F54();

  return v3();
}

uint64_t sub_100167AC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100167698();
}

uint64_t sub_100167B78(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4E0, &type metadata accessor for ModelXPCRequest.RestoreAssertionsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167BD0(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4E8, &type metadata accessor for ModelXPCRequest.FetchAssetsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167C28(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1000051C8();
}

uint64_t sub_100167C3C()
{
  sub_100002BAC();
  sub_100002EC0(*(v0 + 24));
  *(v0 + 32) = *(v1 + 112);
  sub_10000ECC0();
  v2 = sub_10000209C();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100167CA4()
{
  sub_100001ED0();
  v1 = *(v0 + 32);
  sub_1000C0D94();

  v2 = sub_1000062B0();
  *(v0 + 40) = sub_10015DB20(v2, v3);

  v4 = sub_100003000();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100167D34()
{
  sub_100002BAC();
  v1 = *(v0 + 40);
  sub_10000CBCC();
  ModelXPCRequest.FetchAssetsRequest.Response.init(assetInfo:)();
  sub_100065020(&qword_1001BE5C8, &qword_1001754A0);
  sub_10000AAB4();
  sub_100002F54();

  return v2();
}

uint64_t sub_100167DA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006FA64;

  return sub_100167C28(a1, a2);
}

uint64_t sub_100167E48(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4F0, &type metadata accessor for ModelXPCRequest.FetchAssetsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167EA0(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4F8, &type metadata accessor for ModelXPCRequest.FetchDynamicAssetsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167EF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1000051C8();
}

uint64_t sub_100167F0C()
{
  sub_100002BAC();
  sub_100002EC0(*(v0 + 24));
  *(v0 + 32) = *(v1 + 112);
  sub_10000ECC0();
  v2 = sub_10000209C();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100167F74()
{
  sub_100001ED0();
  v1 = *(v0 + 32);
  sub_1000C0DC0();

  v2 = sub_1000062B0();
  *(v0 + 40) = sub_10015DB20(v2, v3);

  v4 = sub_100003000();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100168004()
{
  sub_100002BAC();
  v1 = *(v0 + 40);
  sub_10000CBCC();
  ModelXPCRequest.FetchDynamicAssetsRequest.Response.init(assetInfo:)();
  sub_100065020(&qword_1001BE5C0, &qword_100175490);
  sub_10000AAB4();
  sub_100002F54();

  return v2();
}

uint64_t sub_100168078(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006FA64;

  return sub_100167EF8(a1, a2);
}

uint64_t sub_100168118(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE500, &type metadata accessor for ModelXPCRequest.FetchDynamicAssetsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100168170(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE508, &type metadata accessor for ModelXPCRequest.FetchPolicyRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001681C8()
{
  sub_100001ED0();
  v3 = v2;
  v1[2] = v4;
  v5 = sub_100065020(&qword_1001B9420, &qword_100170118);
  sub_100002F04(v5);
  v7 = *(v6 + 64) + 15;
  v1[3] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[4] = v8;
  swift_task_alloc();
  sub_100004B34();
  v1[5] = v9;
  *v9 = v10;
  v9[1] = sub_1001682B0;

  return sub_10016845C(v8, v0, v3);
}

uint64_t sub_1001682B0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = sub_100003000();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100168394()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_100001F70();
  sub_10010C4AC(v4, v5, &qword_1001B9420, &qword_100170118);
  ModelXPCRequest.FetchPolicyRequest.Response.init(policy:)();
  v6 = sub_100005E98();
  sub_10000ECD8(v6, v7, &qword_100170118);
  sub_100065020(&qword_1001BE5B8, &qword_100175480);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();
  sub_100003D20();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10016845C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_100168480, 0, 0);
}

uint64_t sub_100168480()
{
  sub_100002BAC();
  v1 = v0[6];
  Policy = ModelXPCRequest.FetchPolicyRequest.policyName.getter();
  v0[8] = v3;
  v4 = v0[7];
  if (v3)
  {
    v0[9] = Policy;
    sub_100002EC0(v4);
    v0[10] = *(v5 + 120);
  }

  else
  {
    sub_100002EC0(v4);
    v0[12] = *(v6 + 120);
  }

  v7 = sub_10000209C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100168520()
{
  sub_100002BAC();
  *(v0 + 88) = *(*(v0 + 80) + 296);

  v1 = sub_100003000();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10016858C()
{
  sub_100002BAC();
  sub_100072B60(v0[9], v0[8], v0[11], v0[5]);

  sub_100001F00();

  return v1();
}

uint64_t sub_100168604()
{
  sub_100001ED0();
  v1 = v0[12];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__currentPolicy;
  swift_beginAccess();
  v4 = type metadata accessor for Policy();
  v0[13] = v4;
  sub_100002C00(v4);
  (*(v5 + 16))(v2, v1 + v3);

  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001686C8()
{
  sub_100002BAC();
  sub_100009BFC(*(v0 + 40), 0, 1, *(v0 + 104));
  sub_100001F00();

  return v1();
}

uint64_t sub_10016872C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1001681C8();
}

uint64_t sub_1001687D4(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE510, &type metadata accessor for ModelXPCRequest.FetchPolicyRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016882C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE518, &type metadata accessor for ModelXPCRequest.FetchDisabledUseCasesRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100168884(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1000051C8();
}

uint64_t sub_100168898()
{
  sub_100002BAC();
  sub_100002EC0(*(v0 + 24));
  *(v0 + 32) = *(v1 + 256);

  v2 = swift_task_alloc();
  v3 = sub_10000E8D0(v2);
  *v3 = v4;
  sub_100004B28(v3);

  return sub_1000A3B44();
}

uint64_t sub_100168934()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 48) = v8;

  v10 = sub_100003000();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100168A34()
{
  sub_100002BAC();
  v1 = *(v0 + 48);
  sub_10000CBCC();
  ModelXPCRequest.FetchDisabledUseCasesRequest.Response.init(disabledUseCases:)();
  sub_100065020(&qword_1001BE5B0, &qword_100175468);
  sub_10000AAB4();
  sub_100002F54();

  return v2();
}

uint64_t sub_100168AA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006FA64;

  return sub_100168884(a1, a2);
}

uint64_t sub_100168B48(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE520, &type metadata accessor for ModelXPCRequest.FetchDisabledUseCasesRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100168BA0(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE528, &type metadata accessor for ModelXPCRequest.FetchAvailabilityRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100168BF8()
{
  sub_100002BAC();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for RemoteDeviceSet();
  v0[4] = v3;
  sub_100002F44(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = sub_10000BF98();
  v0[7] = swift_task_alloc();
  v7 = sub_100003000();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100168CA8()
{
  sub_100002BAC();
  sub_100002EC0(v0[3]);
  v0[8] = *(v1 + 136);

  swift_task_alloc();
  sub_100004B34();
  v0[9] = v2;
  *v2 = v3;
  v2[1] = sub_100168D50;
  v4 = v0[7];

  return sub_1000F35C4();
}

uint64_t sub_100168D50()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  sub_1000059F8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100168E50()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = *(v3 + 16);
  v6 = sub_1000062B0();
  v7(v6);
  ModelXPCRequest.FetchAvailabilityRequest.Response.init(remoteAvailability:)();
  v8 = *(v3 + 8);
  v9 = sub_100007660();
  v10(v9);
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[2];
  sub_100065020(&qword_1001BE5A8, &qword_100175458);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();
  sub_100003D20();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_100168F28()
{
  sub_100001ED0();
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[2];

  ModelManagerError.init(wrapping:)();
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[2];
  sub_100065020(&qword_1001BE5A8, &qword_100175458);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();

  return v7();
}

uint64_t sub_100168FD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100168BF8();
}

uint64_t sub_100169074(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE530, &type metadata accessor for ModelXPCRequest.FetchAvailabilityRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001690CC()
{
  sub_100002BAC();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = type metadata accessor for InferenceProviderDescriptor();
  v1[10] = v4;
  sub_100002F44(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = sub_100002C58();
  v8 = sub_100003000();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100169174()
{
  sub_1000033DC();
  v1 = v0[9];
  v2 = type metadata accessor for URL();
  v0[13] = v2;
  sub_100002BDC(v2);
  v4 = v3;
  v0[14] = v3;
  v6 = *(v5 + 64);
  v7 = sub_100002C58();
  v0[15] = v7;
  v8 = sub_100065020(&qword_1001B9C50, &qword_1001706A8);
  sub_100002F04(v8);
  v10 = *(v9 + 64);
  v11 = sub_100002C58();
  ModelXPCRequest.LoadAssetBundle.assetBundleIdentifier.getter();
  URL.init(string:)();

  if (sub_10000C6C0(v11, 1, v2) == 1)
  {
    v12 = v0[9];
    sub_10000ECD8(v11, &qword_1001B9C50, &qword_1001706A8);

    v13 = type metadata accessor for ModelManagerError();
    sub_100005E30();
    sub_100003814(v14, v15);
    sub_10000A418();
    v17 = v16;
    *v16 = ModelXPCRequest.LoadAssetBundle.assetBundleIdentifier.getter();
    v17[1] = v18;
    sub_100006098(v13);
    (*(v19 + 104))(v17);
    swift_willThrow();
    v30 = v0[12];

    sub_100001F00();

    return v31();
  }

  else
  {
    v20 = v0[8];
    v21 = *(v4 + 32);
    v22 = sub_1000060A4();
    v23(v22);

    sub_10000A4C4((v20 + 16), *(v20 + 40));
    v25 = *sub_100003370((v24 + 144), *(v24 + 168));
    sub_100003E80(v7);
    v0[16] = v26;
    v27 = v26;
    v28 = v0[12];

    type metadata accessor for DaemonSession(0);
    sub_10000A4C4((v20 + 16), *(v20 + 40));
    sub_100007130(v29 + 264, (v0 + 2));
    sub_10001ED00(v27, v0 + 2);
    v33 = v0[9];
    sub_100003324(v0 + 2);
    sub_10000A4C4((v20 + 16), *(v20 + 40));
    v0[17] = *(v34 + 112);

    ModelXPCRequest.LoadAssetBundle.dynamicMode.getter();
    v35 = swift_task_alloc();
    v0[18] = v35;
    *v35 = v0;
    v35[1] = sub_1001694EC;
    v36 = v0[12];

    return sub_1000C2050();
  }
}

uint64_t sub_1001694EC()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = v2[18];
  *v4 = *v1;
  *(v3 + 152) = v0;

  v6 = v2[17];
  v7 = v2[16];
  if (v0)
  {
  }

  else
  {
  }

  sub_1000059F8();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100169640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v12 = v10[14];
  v11 = v10[15];
  v14 = v10[12];
  v13 = v10[13];
  v15 = v10[10];
  v16 = v10[11];
  v17 = v10[7];
  ModelXPCRequest.LoadAssetBundle.Response.init()();
  v18 = *(v16 + 8);
  v19 = sub_100003754();
  v20(v19);
  v21 = *(v12 + 8);
  v22 = sub_100001F70();
  v23(v22);
  sub_100065020(&qword_1001BE5A0, &qword_100175448);
  swift_storeEnumTagMultiPayload();

  sub_100002F54();
  sub_100006378();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_10016970C()
{
  sub_100001ED0();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v4 = *(v2 + 8);
  v5 = sub_100001F70();
  v6(v5);

  v7 = v0[19];
  v8 = v0[12];

  sub_100001F00();

  return v9();
}

uint64_t sub_1001697A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1001690CC();
}

uint64_t sub_100169850(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE538, &type metadata accessor for ModelXPCRequest.LoadAssetBundle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001698A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1000051C8();
}

uint64_t sub_1001698C0()
{
  sub_100001ED0();
  v1 = v0[5];
  sub_100002EC0(v0[3]);
  v0[6] = *(v2 + 128);

  ModelXPCRequest.HoldAssetBundle.assetBundleIdentifier.getter();
  v0[7] = v3;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100169988;
  v5 = v0[4];
  sub_100007660();

  return sub_10009E314();
}

uint64_t sub_100169988()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[9] = v0;

  if (!v0)
  {
    v10 = v3[6];
    v9 = v3[7];
  }

  sub_1000059F8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100169A90()
{
  sub_100002BAC();
  sub_10000CBCC();
  ModelXPCRequest.HoldAssetBundle.Response.init()();
  sub_100065020(&qword_1001BE598, &qword_100175438);
  sub_10000AAB4();
  sub_100002F54();

  return v0();
}

uint64_t sub_100169B00()
{
  sub_100002BAC();
  v2 = v0[6];
  v1 = v0[7];

  sub_100001F00();
  v4 = v0[9];

  return v3();
}

uint64_t sub_100169B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10006FA64;

  return sub_1001698A8(a1, a2, a3);
}

uint64_t sub_100169C14(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE540, &type metadata accessor for ModelXPCRequest.HoldAssetBundle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100169C6C()
{
  sub_100002BAC();
  sub_1000089F0(v1, v2, v3);
  v4 = type metadata accessor for AuditToken();
  v0[5] = v4;
  sub_100002F44(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = sub_100002C58();
  v8 = sub_100003000();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100169D10()
{
  sub_1000094B0();
  sub_10000636C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_10000641C(v5, qword_1001BE400);
  v6 = sub_100008440();
  v7(v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = sub_1000038BC(v9);
  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];
  if (v10)
  {
    v14 = sub_100003788();
    *v14 = 67109120;
    v15 = AuditToken.processIdentifier.getter();
    v16 = sub_100007B68();
    v17(v16);
    v14[1] = v15;
    sub_100018ACC(&_mh_execute_header, v18, v19, "XPC Handling forceAssetVersionSwitch for pid %d");
    sub_100004B78();
  }

  else
  {
    v20 = sub_100007B68();
    v21(v20);
  }

  v22 = v0[3];

  sub_10000A4C4((v22 + 16), *(v22 + 40));
  v0[8] = *(v23 + 24);

  v24 = swift_task_alloc();
  v0[9] = v24;
  *v24 = v0;
  sub_100004B28(v24);
  sub_100006378();

  return sub_1000E0174();
}

uint64_t sub_100169E8C()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 72);
  v5 = *(v3 + 64);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 80) = v8;

  v10 = sub_100003000();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100169F8C()
{
  sub_100001ED0();
  v1 = *(v0 + 16);
  if (*(v0 + 80) == 1)
  {
    v2 = *(v0 + 16);
    ModelXPCRequest.ForceAssetVersionSwitch.Response.init()();
  }

  else
  {
    v3 = type metadata accessor for ModelManagerError();
    sub_100005E30();
    sub_100003814(v4, v5);
    sub_10000A418();
    sub_100006098(v3);
    (*(v6 + 104))();
    ModelManagerError.init(wrapping:)();
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 16);
  sub_100065020(&qword_1001BE590, &qword_100175428);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();

  return v9();
}

uint64_t sub_10016A0D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100169C6C();
}

uint64_t sub_10016A180(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE548, &type metadata accessor for ModelXPCRequest.ForceAssetVersionSwitch);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016A1D8()
{
  sub_100002BAC();
  v0[18] = v1;
  v0[19] = v2;
  v3 = type metadata accessor for StateDump();
  v0[20] = v3;
  sub_100002F44(v3);
  v0[21] = v4;
  v6 = *(v5 + 64);
  v0[22] = sub_10000BF98();
  v0[23] = swift_task_alloc();
  v7 = sub_100003000();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10016A288()
{
  sub_100002BAC();
  sub_100002EC0(*(v0 + 152));
  v2 = *(v1 + 232);
  v3 = *(v1 + 216);
  v4 = *(v1 + 200);
  *(v0 + 16) = *(v1 + 184);
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 64) = v2;
  sub_10006AA10(v0 + 16, v0 + 80);
  swift_task_alloc();
  sub_100004B34();
  *(v0 + 192) = v5;
  *v5 = v6;
  v5[1] = sub_10016A344;
  v7 = *(v0 + 184);

  return sub_100103F98();
}

uint64_t sub_10016A344()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 200) = v0;

  if (!v0)
  {
    sub_10016B19C(v3 + 16);
  }

  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10016A444()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  v5 = *(v3 + 16);
  v6 = sub_1000062B0();
  v7(v6);
  ModelXPCRequest.DumpState.Response.init(stateDump:)();
  v8 = *(v3 + 8);
  v9 = sub_100007660();
  v10(v9);
  sub_100065020(&qword_1001BE588, &qword_100175418);
  sub_100018E50();

  sub_100002F54();
  sub_100003D20();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_10016A50C()
{
  sub_100002BAC();
  v1 = v0[22];
  v2 = v0[23];
  sub_10016B19C((v0 + 2));

  sub_100001F00();
  v4 = v0[25];

  return v3();
}

uint64_t sub_10016A598()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_10016A1D8();
}

uint64_t sub_10016A638(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE550, &type metadata accessor for ModelXPCRequest.DumpState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016A690(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return sub_1000051C8();
}

uint64_t sub_10016A6A8()
{
  sub_100001ED0();
  v1 = v0[9];
  sub_100002EC0(v0[8]);
  sub_100007130(v2 + 144, (v0 + 2));
  v3 = sub_100003370(v0 + 2, v0[5]);
  v4 = ModelXPCRequest.SetAssetsHaveUpdated.identifiers.getter();
  v0[10] = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  sub_100004B28(v6);

  return sub_100113110(v4);
}

uint64_t sub_10016A76C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10016A86C()
{
  sub_100002BAC();
  v1 = *(v0 + 56);
  sub_100003324((v0 + 16));
  ModelXPCRequest.SetAssetsHaveUpdated.Response.init()();
  sub_100065020(&qword_1001BE580, &qword_100175408);
  sub_10000AAB4();
  sub_100002F54();

  return v2();
}

uint64_t sub_10016A8E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006FA64;

  return sub_10016A690(a1, a2);
}

uint64_t sub_10016A990(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE558, &type metadata accessor for ModelXPCRequest.SetAssetsHaveUpdated);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016A9E8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return sub_1000051C8();
}

uint64_t sub_10016AA00()
{
  sub_100002BAC();
  v1 = *(v0 + 72);
  sub_100002EC0(*(v0 + 64));
  sub_100007130(v2 + 144, v0 + 16);
  v3 = sub_100003370((v0 + 16), *(v0 + 40));
  *(v0 + 80) = v3;
  *(v0 + 88) = ModelXPCRequest.IgnoreAssetUpdates.ignore.getter() & 1;
  v4 = *v3;

  return _swift_task_switch(sub_10016AA90, v4, 0);
}

uint64_t sub_10016AA90()
{
  sub_100002BAC();
  v1 = **(v0 + 80);
  sub_100113988(*(v0 + 88));
  v2 = sub_100003000();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10016AAF4()
{
  sub_100002BAC();
  v1 = *(v0 + 56);
  sub_100003324((v0 + 16));
  ModelXPCRequest.IgnoreAssetUpdates.Response.init()();
  sub_100065020(&qword_1001BE578, &qword_1001753F8);
  sub_10000AAB4();
  sub_100002F54();

  return v2();
}

uint64_t sub_10016AB70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006FA64;

  return sub_10016A9E8(a1, a2);
}

uint64_t sub_10016AC18(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE560, &type metadata accessor for ModelXPCRequest.IgnoreAssetUpdates);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016AC70()
{
  sub_100002BAC();
  sub_100057890(v1, v2, v3);
  v4 = type metadata accessor for XPCEndpoint();
  sub_100002F04(v4);
  v6 = *(v5 + 64);
  v0[6] = sub_100002C58();
  v7 = type metadata accessor for AuditToken();
  v0[7] = v7;
  sub_100002F44(v7);
  v0[8] = v8;
  v10 = *(v9 + 64);
  v0[9] = sub_10000BF98();
  v0[10] = swift_task_alloc();
  v11 = sub_100003000();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10016AD3C()
{
  sub_100005F88();
  sub_1000033DC();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for Logger();
  sub_10000641C(v5, qword_1001BE400);
  v6 = *(v3 + 16);
  v7 = sub_10000CC04();
  v6(v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = sub_1000038BC(v9);
  v11 = *(v0 + 80);
  v12 = *(v0 + 56);
  v13 = *(v0 + 64);
  if (v10)
  {
    v14 = sub_100003788();
    *v14 = 67109120;
    v15 = AuditToken.processIdentifier.getter();
    v16 = *(v13 + 8);
    v17 = sub_100005E98();
    v18(v17);
    v14[1] = v15;
    sub_100018ACC(&_mh_execute_header, v19, v20, "Adding inference monitor client from pid %d");
    sub_100004B78();
  }

  else
  {
    v21 = *(v13 + 8);
    v22 = sub_100005E98();
    v23(v22);
  }

  v24 = *(v0 + 72);
  v26 = *(v0 + 48);
  v25 = *(v0 + 56);
  v28 = *(v0 + 32);
  v27 = *(v0 + 40);

  ModelXPCRequest.StartMonitoringInferences.endpoint.getter();
  (v6)(v24, v28, v25);
  v29 = sub_100013BBC();
  v31 = sub_10010C6AC(v29, v30);
  v32 = *(v0 + 24);
  *(v0 + 112) = v33;
  *(v0 + 88) = v34;
  *(v0 + 96) = v31;
  sub_100002EC0(v32);
  *(v0 + 104) = *(*(v35 + 248) + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inferenceMonitorManager);
  sub_10000ECC0();
  sub_10000209C();
  sub_1000062BC();

  return _swift_task_switch(v36, v37, v38);
}

uint64_t sub_10016AF60()
{
  sub_100002BAC();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  sub_100125A28();

  v5 = sub_100003000();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10016AFCC()
{
  sub_100001ED0();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[2];

  ModelXPCRequest.StartMonitoringInferences.Response.init()();
  v4 = v0[9];
  v5 = v0[10];
  sub_10001369C();
  sub_100065020(&qword_1001BE570, &qword_1001753E8);
  sub_100018E50();

  sub_100002F54();

  return v6();
}

uint64_t sub_10016B094()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_10016AC70();
}

uint64_t sub_10016B144(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE568, &type metadata accessor for ModelXPCRequest.StartMonitoringInferences);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016B1F0()
{
  sub_10001881C();
  sub_100003884();
  sub_100016704();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10006F558;
  sub_100007B24();
  sub_100007BB8();

  return sub_100163A30(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10016B2D8()
{
  sub_10001881C();
  sub_100003884();
  v1 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  sub_100002F44(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  sub_10000D00C();
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + v8);
  v10 = swift_task_alloc();
  v11 = sub_100004B00(v10);
  *v11 = v12;
  v11[1] = sub_10006FA64;
  sub_100007B24();
  sub_100007BB8();

  return sub_100164CA0(v13, v14, v15, v16, v17);
}

uint64_t sub_10016B3C8()
{
  sub_100001ED0();
  sub_100002C20();
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006F558;
  v4 = sub_100007B24();

  return sub_100164904(v4, v5, v6, v0);
}

uint64_t sub_10016B45C()
{
  sub_10001881C();
  sub_100003884();
  sub_100016704();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_100007B24();
  sub_100007BB8();

  return sub_100161140(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10016B544(uint64_t (*a1)(void))
{
  v3 = a1(0);
  sub_100002BDC(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  sub_10016BC34();
  (*(v5 + 8))(v1 + ((v6 + 32) & ~v6), v3);
  v9 = *(v1 + v2);

  return _swift_deallocObject(v1, v2 + 8, v6 | 7);
}

uint64_t sub_10016B608()
{
  sub_10001881C();
  sub_100003884();
  v1 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  sub_100002F44(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  sub_10000D00C();
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + v8);
  v10 = swift_task_alloc();
  v11 = sub_100004B00(v10);
  *v11 = v12;
  v11[1] = sub_10006FA64;
  sub_100007B24();
  sub_100007BB8();

  return sub_100162750(v13, v14, v15, v16, v17);
}

uint64_t sub_10016B6F8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_100002C00(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5);
  v7 = *(v1 + v6 + 8);

  return _swift_deallocObject(v1, v6 + 16, v4 | 7);
}

uint64_t sub_10016B798()
{
  sub_10001881C();
  sub_100003884();
  v2 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  sub_100002F44(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_10000D00C();
  v8 = (v0 + v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  sub_10002B0CC(v11);
  sub_100007BB8();

  return sub_1001620DC(v12, v13, v14, v15, v16);
}

uint64_t sub_10016B884()
{
  sub_100001ED0();
  sub_100002C20();
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006FA64;
  v4 = sub_100007B24();

  return sub_10015F87C(v4, v5, v6, v0);
}

unint64_t sub_10016B918()
{
  result = qword_1001BE628;
  if (!qword_1001BE628)
  {
    sub_10006A614(&qword_1001BE620, &qword_1001755A0);
    sub_100003814(&qword_1001BE630, &type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response);
    sub_100003814(&qword_1001BE638, &type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response);
    sub_100003814(&qword_1001B9A00, &type metadata accessor for ModelManagerError);
    sub_100003814(&qword_1001B9A08, &type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE628);
  }

  return result;
}

uint64_t sub_10016BA70()
{
  sub_100001ED0();
  sub_100002C20();
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006FA64;
  v4 = sub_100007B24();

  return sub_10015F87C(v4, v5, v6, v0);
}

uint64_t sub_10016BB04()
{
  sub_1000094B0();
  sub_10000636C();
  v1 = type metadata accessor for ModelXPCRequest.PrewarmSession();
  sub_100002F44(v1);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  v9 = sub_100004B00(v8);
  *v9 = v10;
  v9[1] = sub_10006FA64;
  sub_100007B24();
  sub_100006378();

  return sub_10015FA38(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10016BC34()
{
  v2 = *(v0 + 16);

  return swift_unknownObjectRelease();
}

Swift::UInt_optional __swiftcall _UnsafeBitSet.Iterator.next()()
{
  v0 = _UnsafeBitSet.Iterator.next()();
  result.value = v0;
  result.is_nil = v1;
  return result;
}

uint64_t UUIDIdentifier.uuidString.getter()
{
  return UUIDIdentifier.uuidString.getter();
}

{
  return UUIDIdentifier.uuidString.getter();
}

uint64_t UUIDIdentifier.init()()
{
  return UUIDIdentifier.init()();
}

{
  return UUIDIdentifier.init()();
}

uint64_t type metadata accessor for UUIDIdentifier()
{
  return type metadata accessor for UUIDIdentifier();
}

{
  return type metadata accessor for UUIDIdentifier();
}

uint64_t type metadata accessor for EventReporter()
{
  return type metadata accessor for EventReporter();
}

{
  return type metadata accessor for EventReporter();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}