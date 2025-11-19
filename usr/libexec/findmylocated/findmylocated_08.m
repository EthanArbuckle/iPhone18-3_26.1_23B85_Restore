uint64_t sub_1000CD178(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  aBlock[4] = sub_1000CA3CC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058E868;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000CFAE4(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_1000CD450(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1000CD888(a2, a3) & 0xFF00;
  swift_beginAccess();
  v9 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_100452F28(v8 & 0xFFFE | a4 & 1, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v12;
  return swift_endAccess();
}

uint64_t sub_1000CD500(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  aBlock[4] = sub_1000C9B3C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058E818;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000CFAE4(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_1000CD7D8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v8 = sub_1000CD888(a2, a3);
  swift_beginAccess();
  v9 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_100452F28(v8 | (a4 << 8), a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v12;
  return swift_endAccess();
}

uint64_t sub_1000CD888(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    swift_beginAccess();
    v14 = *(v3 + 24);
    if (*(v14 + 16))
    {
      v15 = *(v3 + 24);

      v16 = sub_1000110D8(a1, a2);
      if (v17)
      {
        v18 = (*(v14 + 56) + 2 * v16);
        v19 = *v18;
        v20 = v18[1];

        return v19 | (v20 << 8);
      }
    }

    swift_beginAccess();
    v21 = *(v3 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_100452F28(1026, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 24) = v24;
    swift_endAccess();
    v20 = 4;
    v19 = 2;
    return v19 | (v20 << 8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CDA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v21 = &_swiftEmptyDictionarySingleton;

  sub_1000CEF8C(a1, &v21, a2);

  if (a3)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 40);
      do
      {
        v13 = *(v10 - 1);
        v12 = *v10;
        swift_beginAccess();
        v14 = *(a2 + 24);

        v15 = sub_1000110D8(v13, v12);
        if (v16)
        {
          v17 = v15;
          v18 = *(a2 + 24);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = *(a2 + 24);
          *(a2 + 24) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_100203AB0();
          }

          v11 = *(*(v20 + 48) + 16 * v17 + 8);

          sub_1002002A0(v17, v20);
          *(a2 + 24) = v20;
        }

        swift_endAccess();

        v10 += 2;
        --v9;
      }

      while (v9);
    }
  }

  *a4 = v21;
  return result;
}

void sub_1000CDBA4(uint64_t **a1, Swift::Int a2, unint64_t a3)
{
  v6 = a1[6];
  v7 = a1[7];
  swift_beginAccess();
  if (!a1[5][2] || (v8 = a1[5], , sub_1000110D8(v6, v7), v10 = v9, , (v10 & 1) == 0))
  {
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    v11 = a1[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = a1[5];
    a1[5] = 0x8000000000000000;
    sub_100453058(v6, v7, &_swiftEmptySetSingleton, v6, v7, isUniquelyReferenced_nonNull_native);

    a1[5] = v21[0];
    swift_endAccess();
  }

  v13 = sub_1000CC228();
  v14 = sub_1000CDE3C(v21, v6, v7);
  if (*(v15 + 8))
  {

    sub_1002345CC(&v23, a2, a3);
  }

  (v14)(v21, 0);
  (v13)(v22, 0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005DFB98);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_10000D01C(a2, a3, v22);
    _os_log_impl(&_mh_execute_header, v17, v18, "analytics - logGenericPublisherError %s ", v19, 0xCu);
    sub_100004984(v20);
  }
}

void (*sub_1000CDE3C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1000CE674(v6, a2, a3);
  return sub_1000CDEC4;
}

void sub_1000CDEC4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void (*sub_1000CDF10(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  Priority = type metadata accessor for LocatePriority();
  v3[4] = Priority;
  v5 = *(Priority - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_1000CE780(v3, v8);
  return sub_1000CE028;
}

void sub_1000CE028(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_1000CE0A0(uint64_t a1, uint64_t a2, unint64_t a3, Swift::Int a4, unint64_t a5)
{
  swift_beginAccess();
  if (!*(*(a1 + 40) + 16) || (v10 = *(a1 + 40), , sub_1000110D8(a2, a3), v12 = v11, , (v12 & 1) == 0))
  {
    swift_beginAccess();

    v13 = *(a1 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *(a1 + 40);
    *(a1 + 40) = 0x8000000000000000;
    sub_100453058(a2, a3, &_swiftEmptySetSingleton, a2, a3, isUniquelyReferenced_nonNull_native);
    *(a1 + 40) = v27[0];
    swift_endAccess();
  }

  v15 = sub_1000CC228();
  v16 = sub_1000CDE3C(v27, a2, a3);
  if (*(v17 + 8))
  {

    sub_1002345CC(&v29, a4, a5);
  }

  (v16)(v27, 0);
  (v15)(v28, 0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000A6F0(v18, qword_1005DFB98);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v21 = 136315650;
    *(v21 + 4) = sub_10000D01C(a2, a3, v28);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_10000D01C(a4, a5, v28);
    *(v21 + 22) = 2080;
    v22 = *(a1 + 40);

    v23 = Dictionary.description.getter();
    v25 = v24;

    v26 = sub_10000D01C(v23, v25, v28);

    *(v21 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "analytics: logPublisherError %s %s %s", v21, 0x20u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000CE3E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 40);

  v8 = sub_1000CAB64(v7);

  if (a2)
  {
    v10 = *(a1 + 40);
    *(a1 + 40) = _swiftEmptyDictionarySingleton;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000CE47C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SecureLocationsShallowIdStats(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *storeEnumTagSinglePayload for SecureLocationsShallowIdStats(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

void (*sub_1000CE674(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1000CEEA8(v8);
  v8[9] = sub_1000CE954(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1000CE720;
}

void sub_1000CE720(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1000CE780(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  Priority = type metadata accessor for LocatePriority();
  v6[8] = Priority;
  v8 = *(Priority - 8);
  v9 = v8;
  v6[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, Priority);
  v6[11] = sub_1000CEF58(v6);
  v6[12] = sub_1000CEBB0(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1000CE8BC;
}

void sub_1000CE8BC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1000CE954(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[4] = a3;
  v10[5] = v4;
  v10[3] = a2;
  v12 = *v4;
  v13 = sub_1000110D8(a2, a3);
  *(v11 + 56) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100203C18();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10022E6E0(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1000110D8(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[6] = v13;
  if (v19)
  {
    v24 = *(*v5 + 56) + 24 * v13;
    v25 = *v24;
    v26 = *(v24 + 8);
  }

  else
  {
    v25 = 0;
    v26 = 0uLL;
  }

  *v11 = v25;
  *(v11 + 1) = v26;
  return sub_1000CEAC0;
}

void sub_1000CEAC0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 56);
  if (v3)
  {
    v6 = v1[6];
    v7 = *v1[5];
    if (v5)
    {
      v8 = (v7[7] + 24 * v6);
      *v8 = v2;
      v8[1] = v3;
      v8[2] = v4;
    }

    else
    {
      sub_100233B28(v6, v1[3], v1[4], v2, v3, v4, v7);
    }
  }

  else if ((*a1)[7])
  {
    v9 = v1[6];
    v10 = *v1[5];
    sub_10007C2B8(*(v10 + 48) + 16 * v9);
    sub_100200450(v9, v10);
  }

  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  sub_1000CEED0(v2, v3);
  sub_1000CEF14(v11, v12);

  free(v1);
}

void (*sub_1000CEBB0(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 24) = a2;
  *(v8 + 32) = v3;
  Priority = type metadata accessor for LocatePriority();
  *(v9 + 40) = Priority;
  v11 = *(Priority - 8);
  *(v9 + 48) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 56) = v12;
  v13 = *v3;
  v14 = sub_1001FDF60(a2);
  *(v9 + 72) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10020508C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_100231460(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_1001FDF60(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 64) = v14;
  if (v20)
  {
    v25 = *(*v4 + 56) + 24 * v14;
    v26 = *v25;
    v27 = *(v25 + 8);
  }

  else
  {
    v26 = 0;
    v27 = 0uLL;
  }

  *v9 = v26;
  *(v9 + 8) = v27;
  return sub_1000CED74;
}

void sub_1000CED74(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 72);
  if (v2)
  {
    v6 = *v1[4];
    v7 = v1[8];
    if ((*a1)[9])
    {
      v8 = (v6[7] + 24 * v7);
      *v8 = v2;
      v8[1] = v3;
      v8[2] = v4;
    }

    else
    {
      v11 = v1[7];
      (*(v1[6] + 16))(v11, v1[3], v1[5]);
      sub_100233FBC(v7, v11, v2, v3, v4, v6);
    }
  }

  else if ((*a1)[9])
  {
    v9 = v1[8];
    v10 = *v1[4];
    (*(v1[6] + 8))(*(v10 + 48) + *(v1[6] + 72) * v9, v1[5]);
    sub_100201390(v9, v10);
  }

  v12 = v1[7];
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  sub_1000CFA60(v2);
  sub_1000CFAA4(v13);
  free(v12);

  free(v1);
}

uint64_t (*sub_1000CEEA8(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1000D00B4;
}

uint64_t sub_1000CEED0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000CEF14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t (*sub_1000CEF58(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1000CEF80;
}

uint64_t sub_1000CEF8C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  result = swift_beginAccess();
  if (!v6)
  {
    return result;
  }

  v8 = (a1 + 40);
  v44 = a2;
  v45 = a3;
  while (1)
  {
    v11 = *(v8 - 1);
    v10 = *v8;
    v12 = *(a3 + 24);
    v13 = *(v12 + 16);

    if (!v13)
    {
      goto LABEL_13;
    }

    v14 = sub_1000110D8(v11, v10);
    if ((v15 & 1) == 0)
    {

LABEL_13:
      v30 = *a2;
      v31 = sub_1000110D8(v11, v10);
      if (v32)
      {
        v33 = v31;
        v34 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *a2;
        v47 = *a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100203AB0();
          v36 = v47;
        }

        v9 = *(*(v36 + 48) + 16 * v33 + 8);

        sub_1002002A0(v33, v36);
        *a2 = v36;
      }

      goto LABEL_5;
    }

    v16 = (*(v12 + 56) + 2 * v14);
    v17 = *v16;
    v18 = v16[1];

    v19 = *a2;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *a2;
    v46 = *a2;
    v22 = sub_1000110D8(v11, v10);
    v24 = *(v21 + 16);
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (*(v21 + 24) < v27)
    {
      sub_10022E428(v27, v20);
      v22 = sub_1000110D8(v11, v10);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_26;
      }

LABEL_17:
      v37 = v46;
      if ((v28 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (v20)
    {
      goto LABEL_17;
    }

    v39 = v22;
    sub_100203AB0();
    v22 = v39;
    v37 = v46;
    if ((v28 & 1) == 0)
    {
LABEL_20:
      v37[(v22 >> 6) + 8] |= 1 << v22;
      v40 = (v37[6] + 16 * v22);
      *v40 = v11;
      v40[1] = v10;
      v41 = (v37[7] + 2 * v22);
      *v41 = v17;
      v41[1] = v18;
      v42 = v37[2];
      v26 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v26)
      {
        goto LABEL_25;
      }

      v37[2] = v43;

      goto LABEL_22;
    }

LABEL_18:
    v38 = (v37[7] + 2 * v22);
    *v38 = v17;
    v38[1] = v18;
LABEL_22:
    a2 = v44;
    *v44 = v37;

    a3 = v45;
LABEL_5:
    v8 += 2;
    if (!--v6)
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

uint64_t sub_1000CF1FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEE0073746E756F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73726F727265 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E0020 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000CF36C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AA308, &unk_1004C3C10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1000CFDEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v30 = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v29 = 1;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v16;
  v24 = v15;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  v28 = 2;
  sub_10001CCC4(&qword_1005A9E80);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v25;
  v27 = 3;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  result = sub_100004984(a1);
  *a2 = v14;
  *(a2 + 8) = v13 & 1;
  *(a2 + 16) = v24;
  *(a2 + 24) = v26 & 1;
  *(a2 + 32) = v23;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20 & 1;
  return result;
}

unint64_t sub_1000CF5FC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058ACD0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000CF648(uint64_t *a1)
{
  v3 = sub_10004B564(&qword_1005AA2B8, &qword_1004C3808);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-v6];
  v8 = a1[3];
  sub_100011AEC(a1, v8);
  sub_1000CF808();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
  }

  else
  {
    v12[15] = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12[13] = 1;
    sub_1000CF85C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v11 = v12[14];
    sub_100004984(a1);
    return v9 | (v11 << 8);
  }

  return v8;
}

unint64_t sub_1000CF808()
{
  result = qword_1005AA2C0;
  if (!qword_1005AA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2C0);
  }

  return result;
}

unint64_t sub_1000CF85C()
{
  result = qword_1005AA2C8;
  if (!qword_1005AA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2C8);
  }

  return result;
}

unint64_t sub_1000CF8B0()
{
  result = qword_1005AA2D8;
  if (!qword_1005AA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2D8);
  }

  return result;
}

uint64_t sub_1000CF904(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CF974(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CF9E4(uint64_t a1)
{
  v2 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CFA60(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000CFAA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000CFAE4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1000CFB54(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000CFB70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CFBB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000CFC3C()
{
  result = qword_1005AA2E0;
  if (!qword_1005AA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2E0);
  }

  return result;
}

unint64_t sub_1000CFC94()
{
  result = qword_1005AA2E8;
  if (!qword_1005AA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2E8);
  }

  return result;
}

unint64_t sub_1000CFCEC()
{
  result = qword_1005AA2F0;
  if (!qword_1005AA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2F0);
  }

  return result;
}

unint64_t sub_1000CFD44()
{
  result = qword_1005AA2F8;
  if (!qword_1005AA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2F8);
  }

  return result;
}

unint64_t sub_1000CFD98()
{
  result = qword_1005AA300;
  if (!qword_1005AA300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA300);
  }

  return result;
}

unint64_t sub_1000CFDEC()
{
  result = qword_1005AA310;
  if (!qword_1005AA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA310);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureLocationsSubscriptionRequestState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SecureLocationsSubscriptionRequestState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000CFF94()
{
  result = qword_1005AA320;
  if (!qword_1005AA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA320);
  }

  return result;
}

unint64_t sub_1000CFFEC()
{
  result = qword_1005AA328;
  if (!qword_1005AA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA328);
  }

  return result;
}

unint64_t sub_1000D0044()
{
  result = qword_1005AA330;
  if (!qword_1005AA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA330);
  }

  return result;
}

unint64_t sub_1000D00D4(unsigned __int8 a1, unsigned __int8 a2)
{
  sub_10004B564(&qword_1005AA338, &qword_1004C3D38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2310;
  *(inited + 32) = 0x6575737369;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  *(inited + 56) = 1868983913;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:a2];
  v5 = sub_100208E74(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005AA340, &qword_1004C3D40);
  swift_arrayDestroy();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFB98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    v11 = Dictionary.description.getter();
    v13 = sub_10000D01C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "analytics: logged setup issue %s to CA", v9, 0xCu);
    sub_100004984(v10);
  }

  return v5;
}

unint64_t sub_1000D032C(char a1, unsigned __int8 a2)
{
  sub_10004B564(&qword_1005AA338, &qword_1004C3D38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2310;
  *(inited + 32) = 1701605234;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1 & 1];
  *(inited + 56) = 0x6F6974617265706FLL;
  *(inited + 64) = 0xE90000000000006ELL;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:a2];
  v5 = sub_100208E74(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005AA340, &qword_1004C3D40);
  swift_arrayDestroy();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFB98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    v11 = Dictionary.description.getter();
    v13 = sub_10000D01C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "analytics: logged live session failure %s to CA", v9, 0xCu);
    sub_100004984(v10);
  }

  return v5;
}

unint64_t sub_1000D05A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  sub_10004B564(&qword_1005AA338, &qword_1004C3D38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 0x746E756F43636F6CLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v11 = sub_100208E74(inited);
  swift_setDeallocating();
  sub_1000D1BE8(inited + 32);
  if ((a3 & 1) == 0)
  {
    v12 = [objc_allocWithZone(NSNumber) initWithDouble:*&a2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v11;
    sub_100452450(v12, 0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  if ((a5 & 1) == 0)
  {
    v14 = [objc_allocWithZone(NSNumber) initWithDouble:*&a4];
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v11;
    sub_100452450(v14, 0xD000000000000017, 0x80000001004E0020, v15);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005DFB98);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);

    v21 = Dictionary.description.getter();
    v23 = v22;

    v24 = sub_10000D01C(v21, v23, &v26);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "analytics: logged live session stats %s to CA", v19, 0xCu);
    sub_100004984(v20);
  }

  return v11;
}

unint64_t sub_1000D08A4(unsigned __int8 a1, uint64_t a2, const char *a3)
{
  sub_10004B564(&qword_1005AA338, &qword_1004C3D38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = a2;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v7 = sub_100208E74(inited);
  swift_setDeallocating();
  sub_1000D1BE8(inited + 32);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFB98);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    v13 = Dictionary.description.getter();
    v15 = sub_10000D01C(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 0xCu);
    sub_100004984(v12);
  }

  return v7;
}

id sub_1000D0AAC(uint64_t a1, double a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11)
{
  v16 = 0xD000000000000010;
  sub_10004B564(&qword_1005AA338, &qword_1004C3D38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2310;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001004E00B0;
  v18 = __OFADD__(a1, 1);
  v19 = a1 + 1;
  if (v18)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_19;
  }

  v20 = inited;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:v19];
  strcpy((v20 + 56), "responseTime");
  *(v20 + 69) = 0;
  *(v20 + 70) = -5120;
  *(v20 + 72) = [objc_allocWithZone(NSNumber) initWithDouble:a2];
  v21 = sub_100208E74(v20);
  swift_setDeallocating();
  sub_10004B564(&qword_1005AA340, &qword_1004C3D40);
  swift_arrayDestroy();
  if (a4)
  {
    isa = 0;
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  sub_100145624(isa, 0xD000000000000010, 0x80000001004E00D0);
  if (a6)
  {
    v23 = 0;
  }

  else
  {
    v23 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  sub_100145624(v23, 0x6E6F697461636F6CLL, 0xEF79636E65636552);
  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  sub_100145624(v24, 0x6E6F697461636F6CLL, 0xED0000746E756F43);
  if (a10)
  {
    v25 = 0;
  }

  else
  {
    v25 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  sub_100145624(v25, 0x7963617275636361, 0xEB000000006E6942);
  if (a11)
  {
    swift_errorRetain();
    v26 = _convertErrorToNSError(_:)();
    result = [v26 domain];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v28 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100452450(v28, 0x6D6F44726F727265, 0xEB000000006E6961, isUniquelyReferenced_nonNull_native);
    v30 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v26, "code")}];
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_100452450(v30, 0x646F43726F727265, 0xE900000000000065, v31);
    sub_1000545A4(0, &qword_1005A8C80, NSNumber_ptr);
    v32 = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v21;
    sub_100452450(v32, 0x73736563637573, 0xE700000000000000, v33);
  }

  else
  {
    sub_1000545A4(0, &qword_1005A8C80, NSNumber_ptr);
    v34 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v21;
    sub_100452450(v34, 0x73736563637573, 0xE700000000000000, v35);
  }

  v16 = v40;
  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_23;
  }

LABEL_19:
  v36 = type metadata accessor for Logger();
  sub_10000A6F0(v36, qword_1005DFB98);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "analytics: logged location reliability to CA", v39, 2u);
  }

  return v16;
}

uint64_t sub_1000D1014()
{
  v1 = type metadata accessor for AnalyticsEvent();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 16) = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100207808(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(*(v6 - 8) + 56);
  v7(&v4[v5], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD00000000000003FLL;
  *(v4 + 16) = 0x80000001004E00F0;

  return _swift_task_switch(sub_1000D115C, v4, 0);
}

uint64_t sub_1000D115C()
{
  sub_1001360B8(*(v0 + 16), *(v0 + 40) & 1);
  type metadata accessor for AnalyticsPublisher();
  *(v0 + 24) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000D1238;
  v2 = *(v0 + 16);

  return sub_100050D70(v2);
}

uint64_t sub_1000D1238()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1000D1350, 0, 0);
}

uint64_t sub_1000D1350()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t *sub_1000D13B0(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1)
  {
    v19 = &_swiftEmptyDictionarySingleton;
    v3 = 1;
    v4 = 1;
    v5 = 0x737574617473;
    v6 = 0xE600000000000000;
  }

  else
  {
    sub_1004531CC(0, 1, 0x737574617473, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v7 = [objc_allocWithZone(NSNumber) initWithInteger:0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = &_swiftEmptyDictionarySingleton;
    v5 = 0x6572756C696166;
    v3 = v7;
    v4 = 0;
    v6 = 0xE700000000000000;
  }

  sub_1004531CC(v3, v4, v5, v6, isUniquelyReferenced_nonNull_native);
  v8 = v19;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFB98);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;

    v14 = Dictionary.description.getter();
    v16 = v15;

    v17 = sub_10000D01C(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "analytics: logged liteLocationPublish stats %s to CA", v12, 0xCu);
    sub_100004984(v13);
  }

  return v8;
}

uint64_t sub_1000D15E8(uint64_t a1, char a2)
{
  *(v2 + 48) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1000D160C, 0, 0);
}

uint64_t sub_1000D160C()
{
  v1 = type metadata accessor for AnalyticsEvent();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 24) = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100207808(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(*(v6 - 8) + 56);
  v7(&v4[v5], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD000000000000044;
  *(v4 + 16) = 0x80000001004E0040;

  return _swift_task_switch(sub_1000D1754, v4, 0);
}

uint64_t sub_1000D1754()
{
  sub_100137A00(*(v0 + 24), *(v0 + 16), *(v0 + 48) & 1);
  type metadata accessor for AnalyticsPublisher();
  *(v0 + 32) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000D1830;
  v2 = *(v0 + 24);

  return sub_100050D70(v2);
}

uint64_t sub_1000D1830()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1000D1948, 0, 0);
}

uint64_t sub_1000D1948()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void *sub_1000D19A8(uint64_t a1, char a2)
{
  sub_1000545A4(0, &qword_1005A8C80, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)((a2 & 1) == 0).super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = &_swiftEmptyDictionarySingleton;
  sub_1004531CC(isa, 0, 0x6574617473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  if ((a2 & 1) == 0)
  {
    v5 = Int._bridgeToObjectiveC()().super.super.isa;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v17 = &_swiftEmptyDictionarySingleton;
    sub_1004531CC(v5, 0, 0xD000000000000016, 0x80000001004E0090, v6);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005DFB98);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;

    v12 = Dictionary.description.getter();
    v14 = v13;

    v15 = sub_10000D01C(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "analytics: logged logLiteLocationStateAvailability %s", v10, 0xCu);
    sub_100004984(v11);
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_1000D1BE8(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AA340, &qword_1004C3D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D1C50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1000D1C98(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000D1CFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D1D44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *sub_1000D1DB0@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1000D1E84(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AA360, &unk_1004C3EC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1000D27F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19[0]) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v19[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v19[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v19[0] = v3[6];
    v21 = 3;
    sub_10004B564(&qword_1005A9EC0, &unk_1004C33F8);
    sub_1000D2844();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + 9);
    v19[0] = *(v3 + 7);
    v19[1] = v17;
    v19[2] = *(v3 + 11);
    v20 = *(v3 + 104);
    v21 = 4;
    sub_1000D2924();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v19[0] = v3[14];
    v21 = 5;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_1000D2774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000D2140()
{
  v1 = *v0;
  v2 = 0x6E656B6F54737061;
  v3 = 0x53776F6C6C616873;
  v4 = 0x746174536576696CLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6449746E65696C63;
  if (v1 != 1)
  {
    v5 = 0x41747865746E6F63;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1000D2210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D2D50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D2238(uint64_t a1)
{
  v2 = sub_1000D27F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D2274(uint64_t a1)
{
  v2 = sub_1000D27F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D22C8(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AA348, &unk_1004C3EB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1000D26CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v27 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v26 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v25 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + 48);
    v23 = 3;
    sub_1000D2720();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v3[7];
    v18 = v3[8];
    v22 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3[9];
    v20[15] = 5;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_1000D2774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000D253C()
{
  v1 = *v0;
  v2 = 0x6E656B6F54737061;
  v3 = 0x7453654D6F747561;
  v4 = 0x526873696C627570;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6449746E65696C63;
  if (v1 != 1)
  {
    v5 = 0x41747865746E6F63;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1000D2614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D2F68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D263C(uint64_t a1)
{
  v2 = sub_1000D26CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D2678(uint64_t a1)
{
  v2 = sub_1000D26CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000D26CC()
{
  result = qword_1005AA350;
  if (!qword_1005AA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA350);
  }

  return result;
}

unint64_t sub_1000D2720()
{
  result = qword_1005AA358;
  if (!qword_1005AA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA358);
  }

  return result;
}

unint64_t sub_1000D2774()
{
  result = qword_1005A9EA8;
  if (!qword_1005A9EA8)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9EA8);
  }

  return result;
}

unint64_t sub_1000D27F0()
{
  result = qword_1005AA368;
  if (!qword_1005AA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA368);
  }

  return result;
}

unint64_t sub_1000D2844()
{
  result = qword_1005AA370;
  if (!qword_1005AA370)
  {
    sub_10004B610(&qword_1005A9EC0, &unk_1004C33F8);
    sub_1000D28D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA370);
  }

  return result;
}

unint64_t sub_1000D28D0()
{
  result = qword_1005AA378;
  if (!qword_1005AA378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA378);
  }

  return result;
}

unint64_t sub_1000D2924()
{
  result = qword_1005AA380;
  if (!qword_1005AA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA380);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureLocationsAutoMeStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SecureLocationsAutoMeStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000D2AEC()
{
  result = qword_1005AA388;
  if (!qword_1005AA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA388);
  }

  return result;
}

unint64_t sub_1000D2B44()
{
  result = qword_1005AA390;
  if (!qword_1005AA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA390);
  }

  return result;
}

unint64_t sub_1000D2B9C()
{
  result = qword_1005AA398;
  if (!qword_1005AA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA398);
  }

  return result;
}

unint64_t sub_1000D2BF4()
{
  result = qword_1005AA3A0;
  if (!qword_1005AA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA3A0);
  }

  return result;
}

unint64_t sub_1000D2C4C()
{
  result = qword_1005AA3A8;
  if (!qword_1005AA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA3A8);
  }

  return result;
}

unint64_t sub_1000D2CA4()
{
  result = qword_1005AA3B0;
  if (!qword_1005AA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA3B0);
  }

  return result;
}

unint64_t sub_1000D2CFC()
{
  result = qword_1005AA3B8;
  if (!qword_1005AA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA3B8);
  }

  return result;
}

uint64_t sub_1000D2D50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F54737061 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x41747865746E6F63 && a2 == 0xEA00000000007070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53776F6C6C616873 && a2 == 0xEC00000073746174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746174536576696CLL && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E0130 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000D2F68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F54737061 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x41747865746E6F63 && a2 == 0xEA00000000007070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7453654D6F747561 && a2 == 0xEC00000073757461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x526873696C627570 && a2 == 0xED00006E6F736165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E0130 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1000D3180()
{
  result = qword_1005AA3C0;
  if (!qword_1005AA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA3C0);
  }

  return result;
}

uint64_t sub_1000D31F0()
{
  v1 = type metadata accessor for SecureLocationsConfig();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7FA0 != -1)
  {
    swift_once();
  }

  v5 = qword_1005DFC70;
  v6 = qword_1005A7FA8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for URL();
  v8 = sub_10000A6F0(v7, qword_1005DFC78);
  (*(*(v7 - 8) + 16))(&v4[*(v1 + 76)], v8, v7);
  if (qword_1005A7FB0 != -1)
  {
    swift_once();
  }

  v9 = qword_1005DFC90;
  *v4 = 0;
  v4[8] = 1;
  *(v4 + 1) = xmmword_1004C2E50;
  *(v4 + 4) = 5;
  *(v4 + 40) = xmmword_1004C2E60;
  v4[56] = 0;
  *(v4 + 8) = v5;
  *(v4 + 9) = 0x405E000000000000;
  v4[80] = 1;
  *(v4 + 11) = 0x409C200000000000;
  *(v4 + 12) = 5;
  *(v4 + 104) = xmmword_1004C2E70;
  *&v4[*(v1 + 80)] = v9;
  v10 = (v0 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v10);
  v11 = *(sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0) + 28);
  sub_10002172C(v10 + v11, type metadata accessor for SecureLocationsConfig);
  sub_1000214CC(v4, v10 + v11, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v10);
  v12 = *(v0 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo__secureLocationConfigStream);
  AsyncStreamProvider.yield(value:transaction:)();
  return sub_10002172C(v4, type metadata accessor for SecureLocationsConfig);
}

uint64_t sub_1000D34A0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10004F154(v3, a2);
  sub_10000A6F0(v3, a2);
  return Logger.init(subsystem:category:)();
}

void *sub_1000D3518()
{
  v0 = type metadata accessor for SecureLocationsInfo();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1000D3964();
  qword_1005DFBC8 = result;
  return result;
}

uint64_t sub_1000D3558()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005AA3C8);
  v1 = sub_10000A6F0(v0, qword_1005AA3C8);
  if (qword_1005A7EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFBB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000D3620()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB98);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Not overriding AutoMeCapable flag", v6, 2u);
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005DFB98);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      v11 = [v0 standardUserDefaults];
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 BOOLForKey:v12];

      *(v10 + 4) = v13;

      _os_log_impl(&_mh_execute_header, v8, v9, "AutoMeCapable flag is %{BOOL}d", v10, 8u);
    }

    else
    {
    }

    v14 = [v0 standardUserDefaults];
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v16 = String._bridgeToObjectiveC()();
    [v14 setValue:isa forKey:v16];

    sub_1000DA4A0();
  }
}

void *sub_1000D3964()
{
  v1 = v0;
  v46 = type metadata accessor for SecureLocationsConfig();
  v2 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v44[1] = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  LOBYTE(v48) = 0;
  v14 = sub_10004B564(&qword_1005AA6A8, &qword_1004C4690);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v47 = v14;
  swift_allocObject();
  *(v0 + 32) = CurrentValueSubject.init(_:)();
  v17 = sub_10004B564(&qword_1005AA6B0, &qword_1004C42F0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v0 + 48) = PassthroughSubject.init()();
  v20 = *(v17 + 48);
  v21 = *(v17 + 52);
  swift_allocObject();
  *(v0 + 64) = PassthroughSubject.init()();
  v22 = *(v17 + 48);
  v23 = *(v17 + 52);
  swift_allocObject();
  *(v0 + 80) = PassthroughSubject.init()();
  v24 = *(v17 + 48);
  v25 = *(v17 + 52);
  swift_allocObject();
  *(v0 + 96) = PassthroughSubject.init()();
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v0 + 112) = v26;
  *(v0 + 120) = 0;
  v44[0] = sub_10004B518();
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_1000DD460(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 128) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 136) = &_swiftEmptyDictionarySingleton;
  v27 = OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex;
  if (qword_1005A7FA0 != -1)
  {
    swift_once();
  }

  v28 = qword_1005DFC70;
  v29 = qword_1005A7FA8;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for URL();
  v31 = sub_10000A6F0(v30, qword_1005DFC78);
  v32 = v46;
  (*(*(v30 - 8) + 16))(&v4[*(v46 + 76)], v31, v30);
  if (qword_1005A7FB0 != -1)
  {
    swift_once();
  }

  v33 = qword_1005DFC90;
  *v4 = 0;
  v4[8] = 1;
  *(v4 + 1) = xmmword_1004C2E50;
  *(v4 + 4) = 5;
  *(v4 + 40) = xmmword_1004C2E60;
  v4[56] = 0;
  *(v4 + 8) = v28;
  *(v4 + 9) = 0x405E000000000000;
  v4[80] = 1;
  *(v4 + 11) = 0x409C200000000000;
  *(v4 + 12) = 5;
  *(v4 + 104) = xmmword_1004C2E70;
  *&v4[*(v32 + 80)] = v33;
  *(v1 + v27) = 0;

  v34 = *(sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0) + 28);
  v35 = sub_10004B564(&qword_1005AA6B8, &qword_1004C42F8);
  bzero(v1 + v27 + v34, *(*(v35 - 8) + 64));
  sub_1000DD3F8(v4, v1 + v27 + v34, type metadata accessor for SecureLocationsConfig);
  v36 = OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo__secureLocationConfigStream;
  v37 = sub_10004B564(&qword_1005AA6C0, &qword_1004C4300);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  *(v1 + v36) = AsyncStreamProvider.init()();
  v40 = v1[4];
  swift_unownedRetainStrong();
  sub_10004B564(&qword_1005AA6C8, &qword_1004C4308);
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  swift_unownedRetainStrong();
  v48 = v40;

  swift_unownedRetain();
  swift_unownedRetain();
  sub_10001DF0C(&qword_1005AA6D0, &qword_1005AA6A8, &qword_1004C4690);
  v42 = Publisher.eraseToAnyPublisher()();
  swift_unownedRelease();

  *(v41 + 24) = v42;

  v1[5] = v41;
  v48 = v1[6];
  sub_10001DF0C(&qword_1005AA6D8, &qword_1005AA6B0, &qword_1004C42F0);
  v1[7] = Publisher.eraseToAnyPublisher()();
  v48 = v1[8];
  v1[9] = Publisher.eraseToAnyPublisher()();
  v48 = v1[10];
  v1[11] = Publisher.eraseToAnyPublisher()();
  v48 = v1[12];
  v1[13] = Publisher.eraseToAnyPublisher()();
  sub_1000D972C();
  sub_1000D4154();
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();

  return v1;
}

uint64_t sub_1000D40C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1000D99D8();
}

uint64_t sub_1000D4154()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v30 - v5;
  result = static SystemInfo.underTest.getter();
  if ((result & 1) == 0)
  {
    v34 = v6;
    v8 = swift_allocObject();
    v35 = v8;
    swift_weakInit();
    v9 = swift_allocObject();
    v30[1] = v9;
    swift_weakInit();
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    swift_weakInit();
    sub_10004B564(&qword_1005AA730, &qword_1004C4388);
    inited = swift_initStackObject();
    v33 = v2;
    v13 = inited;
    *(inited + 16) = xmmword_1004C0BE0;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1000DD528;
    *(v14 + 24) = v8;
    v13[4] = 0xD000000000000027;
    v13[5] = 0x80000001004E04A0;
    v13[6] = sub_1000DD558;
    v13[7] = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000DD530;
    *(v15 + 24) = v9;
    v13[8] = 0xD000000000000028;
    v13[9] = 0x80000001004E04D0;
    v13[10] = sub_1000DD840;
    v13[11] = v15;
    v13[12] = 0xD000000000000021;
    v13[13] = 0x80000001004E0500;
    v13[14] = sub_1000D5464;
    v13[15] = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1000DD538;
    *(v16 + 24) = v10;
    v13[16] = 0xD00000000000002FLL;
    v13[17] = 0x80000001004E0530;
    v13[18] = sub_1000DD840;
    v13[19] = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1000DD540;
    *(v17 + 24) = v11;
    v13[20] = 0xD000000000000030;
    v13[21] = 0x80000001004E0560;
    v13[22] = sub_1000DD840;
    v13[23] = v17;
    v18 = swift_allocObject();
    v19 = v31;
    *(v18 + 16) = sub_1000DD548;
    *(v18 + 24) = v19;
    v13[24] = 0xD000000000000026;
    v13[25] = 0x80000001004E05A0;
    v13[26] = sub_1000DD840;
    v13[27] = v18;
    v20 = swift_allocObject();
    v21 = v32;
    *(v20 + 16) = sub_1000DD550;
    *(v20 + 24) = v21;
    v13[28] = 0xD000000000000027;
    v13[29] = 0x80000001004E05D0;
    v13[30] = sub_1000DD840;
    v13[31] = v20;

    v22 = sub_1002089E4(v13);
    swift_setDeallocating();
    sub_10004B564(&qword_1005AA738, &qword_1004C4390);
    swift_arrayDestroy();
    type metadata accessor for DarwinNotificationHelper();
    v23 = swift_allocObject();
    type metadata accessor for DarwinNotificationListener();
    swift_allocObject();
    *(v23 + 16) = sub_1001400CC(v22, 0);
    *(v23 + 24) = 0;
    v24 = v1[2];
    v1[2] = v23;

    v25 = type metadata accessor for TaskPriority();
    v26 = v34;
    (*(*(v25 - 8) + 56))(v34, 1, 1, v25);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v29 = v33;
    v28[4] = v27;
    v28[5] = v29;
    sub_1001D7F30(0, 0, v26, &unk_1004C43A0, v28);
  }

  return result;
}

void sub_1000D46F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFB98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received notification that autoMe is enabled", v5, 2u);
    }

    v6 = objc_opt_self();
    v7 = [v6 standardUserDefaults];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 BOOLForKey:v8];

    if (v9)
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "AutoMe is already enabled, ignoring notification", v12, 2u);
      }
    }

    else
    {
      v13 = [v6 standardUserDefaults];
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v15 = String._bridgeToObjectiveC()();
      [v13 setValue:isa forKey:v15];

      sub_1000DA4A0();
      v16 = *(v1 + 80);
      PassthroughSubject.send(_:)();
      sub_1000DA4A0();
    }
  }
}

void sub_1000D4990()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFB98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received notification that autoMe is no longer enabled", v5, 2u);
    }

    v6 = objc_opt_self();
    v7 = [v6 standardUserDefaults];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 BOOLForKey:v8];

    if (v9)
    {
      v10 = [v6 standardUserDefaults];
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v12 = String._bridgeToObjectiveC()();
      [v10 setValue:isa forKey:v12];

      sub_1000DA4A0();
      v13 = *(v1 + 80);
      PassthroughSubject.send(_:)();
      sub_1000DA4A0();
    }

    else
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "AutoMe is already not enabled, ignoring notification", v16, 2u);
      }
    }
  }
}

uint64_t sub_1000D4C24()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFB98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received owner proactive eligible notification", v5, 2u);
    }

    v6 = objc_opt_self();
    v7 = [v6 standardUserDefaults];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 BOOLForKey:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [v6 standardUserDefaults];
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v12 = String._bridgeToObjectiveC()();
      [v10 setValue:isa forKey:v12];

      v13 = *(v1 + 96);
      PassthroughSubject.send(_:)();
    }
  }

  return result;
}

uint64_t sub_1000D4E20()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFB98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received owner proactive not eligible notification", v5, 2u);
    }

    v6 = objc_opt_self();
    v7 = [v6 standardUserDefaults];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 BOOLForKey:v8];

    if (v9)
    {
      v10 = [v6 standardUserDefaults];
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v12 = String._bridgeToObjectiveC()();
      [v10 setValue:isa forKey:v12];

      v13 = *(v1 + 96);
      PassthroughSubject.send(_:)();
    }
  }

  return result;
}

void sub_1000D5018()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFB98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received autoMe capability capable notification", v5, 2u);
    }

    v6 = [objc_opt_self() standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 BOOLForKey:v7];

    if (v8)
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Already capable for autoMe, ignoring notification", v11, 2u);
      }
    }

    else
    {
      sub_1000D3620();
      v12 = *(v1 + 80);
      PassthroughSubject.send(_:)();
      sub_1000DA4A0();
    }
  }
}

void sub_1000D5240()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFB98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received autoMe capability disabled notification", v5, 2u);
    }

    v6 = [objc_opt_self() standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 BOOLForKey:v7];

    if (v8)
    {
      sub_1000D3620();
      v9 = *(v1 + 80);
      PassthroughSubject.send(_:)();
      sub_1000DA4A0();
    }

    else
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Already not capable for autoMe, ignoring notification", v12, 2u);
      }
    }
  }
}

uint64_t sub_1000D5488()
{
  v12 = v0;
  v1 = v0[170];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[171] = Strong;
  if (Strong)
  {
    if (qword_1005A7F00 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005AA3C8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0xD000000000000012, 0x80000001004E0600, &v11);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Monitoring FindMyLocate changes", v6, 0xCu);
      sub_100004984(v7);
    }

    swift_asyncLet_begin();
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 2, v8, sub_1000D56C0, v0 + 162);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000D574C()
{
  v1 = *(v0 + 1368);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000D57AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003788;

  return sub_1000D7528();
}

uint64_t sub_1000D583C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1000D58CC();
}

uint64_t sub_1000D58CC()
{
  v1[3] = v0;
  v2 = type metadata accessor for DataManager.State(0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005AA6F8, &unk_1004C4350) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005AA700, &unk_1004D2F70);
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005AA708, &unk_1004C4360);
  v1[13] = v9;
  v10 = *(v9 - 8);
  v1[14] = v10;
  v11 = *(v10 + 64) + 15;
  v1[15] = swift_task_alloc();
  v12 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  v1[16] = v12;
  v13 = *(v12 - 8);
  v1[17] = v13;
  v14 = *(v13 + 64) + 15;
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000D5B14, 0, 0);
}

uint64_t sub_1000D5B14()
{
  v10 = v0;
  if (qword_1005A7F00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 152) = sub_10000A6F0(v1, qword_1005AA3C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E0480, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_1000D5CC4;

  return daemon.getter();
}

uint64_t sub_1000D5CC4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v12 = *v1;
  *(v3 + 168) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 176) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000DD460(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000DD460(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1000D5EA0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000D5EA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  v4[23] = a1;
  v4[24] = v1;

  if (v1)
  {
    v7 = sub_1000D6FCC;
    v8 = 0;
  }

  else
  {
    v9 = v4[21];

    v7 = sub_1000D5FD8;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000D5FD8()
{
  v1 = v0[23];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[4];
  swift_allocObject();
  swift_weakInit();
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1000D60E0, 0, 0);
}

uint64_t sub_1000D60E0()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[12];
  AsyncStream.makeAsyncIterator()();
  v0[25] = v0[24];
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1000D619C;
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];

  return AsyncStream.Iterator.next(isolation:)(v7, 0, 0, v8);
}

uint64_t sub_1000D619C()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return _swift_task_switch(sub_1000D6298, 0, 0);
}

uint64_t sub_1000D6298()
{
  v77 = v0;
  v1 = *(v0 + 72);
  if ((*(*(v0 + 40) + 48))(v1, 1, *(v0 + 32)) == 1)
  {
    v2 = *(v0 + 184);
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 128);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);
    v9 = *(v0 + 144);
    v10 = *(v0 + 120);
    v11 = *(v0 + 96);
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 152);
  v20 = *(v0 + 56);
  v19 = *(v0 + 64);
  sub_1000DD3F8(v1, v19, type metadata accessor for DataManager.State);
  sub_1000214CC(v19, v20, type metadata accessor for DataManager.State);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 56);
  if (v23)
  {
    v25 = swift_slowAlloc();
    v76[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E0480, v76);
    *(v25 + 12) = 2080;
    v26 = sub_1001DA250();
    v28 = v27;
    sub_10002172C(v24, type metadata accessor for DataManager.State);
    v29 = sub_10000D01C(v26, v28, v76);

    *(v25 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s Received preference update: %s", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002172C(v24, type metadata accessor for DataManager.State);
  }

  v30 = *(v0 + 32);
  sub_1000214CC(*(v0 + 64), *(v0 + 48), type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload != 6)
    {
      sub_10002172C(*(v0 + 64), type metadata accessor for DataManager.State);
      goto LABEL_17;
    }

    v35 = async function pointer to unsafeBlocking<A>(_:)[1];
    v36 = swift_task_alloc();
    *(v0 + 216) = v36;
    *v36 = v0;
    v36[1] = sub_1000D6C30;
    v37 = sub_1000D71EC;
    v38 = &type metadata for () + 8;
    v39 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v32 = *(v0 + 48);
        sub_10002172C(*(v0 + 64), type metadata accessor for DataManager.State);
        sub_100002CE0(v32, &qword_1005AA718, &qword_1004C4370);
LABEL_17:
        v40 = *(v0 + 200);
LABEL_18:
        *(v0 + 200) = v40;
        v41 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
        v42 = swift_task_alloc();
        *(v0 + 208) = v42;
        *v42 = v0;
        v42[1] = sub_1000D619C;
        v43 = *(v0 + 96);
        v44 = *(v0 + 72);
        v45 = *(v0 + 80);

        return AsyncStream.Iterator.next(isolation:)(v44, 0, 0, v45);
      }

LABEL_15:
      v33 = *(v0 + 48);
      sub_10002172C(*(v0 + 64), type metadata accessor for DataManager.State);
      v34 = type metadata accessor for Friend();
      (*(*(v34 - 8) + 8))(v33, v34);
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_15;
    }

    v46 = *(v0 + 152);
    v47 = **(v0 + 48);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v76[0] = v51;
      *v50 = 136446466;
      *(v50 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E0480, v76);
      *(v50 + 12) = 1024;
      *(v50 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v48, v49, "%{public}s Location sharing status changed: Enabled? %{BOOL}d", v50, 0x12u);
      sub_100004984(v51);
    }

    v40 = *(v0 + 200);
    v52 = *(*(v0 + 24) + 112);
    v53 = swift_allocObject();
    swift_weakInit();
    v54 = swift_task_alloc();
    *(v54 + 16) = v53;
    *(v54 + 24) = v47;
    v75 = sub_10004B564(&qword_1005AA728, &unk_1004C4378);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();

    if (qword_1005A7F60 != -1)
    {
      swift_once();
    }

    v55 = *(v0 + 152);
    v56 = *(v0 + 24);
    v57 = *(*(qword_1005DFBF8 + 24) + 16);
    swift_unownedRetainStrong();

    CurrentValueSubject.value.getter();

    v58 = *(v0 + 249);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    if (v58 == 1)
    {
      v59 = *(v0 + 250);
    }

    else
    {
      v59 = 0;
    }

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 24);
    if (v62)
    {
      v64 = v58 == 1;
      v65 = swift_slowAlloc();
      *v65 = 67109376;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      *(v65 + 4) = *(v0 + 253);

      *(v65 + 8) = 1024;
      *(v65 + 10) = v64;
      _os_log_impl(&_mh_execute_header, v60, v61, "RecomputeLocationSharing: isMyLocationEnabled %{BOOL}d isThisMeDevice %{BOOL}d", v65, 0xEu);
    }

    else
    {
      v66 = *(v0 + 24);
    }

    *(v0 + 224) = v40;
    v67 = *(*(*(v0 + 24) + 40) + 16);
    swift_unownedRetainStrong();
    CurrentValueSubject.value.getter();

    if (v59 == *(v0 + 251))
    {
      sub_10002172C(*(v0 + 64), type metadata accessor for DataManager.State);
      goto LABEL_18;
    }

    v68 = *(v0 + 24);
    v69 = [objc_opt_self() standardUserDefaults];
    v70 = String._bridgeToObjectiveC()();
    [v69 removeObjectForKey:v70];

    v71 = swift_allocObject();
    swift_weakInit();
    v72 = swift_allocObject();
    *(v0 + 232) = v72;
    *(v72 + 16) = v71;
    *(v72 + 24) = v59;
    v73 = async function pointer to unsafeBlocking<A>(_:)[1];
    v74 = swift_task_alloc();
    *(v0 + 240) = v74;
    *v74 = v0;
    v74[1] = sub_1000D6DEC;
    v37 = sub_1000DD51C;
    v36 = (v0 + 252);
    v39 = v72;
    v38 = v75;
  }

  return unsafeBlocking<A>(_:)(v36, v37, v39, v38);
}

uint64_t sub_1000D6C30()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return _swift_task_switch(sub_1000D6D2C, 0, 0);
}

uint64_t sub_1000D6D2C()
{
  sub_10002172C(v0[8], type metadata accessor for DataManager.State);
  v1 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_1000D619C;
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  return AsyncStream.Iterator.next(isolation:)(v4, 0, 0, v5);
}

uint64_t sub_1000D6DEC()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return _swift_task_switch(sub_1000D6F04, 0, 0);
}

uint64_t sub_1000D6F04()
{
  sub_10002172C(v0[8], type metadata accessor for DataManager.State);
  v0[25] = v0[28];
  v1 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_1000D619C;
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  return AsyncStream.Iterator.next(isolation:)(v4, 0, 0, v5);
}

uint64_t sub_1000D6FCC()
{
  v22 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[19];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E0480, &v21);
    *(v7 + 12) = 2082;
    v0[2] = v6;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v21);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v11 = v0[24];
  }

  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[12];
  v16 = v0[8];
  v15 = v0[9];
  v18 = v0[6];
  v17 = v0[7];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000D71EC()
{
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  return sub_100139B2C();
}

uint64_t sub_1000D7244@<X0>(char a1@<W1>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {
    *(result + 120) = a1 & 1;
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_1000D72C4@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    v4 = *(result + 32);

    CurrentValueSubject.send(_:)();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_1000D735C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 stringForKey:v3];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = sub_1000B9F08(v5, v7);

    if (v8)
    {
      Date.init(timeIntervalSince1970:)();
      v9 = type metadata accessor for Date();
      return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
    }

    else
    {
      v13 = type metadata accessor for Date();
      return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

uint64_t sub_1000D7528()
{
  v1[3] = v0;
  v2 = type metadata accessor for HandleType();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for Friend();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v8 = type metadata accessor for DataManager.State(0);
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005AA6F8, &unk_1004C4350) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v12 = sub_10004B564(&qword_1005AA700, &unk_1004D2F70);
  v1[22] = v12;
  v13 = *(v12 - 8);
  v1[23] = v13;
  v14 = *(v13 + 64) + 15;
  v1[24] = swift_task_alloc();
  v15 = sub_10004B564(&qword_1005AA708, &unk_1004C4360);
  v1[25] = v15;
  v16 = *(v15 - 8);
  v1[26] = v16;
  v17 = *(v16 + 64) + 15;
  v1[27] = swift_task_alloc();
  v18 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  v1[28] = v18;
  v19 = *(v18 - 8);
  v1[29] = v19;
  v20 = *(v19 + 64) + 15;
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7870, 0, 0);
}

uint64_t sub_1000D7870()
{
  v10 = v0;
  if (qword_1005A7F00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 248) = sub_10000A6F0(v1, qword_1005AA3C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E0460, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  *v7 = v0;
  v7[1] = sub_1000D7A20;

  return daemon.getter();
}

uint64_t sub_1000D7A20(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 256);
  v12 = *v1;
  *(v3 + 264) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 272) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000DD460(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000DD460(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1000D7BFC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000D7BFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  v4[35] = a1;
  v4[36] = v1;

  if (v1)
  {
    v7 = sub_1000D9274;
    v8 = 0;
  }

  else
  {
    v9 = v4[33];

    v7 = sub_1000D7D34;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000D7D34()
{
  v1 = v0[35];
  v2 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[16];
  swift_allocObject();
  swift_weakInit();
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1000D7E3C, 0, 0);
}

uint64_t sub_1000D7E3C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  AsyncStream.makeAsyncIterator()();
  *(v0 + 352) = enum case for HandleType.follower(_:);
  *(v0 + 356) = enum case for HandleType.following(_:);
  *(v0 + 360) = enum case for HandleType.futureFollower(_:);
  *(v0 + 364) = enum case for HandleType.futureFollowing(_:);
  *(v0 + 368) = enum case for HandleType.pendingOffer(_:);
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  *(v0 + 296) = v5;
  *v5 = v0;
  v5[1] = sub_1000D7F40;
  v6 = *(v0 + 192);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);

  return AsyncStream.Iterator.next(isolation:)(v7, 0, 0, v8);
}

uint64_t sub_1000D7F40()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return _swift_task_switch(sub_1000D803C, 0, 0);
}

uint64_t sub_1000D803C()
{
  v140 = v0;
  v1 = *(v0 + 168);
  if ((*(*(v0 + 136) + 48))(v1, 1, *(v0 + 128)) == 1)
  {
    v2 = *(v0 + 280);
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);
    v5 = *(v0 + 224);
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = *(v0 + 176);

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);
    v9 = *(v0 + 240);
    v10 = *(v0 + 216);
    v11 = *(v0 + 192);
    v13 = *(v0 + 160);
    v12 = *(v0 + 168);
    v15 = *(v0 + 144);
    v14 = *(v0 + 152);
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    v18 = *(v0 + 104);
    v127 = *(v0 + 96);
    v129 = *(v0 + 88);
    v131 = *(v0 + 80);
    v133 = *(v0 + 56);
    v134 = *(v0 + 48);

    v19 = *(v0 + 8);

    return v19();
  }

  v21 = *(v0 + 248);
  v23 = *(v0 + 152);
  v22 = *(v0 + 160);
  sub_1000DD3F8(v1, v22, type metadata accessor for DataManager.State);
  sub_1000214CC(v22, v23, type metadata accessor for DataManager.State);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 152);
  if (v26)
  {
    v28 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *v28 = 136446466;
    *(v28 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E0460, &v139);
    *(v28 + 12) = 2080;
    v29 = sub_1001DA250();
    v31 = v30;
    sub_10002172C(v27, type metadata accessor for DataManager.State);
    v32 = sub_10000D01C(v29, v31, &v139);

    *(v28 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s Received friend update: %s", v28, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002172C(v27, type metadata accessor for DataManager.State);
  }

  v33 = *(v0 + 128);
  sub_1000214CC(*(v0 + 160), *(v0 + 144), type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v35 = *(v0 + 144);
      sub_10002172C(*(v0 + 160), type metadata accessor for DataManager.State);
      sub_100002CE0(v35, &qword_1005AA718, &qword_1004C4370);
LABEL_19:
      v55 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
      v56 = swift_task_alloc();
      *(v0 + 296) = v56;
      *v56 = v0;
      v56[1] = sub_1000D7F40;
      v57 = *(v0 + 192);
      v58 = *(v0 + 168);
      v59 = *(v0 + 176);

      return AsyncStream.Iterator.next(isolation:)(v58, 0, 0, v59);
    }

    v60 = *(v0 + 248);
    v62 = *(v0 + 80);
    v61 = *(v0 + 88);
    v63 = *(v0 + 64);
    v64 = *(v0 + 72);
    (*(v64 + 32))(v61, *(v0 + 144), v63);
    (*(v64 + 16))(v62, v61, v63);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 160);
    v69 = *(v0 + 80);
    v70 = *(v0 + 88);
    v72 = *(v0 + 64);
    v71 = *(v0 + 72);
    if (v67)
    {
      v136 = *(v0 + 160);
      v73 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *v73 = 136446466;
      *(v73 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E0460, &v139);
      *(v73 + 12) = 2080;
      sub_1000DD460(&qword_1005AA720, &type metadata accessor for Friend);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v77 = *(v71 + 8);
      v77(v69, v72);
      v78 = sub_10000D01C(v74, v76, &v139);

      *(v73 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v65, v66, "%{public}s Ignoring newly added friend: %s", v73, 0x16u);
      swift_arrayDestroy();

      v77(v70, v72);
      v54 = v136;
    }

    else
    {

      v92 = *(v71 + 8);
      v92(v69, v72);
      v92(v70, v72);
      v54 = v68;
    }

LABEL_18:
    sub_10002172C(v54, type metadata accessor for DataManager.State);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_17:
    v54 = *(v0 + 160);
    goto LABEL_18;
  }

  v36 = *(v0 + 352);
  v37 = *(v0 + 56);
  v38 = *(v0 + 32);
  v39 = *(v0 + 40);
  (*(*(v0 + 72) + 32))(*(v0 + 120), *(v0 + 144), *(v0 + 64));
  Friend.type.getter();
  v40 = (*(v39 + 88))(v37, v38);
  if (v40 == v36)
  {
    v41 = *(v0 + 248);
    (*(*(v0 + 72) + 16))(*(v0 + 104), *(v0 + 120), *(v0 + 64));
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 104);
    v46 = *(v0 + 64);
    v47 = *(v0 + 72);
    if (v44)
    {
      v48 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v139 = v135;
      *v48 = 136315138;
      sub_1000DD460(&qword_1005AA720, &type metadata accessor for Friend);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v47 + 8);
      v52(v45, v46);
      v53 = sub_10000D01C(v49, v51, &v139);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v42, v43, "Removed a follower: %s", v48, 0xCu);
      sub_100004984(v135);
    }

    else
    {

      v52 = *(v47 + 8);
      v52(v45, v46);
    }

    *(v0 + 328) = v52;
    v93 = *(v0 + 24);
    v94 = swift_allocObject();
    *(v0 + 336) = v94;
    swift_weakInit();
    v95 = async function pointer to unsafeBlocking<A>(_:)[1];
    v96 = swift_task_alloc();
    *(v0 + 344) = v96;
    v97 = sub_10004B564(&qword_1005AA728, &unk_1004C4378);
    *v96 = v0;
    v96[1] = sub_1000D907C;
    v98 = sub_1000DD4A8;
    v99 = (v0 + 372);
  }

  else
  {
    if (v40 != *(v0 + 356))
    {
      if (v40 != *(v0 + 360) && v40 != *(v0 + 364))
      {
        v103 = *(v0 + 120);
        if (v40 != *(v0 + 368))
        {
          v104 = *(v0 + 248);
          (*(*(v0 + 72) + 16))(*(v0 + 96), *(v0 + 120), *(v0 + 64));
          v105 = Logger.logObject.getter();
          v106 = static os_log_type_t.error.getter();
          v107 = os_log_type_enabled(v105, v106);
          v108 = *(v0 + 160);
          v109 = *(v0 + 120);
          v110 = *(v0 + 96);
          v111 = *(v0 + 64);
          v112 = *(v0 + 72);
          if (v107)
          {
            log = v105;
            v130 = *(v0 + 64);
            v114 = *(v0 + 40);
            v113 = *(v0 + 48);
            v115 = *(v0 + 32);
            v138 = v106;
            v116 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            *v116 = 136446466;
            *(v116 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E0460, &v139);
            *(v116 + 12) = 2080;
            Friend.type.getter();
            sub_1000DD460(&qword_1005A9198, &type metadata accessor for HandleType);
            v117 = dispatch thunk of CustomStringConvertible.description.getter();
            v132 = v108;
            v119 = v118;
            v128 = v109;
            v120 = *(v114 + 8);
            v120(v113, v115);
            v121 = *(v112 + 8);
            v121(v110, v130);
            v122 = sub_10000D01C(v117, v119, &v139);

            *(v116 + 14) = v122;
            _os_log_impl(&_mh_execute_header, log, v138, "%{public}s Unexpected friend.type %s", v116, 0x16u);
            swift_arrayDestroy();

            v121(v128, v130);
            sub_10002172C(v132, type metadata accessor for DataManager.State);
          }

          else
          {
            v123 = *(v0 + 40);

            v124 = *(v112 + 8);
            v124(v110, v111);
            v124(v109, v111);
            sub_10002172C(v108, type metadata accessor for DataManager.State);
            v120 = *(v123 + 8);
          }

          v125 = *(v0 + 40) + 8;
          v120(*(v0 + 56), *(v0 + 32));
          goto LABEL_19;
        }
      }

      v100 = *(v0 + 160);
      (*(*(v0 + 72) + 8))(*(v0 + 120), *(v0 + 64));
      v54 = v100;
      goto LABEL_18;
    }

    v79 = *(v0 + 248);
    (*(*(v0 + 72) + 16))(*(v0 + 112), *(v0 + 120), *(v0 + 64));
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 112);
    v84 = *(v0 + 64);
    v85 = *(v0 + 72);
    if (v82)
    {
      v86 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v139 = v137;
      *v86 = 136315138;
      sub_1000DD460(&qword_1005AA720, &type metadata accessor for Friend);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v90 = *(v85 + 8);
      v90(v83, v84);
      v91 = sub_10000D01C(v87, v89, &v139);

      *(v86 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v80, v81, "Removed a following: %s", v86, 0xCu);
      sub_100004984(v137);
    }

    else
    {

      v90 = *(v85 + 8);
      v90(v83, v84);
    }

    *(v0 + 304) = v90;
    v101 = *(v0 + 24);
    v94 = swift_allocObject();
    *(v0 + 312) = v94;
    swift_weakInit();
    v102 = async function pointer to unsafeBlocking<A>(_:)[1];
    v99 = swift_task_alloc();
    *(v0 + 320) = v99;
    *v99 = v0;
    v99[1] = sub_1000D8E84;
    v98 = sub_1000DD4B0;
    v97 = &type metadata for () + 8;
  }

  return unsafeBlocking<A>(_:)(v99, v98, v94, v97);
}

uint64_t sub_1000D8E84()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v4 = *v0;

  return _swift_task_switch(sub_1000D8F9C, 0, 0);
}

uint64_t sub_1000D8F9C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 72) + 8;
  (*(v0 + 304))(*(v0 + 120), *(v0 + 64));
  sub_10002172C(v1, type metadata accessor for DataManager.State);
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = sub_1000D7F40;
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v7);
}

uint64_t sub_1000D907C()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return _swift_task_switch(sub_1000D9194, 0, 0);
}

uint64_t sub_1000D9194()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 72) + 8;
  (*(v0 + 328))(*(v0 + 120), *(v0 + 64));
  sub_10002172C(v1, type metadata accessor for DataManager.State);
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = sub_1000D7F40;
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v7);
}

uint64_t sub_1000D9274()
{
  v30 = v0;
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[31];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[36];
    v7 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E0460, &v29);
    *(v7 + 12) = 2082;
    v0[2] = v6;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v29);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v11 = v0[36];
  }

  v12 = v0[30];
  v13 = v0[27];
  v14 = v0[24];
  v16 = v0[20];
  v15 = v0[21];
  v18 = v0[18];
  v17 = v0[19];
  v20 = v0[14];
  v19 = v0[15];
  v21 = v0[13];
  v24 = v0[12];
  v25 = v0[11];
  v26 = v0[10];
  v27 = v0[7];
  v28 = v0[6];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000D94F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_3;
  }

  v1 = *(Strong + 128);
  v2 = Strong;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000DD4B8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000C7A78;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_10058EF00;
  v4 = _Block_copy(aBlock);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
LABEL_3:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v6 = *(result + 64);

      PassthroughSubject.send(_:)();
    }
  }

  return result;
}

uint64_t sub_1000D96AC@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    v4 = *(result + 48);
    PassthroughSubject.send(_:)();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_1000D972C()
{
  v1 = v0;
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  v5 = *(*(qword_1005DFBF8 + 24) + 24);

  sub_10004B564(&unk_1005AB520, &unk_1004C54A0);
  sub_10001DF0C(&qword_1005AA6F0, &unk_1005AB520, &unk_1004C54A0);
  v2 = Publisher<>.sink(receiveValue:)();

  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

void sub_1000D9848(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFB98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocationSharing: recompute sharing status after me device change", v5, 2u);
  }

  if (v1)
  {
    sub_1000DA4A0();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "LocationSharing: Me device state is unknown. Lets not recompute", v7, 2u);
    }
  }
}

uint64_t sub_1000D99F8()
{
  if (static SystemInfo.underTest.getter())
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[3] = sub_10000A6F0(v3, qword_1005DFB98);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "LocationSharing: Computing LocationSharing status", v6, 2u);
    }

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = sub_1000D9B84;

    return daemon.getter();
  }
}

uint64_t sub_1000D9B84(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for SettingsService();
  v9 = sub_1000DD460(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000DD460(&qword_1005AA6E8, type metadata accessor for SettingsService);
  *v6 = v12;
  v6[1] = sub_1000D9D60;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000D9D60(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000DA1D8, 0, 0);
  }

  else
  {
    v7 = v4[5];

    v8 = swift_task_alloc();
    v4[9] = v8;
    *v8 = v6;
    v8[1] = sub_1000D9EEC;

    return sub_100483D2C(1);
  }
}

uint64_t sub_1000D9EEC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_1000DA33C;
  }

  else
  {
    *(v4 + 90) = a1 & 1;
    v7 = sub_1000DA018;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000DA018()
{
  v1 = *(v0 + 90);
  v2 = *(v0 + 80);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v4 + 112);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    *(v10 + 4) = *(v0 + 89);

    _os_log_impl(&_mh_execute_header, v7, v8, "ComputeLocationSharing: Updating sharing status to %{BOOL}d", v10, 8u);
  }

  else
  {
    v11 = *(v0 + 16);
  }

  v12 = *(v0 + 56);
  v13 = *(v0 + 16);
  v14 = sub_100021BB4();
  v15 = *(v13 + 32);
  *(v0 + 88) = v14 & 1;
  CurrentValueSubject.send(_:)();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1000DA1D8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];

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
    _os_log_impl(&_mh_execute_header, v4, v5, "ComputeLocationSharing: Error getting status of sharing %@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000DA33C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[3];

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
    _os_log_impl(&_mh_execute_header, v4, v5, "ComputeLocationSharing: Error getting status of sharing %@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000DA4A0()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFB98);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "RecomputeLocationSharing", v3, 2u);
  }

  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1000DA5F0()
{
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  v1 = qword_1005DFBF8;
  *(v0 + 32) = qword_1005DFBF8;
  v2 = *(*(v1 + 24) + 16);
  swift_unownedRetainStrong();

  CurrentValueSubject.value.getter();

  *(v0 + 103) = *(v0 + 96);
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1000DA6F4;

  return daemon.getter();
}

uint64_t sub_1000DA6F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for SettingsService();
  v9 = sub_1000DD460(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000DD460(&qword_1005AA6E8, type metadata accessor for SettingsService);
  *v6 = v12;
  v6[1] = sub_1000DA8D0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000DA8D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000DAE24, 0, 0);
  }

  else
  {
    v7 = v4[6];

    v8 = swift_task_alloc();
    v4[10] = v8;
    *v8 = v6;
    v8[1] = sub_1000DAA5C;

    return sub_100483D2C(1);
  }
}

uint64_t sub_1000DAA5C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_1000DB0C8;
  }

  else
  {
    *(v4 + 104) = a1 & 1;
    v7 = sub_1000DAB88;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000DAB88()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 103);
  v4 = *(v0 + 24);
  v5 = *(v4 + 112);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v3 == 1)
  {
    v7 = *(v0 + 99);
  }

  else
  {
    v7 = 0;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 24);
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFB98);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 24);
    v13 = *(v0 + 103) == 1;
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    *(v14 + 4) = *(v0 + 102);

    *(v14 + 8) = 1024;
    *(v14 + 10) = v13;
    _os_log_impl(&_mh_execute_header, v10, v11, "RecomputeLocationSharing: isMyLocationEnabled %{BOOL}d isThisMeDevice %{BOOL}d", v14, 0xEu);
  }

  else
  {
    v15 = *(v0 + 24);
  }

  v16 = *(*(*(v0 + 24) + 40) + 16);
  swift_unownedRetainStrong();
  CurrentValueSubject.value.getter();

  v17 = *(v0 + 64);
  if (v7 != *(v0 + 100))
  {
    v18 = *(*(v0 + 24) + 32);
    *(v0 + 101) = v7;
    CurrentValueSubject.send(_:)();
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000DAE24()
{
  v23 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);

  v4 = *(*(v3 + 24) + 16);
  swift_unownedRetainStrong();

  CurrentValueSubject.value.getter();

  v5 = *(v0 + 97);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 24);
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005DFB98);
  swift_retain_n();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 24);
  if (v10)
  {
    v12 = v5 == 1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315650;
    *(v0 + 16) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v15 = String.init<A>(describing:)();
    v17 = sub_10000D01C(v15, v16, &v22);

    *(v13 + 4) = v17;
    *(v13 + 12) = 1024;
    v18 = *(v11 + 112);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();

    *(v13 + 14) = *(v0 + 98);

    *(v13 + 18) = 1024;
    *(v13 + 20) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "RecomputeLocationSharing: error recomputing location sharing status. Error %s Sharing enabled: %{BOOL}d isThisMeDevice: %{BOOL}d", v13, 0x18u);
    sub_100004984(v14);
  }

  else
  {
    v19 = *(v0 + 24);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000DB0C8()
{
  v23 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);

  v4 = *(*(v3 + 24) + 16);
  swift_unownedRetainStrong();

  CurrentValueSubject.value.getter();

  v5 = *(v0 + 97);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 24);
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005DFB98);
  swift_retain_n();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 24);
  if (v10)
  {
    v12 = v5 == 1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315650;
    *(v0 + 16) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v15 = String.init<A>(describing:)();
    v17 = sub_10000D01C(v15, v16, &v22);

    *(v13 + 4) = v17;
    *(v13 + 12) = 1024;
    v18 = *(v11 + 112);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();

    *(v13 + 14) = *(v0 + 98);

    *(v13 + 18) = 1024;
    *(v13 + 20) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "RecomputeLocationSharing: error recomputing location sharing status. Error %s Sharing enabled: %{BOOL}d isThisMeDevice: %{BOOL}d", v13, 0x18u);
    sub_100004984(v14);
  }

  else
  {
    v19 = *(v0 + 24);
  }

  v20 = *(v0 + 8);

  return v20();
}

char *sub_1000DB36C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 128);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_10004B564(&qword_1005A9FC0, &qword_1004C3520);
  unsafeFromAsyncTask<A>(_:)();
  v15 = v60[3];
  swift_beginAccess();
  v16 = *(v1 + 136);
  *(v1 + 136) = _swiftEmptyDictionarySingleton;

  v18 = *(v15 + 16);
  if (!v18)
  {
    sub_1000C8450(v15, 0);
    sub_1000C8450(v15, 0);
    return _swiftEmptyArrayStorage;
  }

  v14 = _swiftEmptyArrayStorage;
  v54 = v15;
  v19 = (v15 + 64);
  *&v17 = 136315394;
  v55 = v17;
  v56 = v1;
  while (1)
  {
    v23 = *(v19 - 3);
    v58 = *(v19 - 4);
    v25 = *(v19 - 2);
    v24 = *(v19 - 1);
    v9 = *v19;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1001FD1C8(0, *(v14 + 2) + 1, 1, v14);
    }

    v27 = *(v14 + 2);
    v26 = *(v14 + 3);
    if (v27 >= v26 >> 1)
    {
      v14 = sub_1001FD1C8((v26 > 1), v27 + 1, 1, v14);
    }

    *(v14 + 2) = v27 + 1;
    v57 = v14;
    v28 = &v14[40 * v27];
    *(v28 + 4) = v58;
    *(v28 + 5) = v23;
    *(v28 + 6) = v25;
    *(v28 + 7) = v24;
    *(v28 + 8) = v9;
    swift_beginAccess();

    v29 = *(v1 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v1 + 136);
    v31 = v59;
    *(v1 + 136) = 0x8000000000000000;
    v32 = sub_1000110D8(v24, v9);
    v34 = v31[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      break;
    }

    v38 = v33;
    if (v31[3] < v37)
    {
      sub_10022C6A4(v37, isUniquelyReferenced_nonNull_native);
      v32 = sub_1000110D8(v24, v9);
      if ((v38 & 1) != (v39 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_20:
      v40 = v59;
      if (v38)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v43 = v32;
    sub_100202A1C();
    v32 = v43;
    v40 = v59;
    if (v38)
    {
LABEL_21:
      v41 = (v40[7] + 16 * v32);
      v42 = v41[1];
      *v41 = v58;
      v41[1] = v23;

      goto LABEL_25;
    }

LABEL_23:
    v40[(v32 >> 6) + 8] |= 1 << v32;
    v44 = (v40[6] + 16 * v32);
    *v44 = v24;
    v44[1] = v9;
    v45 = (v40[7] + 16 * v32);
    *v45 = v58;
    v45[1] = v23;
    v46 = v40[2];
    v36 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v36)
    {
      goto LABEL_33;
    }

    v40[2] = v47;
LABEL_25:
    *(v1 + 136) = v40;
    swift_endAccess();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000A6F0(v48, qword_1005DFB98);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v20 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v20 = v55;

      v21 = sub_10000D01C(v24, v9, v60);

      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;

      v22 = sub_10000D01C(v58, v23, v60);

      *(v20 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v49, v50, "#sharesLocation with me - %s - %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v1 = v56;
    v14 = v57;
    v19 += 5;
    if (!--v18)
    {
      v51 = v54;
      sub_1000C8450(v54, 0);
      sub_1000C8450(v51, 0);
      return v14;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  swift_once();
  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFB98);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Unable to get handlesSharingLocationsWithMe", v13, 2u);
  }

  sub_1000C8450(v9, 1);

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000DB9F8(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Handle();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Friend();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v1[11] = v9;
  *v9 = v1;
  v9[1] = sub_1000DBB5C;

  return daemon.getter();
}

uint64_t sub_1000DBB5C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FriendshipService();
  v9 = sub_1000DD460(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000DD460(&qword_1005AA6E0, type metadata accessor for FriendshipService);
  *v6 = v12;
  v6[1] = sub_1000DBD38;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000DBD38(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v8 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = sub_1000DC3DC;
  }

  else
  {
    v6 = v3[12];

    v5 = sub_1000DBE54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DBE54()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[16] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1000DBFB4;
  v7 = v0[14];

  return sub_1002BD010(v5);
}

uint64_t sub_1000DBFB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v8 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = sub_1000DC46C;
  }

  else
  {
    v6 = v3[16];

    v5 = sub_1000DC0D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DC0D0()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v40 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v39 = *(v3 + 72);
    v37 = (v3 + 8);
    v5 = _swiftEmptyArrayStorage;
    v38 = (v0[4] + 8);
    do
    {
      v45 = v5;
      v8 = v0[9];
      v7 = v0[10];
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[3];
      v40(v7, v4, v9);
      v40(v8, v7, v9);
      Friend.handle.getter();
      v12 = Handle.serverID.getter();
      v14 = v13;
      v15 = *v38;
      (*v38)(v10, v11);
      v16 = v0[9];
      v17 = v0[10];
      v18 = v0[7];
      if (v14)
      {
        v44 = v12;
        v41 = v0[10];
        v19 = v0[5];
        v20 = v0[3];
        Friend.handle.getter();
        v21 = Handle.identifier.getter();
        v42 = v22;
        v43 = v21;
        v15(v19, v20);
        Friend.handle.getter();
        v23 = Handle.siblingIdentifiers.getter();
        v15(v19, v20);
        v24 = *v37;
        (*v37)(v16, v18);
        v24(v41, v18);
        v5 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1001FD1C8(0, *(v45 + 2) + 1, 1, v45);
        }

        v26 = *(v5 + 2);
        v25 = *(v5 + 3);
        if (v26 >= v25 >> 1)
        {
          v5 = sub_1001FD1C8((v25 > 1), v26 + 1, 1, v5);
        }

        *(v5 + 2) = v26 + 1;
        v27 = &v5[40 * v26];
        *(v27 + 4) = v43;
        *(v27 + 5) = v42;
        *(v27 + 6) = v23;
        *(v27 + 7) = v44;
        *(v27 + 8) = v14;
      }

      else
      {
        v6 = *v37;
        (*v37)(v0[9], v0[7]);
        v6(v17, v18);
        v5 = v45;
      }

      v4 += v39;
      --v2;
    }

    while (v2);
    v28 = v0[18];
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v29 = v0[14];
  v31 = v0[9];
  v30 = v0[10];
  v33 = v0[5];
  v32 = v0[6];
  v34 = v0[2];

  *v34 = v5;

  v35 = v0[1];

  return v35();
}

uint64_t sub_1000DC3DC()
{
  v1 = v0[12];

  v2 = v0[15];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000DC46C()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[19];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[5];
  v6 = v0[6];

  v8 = v0[1];

  return v8();
}

char *sub_1000DC508@<X0>(char **a1@<X8>)
{
  result = sub_1000DB36C();
  *a1 = result;
  return result;
}

uint64_t sub_1000DC544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 136);
  if (*(v8 + 16) || (sub_1000DB36C(), result = , v8 = *(a1 + 136), *(v8 + 16)))
  {

    v10 = sub_1000110D8(a2, a3);
    if (v11)
    {
      v12 = (*(v8 + 56) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *a4 = v14;
  a4[1] = v13;
  return result;
}

uint64_t sub_1000DC618(uint64_t a1)
{
  v3 = type metadata accessor for SecureLocation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v46 - v13;
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = type metadata accessor for SecureLocationsConfig();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v3 + 60)) != 100)
  {
    v21 = (v1 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);
    os_unfair_lock_lock(v21);
    v22 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1000214CC(v21 + *(v22 + 28), v20, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v21);
    v23 = *(v20 + 3);
    sub_10002172C(v20, type metadata accessor for SecureLocationsConfig);
  }

  static Date.trustedNow.getter(v14);
  Date.addingTimeInterval(_:)();
  v24 = *(v8 + 8);
  v24(v14, v7);
  v25 = *(v3 + 52);
  v26 = static Date.> infix(_:_:)();
  if ((v26 & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000A6F0(v27, qword_1005DFB98);
    sub_1000214CC(a1, v6, type metadata accessor for SecureLocation);
    v28 = v48;
    (*(v8 + 16))(v48, v16, v7);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v31 = 136315394;
      v46 = v29;
      v32 = *(v3 + 52);
      sub_1000DD460(&qword_1005A9800, &type metadata accessor for Date);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v6;
      v36 = v35;
      sub_10002172C(v34, type metadata accessor for SecureLocation);
      v37 = sub_10000D01C(v33, v36, &v49);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      v38 = v48;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v30;
      v42 = v41;
      v24(v38, v7);
      v43 = sub_10000D01C(v39, v42, &v49);

      *(v31 + 14) = v43;
      v44 = v46;
      _os_log_impl(&_mh_execute_header, v46, v40, "Location timestamp %s not within threshold %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v24(v28, v7);
      sub_10002172C(v6, type metadata accessor for SecureLocation);
    }
  }

  v24(v16, v7);
  return v26 & 1;
}

uint64_t sub_1000DCB14(uint64_t a1)
{
  v3 = type metadata accessor for SecureLocation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v46 - v12;
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  v16 = type metadata accessor for SecureLocationsConfig();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v1 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);
  os_unfair_lock_lock(v20);
  v21 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000214CC(v20 + *(v21 + 28), v19, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v20);
  v22 = *(v19 + 5);
  sub_10002172C(v19, type metadata accessor for SecureLocationsConfig);
  static Date.trustedNow.getter(v13);
  Date.addingTimeInterval(_:)();
  v23 = *(v7 + 8);
  v23(v13, v6);
  v24 = *(v3 + 52);
  v25 = static Date.< infix(_:_:)();
  if (v25)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000A6F0(v26, qword_1005DFB98);
    v27 = v49;
    sub_1000214CC(a1, v49, type metadata accessor for SecureLocation);
    v28 = v50;
    (*(v7 + 16))(v50, v15, v6);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v51 = v48;
      *v31 = 136315394;
      v47 = v29;
      v32 = *(v3 + 52);
      sub_1000DD460(&qword_1005A9800, &type metadata accessor for Date);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v27;
      v36 = v35;
      sub_10002172C(v34, type metadata accessor for SecureLocation);
      v37 = sub_10000D01C(v33, v36, &v51);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      v38 = v50;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v30;
      v42 = v41;
      v23(v38, v6);
      v43 = sub_10000D01C(v39, v42, &v51);

      *(v31 + 14) = v43;
      v44 = v47;
      _os_log_impl(&_mh_execute_header, v47, v40, "Location timestamp %s close to expiring %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v23(v28, v6);
      sub_10002172C(v27, type metadata accessor for SecureLocation);
    }
  }

  v23(v15, v6);
  return v25 & 1;
}

uint64_t sub_1000DCFEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 72);

  v9 = *(v0 + 80);

  v10 = *(v0 + 88);

  v11 = *(v0 + 96);

  v12 = *(v0 + 104);

  v13 = *(v0 + 112);

  v14 = *(v0 + 136);

  v15 = v0 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex;
  v16 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_10002172C(v15 + *(v16 + 28), type metadata accessor for SecureLocationsConfig);
  v17 = *(v0 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo__secureLocationConfigStream);

  return v0;
}

uint64_t sub_1000DD0D4()
{
  sub_1000DCFEC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SecureLocationsInfo()
{
  result = qword_1005AA418;
  if (!qword_1005AA418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DD180()
{
  sub_1000DD260();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000DD260()
{
  if (!qword_1005AA428)
  {
    type metadata accessor for SecureLocationsConfig();
    v0 = type metadata accessor for Mutex();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AA428);
    }
  }
}

uint64_t sub_1000DD2B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1000D40C4();
}

uint64_t sub_1000DD348()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000368C;

  return sub_1000DA5D0(v0);
}

uint64_t sub_1000DD3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DD460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DD4B8()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
  *(v0 + 136) = &_swiftEmptyDictionarySingleton;
}

uint64_t sub_1000DD51C@<X0>(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000D72C4(a1);
}

uint64_t sub_1000DD560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_1000D5468(a1, v4, v5, v7);
}

uint64_t sub_1000DD620()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1000D57AC();
}

uint64_t sub_1000DD6BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1000D583C();
}

void sub_1000DD758()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFB98);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Received notification of FMF data update complete", v2, 2u);
  }
}

uint64_t sub_1000DD878(uint64_t a1)
{
  v39 = type metadata accessor for UUID();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v39);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v32[1] = v1;
  v47 = _swiftEmptyArrayStorage;
  sub_1002394E8(0, v7, 0);
  v8 = v47;
  v9 = -1 << *(a1 + 32);
  v44 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v37 = v3 + 32;
  v38 = v3;
  v33 = a1 + 64;
  v34 = v7;
  v35 = a1;
  v36 = v6;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v44 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v40 = v12;
    v41 = *(a1 + 36);
    v42 = 1 << v11;
    v15 = (*(a1 + 48) + 40 * v11);
    v16 = v15[1];
    v17 = v15[2];
    v43 = v8;
    v18 = v15[3];
    v19 = v15[4];

    v20 = String.utf8Data.getter();
    v22 = v21;
    v45 = v20;
    v46 = v21;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_1000049D0(v20, v22);
    v8 = v43;

    v47 = v8;
    v24 = v8[2];
    v23 = v8[3];
    if (v24 >= v23 >> 1)
    {
      sub_1002394E8(v23 > 1, v24 + 1, 1);
      v8 = v47;
    }

    v8[2] = v24 + 1;
    result = (*(v38 + 32))(v8 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v24, v36, v39);
    a1 = v35;
    v13 = 1 << *(v35 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v25 = *(v44 + 8 * v14);
    if ((v25 & v42) == 0)
    {
      goto LABEL_23;
    }

    if (v41 != *(v35 + 36))
    {
      goto LABEL_24;
    }

    v26 = v25 & (-2 << (v11 & 0x3F));
    if (v26)
    {
      v13 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v14 << 6;
      v28 = v14 + 1;
      v29 = (v33 + 8 * v14);
      while (v28 < (v13 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_10002F14C(v11, v41, 0);
          v13 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_10002F14C(v11, v41, 0);
    }

LABEL_4:
    v12 = v40 + 1;
    v11 = v13;
    if (v40 + 1 == v34)
    {
      return v8;
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

uint64_t sub_1000DDBD8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = String.utf8Data.getter();
  v12 = v11;
  v21[0] = v10;
  v21[1] = v11;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v10, v12);
  v13 = *(v2 + 32);

  v14 = sub_1004B7528(a1, a2);

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000A6F0(v15, qword_1005DFB98);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_10000D01C(a1, a2, v21);
    *(v18 + 12) = 1024;
    *(v18 + 14) = v14 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "Removed sharedkeys for %s with result %{BOOL}d", v18, 0x12u);
    sub_100004984(v19);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1000DDE38()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  __chkstk_darwin(v2);
  v51 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v57 = &v48 - v7;
  v8 = type metadata accessor for Destination();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  __chkstk_darwin(v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v54 = &v48 - v13;
  v14 = type metadata accessor for HashedAdvertisement();
  v52 = *(v14 - 8);
  v53 = v14;
  v15 = *(v52 + 64);
  __chkstk_darwin(v14);
  v49 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v48 - v19;
  v21 = type metadata accessor for PrivateKey();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v48 - v28;
  type metadata accessor for UUID();
  sub_1000F11F8(&qword_1005AECC0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v30 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v31 = (v0 + v30[5]);
  v32 = *v31;
  v33 = v31[1];
  String.hash(into:)();
  sub_100005F04(v0 + v30[6], v29, &unk_1005AE620, &qword_1004C4588);
  if ((*(v22 + 48))(v29, 1, v21) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v22 + 32))(v25, v29, v21);
    Hasher._combine(_:)(1u);
    sub_1000F11F8(&qword_1005AADE8, &type metadata accessor for PrivateKey);
    dispatch thunk of Hashable.hash(into:)();
    (*(v22 + 8))(v25, v21);
  }

  sub_100005F04(v0 + v30[7], v20, &qword_1005AAB18, &qword_1004C4580);
  v35 = v52;
  v34 = v53;
  v36 = (*(v52 + 48))(v20, 1, v53);
  v38 = v55;
  v37 = v56;
  if (v36 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v39 = v49;
    (*(v35 + 32))(v49, v20, v34);
    Hasher._combine(_:)(1u);
    sub_1000F11F8(&qword_1005AADF0, &type metadata accessor for HashedAdvertisement);
    dispatch thunk of Hashable.hash(into:)();
    (*(v35 + 8))(v39, v34);
  }

  v40 = v54;
  sub_100005F04(v1 + v30[8], v54, &qword_1005A9280, &qword_1004C27F8);
  if ((*(v38 + 48))(v40, 1, v37) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v41 = v50;
    (*(v38 + 32))(v50, v40, v37);
    Hasher._combine(_:)(1u);
    sub_1000F11F8(&qword_1005AADF8, &type metadata accessor for Destination);
    dispatch thunk of Hashable.hash(into:)();
    (*(v38 + 8))(v41, v37);
  }

  v42 = (v1 + v30[9]);
  if (v42[1])
  {
    v43 = *v42;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + v30[10]));
  v44 = v57;
  sub_100005F04(v1 + v30[11], v57, &unk_1005AE5B0, &qword_1004C32F0);
  v46 = v58;
  v45 = v59;
  if ((*(v58 + 48))(v44, 1, v59) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v47 = v51;
    (*(v46 + 32))(v51, v44, v45);
    Hasher._combine(_:)(1u);
    sub_1000F11F8(&qword_1005A9868, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v46 + 8))(v47, v45);
  }
}

uint64_t sub_1000DE60C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AAB58, &qword_1004C4598);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1000F11A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v24) = 0;
  type metadata accessor for UUID();
  sub_1000F11F8(&qword_1005AAB60, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SecureLocationsCachedSharedKey(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v24) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v11[6];
    LOBYTE(v24) = 2;
    type metadata accessor for PrivateKey();
    sub_1000F11F8(&qword_1005AAB68, &type metadata accessor for PrivateKey);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = v11[7];
    LOBYTE(v24) = 3;
    type metadata accessor for HashedAdvertisement();
    sub_1000F11F8(&qword_1005AAB70, &type metadata accessor for HashedAdvertisement);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = v11[8];
    LOBYTE(v24) = 4;
    type metadata accessor for Destination();
    sub_1000F11F8(&qword_1005AAB78, &type metadata accessor for Destination);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = (v3 + v11[9]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v24) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = *(v3 + v11[10]);
    v23[7] = 6;
    sub_1000F1294();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = v11[11];
    LOBYTE(v24) = 7;
    type metadata accessor for Date();
    sub_1000F11F8(&qword_1005A9848, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000DEA10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v65 = &v62 - v5;
  v6 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v66 = &v62 - v8;
  v9 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v69 = &v62 - v11;
  v12 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v68 = &v62 - v14;
  v15 = type metadata accessor for UUID();
  v72 = *(v15 - 8);
  v73 = v15;
  v16 = *(v72 + 64);
  __chkstk_darwin(v15);
  v74 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004B564(&qword_1005AAB20, &qword_1004C4590);
  v70 = *(v18 - 8);
  v71 = v18;
  v19 = *(v70 + 64);
  __chkstk_darwin(v18);
  v21 = &v62 - v20;
  v22 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v23 = *(*(v22 - 1) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v24 + 24);
  v28 = type metadata accessor for PrivateKey();
  v29 = *(*(v28 - 8) + 56);
  v79 = v27;
  v67 = v28;
  v29(&v26[v27], 1, 1);
  v30 = v22[7];
  v31 = type metadata accessor for HashedAdvertisement();
  v32 = *(*(v31 - 8) + 56);
  v78 = v30;
  v32(&v26[v30], 1, 1, v31);
  v33 = v22[8];
  v34 = type metadata accessor for Destination();
  v35 = *(*(v34 - 8) + 56);
  v80 = v33;
  v35(&v26[v33], 1, 1, v34);
  v36 = v22[11];
  v37 = type metadata accessor for Date();
  v38 = *(*(v37 - 8) + 56);
  v77 = v36;
  v81 = v26;
  v38(&v26[v36], 1, 1, v37);
  v39 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1000F11A4();
  v75 = v21;
  v40 = v76;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v40)
  {
    sub_100004984(a1);
    v45 = v78;
    v47 = v80;
    v46 = v81;
    sub_100002CE0(&v81[v79], &unk_1005AE620, &qword_1004C4588);
    sub_100002CE0(&v46[v45], &qword_1005AAB18, &qword_1004C4580);
    sub_100002CE0(&v46[v47], &qword_1005A9280, &qword_1004C27F8);

    return sub_100002CE0(&v46[v77], &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    v62 = v37;
    v63 = v22;
    v41 = v68;
    v42 = v69;
    v43 = v72;
    v76 = a1;
    LOBYTE(v83) = 0;
    sub_1000F11F8(&qword_1005AAB30, &type metadata accessor for UUID);
    v44 = v73;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v48 = *(v43 + 32);
    v49 = v81;
    v48(v81, v74, v44);
    LOBYTE(v83) = 1;
    v50 = KeyedDecodingContainer.decode(_:forKey:)();
    v51 = &v49[v63[5]];
    *v51 = v50;
    v51[1] = v52;
    LOBYTE(v83) = 2;
    sub_1000F11F8(&qword_1005AAB38, &type metadata accessor for PrivateKey);
    v74 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v53 = v78;
    sub_100022364(v41, &v81[v79], &unk_1005AE620, &qword_1004C4588);
    LOBYTE(v83) = 3;
    sub_1000F11F8(&qword_1005AAB40, &type metadata accessor for HashedAdvertisement);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v54 = v81;
    sub_100022364(v42, &v81[v53], &qword_1005AAB18, &qword_1004C4580);
    LOBYTE(v83) = 4;
    sub_1000F11F8(&qword_1005AAB48, &type metadata accessor for Destination);
    v55 = v66;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100022364(v55, v54 + v80, &qword_1005A9280, &qword_1004C27F8);
    LOBYTE(v83) = 5;
    v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v57 = v63;
    v58 = (v54 + v63[9]);
    *v58 = v56;
    v58[1] = v59;
    v82 = 6;
    sub_1000F1240();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v54 + v57[10]) = v83;
    LOBYTE(v83) = 7;
    sub_1000F11F8(&qword_1005A9820, &type metadata accessor for Date);
    v60 = v65;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v70 + 8))(v75, v71);
    sub_100022364(v60, v54 + v77, &unk_1005AE5B0, &qword_1004C32F0);
    sub_10000CF54(v54, v64, type metadata accessor for SecureLocationsCachedSharedKey);
    sub_100004984(v76);
    return sub_10000CFBC(v54, type metadata accessor for SecureLocationsCachedSharedKey);
  }
}

uint64_t sub_1000DF424(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AABE8, &qword_1004C4620);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1000F79D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for UUID();
  sub_1000F11F8(&qword_1005AAB60, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SecureLocationsCachedSharingKey(0);
    v12 = *(v11 + 20);
    v16 = 1;
    type metadata accessor for DiversifiedRootKeys();
    sub_1000F11F8(&qword_1005AABF0, &type metadata accessor for DiversifiedRootKeys);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + *(v11 + 24));
    v14[15] = 2;
    sub_1000F1294();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000DF66C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for DiversifiedRootKeys();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v28 = *(v34 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v34);
  v32 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10004B564(&qword_1005AABD0, &qword_1004C4618);
  v29 = *(v33 - 8);
  v10 = *(v29 + 64);
  __chkstk_darwin(v33);
  v12 = &v24 - v11;
  v13 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1000F79D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v25 = v13;
  v26 = a1;
  v18 = v16;
  v20 = v29;
  v19 = v30;
  v21 = v31;
  v38 = 0;
  sub_1000F11F8(&qword_1005AAB30, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 32))(v18, v32, v34);
  v37 = 1;
  sub_1000F11F8(&qword_1005AABE0, &type metadata accessor for DiversifiedRootKeys);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(v18 + *(v25 + 20), v7, v21);
  v36 = 2;
  sub_1000F1240();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v26;
  (*(v20 + 8))(v12, v33);
  *(v18 + *(v25 + 24)) = v35;
  sub_10000CF54(v18, v27, type metadata accessor for SecureLocationsCachedSharingKey);
  sub_100004984(v22);
  return sub_10000CFBC(v18, type metadata accessor for SecureLocationsCachedSharingKey);
}

uint64_t sub_1000DFB50()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001ALL;
    if (v1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0x6E614872656E776FLL;
    if (v1 != 4)
    {
      v6 = 0xD000000000000015;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x696669746E656469;
    v3 = 0xD000000000000015;
    if (v1 != 2)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0)
    {
      v2 = 0x6449794D646E6966;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1000DFC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F6038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DFC9C(uint64_t a1)
{
  v2 = sub_1000F11A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DFCD8(uint64_t a1)
{
  v2 = sub_1000F11A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000DFD14()
{
  Hasher.init(_seed:)();
  sub_1000DDE38();
  return Hasher._finalize()();
}

Swift::Int sub_1000DFD58()
{
  Hasher.init(_seed:)();
  sub_1000DDE38();
  return Hasher._finalize()();
}

uint64_t sub_1000DFDC8()
{
  v1 = 0x4B676E6972616873;
  if (*v0 != 1)
  {
    v1 = 0x6E49646572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1000DFE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F62DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DFE60(uint64_t a1)
{
  v2 = sub_1000F79D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DFE9C(uint64_t a1)
{
  v2 = sub_1000F79D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DFF08(uint64_t a1)
{
  v2 = type metadata accessor for DiversifiedRootKeys();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10004B564(&qword_1005AACA8, &qword_1004C4720);
  v6 = *(*(v53 - 1) + 64);
  __chkstk_darwin(v53);
  v56 = &v49 - v7;
  v8 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v14 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v49 - v20;
  __chkstk_darwin(v19);
  v23 = &v49 - v22;
  sub_100005F04(a1, v13, &qword_1005AB4D0, &unk_1004C45D0);
  v24 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v25 = *(*(v24 - 8) + 48);
  v26 = v25(v13, 1, v24);
  v51 = v18;
  v54 = v21;
  if (v26 == 1)
  {
    sub_100002CE0(v13, &qword_1005AB4D0, &unk_1004C45D0);
    v27 = 1;
  }

  else
  {
    (*(v3 + 16))(v23, &v13[*(v24 + 20)], v2);
    sub_10000CFBC(v13, type metadata accessor for SecureLocationsCachedSharingKey);
    v27 = 0;
  }

  v28 = *(v3 + 56);
  v29 = 1;
  v28(v23, v27, 1, v2);
  v30 = v2;
  v31 = v57 + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
  swift_beginAccess();
  v55 = v31;
  v32 = v25(v31, 1, v24);
  v33 = v54;
  if (!v32)
  {
    (*(v3 + 16))(v54, v55 + *(v24 + 20), v30);
    v29 = 0;
  }

  v28(v33, v29, 1, v30);
  v34 = *(v53 + 12);
  v35 = v56;
  sub_100005F04(v23, v56, &qword_1005AABB0, &unk_1004C45F0);
  sub_100005F04(v33, v35 + v34, &qword_1005AABB0, &unk_1004C45F0);
  v36 = *(v3 + 48);
  if (v36(v35, 1, v30) == 1)
  {
    sub_100002CE0(v33, &qword_1005AABB0, &unk_1004C45F0);
    sub_100002CE0(v23, &qword_1005AABB0, &unk_1004C45F0);
    if (v36(v35 + v34, 1, v30) == 1)
    {
      v37 = &qword_1005AABB0;
      v38 = &unk_1004C45F0;
      v39 = v35;
      return sub_100002CE0(v39, v37, v38);
    }

    goto LABEL_11;
  }

  v53 = v23;
  v40 = v35;
  v41 = v35;
  v42 = v51;
  sub_100005F04(v40, v51, &qword_1005AABB0, &unk_1004C45F0);
  if (v36(v41 + v34, 1, v30) == 1)
  {
    sub_100002CE0(v33, &qword_1005AABB0, &unk_1004C45F0);
    sub_100002CE0(v53, &qword_1005AABB0, &unk_1004C45F0);
    (*(v3 + 8))(v42, v30);
    v35 = v41;
LABEL_11:
    sub_100002CE0(v35, &qword_1005AACA8, &qword_1004C4720);
LABEL_12:
    v43 = *(v57 + 104);
    v44 = v52;
    sub_100005F04(v55, v52, &qword_1005AB4D0, &unk_1004C45D0);
    AsyncStreamProvider.yield(value:transaction:)();
    v39 = v44;
    v37 = &qword_1005AB4D0;
    v38 = &unk_1004C45D0;
    return sub_100002CE0(v39, v37, v38);
  }

  v46 = v50;
  (*(v3 + 32))(v50, v41 + v34, v30);
  sub_1000F11F8(&qword_1005AACB0, &type metadata accessor for DiversifiedRootKeys);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v3 + 8);
  v48(v46, v30);
  sub_100002CE0(v33, &qword_1005AABB0, &unk_1004C45F0);
  sub_100002CE0(v53, &qword_1005AABB0, &unk_1004C45F0);
  v48(v42, v30);
  result = sub_100002CE0(v41, &qword_1005AABB0, &unk_1004C45F0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1000E0548()
{
  _StringGuts.grow(_:)(33);

  result = kSecAttrViewHintFindMy;
  if (kSecAttrViewHintFindMy)
  {
    v1._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.append(_:)(v1);

    qword_1005AA740 = 0xD00000000000001FLL;
    *algn_1005AA748 = 0x80000001004E0D60;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000E0658(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (!*a1)
  {
    goto LABEL_4;
  }

  if (v15 == 1)
  {
    return;
  }

  if (v15 != 4)
  {
    v27 = v5;
    v28 = v12;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005DFB98);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "MeDevice: state is not thisDevice. Invalidating key cache", v23, 2u);
    }

    v24 = *(a2 + 48);
    aBlock[4] = sub_1000F7F74;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058F4F0;
    v25 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);
    (*(v27 + 8))(v8, v4);
    (*(v10 + 8))(v14, v28);
  }

  else
  {
LABEL_4:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005DFB98);
    v28 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v28, v17, "MeDevice: state unknown or none. Not invalidating cache", v18, 2u);
    }

    v19 = v28;
  }
}

uint64_t sub_1000E0AC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1000E126C();
}

void sub_1000E0B80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v52 = a2;
  v4 = type metadata accessor for UUID();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v50 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v49 = &v48 - v13;
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (&v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v3 + 48);
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v26 = v25;
  v27 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v24, v20);
  if (v27)
  {
    if (qword_1005A7EE8 == -1)
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
  v28 = type metadata accessor for Logger();
  sub_10000A6F0(v28, qword_1005DFB98);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v56[0] = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E0D80, v56);
    _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s", v31, 0xCu);
    sub_100004984(v32);
  }

  v33 = *(v3 + 32);

  sub_1004AE5D8(v15);

  if ((*(v55 + 48))(v15, 1, v16) == 1)
  {
    sub_100002CE0(v15, &qword_1005AB4D0, &unk_1004C45D0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "SharingKey: tried to set initial sharing key in memory, but no key found.", v36, 2u);
    }
  }

  else
  {
    sub_10000CEEC(v15, v19, type metadata accessor for SecureLocationsCachedSharingKey);
    v37 = String.utf8Data.getter();
    v39 = v38;
    v56[0] = v37;
    v56[1] = v38;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_1000049D0(v37, v39);
    LOBYTE(v37) = static UUID.== infix(_:_:)();
    (*(v53 + 8))(v7, v54);
    v40 = Logger.logObject.getter();
    if (v37)
    {
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "SharingKey: Setting sharing key into cache for current user.", v42, 2u);
      }

      v43 = v49;
      sub_10000CF54(v19, v49, type metadata accessor for SecureLocationsCachedSharingKey);
      (*(v55 + 56))(v43, 0, 1, v16);
      v44 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
      swift_beginAccess();
      v45 = v50;
      sub_100005F04(v3 + v44, v50, &qword_1005AB4D0, &unk_1004C45D0);
      swift_beginAccess();
      sub_1000F8980(v43, v3 + v44, &qword_1005AB4D0, &unk_1004C45D0);
      swift_endAccess();
      sub_1000DFF08(v45);
      sub_100002CE0(v45, &qword_1005AB4D0, &unk_1004C45D0);
      sub_100002CE0(v43, &qword_1005AB4D0, &unk_1004C45D0);
    }

    else
    {
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v40, v46, "SharingKey: Tried to set initial sharing key, but key in keychain does not belong to current user.", v47, 2u);
      }
    }

    sub_10000CFBC(v19, type metadata accessor for SecureLocationsCachedSharingKey);
  }
}

uint64_t sub_1000E126C()
{
  v1[16] = v0;
  v2 = *(*(sub_10004B564(&qword_1005AACD0, &unk_1004C4750) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005AACD8, &qword_1004D8900);
  v1[18] = v3;
  v4 = *(v3 - 8);
  v1[19] = v4;
  v5 = *(v4 + 64) + 15;
  v1[20] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005AACE0, &qword_1004C4760);
  v1[21] = v6;
  v7 = *(v6 - 8);
  v1[22] = v7;
  v8 = *(v7 + 64) + 15;
  v1[23] = swift_task_alloc();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v1[24] = v9;
  v10 = *(v9 - 8);
  v1[25] = v10;
  v11 = *(v10 + 64) + 15;
  v1[26] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  v1[27] = v12;
  v13 = *(v12 - 8);
  v1[28] = v13;
  v14 = *(v13 + 64) + 15;
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1490, 0, 0);
}

uint64_t sub_1000E1490()
{
  v1 = v0[28];
  v2 = v0[29];
  v13 = v0[26];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[16];
  v14 = v0[27];
  v0[30] = *(v5 + 48);
  v0[6] = sub_1000F8D4C;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058FB30;
  v6 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  v0[31] = sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  v0[32] = sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  v0[33] = sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v6);
  v7 = *(v3 + 8);
  v0[34] = v7;
  v0[35] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v13, v4);
  v8 = *(v1 + 8);
  v0[36] = v8;
  v0[37] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v14);
  v9 = v0[7];

  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v0[38] = v11;
  *v11 = v0;
  v11[1] = sub_1000E1704;

  return daemon.getter();
}

uint64_t sub_1000E1704(uint64_t a1)
{
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = a1;

  type metadata accessor for Daemon();
  sub_1000F11F8(&qword_1005AB4E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E185C, v5, v4);
}

uint64_t sub_1000E185C()
{
  v1 = *(v0 + 312);
  *(v0 + 320) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_1000E18D0, 0, 0);
}

uint64_t sub_1000E18D0()
{
  if (qword_1005A7F08 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = *algn_1005AA748;
  v0[41] = qword_1005AA740;
  v0[42] = v2;
  type metadata accessor for DarwinNotificationHandler();
  sub_1000F11F8(&qword_1005AACE8, &type metadata accessor for DarwinNotificationHandler);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E19C8, v4, v3);
}

uint64_t sub_1000E19C8()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[20];
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_1000E1A40, 0, 0);
}

uint64_t sub_1000E1A40()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = sub_1000E1B1C;
  v7 = v0[23];
  v8 = v0[21];
  v9 = v0[17];

  return AsyncStream.Iterator.next(isolation:)(v9, 0, 0, v8);
}

uint64_t sub_1000E1B1C()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return _swift_task_switch(sub_1000E1C18, 0, 0);
}

uint64_t sub_1000E1C18()
{
  v1 = v0[17];
  v2 = type metadata accessor for DarwinNotification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[29];
    v4 = v0[26];
    v5 = v0[20];
    (*(v0[22] + 8))(v0[23], v0[21]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v26 = v0[36];
    v27 = v0[37];
    v24 = v0[34];
    v25 = v0[35];
    v9 = v0[32];
    v8 = v0[33];
    v10 = v0[31];
    v11 = v0[29];
    v12 = v0[26];
    v22 = v0[30];
    v23 = v0[27];
    v13 = v0[24];
    v14 = v0[16];
    v0[12] = sub_1000F8D54;
    v0[13] = v14;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100020828;
    v0[11] = &unk_10058FB58;
    v15 = _Block_copy(v0 + 8);

    static DispatchQoS.unspecified.getter();
    v0[15] = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    v24(v12, v13);
    v26(v11, v23);
    v16 = v0[13];

    sub_100002CE0(v1, &qword_1005AACD0, &unk_1004C4750);
    v17 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v18 = swift_task_alloc();
    v0[43] = v18;
    *v18 = v0;
    v18[1] = sub_1000E1B1C;
    v19 = v0[23];
    v20 = v0[21];
    v21 = v0[17];

    return AsyncStream.Iterator.next(isolation:)(v21, 0, 0, v20);
  }
}

uint64_t sub_1000E1EDC()
{
  v0 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v5 - v2;
  sub_1000E8704(&v5 - v2);
  return sub_100002CE0(v3, &qword_1005AB4D0, &unk_1004C45D0);
}

uint64_t sub_1000E1F74()
{
  v0 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005DFB98);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received keychain sync notification. Invalidating cached keys.", v7, 2u);
  }

  sub_1000EA050();
  sub_1000E8704(v3);
  return sub_100002CE0(v3, &qword_1005AB4D0, &unk_1004C45D0);
}

uint64_t sub_1000E20D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin(v32);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v29 - v18;
  sub_1000E2544();
  v20 = *(a1 + 32);

  sub_1004AE5D8(v19);

  v21 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v22 = (*(*(v21 - 8) + 48))(v19, 1, v21) != 1;
  sub_100002CE0(v19, &qword_1005AB4D0, &unk_1004C45D0);
  sub_10004B518();
  (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v23 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v15, v11);
  v24 = swift_allocObject();
  v25 = v31;
  *(v24 + 16) = v30;
  *(v24 + 24) = v25;
  *(v24 + 32) = v22;
  aBlock[4] = sub_1000F7804;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058F158;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v27 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v35 + 8))(v6, v27);
  (*(v33 + 8))(v10, v34);
}

void sub_1000E2544()
{
  v1 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v58 = v54 - v3;
  v4 = type metadata accessor for PublicKey();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v57 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005AABA8, &unk_1004C45E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v56 = v54 - v9;
  v10 = type metadata accessor for DiversifiedRootKeys();
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = *(v61 + 64);
  v12 = __chkstk_darwin(v10);
  v54[1] = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = v54 - v14;
  v15 = sub_10004B564(&qword_1005AACC8, &qword_1004C4740);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (v54 - v17);
  v19 = type metadata accessor for PrivateKey();
  v59 = *(v19 - 8);
  v60 = v19;
  v20 = *(v59 + 64);
  v21 = __chkstk_darwin(v19);
  __chkstk_darwin(v21);
  v23 = v54 - v22;
  v24 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v54 - v26;
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = (v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = v0;
  v33 = *(v0 + 48);
  *v32 = v33;
  (*(v29 + 104))(v32, enum case for DispatchPredicate.onQueue(_:), v28);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  (*(v29 + 8))(v32, v28);
  if (v33)
  {
    if (qword_1005A7EF8 == -1)
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

  v35 = sub_100021BB4();

  if ((v35 & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000A6F0(v38, qword_1005DFB98);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_15;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "SetupVirtualMeDevice: Not a LocationPublishing device. Not setting up OBR";
    goto LABEL_14;
  }

  v36 = *(v63 + 32);

  sub_1004AE5D8(v27);

  v37 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  LODWORD(v36) = (*(*(v37 - 8) + 48))(v27, 1, v37);
  sub_100002CE0(v27, &qword_1005AB4D0, &unk_1004C45D0);
  if (v36 != 1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000A6F0(v43, qword_1005DFB98);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_15;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "SetupVirtualMeDevice: Key already exists";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);

LABEL_15:

    return;
  }

  unsafeFromAsyncTask<A>(_:)();
  v44 = *v18;
  v46 = v59;
  v45 = v60;
  (*(v59 + 32))(v23, v18 + *(v15 + 48), v60);
  v47 = type metadata accessor for IntermediateKey();
  (*(*(v47 - 8) + 56))(v56, 1, 1, v47);
  PrivateKey.publicKey.getter();
  v48 = v58;
  (*(v46 + 16))(v58, v23, v45);
  (*(v46 + 56))(v48, 0, 1, v45);
  v49 = v55;
  DiversifiedRootKeys.init(intermediateKey:publicKey:privateKey:)();
  sub_1000E8D04(v49, v44);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_10000A6F0(v50, qword_1005DFB98);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "SetupVirtualMeDevice: New sharing key imported", v53, 2u);
  }

  (*(v61 + 8))(v55, v62);
  (*(v46 + 8))(v23, v45);
}

uint64_t sub_1000E2EFC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for PrivateKey();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v1[6] = v6;
  *v6 = v1;
  v6[1] = sub_1000E2FEC;

  return daemon.getter();
}

uint64_t sub_1000E2FEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocationService();
  v9 = sub_1000F11F8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000F11F8(&qword_1005A9308, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_1000E31C8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000E31C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100077308, 0, 0);
  }

  else
  {
    v7 = v4[7];

    v8 = swift_task_alloc();
    v4[11] = v8;
    *v8 = v6;
    v8[1] = sub_1000E3350;

    return sub_10001CC28();
  }
}

uint64_t sub_1000E3350(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *v1;
  v3[12] = a1;

  v6 = swift_task_alloc();
  v3[13] = v6;
  *v6 = v5;
  v6[1] = sub_1000E349C;
  v7 = v3[5];

  return sub_100470A18(v7);
}

uint64_t sub_1000E349C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_1000E368C;
  }

  else
  {
    v8 = *(v4 + 96);

    *(v4 + 120) = a1;
    v7 = sub_1000E35CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000E35CC()
{
  v1 = v0[15];
  v2 = v0[9];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  v7 = *(sub_10004B564(&qword_1005AACC8, &qword_1004C4740) + 48);
  *v6 = v1;
  (*(v4 + 32))(&v6[v7], v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000E368C()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000E3704(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = sub_1000E3820;

  return daemon.getter();
}

uint64_t sub_1000E3820(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  v3[13] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[14] = v6;
  v7 = type metadata accessor for Daemon();
  v3[15] = v7;
  v8 = type metadata accessor for LocationService();
  v9 = sub_1000F11F8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[16] = v9;
  v10 = sub_1000F11F8(&qword_1005A9308, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_1000E3A00;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000E3A00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000E5704, 0, 0);
  }

  else
  {
    v7 = v4[13];

    v8 = swift_task_alloc();
    v4[19] = v8;
    *v8 = v6;
    v8[1] = sub_1000E3B88;

    return sub_10001CC28();
  }
}

uint64_t sub_1000E3B88(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(v2 + 160) = a1;

  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  *(v2 + 168) = v5;
  *v5 = v7;
  v5[1] = sub_1000E3CB8;

  return daemon.getter();
}

uint64_t sub_1000E3CB8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v5 = *v1;
  v3[22] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[23] = v7;
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000F11F8(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v7 = v5;
  v7[1] = sub_1000E3E6C;
  v10 = v3[16];
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1000E3E6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000E5794, 0, 0);
  }

  else
  {
    v7 = v4[22];

    v8 = swift_task_alloc();
    v4[26] = v8;
    *v8 = v6;
    v8[1] = sub_1000E4018;

    return (sub_1000E5AF4)(v4 + 2, 2);
  }
}

uint64_t sub_1000E4018()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1000E583C;
  }

  else
  {
    v3 = sub_1000E412C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E412C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 224) = v2;
  *(v0 + 232) = v1;
  if (v1 >> 60 == 15)
  {
    v3 = swift_task_alloc();
    *(v0 + 240) = v3;
    *v3 = v0;
    v3[1] = sub_1000E4268;
    v4 = *(v0 + 192);

    return sub_1003051F4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 160);
    v8 = *(v0 + 136);

    sub_10001A794(v2, v1);
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    **(v0 + 32) = 0;

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1000E4268(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v7 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = sub_1000E58E4;
  }

  else
  {
    v5 = sub_1000E437C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E437C()
{
  v1 = v0[31];
  v2 = *(v1 + 16);
  v0[33] = v2;
  if (v2)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
      v20 = v0[31];
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFB98);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[31];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = *(v1 + 16);

      *(v8 + 4) = v9;

      _os_log_impl(&_mh_execute_header, v4, v5, "SecureLocationSetup: already have %ld keys, skipping import…", v8, 0xCu);
    }

    else
    {
      v17 = v0[31];
      swift_bridgeObjectRelease_n();
    }

    v18 = swift_task_alloc();
    v0[46] = v18;
    *v18 = v0;
    v18[1] = sub_1000E5528;
    v19 = v0[24];

    return sub_1004AACF8(0, 0xC000000000000000, 2);
  }

  else
  {

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    v0[34] = sub_10000A6F0(v10, qword_1005DFB98);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "SecureLocationSetup: Starting import of shared keys…", v13, 2u);
    }

    v14 = swift_task_alloc();
    v0[35] = v14;
    *v14 = v0;
    v14[1] = sub_1000E4678;
    v15 = v0[20];

    return sub_100470DBC();
  }
}

uint64_t sub_1000E4678(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v7 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {
    v5 = sub_1000E598C;
  }

  else
  {
    v5 = sub_1000E478C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E478C()
{
  v1 = *(v0 + 272);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SecureLocationSetup: Received shared keys for importing, storing…", v4, 2u);
  }

  v5 = *(v0 + 288);

  v6 = *(v5 + 16);
  *(v0 + 304) = v6;
  v7 = *(v0 + 288);
  if (v6)
  {
    v8 = *(v0 + 192);
    v9 = *(v0 + 48);
    *(v0 + 312) = sub_1000F11F8(&qword_1005AAB90, type metadata accessor for LocalStorageService);
    v10 = *(v9 + 80);
    *(v0 + 384) = v10;
    *(v0 + 320) = *(v9 + 72);
    *(v0 + 328) = 0;
    sub_10000CF54(v7 + ((v10 + 32) & ~v10), *(v0 + 88), type metadata accessor for SecureLocationsCachedSharedKey);

    return _swift_task_switch(sub_1000E4A38, v8, 0);
  }

  else
  {
    v11 = *(v0 + 272);
    v12 = *(v0 + 288);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 288);
    if (v15)
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      v18 = *(v16 + 16);

      *(v17 + 4) = v18;

      _os_log_impl(&_mh_execute_header, v13, v14, "SecureLocationSetup: %ld shared keys imported", v17, 0xCu);
    }

    else
    {
      v19 = *(v0 + 288);
      swift_bridgeObjectRelease_n();
    }

    v20 = swift_task_alloc();
    *(v0 + 368) = v20;
    *v20 = v0;
    v20[1] = sub_1000E5528;
    v21 = *(v0 + 192);

    return sub_1004AACF8(0, 0xC000000000000000, 2);
  }
}

uint64_t sub_1000E4A38()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 192);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = (*(v0 + 384) + 24) & ~*(v0 + 384);
  v6 = *(v2 + 208);
  sub_10000CF54(*(v0 + 88), v3, type metadata accessor for SecureLocationsCachedSharedKey);
  v7 = swift_allocObject();
  *(v0 + 336) = v7;
  *(v7 + 16) = v2;
  sub_10000CEEC(v3, v7 + v5, type metadata accessor for SecureLocationsCachedSharedKey);

  v8 = swift_task_alloc();
  *(v0 + 344) = v8;
  v8[2] = &unk_1004C45B8;
  v8[3] = v7;
  v8[4] = v6;
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  *(v0 + 352) = v10;
  *v10 = v0;
  v10[1] = sub_1000E4BD0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v2, v1, 0xD00000000000001DLL, 0x80000001004E0910, sub_1000F4C9C, v8, &type metadata for () + 8);
}

uint64_t sub_1000E4BD0()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v10 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = v2[24];
    v5 = sub_1000E50A8;
  }

  else
  {
    v6 = v2[42];
    v7 = v2[43];
    v8 = v2[24];

    v5 = sub_1000E4D00;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000E4D1C()
{
  v29 = v0;
  v1 = *(v0 + 272);
  sub_10000CF54(*(v0 + 88), *(v0 + 72), type metadata accessor for SecureLocationsCachedSharedKey);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  if (v4)
  {
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = (v6 + *(v7 + 20));
    v11 = *v10;
    v12 = v10[1];

    sub_10000CFBC(v6, type metadata accessor for SecureLocationsCachedSharedKey);
    v13 = sub_10000D01C(v11, v12, &v28);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "SecureLocationSetup: imported shared key for %{private,mask.hash}s", v8, 0x16u);
    sub_100004984(v9);
  }

  else
  {

    sub_10000CFBC(v6, type metadata accessor for SecureLocationsCachedSharedKey);
  }

  sub_10000CFBC(v5, type metadata accessor for SecureLocationsCachedSharedKey);
  v14 = *(v0 + 328) + 1;
  if (v14 == *(v0 + 304))
  {
    v15 = *(v0 + 288);
    v16 = *(v0 + 272);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 288);
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      v22 = *(v20 + 16);

      *(v21 + 4) = v22;

      _os_log_impl(&_mh_execute_header, v17, v18, "SecureLocationSetup: %ld shared keys imported", v21, 0xCu);
    }

    else
    {
      v24 = *(v0 + 288);
      swift_bridgeObjectRelease_n();
    }

    v25 = swift_task_alloc();
    *(v0 + 368) = v25;
    *v25 = v0;
    v25[1] = sub_1000E5528;
    v26 = *(v0 + 192);

    return sub_1004AACF8(0, 0xC000000000000000, 2);
  }

  else
  {
    *(v0 + 328) = v14;
    v23 = *(v0 + 192);
    sub_10000CF54(*(v0 + 288) + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(v0 + 320) * v14, *(v0 + 88), type metadata accessor for SecureLocationsCachedSharedKey);

    return _swift_task_switch(sub_1000E4A38, v23, 0);
  }
}

uint64_t sub_1000E50A8()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return _swift_task_switch(sub_1000E5118, 0, 0);
}

uint64_t sub_1000E5118()
{
  v35 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 272);
  sub_10000CF54(*(v0 + 88), *(v0 + 64), type metadata accessor for SecureLocationsCachedSharedKey);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 360);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  if (v5)
  {
    v9 = *(v0 + 40);
    v33 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v13 = (v8 + *(v9 + 20));
    v14 = *v13;
    v15 = v13[1];

    sub_10000CFBC(v8, type metadata accessor for SecureLocationsCachedSharedKey);
    v16 = sub_10000D01C(v14, v15, &v34);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "SecureLocationSetup: importing shared key for %{private,mask.hash}s failed with %@", v10, 0x20u);
    sub_100002CE0(v11, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v12);

    v18 = v33;
  }

  else
  {

    sub_10000CFBC(v8, type metadata accessor for SecureLocationsCachedSharedKey);
    v18 = v7;
  }

  sub_10000CFBC(v18, type metadata accessor for SecureLocationsCachedSharedKey);
  v19 = *(v0 + 328) + 1;
  if (v19 == *(v0 + 304))
  {
    v20 = *(v0 + 288);
    v21 = *(v0 + 272);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 288);
    if (v24)
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      v27 = *(v25 + 16);

      *(v26 + 4) = v27;

      _os_log_impl(&_mh_execute_header, v22, v23, "SecureLocationSetup: %ld shared keys imported", v26, 0xCu);
    }

    else
    {
      v29 = *(v0 + 288);
      swift_bridgeObjectRelease_n();
    }

    v30 = swift_task_alloc();
    *(v0 + 368) = v30;
    *v30 = v0;
    v30[1] = sub_1000E5528;
    v31 = *(v0 + 192);

    return sub_1004AACF8(0, 0xC000000000000000, 2);
  }

  else
  {
    *(v0 + 328) = v19;
    v28 = *(v0 + 192);
    sub_10000CF54(*(v0 + 288) + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(v0 + 320) * v19, *(v0 + 88), type metadata accessor for SecureLocationsCachedSharedKey);

    return _swift_task_switch(sub_1000E4A38, v28, 0);
  }
}

uint64_t sub_1000E5528()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_1000E5A40;
  }

  else
  {
    v3 = sub_1000E563C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E563C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 264) == 0;
  sub_10001A794(*(v0 + 224), *(v0 + 232));

  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  **(v0 + 32) = v4;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000E5704()
{
  v1 = v0[13];

  v2 = v0[18];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000E5794()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];

  v4 = v0[25];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E583C()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[17];

  v4 = v0[27];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E58E4()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[17];

  v4 = v0[32];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E598C()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[17];
  sub_10001A794(v0[28], v0[29]);

  v4 = v0[37];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E5A40()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[17];
  sub_10001A794(v0[28], v0[29]);

  v4 = v0[47];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E5AF4(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  return _swift_task_switch(sub_1000E5B18, v2, 0);
}

uint64_t sub_1000E5B18()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 112);
  v3 = *(v1 + 192);
  v4 = swift_allocObject();
  *(v0 + 80) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = sub_1000F11F8(&qword_1005AAB90, type metadata accessor for LocalStorageService);

  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v6[2] = &unk_1004C45C0;
  v6[3] = v4;
  v6[4] = v3;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = sub_10004B564(&qword_1005AAB98, &qword_1004C45C8);
  *v8 = v0;
  v8[1] = sub_1000E5CA8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, v5, 0xD00000000000001DLL, 0x80000001004E0910, sub_1000F4D58, v6, v9);
}

uint64_t sub_1000E5CA8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = sub_1000E5F10;
  }

  else
  {
    v6 = v2[10];
    v7 = v2[11];
    v8 = v2[9];

    v5 = sub_1000E5DD8;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000E5DD8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 104);
    v6 = type metadata accessor for PropertyListDecoder();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000F4D64();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v5)
    {
      sub_1000F4DB8(v2, v1, v3, v4);

      v9 = *(v0 + 8);
      goto LABEL_7;
    }

    v10 = *(v0 + 64);
    sub_1000F4DB8(v2, v1, v3, v4);

    *v10 = *(v0 + 48);
  }

  else
  {
    **(v0 + 64) = xmmword_1004C43F0;
  }

  v9 = *(v0 + 8);
LABEL_7:

  return v9();
}

uint64_t sub_1000E5F10()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[13];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000E5F7C(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 96) = a1;
  return _swift_task_switch(sub_1000E5FA0, v1, 0);
}

uint64_t sub_1000E5FA0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 96);
  v3 = *(v1 + 192);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = sub_1000F11F8(&qword_1005AAB90, type metadata accessor for LocalStorageService);

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v6[2] = &unk_1004C4608;
  v6[3] = v4;
  v6[4] = v3;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  v9 = sub_10004B564(&qword_1005AAB98, &qword_1004C45C8);
  *v8 = v0;
  v8[1] = sub_1000E6130;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, v5, 0xD00000000000001DLL, 0x80000001004E0910, sub_1000F927C, v6, v9);
}

uint64_t sub_1000E6130()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = sub_1000E63AC;
  }

  else
  {
    v6 = v2[8];
    v7 = v2[9];
    v8 = v2[7];

    v5 = sub_1000E6260;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000E6260()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[11];
    v6 = type metadata accessor for PropertyListDecoder();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005AABB8, &qword_1004C4610);
    sub_1000F78FC();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_1000F4DB8(v2, v1, v3, v4);

    if (v5)
    {
      v9 = v0[1];

      return v9();
    }

    v11 = v0[6];
  }

  else
  {
    v11 = 0;
  }

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1000E63AC()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000E6418(uint64_t a1, char a2)
{
  *(v3 + 120) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = type metadata accessor for SecureLocationsConfig();
  *(v3 + 64) = v4;
  v5 = *(v4 - 8);
  *(v3 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1000E64DC, v2, 0);
}

uint64_t sub_1000E64DC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 120);
  v3 = *(v1 + 192);
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = sub_1000F11F8(&qword_1005AAB90, type metadata accessor for LocalStorageService);

  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v6[2] = &unk_1004C4630;
  v6[3] = v4;
  v6[4] = v3;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  v9 = sub_10004B564(&qword_1005AAB98, &qword_1004C45C8);
  *v8 = v0;
  v8[1] = sub_1000E666C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, v5, 0xD00000000000001DLL, 0x80000001004E0910, sub_1000F927C, v6, v9);
}

uint64_t sub_1000E666C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = sub_1000E6954;
  }

  else
  {
    v6 = v2[11];
    v7 = v2[12];
    v8 = v2[7];

    v5 = sub_1000E679C;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000E679C()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[14];
    v6 = v0[10];
    v7 = v0[8];
    v8 = type metadata accessor for PropertyListDecoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000F11F8(&qword_1005AABF8, type metadata accessor for SecureLocationsConfig);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v5)
    {
      sub_1000F4DB8(v2, v1, v3, v4);

      v11 = v0[10];

      v12 = v0[1];
      goto LABEL_7;
    }

    v14 = v0[10];
    v15 = v0[6];
    sub_1000F4DB8(v2, v1, v3, v4);

    sub_10000CEEC(v14, v15, type metadata accessor for SecureLocationsConfig);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v16 = v0[10];
  (*(v0[9] + 56))(v0[6], v13, 1, v0[8]);

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_1000E6954()
{
  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[14];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000E69C8()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFB98);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "shareKey: keyForSharingLocationToFriends", v3, 2u);
  }

  v4 = type metadata accessor for Transaction();
  __chkstk_darwin(v4);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1000E6B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 48);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  aBlock[4] = sub_1000F8BD8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058F978;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v11, v8);
  (*(v12 + 8))(v15, v20);
}

uint64_t sub_1000E6E24(char *a1, uint64_t a2, char *a3, char *a4)
{
  v114 = a4;
  v115 = a3;
  v116 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v112 = *(v5 - 8);
  v113 = v5;
  v6 = *(v112 + 64);
  __chkstk_darwin(v5);
  v110 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for DispatchQoS();
  v109 = *(v111 - 8);
  v8 = *(v109 + 64);
  __chkstk_darwin(v111);
  v108 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v106 = *(v10 - 8);
  v107 = v10;
  v11 = *(v106 + 64);
  __chkstk_darwin(v10);
  v105 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for HashedAdvertisement();
  v100 = *(v101 - 8);
  v13 = *(v100 + 64);
  __chkstk_darwin(v101);
  v99 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Advertisement();
  v97 = *(v98 - 8);
  v15 = *(v97 + 64);
  __chkstk_darwin(v98);
  v96 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for PublicKey();
  v95 = *(v94 - 8);
  v17 = *(v95 + 8);
  __chkstk_darwin(v94);
  v93 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DiversifiedRootKeys();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v103 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v102 = &v83 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v83 - v26;
  __chkstk_darwin(v25);
  v29 = &v83 - v28;
  v30 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v83 - v32;
  v34 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8704(v33);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_100002CE0(v33, &qword_1005AB4D0, &unk_1004C45D0);
    v39 = v114;

    v40 = v116;

    sub_1000F6DC0(v41, v115, v39, v40, a1);
  }

  else
  {
    sub_10000CEEC(v33, v38, type metadata accessor for SecureLocationsCachedSharingKey);
    v43 = *(v34 + 20);
    v44 = v20[2];
    v44(v29, &v38[v43], v19);
    v45 = v19;
    v46 = v20;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v92 = v38;
    v47 = type metadata accessor for Logger();
    sub_10000A6F0(v47, qword_1005DFB98);
    v44(v27, v29, v45);
    v48 = v102;
    v104 = v29;
    v91 = v20 + 2;
    v90 = v44;
    v44(v102, v29, v45);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v85 = v51;
      v88 = swift_slowAlloc();
      aBlock[0] = v88;
      *v51 = 136315394;
      v87 = v49;
      v52 = v93;
      v86 = v50;
      DiversifiedRootKeys.publicKey.getter();
      sub_1000F11F8(&qword_1005AACC0, &type metadata accessor for PublicKey);
      v53 = v94;
      v54 = RawRepresentable<>.base64EncodedString(options:)();
      v56 = v55;
      v84 = *(v95 + 1);
      v84(v52, v53);
      v83 = v45;
      v95 = v46[1];
      v89 = (v46 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v95(v27, v45);
      v57 = sub_10000D01C(v54, v56, aBlock);

      v58 = v85;
      *(v85 + 1) = v57;
      *(v58 + 6) = 2080;
      DiversifiedRootKeys.publicKey.getter();
      v59 = v96;
      PublicKey.advertisement.getter();
      v60 = v53;
      v61 = v83;
      v84(v52, v60);
      v62 = v99;
      Advertisement.hashed.getter();
      (*(v97 + 8))(v59, v98);
      sub_1000F11F8(&qword_1005AAC98, &type metadata accessor for HashedAdvertisement);
      v63 = v101;
      v64 = RawRepresentable<>.base64EncodedString(options:)();
      v66 = v65;
      (*(v100 + 8))(v62, v63);
      v95(v48, v61);
      v67 = sub_10000D01C(v64, v66, aBlock);

      *(v58 + 14) = v67;
      v68 = v87;
      _os_log_impl(&_mh_execute_header, v87, v86, "keysForFriends: Memory cached %s locationId: %s", v58, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v69 = v20[1];
      v89 = (v20 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v69(v48, v45);
      v95 = v69;
      v69(v27, v45);
      v61 = v45;
    }

    v70 = v114;
    v71 = v115;
    sub_10004B518();
    v73 = v105;
    v72 = v106;
    v74 = v107;
    (*(v106 + 104))(v105, enum case for DispatchQoS.QoSClass.default(_:), v107);
    v75 = static OS_dispatch_queue.global(qos:)();
    (*(v72 + 8))(v73, v74);
    v76 = v103;
    v90(v103, v104, v61);
    v77 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = v71;
    *(v78 + 24) = v70;
    (v46[4])(v78 + v77, v76, v61);
    *(v78 + ((v21 + v77 + 7) & 0xFFFFFFFFFFFFFFF8)) = v116;
    aBlock[4] = sub_1000F8BE4;
    aBlock[5] = v78;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058F9C8;
    v79 = _Block_copy(aBlock);

    v80 = v108;
    static DispatchQoS.unspecified.getter();
    v117 = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v81 = v110;
    v82 = v113;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v79);

    (*(v112 + 8))(v81, v82);
    (*(v109 + 8))(v80, v111);
    v95(v104, v61);

    Transaction.capture()();
    return sub_10000CFBC(v92, type metadata accessor for SecureLocationsCachedSharingKey);
  }
}

void sub_1000E7AC4(void (*a1)(char *, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for DiversifiedRootKeys();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  a1(v8, 0);
  sub_100002CE0(v8, &qword_1005AABB0, &unk_1004C45F0);
  Transaction.capture()();
}

void sub_1000E7C08(char a1, void (*a2)(char *, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  if (a1)
  {
    v13 = type metadata accessor for Transaction();
    __chkstk_darwin(v13);
    v25[-4] = a5;
    v25[-3] = a2;
    v25[-2] = a3;
    static Transaction.named<A>(_:with:)();
LABEL_11:
    Transaction.capture()();
    return;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFB98);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "keysForFriends: SecureLocations not setup. Cannot share keys", v17, 2u);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  v18 = qword_1005DFB60;
  v19 = *(qword_1005DFB60 + 16);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = 0xD000000000000019;
  v20[4] = 0x80000001004E0D40;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000CAB60;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1000CAA0C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_10058FB08;
  v22 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v19, v22);
  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    v23 = type metadata accessor for DiversifiedRootKeys();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    type metadata accessor for SecureLocationsError(0);
    v25[1] = 3;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_1000F11F8(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v24 = aBlock[0];
    a2(v12, aBlock[0]);

    sub_100002CE0(v12, &qword_1005AABB0, &unk_1004C45F0);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1000E8048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 48);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  aBlock[4] = sub_1000F8CE8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058FA90;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v11, v8);
  (*(v12 + 8))(v15, v20);
}

void sub_1000E8344(uint64_t a1, uint64_t a2, void (*a3)(char *, void *))
{
  v5 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 32);

  sub_1004AE5D8(v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100002CE0(v12, &qword_1005AB4D0, &unk_1004C45D0);
    v19 = type metadata accessor for DiversifiedRootKeys();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    type metadata accessor for SecureLocationsError(0);
    v26 = 3;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_1000F11F8(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v27;
    a3(v8, v27);

    sub_100002CE0(v8, &qword_1005AABB0, &unk_1004C45F0);
  }

  else
  {
    sub_10000CEEC(v12, v17, type metadata accessor for SecureLocationsCachedSharingKey);
    v21 = sub_1000F4690();
    if (v22)
    {
      sub_1000E0B80(v21, v22);
    }

    v23 = *(v13 + 20);
    v24 = type metadata accessor for DiversifiedRootKeys();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v8, &v17[v23], v24);
    (*(v25 + 56))(v8, 0, 1, v24);
    a3(v8, 0);
    sub_100002CE0(v8, &qword_1005AABB0, &unk_1004C45F0);
    sub_10000CFBC(v17, type metadata accessor for SecureLocationsCachedSharingKey);
  }

  Transaction.capture()();
}

uint64_t sub_1000E8704@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v42 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v3 = *(*(v42 - 8) + 64);
  v4 = __chkstk_darwin(v42);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v45 = &v42 - v7;
  __chkstk_darwin(v6);
  v9 = &v42 - v8;
  v46 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v46);
  v43 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000A6F0(v18, qword_1005DFB98);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "shareKey: getCachedSharingKeys", v21, 2u);
  }

  v22 = *(v2 + 48);
  *v17 = v22;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v17, v13);
  if (v22)
  {
    v25 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
    swift_beginAccess();
    sub_100005F04(v2 + v25, v9, &qword_1005AB4D0, &unk_1004C45D0);
    v26 = v46;
    if ((*(v10 + 48))(v9, 1, v46) == 1)
    {
      sub_100002CE0(v9, &qword_1005AB4D0, &unk_1004C45D0);
      v27 = *(v2 + 32);

      v28 = v45;
      sub_1004AE5D8(v45);

      v29 = v44;
      sub_100005F04(v2 + v25, v44, &qword_1005AB4D0, &unk_1004C45D0);
      swift_beginAccess();
      sub_1000F8980(v28, v2 + v25, &qword_1005AB4D0, &unk_1004C45D0);
      swift_endAccess();
      sub_1000DFF08(v29);
      sub_100002CE0(v29, &qword_1005AB4D0, &unk_1004C45D0);
      sub_100002CE0(v28, &qword_1005AB4D0, &unk_1004C45D0);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v48 = v33;
        *v32 = 136315138;
        sub_100005F04(v2 + v25, v28, &qword_1005AB4D0, &unk_1004C45D0);
        v34 = String.init<A>(describing:)();
        v36 = sub_10000D01C(v34, v35, &v48);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "shareKey: Returning localstorage cached sharing keys %s", v32, 0xCu);
        sub_100004984(v33);
      }

      return sub_100005F04(v2 + v25, v47, &qword_1005AB4D0, &unk_1004C45D0);
    }

    else
    {
      v37 = v43;
      sub_10000CEEC(v9, v43, type metadata accessor for SecureLocationsCachedSharingKey);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "shareKey: returning memory cached sharing keys", v40, 2u);
      }

      v41 = v47;
      sub_10000CEEC(v37, v47, type metadata accessor for SecureLocationsCachedSharingKey);
      return (*(v10 + 56))(v41, 0, 1, v26);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}