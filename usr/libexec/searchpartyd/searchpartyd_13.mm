unint64_t sub_100165B80()
{
  result = qword_101698658;
  if (!qword_101698658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698658);
  }

  return result;
}

void *sub_100165BD4(uint8_t a1, char a2, char a3, char a4)
{
  v17 = &_swiftEmptySetSingleton;
  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      if (!a1)
      {
        if (a2)
        {
          sub_100DE9DC0(&v16, 1);
          if ((a3 & 1) == 0)
          {
LABEL_6:
            if ((a4 & 1) == 0)
            {
              return v17;
            }

            goto LABEL_28;
          }
        }

        else if ((a3 & 1) == 0)
        {
          goto LABEL_6;
        }

        sub_100DE9DC0(&v16, 2);
        if (a4)
        {
LABEL_28:
          v12 = 3;
LABEL_38:
          sub_100DE9DC0(&v16, v12);
        }

        return v17;
      }

      if (a2)
      {
        sub_100DE9DC0(&v16, 2);
        if ((a3 & 1) == 0)
        {
LABEL_20:
          if ((a4 & 1) == 0)
          {
            return v17;
          }

          goto LABEL_34;
        }
      }

      else if ((a3 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_100DE9DC0(&v16, 3);
      if ((a4 & 1) == 0)
      {
        return v17;
      }

LABEL_34:
      v12 = 0;
      goto LABEL_38;
    }

    if (a1 == 2)
    {
      if (a2)
      {
        sub_100DE9DC0(&v16, 3);
        if ((a3 & 1) == 0)
        {
LABEL_16:
          if ((a4 & 1) == 0)
          {
            return v17;
          }

          goto LABEL_31;
        }
      }

      else if ((a3 & 1) == 0)
      {
        goto LABEL_16;
      }

      sub_100DE9DC0(&v16, 0);
      if ((a4 & 1) == 0)
      {
        return v17;
      }

LABEL_31:
      v12 = 1;
      goto LABEL_38;
    }

    if (a2)
    {
      sub_100DE9DC0(&v16, 0);
      if ((a3 & 1) == 0)
      {
LABEL_24:
        if ((a4 & 1) == 0)
        {
          return v17;
        }

        goto LABEL_37;
      }
    }

    else if ((a3 & 1) == 0)
    {
      goto LABEL_24;
    }

    sub_100DE9DC0(&v16, 1);
    if ((a4 & 1) == 0)
    {
      return v17;
    }

LABEL_37:
    v12 = 2;
    goto LABEL_38;
  }

  if (qword_101694478 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A548);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 16777472;
    v9[4] = a1;
    _os_log_impl(&_mh_execute_header, v7, v8, "illegal selfPart: %hhu!", v9, 5u);
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100165E40()
{
  result = qword_101698668;
  if (!qword_101698668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698668);
  }

  return result;
}

uint64_t sub_100165E94(char a1, char a2, char a3, uint64_t a4)
{
  v4 = 2;
  if (a1)
  {
    v4 = 3;
  }

  v5 = 4;
  if ((a1 & 1) == 0)
  {
    v5 = 1;
  }

  if ((a3 & 1) == 0)
  {
    v4 = v5;
  }

  v6 = 2;
  if (a2)
  {
    v6 = 3;
  }

  v7 = 4;
  if ((a2 & 1) == 0)
  {
    v7 = 1;
  }

  if ((a1 & 1) == 0)
  {
    v6 = v7;
  }

  if (a4)
  {
    v6 = 0;
  }

  if (a4 == 1)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t getEnumTagSinglePayload for Type18Status.Multipart(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Type18Status.Multipart(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100165FA4()
{
  result = qword_101698670;
  if (!qword_101698670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698670);
  }

  return result;
}

unint64_t sub_100165FFC()
{
  result = qword_101698678;
  if (!qword_101698678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698678);
  }

  return result;
}

unint64_t sub_100166050()
{
  result = qword_101698680;
  if (!qword_101698680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698680);
  }

  return result;
}

unint64_t sub_1001660A4()
{
  result = qword_101698688;
  if (!qword_101698688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698688);
  }

  return result;
}

uint64_t sub_10016610C(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for UUID() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_1001661F0(uint64_t a1, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a4 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      sub_100017D5C(v15, *(&v15 + 1));
      a2(&v16, &v15);
      result = sub_100016590(v15, *(&v15 + 1));
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;
      v13 = v14;
      if (!v10)
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
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v16;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_10016632C()
{
  v1 = *(v0 + *(type metadata accessor for OwnerSharingCircle() + 32));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_1003A85FC(*(v1 + 16), 0);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = sub_1003CC2CC(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);

  sub_1000128F8();
  if (v5 != v2)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_10016642C()
{
  v1 = *(v0 + *(type metadata accessor for MemberSharingCircle() + 36));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_1003A85FC(*(v1 + 16), 0);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = sub_1003CC2CC(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);

  sub_1000128F8();
  if (v5 != v2)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_10016652C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A560);
  sub_1000076D4(v0, qword_10177A560);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001665B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v14;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v9 = type metadata accessor for UUID();
  v8[15] = v9;
  v10 = *(v9 - 8);
  v8[16] = v10;
  v11 = *(v10 + 64) + 15;
  v8[17] = swift_task_alloc();

  return _swift_task_switch(sub_100166680, 0, 0);
}

uint64_t sub_100166680()
{
  v70 = v0;
  v1 = v0[9];
  if (v1 != 2)
  {
    if (v1 == 1)
    {
      v2 = *sub_1000035D0((v0[10] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[10] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
      v3 = swift_task_alloc();
      v0[18] = v3;
      *v3 = v0;
      v3[1] = sub_100166DF4;
      v5 = v0[11];
      v4 = v0[12];

      return sub_10018F2A8(v5, v4);
    }

    sub_100111BE4();
    v11 = swift_allocError();
    *v12 = 2;
    swift_willThrow();
    if (qword_101694480 != -1)
    {
LABEL_52:
      swift_once();
    }

    v13 = v0[16];
    v14 = v0[17];
    v15 = v0[15];
    v16 = v0[11];
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177A560);
    (*(v13 + 16))(v14, v16, v15);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[16];
    v22 = v0[17];
    v23 = v0[15];
    if (v20)
    {
      v24 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v69 = v67;
      *v24 = 141558531;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v21 + 8))(v22, v23);
      v28 = sub_1000136BC(v25, v27, &v69);

      *(v24 + 14) = v28;
      *(v24 + 22) = 2114;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v29;
      *v65 = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to share beacon: %{private,mask.hash}s, error: %{public}@.", v24, 0x20u);
      sub_10000B3A8(v65, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v67);
    }

    else
    {

      (*(v21 + 8))(v22, v23);
    }

    v30 = v0[12];
    v68 = v11;
    if ((v30 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
      sub_100009CC8(&qword_101698E28, &qword_101698D00, SPHandle_ptr);
      Set.Iterator.init(_cocoa:)();
      v31 = v0[2];
      v32 = v0[3];
      v34 = v0[4];
      v33 = v0[5];
      v35 = v0[6];
    }

    else
    {
      v36 = -1 << *(v30 + 32);
      v32 = v30 + 56;
      v34 = ~v36;
      v37 = -v36;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v35 = v38 & *(v30 + 56);

      v33 = 0;
    }

    v39 = (v34 + 64) >> 6;
    v40 = _swiftEmptyDictionarySingleton;
    for (i = v31; ; v31 = i)
    {
      if (v31 < 0)
      {
        v47 = __CocoaSet.Iterator.next()();
        if (!v47 || (v0[8] = v47, sub_100008BB8(0, &qword_101698D00, SPHandle_ptr), swift_dynamicCast(), v46 = v0[7], v11 = v33, v45 = v35, !v46))
        {
LABEL_42:
          v62 = v0[13];
          v61 = v0[14];
          sub_1000128F8();
          v62(0, v40);

          v63 = v0[17];

          v64 = v0[1];

          return v64();
        }
      }

      else
      {
        v43 = v33;
        v44 = v35;
        v11 = v33;
        if (!v35)
        {
          while (1)
          {
            v11 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              break;
            }

            if (v11 >= v39)
            {
              goto LABEL_42;
            }

            v44 = *(v32 + 8 * v11);
            ++v43;
            if (v44)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

LABEL_27:
        v45 = (v44 - 1) & v44;
        v46 = *(*(v31 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v44)))));
        if (!v46)
        {
          goto LABEL_42;
        }
      }

      swift_errorRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v40;
      v49 = sub_1007720C0(v46);
      v51 = v40[2];
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_50;
      }

      v55 = v50;
      if (v40[3] >= v54)
      {
        v57 = v68;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v50)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v60 = v49;
          sub_10100670C();
          v49 = v60;
          v57 = v68;
          v40 = v69;
          if (v55)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_100FE91CC(v54, isUniquelyReferenced_nonNull_native);
        v40 = v69;
        v49 = sub_1007720C0(v46);
        if ((v55 & 1) != (v56 & 1))
        {
          sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v57 = v68;
        if (v55)
        {
LABEL_20:
          v41 = v40[7];
          v42 = *(v41 + 8 * v49);
          *(v41 + 8 * v49) = v57;

          goto LABEL_21;
        }
      }

      v40[(v49 >> 6) + 8] |= 1 << v49;
      *(v40[6] + 8 * v49) = v46;
      *(v40[7] + 8 * v49) = v57;
      v58 = v40[2];
      v53 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v53)
      {
        goto LABEL_51;
      }

      v40[2] = v59;
LABEL_21:
      v33 = v11;
      v35 = v45;
    }
  }

  v7 = *sub_1000035D0((v0[10] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[10] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_100167594;
  v10 = v0[11];
  v9 = v0[12];

  return sub_100190208(v10, v9);
}

uint64_t sub_100166DF4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100166F9C;
  }

  else
  {
    v3 = sub_100166F08;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100166F08()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = sub_100908670(_swiftEmptyArrayStorage);
  v2(1, v3);

  v4 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100166F9C()
{
  v59 = v0;
  v1 = v0[19];
  if (qword_101694480 != -1)
  {
LABEL_42:
    swift_once();
  }

  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[11];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v2 + 16))(v3, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[15];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v58 = v56;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v11, v12);
    v17 = sub_1000136BC(v14, v16, &v58);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v19;
    *v54 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to share beacon: %{private,mask.hash}s, error: %{public}@.", v13, 0x20u);
    sub_10000B3A8(v54, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v56);
  }

  else
  {
    v18 = v1;

    (*(v10 + 8))(v11, v12);
  }

  v20 = v0[12];
  v55 = v0;
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
    sub_100009CC8(&qword_101698E28, &qword_101698D00, SPHandle_ptr);
    Set.Iterator.init(_cocoa:)();
    v21 = v0[2];
    v22 = v0[3];
    v24 = v0[4];
    v23 = v0[5];
    v25 = v0[6];
  }

  else
  {
    v26 = -1 << *(v20 + 32);
    v22 = v20 + 56;
    v24 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v20 + 56);

    v23 = 0;
  }

  v0 = v18;
  v29 = _swiftEmptyDictionarySingleton;
  for (i = v21; ; v21 = i)
  {
    if (v21 < 0)
    {
      v36 = __CocoaSet.Iterator.next()();
      if (!v36 || (v55[8] = v36, sub_100008BB8(0, &qword_101698D00, SPHandle_ptr), swift_dynamicCast(), v35 = v55[7], v1 = v23, v34 = v25, !v35))
      {
LABEL_33:
        v50 = v55[13];
        v49 = v55[14];
        sub_1000128F8();
        v50(0, v29);

        v51 = v55[17];

        v52 = v55[1];

        return v52();
      }
    }

    else
    {
      v32 = v23;
      v33 = v25;
      v1 = v23;
      if (!v25)
      {
        while (1)
        {
          v1 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v1 >= ((v24 + 64) >> 6))
          {
            goto LABEL_33;
          }

          v33 = *(v22 + 8 * v1);
          ++v32;
          if (v33)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_19:
      v34 = (v33 - 1) & v33;
      v35 = *(*(v21 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v33)))));
      if (!v35)
      {
        goto LABEL_33;
      }
    }

    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v29;
    v38 = sub_1007720C0(v35);
    v40 = v29[2];
    v41 = (v39 & 1) == 0;
    v42 = __OFADD__(v40, v41);
    v43 = v40 + v41;
    if (v42)
    {
      goto LABEL_40;
    }

    v44 = v39;
    if (v29[3] < v43)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    v48 = v38;
    sub_10100670C();
    v38 = v48;
    v29 = v58;
    if (v44)
    {
LABEL_12:
      v30 = v29[7];
      v31 = *(v30 + 8 * v38);
      *(v30 + 8 * v38) = v0;

      goto LABEL_13;
    }

LABEL_29:
    v29[(v38 >> 6) + 8] |= 1 << v38;
    *(v29[6] + 8 * v38) = v35;
    *(v29[7] + 8 * v38) = v0;
    v46 = v29[2];
    v42 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v42)
    {
      goto LABEL_41;
    }

    v29[2] = v47;
LABEL_13:
    v23 = v1;
    v25 = v34;
  }

  sub_100FE91CC(v43, isUniquelyReferenced_nonNull_native);
  v29 = v58;
  v38 = sub_1007720C0(v35);
  if ((v44 & 1) == (v45 & 1))
  {
LABEL_28:
    if (v44)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100167594()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1001676A8;
  }

  else
  {
    v3 = sub_1001BE49C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001676A8()
{
  v59 = v0;
  v1 = v0[21];
  if (qword_101694480 != -1)
  {
LABEL_42:
    swift_once();
  }

  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[11];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v2 + 16))(v3, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[15];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v58 = v56;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v11, v12);
    v17 = sub_1000136BC(v14, v16, &v58);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v19;
    *v54 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to share beacon: %{private,mask.hash}s, error: %{public}@.", v13, 0x20u);
    sub_10000B3A8(v54, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v56);
  }

  else
  {
    v18 = v1;

    (*(v10 + 8))(v11, v12);
  }

  v20 = v0[12];
  v55 = v0;
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
    sub_100009CC8(&qword_101698E28, &qword_101698D00, SPHandle_ptr);
    Set.Iterator.init(_cocoa:)();
    v21 = v0[2];
    v22 = v0[3];
    v24 = v0[4];
    v23 = v0[5];
    v25 = v0[6];
  }

  else
  {
    v26 = -1 << *(v20 + 32);
    v22 = v20 + 56;
    v24 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v20 + 56);

    v23 = 0;
  }

  v0 = v18;
  v29 = _swiftEmptyDictionarySingleton;
  for (i = v21; ; v21 = i)
  {
    if (v21 < 0)
    {
      v36 = __CocoaSet.Iterator.next()();
      if (!v36 || (v55[8] = v36, sub_100008BB8(0, &qword_101698D00, SPHandle_ptr), swift_dynamicCast(), v35 = v55[7], v1 = v23, v34 = v25, !v35))
      {
LABEL_33:
        v50 = v55[13];
        v49 = v55[14];
        sub_1000128F8();
        v50(0, v29);

        v51 = v55[17];

        v52 = v55[1];

        return v52();
      }
    }

    else
    {
      v32 = v23;
      v33 = v25;
      v1 = v23;
      if (!v25)
      {
        while (1)
        {
          v1 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v1 >= ((v24 + 64) >> 6))
          {
            goto LABEL_33;
          }

          v33 = *(v22 + 8 * v1);
          ++v32;
          if (v33)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_19:
      v34 = (v33 - 1) & v33;
      v35 = *(*(v21 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v33)))));
      if (!v35)
      {
        goto LABEL_33;
      }
    }

    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v29;
    v38 = sub_1007720C0(v35);
    v40 = v29[2];
    v41 = (v39 & 1) == 0;
    v42 = __OFADD__(v40, v41);
    v43 = v40 + v41;
    if (v42)
    {
      goto LABEL_40;
    }

    v44 = v39;
    if (v29[3] < v43)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    v48 = v38;
    sub_10100670C();
    v38 = v48;
    v29 = v58;
    if (v44)
    {
LABEL_12:
      v30 = v29[7];
      v31 = *(v30 + 8 * v38);
      *(v30 + 8 * v38) = v0;

      goto LABEL_13;
    }

LABEL_29:
    v29[(v38 >> 6) + 8] |= 1 << v38;
    *(v29[6] + 8 * v38) = v35;
    *(v29[7] + 8 * v38) = v0;
    v46 = v29[2];
    v42 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v42)
    {
      goto LABEL_41;
    }

    v29[2] = v47;
LABEL_13:
    v23 = v1;
    v25 = v34;
  }

  sub_100FE91CC(v43, isUniquelyReferenced_nonNull_native);
  v29 = v58;
  v38 = sub_1007720C0(v35);
  if ((v44 & 1) == (v45 & 1))
  {
LABEL_28:
    if (v44)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

void sub_100167FB8(char a1, uint64_t a2, uint64_t a3)
{
  sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  sub_100009CC8(&qword_101698E28, &qword_101698D00, SPHandle_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, a1 & 1, isa);
}

uint64_t sub_100168094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_100168158, 0, 0);
}

uint64_t sub_100168158()
{
  v1 = *sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100168208;
  v3 = v0[3];

  return sub_1001986AC(v3);
}

uint64_t sub_100168208()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10016831C;
  }

  else
  {
    v3 = sub_1001BE450;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10016831C()
{
  v31 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v30);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to remove share: %{private,mask.hash}s, error: %{public}@.", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[10];
  v24 = v0[4];
  v23 = v0[5];
  swift_errorRetain();
  v24(0, v22);

  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100168658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_10016871C, 0, 0);
}

uint64_t sub_10016871C()
{
  v1 = *sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1001687CC;
  v3 = v0[7];

  return sub_1001993A0(v3);
}

uint64_t sub_1001687CC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1001688E0;
  }

  else
  {
    v3 = sub_1001BE454;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001688E0()
{
  v34 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[7];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v32 = v0[14];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v33);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2082;
    swift_getErrorValue();
    v18 = v0[2];
    v17 = v0[3];
    v19 = v0[4];
    v20 = Error.localizedDescription.getter();
    v22 = sub_1000136BC(v20, v21, &v33);

    *(v12 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to revoke share: %{private,mask.hash}s, error: %{public}s.", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[11];
    v23 = v0[12];
    v25 = v0[10];

    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[14];
  v28 = v0[8];
  v27 = v0[9];
  swift_errorRetain();
  v28(0, v26);

  v29 = v0[12];

  v30 = v0[1];

  return v30();
}

uint64_t sub_100168C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_100168CD4, 0, 0);
}

uint64_t sub_100168CD4()
{
  v1 = *sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100168D84;
  v3 = v0[3];

  return sub_10019DA84(v3);
}

uint64_t sub_100168D84()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100168E98;
  }

  else
  {
    v3 = sub_1001BE450;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100168E98()
{
  v31 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v30);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to accept share: %{private,mask.hash}s, error: %{public}@.", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[10];
  v24 = v0[4];
  v23 = v0[5];
  swift_errorRetain();
  v24(0, v22);

  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1001691D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_100169298, 0, 0);
}

uint64_t sub_100169298()
{
  v0[9] = *sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_100169364;
  v2 = v0[3];

  return sub_1003B218C(v2, 0);
}

uint64_t sub_100169364()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001696F0, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[12] = v4;
    *v4 = v3;
    v4[1] = sub_1001694D8;
    v5 = v3[9];
    v6 = v3[3];

    return sub_100187710(v6);
  }
}

uint64_t sub_1001694D8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_1001695E8, v2, 0);
}

uint64_t sub_1001695E8()
{
  v1 = *(v0 + 72);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_1001BE450, 0, 0);
}

uint64_t sub_1001696F0()
{
  v31 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[11];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v30);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to decline share: %{private,mask.hash}s, error: %{public}@.", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[11];
  v24 = v0[4];
  v23 = v0[5];
  swift_errorRetain();
  v24(0, v22);

  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100169A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_100169AF0, 0, 0);
}

uint64_t sub_100169AF0()
{
  v1 = *sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100169BA0;
  v3 = v0[3];

  return sub_10019E338(v3);
}

uint64_t sub_100169BA0()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100169D28;
  }

  else
  {
    v3 = sub_100169CB4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100169CB4()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(1, 0);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100169D28()
{
  v31 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v30);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to Stop share with beaconIdentifier: %{private,mask.hash}s, error: %{public}@.", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[10];
  v24 = v0[4];
  v23 = v0[5];
  swift_errorRetain();
  v24(0, v22);

  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_10016A064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return _swift_task_switch(sub_10016A088, 0, 0);
}

uint64_t sub_10016A088()
{
  v1 = *sub_1000035D0((v0[3] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[3] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_10016A138;
  v3 = v0[4];

  return sub_10019F7B4(v3);
}

uint64_t sub_10016A138()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10016A2B8;
  }

  else
  {
    v3 = sub_10016A24C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10016A24C()
{
  v1 = *(v0 + 48);
  (*(v0 + 40))(1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016A2B8()
{
  v20 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136446466;
    v0[2] = v6;
    type metadata accessor for SPShareType(0);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000136BC(v10, v11, &v19);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to force break all shares of types: %{public}s, error: %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  v14 = v0[8];
  v16 = v0[5];
  v15 = v0[6];
  swift_errorRetain();
  v16(0, v14);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10016A52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10016A550, 0, 0);
}

uint64_t sub_10016A550()
{
  v1 = *sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10016A600;
  v3 = v0[3];

  return sub_1001A19A0(v3);
}

uint64_t sub_10016A600()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_10016A714;
  }

  else
  {
    v3 = sub_1001BE46C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10016A714()
{
  v24 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[7];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v12 = [v8 destination];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_1000136BC(v13, v15, &v23);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    *v10 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to force break all shares with user: %{private,mask.hash}s, error: %{public}@.", v9, 0x20u);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v11);
  }

  v18 = v0[7];
  v20 = v0[4];
  v19 = v0[5];
  swift_errorRetain();
  v20(0, v18);

  v21 = v0[1];

  return v21();
}

uint64_t sub_10016A9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016AA88, 0, 0);
}

uint64_t sub_10016AA88()
{
  v1 = *sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_10016AB38;
  v3 = v0[3];

  return sub_1001A455C(v3);
}

uint64_t sub_10016AB38()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10016AC4C;
  }

  else
  {
    v3 = sub_1001BE450;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10016AC4C()
{
  v31 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v30);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to force decline shareIdentifier: %{private,mask.hash}s, error: %{public}@.", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[10];
  v24 = v0[4];
  v23 = v0[5];
  swift_errorRetain();
  v24(0, v22);

  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_10016AF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10016AFAC, 0, 0);
}

uint64_t sub_10016AFAC()
{
  sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = type metadata accessor for BeaconSharingService(0);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10016B0E8;
  v3 = v0[3];

  return (sub_1001B79C4)(v3, v1, &off_101610E30);
}

uint64_t sub_10016B0E8()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_10016B268;
  }

  else
  {
    v3 = sub_10016B1FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10016B1FC()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016B268()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to cleanupAll(recordsType:completion:), error: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[7];
  v11 = v0[4];
  v10 = v0[5];

  swift_errorRetain();
  v11(0, v9);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10016B460(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v23 - v15;
  v17 = _Block_copy(a4);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a3;
  v20[6] = a7;
  v20[7] = v18;
  v21 = a1;
  sub_10025EDD4(0, 0, v16, a8, v20);
}

uint64_t sub_10016B5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016B668, 0, 0);
}

uint64_t sub_10016B668()
{
  v1 = *sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_10016B718;
  v3 = v0[3];

  return sub_1001A4B04(v3);
}

uint64_t sub_10016B718()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10016B82C;
  }

  else
  {
    v3 = sub_1001BE450;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10016B82C()
{
  v31 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v30);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "                        Failed to force stop sharing beaconIdentifier: %{private,mask.hash}s,\n                        error: %{public}@.", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[10];
  v24 = v0[4];
  v23 = v0[5];
  swift_errorRetain();
  v24(0, v22);

  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_10016BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10016BB8C, 0, 0);
}

uint64_t sub_10016BB8C()
{
  v1 = *sub_1000035D0((*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_10016BC40;

  return sub_1001A6AA0(0, 0, 1);
}

uint64_t sub_10016BC40(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1001BE448, 0, 0);
}

void sub_10016BD7C(uint64_t a1, uint64_t a2)
{
  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009CC8(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_10016BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10016BE50, 0, 0);
}

uint64_t sub_10016BE50()
{
  v1 = *sub_1000035D0((*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_10016BF04;

  return sub_1001A6AA0(1, 0, 1);
}

uint64_t sub_10016BF04(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10016C004, 0, 0);
}

uint64_t sub_10016C004()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 48));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016C0B4(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(a3);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a6;
  v18[5] = v16;
  v18[6] = a1;
  v19 = a1;
  sub_10025EDD4(0, 0, v14, a7, v18);
}

uint64_t sub_10016C314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016C3D8, 0, 0);
}

uint64_t sub_10016C3D8()
{
  v1 = *sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_10016C488;
  v3 = v0[3];

  return sub_10019C574(v3);
}

uint64_t sub_10016C488()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10016C59C;
  }

  else
  {
    v3 = sub_1001BE450;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10016C59C()
{
  v31 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v30);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to request unknown beacon: %{private,mask.hash}s, error: %{public}@.", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[10];
  v24 = v0[4];
  v23 = v0[5];
  swift_errorRetain();
  v24(0, v22);

  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_10016C8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10016C8FC, 0, 0);
}

uint64_t sub_10016C8FC()
{
  v1 = *sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10016C9AC;
  v3 = v0[3];

  return sub_10018A968(v3);
}

uint64_t sub_10016C9AC()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_10016CAC0;
  }

  else
  {
    v3 = sub_1001BE46C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10016CAC0()
{
  v21 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    v11 = Array.description.getter();
    v13 = sub_1000136BC(v11, v12, &v20);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update circle identifiers: %{private,mask.hash}s, error: %{public}@.", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  v15 = v0[7];
  v17 = v0[4];
  v16 = v0[5];
  swift_errorRetain();
  v17(0, v15);

  v18 = v0[1];

  return v18();
}

uint64_t sub_10016CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 113) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  v9 = type metadata accessor for UUID();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10016CF50, 0, 0);
}

uint64_t sub_10016CF50()
{
  v1 = *sub_1000035D0((*(v0 + 40) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(*(v0 + 40) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_10016D004;
  v3 = *(v0 + 113);
  v4 = *(v0 + 48);

  return sub_100193A94(v4, v3);
}

uint64_t sub_10016D004()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_10016D18C;
  }

  else
  {
    v3 = sub_10016D118;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10016D118()
{
  v1 = *(v0 + 64);
  (*(v0 + 56))(1, 0);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10016D18C()
{
  v36 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v33 = *(v0 + 104);
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v35);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to upload keys for circle identifier: %{private,mask.hash}s, error: %{public}@.", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v34);
  }

  else
  {
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    v21 = *(v0 + 72);

    (*(v20 + 8))(v19, v21);
  }

  *(v0 + 16) = *(v0 + 104);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v22 = swift_dynamicCast();
  v23 = *(v0 + 104);
  v25 = *(v0 + 56);
  v24 = *(v0 + 64);
  if (v22)
  {
    v26 = *(v0 + 112);
    sub_1001BAEE0();
    v27 = swift_allocError();
    *v28 = v26;
    v25(0, v27);
  }

  else
  {
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 32) = 3;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v29 = *(v0 + 24);
    v25(0, v29);
  }

  v30 = *(v0 + 88);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_10016D5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 88) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = type metadata accessor for UUID();
  *(v8 + 48) = v9;
  v10 = *(v9 - 8);
  *(v8 + 56) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_10016D6A8, 0, 0);
}

uint64_t sub_10016D6A8()
{
  v1 = *sub_1000035D0((*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_10016D764;
  v3 = *(v0 + 88);
  v4 = *(v0 + 24);

  return sub_1001948A8(v4, v3, 0, 1);
}

uint64_t sub_10016D764()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10016D878;
  }

  else
  {
    v3 = sub_1001BE450;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10016D878()
{
  v31 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v30);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to download keys for circle identifier: %{private,mask.hash}s, error: %{public}@.", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[10];
  v24 = v0[4];
  v23 = v0[5];
  swift_errorRetain();
  v24(0, v22);

  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_10016DBD0(void *a1, uint64_t a2, uint64_t a3, int a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a7;
  v35 = a4;
  v36 = a8;
  v37 = a9;
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - v13;
  v33 = &v32 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v32 - v20;
  v22 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  (*(v16 + 16))(v19, v21, v15);
  v25 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v26 = v25 + v17;
  v27 = (v25 + v17) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = a1;
  (*(v16 + 32))(&v28[v25], v19, v15);
  v28[v26] = v35;
  v29 = &v28[v27];
  *(v29 + 1) = v36;
  *(v29 + 2) = v23;
  v30 = a1;

  sub_10025EDD4(0, 0, v33, v37, v28);

  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_10016DE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10016DF18;

  return sub_1003C08B8(a5);
}

uint64_t sub_10016DF18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_10016E0CC;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_10016E040;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10016E040()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(1, v1, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10016E0CC()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to check data integrity, error: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  swift_errorRetain();
  v11(0, 0, v9);

  v12 = v0[1];

  return v12();
}

void sub_10016E598(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1 & 1, a2);
}

uint64_t sub_10016E618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  type metadata accessor for CheckDataIntegrityUseCase();
  swift_allocObject();
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_10016E6C0;

  return sub_100111F58();
}

uint64_t sub_10016E6C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {
    *(v4 + 72) = v1;

    return _swift_task_switch(sub_10016EA5C, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v4 + 48) = v7;
    *v7 = v6;
    v7[1] = sub_10016E844;

    return sub_1001173F8();
  }
}

uint64_t sub_10016E844(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_10016E9EC;
  }

  else
  {
    v8 = *(v4 + 40);

    *(v4 + 64) = a1;
    v7 = sub_10016E974;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10016E974()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  (*(v0 + 16))(1, v1, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10016E9EC()
{
  v1 = v0[5];

  v0[9] = v0[7];

  return _swift_task_switch(sub_10016EA5C, 0, 0);
}

uint64_t sub_10016EA5C()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to look for orphaned records, error: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[9];
  v11 = v0[2];
  v10 = v0[3];

  v12 = objc_allocWithZone(SPOrphanedRecordsResult);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = [v12 initWithRecordsInfo:isa];

  swift_errorRetain();
  v11(0, v14, v9);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10016ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10016ECC8, 0, 0);
}

uint64_t sub_10016ECC8()
{
  v1 = *sub_1000035D0((*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_10016ED70;

  return sub_100181BBC();
}

uint64_t sub_10016ED70()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_10016EE6C, 0, 0);
}

uint64_t sub_10016EE6C()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016EF14(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(a3);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = a6;
  v18[6] = v16;
  v19 = a1;
  sub_10025EDD4(0, 0, v14, a7, v18);
}

uint64_t sub_10016F054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_10016F074, 0, 0);
}

uint64_t sub_10016F074()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 40) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_10016F174;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_10016F174()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10016F28C, 0, 0);
}

uint64_t sub_10016F28C()
{
  v1 = v0[2];
  result = sub_101074A20(v1);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = sub_101074D18(v1);

  if (v4 < 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = [objc_allocWithZone(SPBeaconSharingLimits) initWithMaxCircleMembers:v3 maxDelegatedShares:v4];
  v6();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10016F48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return _swift_task_switch(sub_10016F4B0, 0, 0);
}

uint64_t sub_10016F4B0()
{
  v1 = *sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10016F560;
  v3 = v0[7];

  return sub_100191044(v3);
}

uint64_t sub_10016F560(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_10016F6F8;
  }

  else
  {
    *(v4 + 96) = a1 & 1;
    v7 = sub_10016F68C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10016F68C()
{
  v1 = *(v0 + 72);
  (*(v0 + 64))(*(v0 + 96), 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016F6F8()
{
  v27 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[11];
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v10 = [v8 inputUrl];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_1000136BC(v11, v13, &v26);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    swift_getErrorValue();
    v16 = v0[2];
    v15 = v0[3];
    v17 = v0[4];
    v18 = Error.localizedDescription.getter();
    v20 = sub_1000136BC(v18, v19, &v26);

    *(v9 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to import url: %{private,mask.hash}s,\nerror: %{public}s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  v21 = v0[11];
  v23 = v0[8];
  v22 = v0[9];
  swift_errorRetain();
  v23(0, v21);

  v24 = v0[1];

  return v24();
}

uint64_t sub_10016F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return _swift_task_switch(sub_10016F9C4, 0, 0);
}

uint64_t sub_10016F9C4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *v3;

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_10016FAC8;
  v7 = v0[7];

  return sub_1001914DC(v7, sub_1001BC1E4, v4);
}

uint64_t sub_10016FAC8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(v4 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10016FC18, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_10016FC18()
{
  v25 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  if (v7)
  {
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v11 = [v9 inputUrl];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1000136BC(v12, v14, &v24);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2082;
    swift_getErrorValue();
    v17 = v0[2];
    v16 = v0[3];
    v18 = v0[4];
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v24);

    *(v10 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to import url: %{private,mask.hash}s,\nerror: %{public}s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

void sub_10016FEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10016FF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_10016FFDC, 0, 0);
}

uint64_t sub_10016FFDC()
{
  v1 = *sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_100170090;
  v3 = v0[7];

  return sub_100191968(v3, 0);
}

uint64_t sub_100170090()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100170218;
  }

  else
  {
    v3 = sub_1001701A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001701A4()
{
  v1 = *(v0 + 72);
  (*(v0 + 64))(1, 0);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100170218()
{
  v34 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[7];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v32 = v0[14];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v33);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2082;
    swift_getErrorValue();
    v18 = v0[2];
    v17 = v0[3];
    v19 = v0[4];
    v20 = Error.localizedDescription.getter();
    v22 = sub_1000136BC(v20, v21, &v33);

    *(v12 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to remove imported share: %{private,mask.hash}s,\nerror: %{public}s.", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[11];
    v23 = v0[12];
    v25 = v0[10];

    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[14];
  v28 = v0[8];
  v27 = v0[9];
  swift_errorRetain();
  v28(0, v26);

  v29 = v0[12];

  v30 = v0[1];

  return v30();
}

uint64_t sub_100170548(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a8;
  v29[1] = a6;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v29 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v29 - v19;
  v21 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  (*(v15 + 16))(v18, v20, v14);
  v24 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = a1;
  (*(v15 + 32))(&v25[v24], v18, v14);
  v26 = &v25[(v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v26 = v30;
  *(v26 + 1) = v22;
  v27 = a1;

  sub_10025EDD4(0, 0, v13, v31, v25);

  return (*(v15 + 8))(v20, v14);
}

uint64_t sub_1001707D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_100170898, 0, 0);
}

uint64_t sub_100170898()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *v3;

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_10017099C;
  v7 = v0[7];

  return sub_100191F2C(v7, sub_1001BBFA4, v4);
}

uint64_t sub_10017099C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *v1;
  v4[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100170B00, 0, 0);
  }

  else
  {
    v5 = v4[12];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_100170B00()
{
  v30 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[15];
  if (v7)
  {
    v28 = v0[15];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v14 = [v12 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_1000136BC(v15, v17, &v29);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2082;
    swift_getErrorValue();
    v20 = v0[2];
    v19 = v0[3];
    v21 = v0[4];
    v22 = Error.localizedDescription.getter();
    v24 = sub_1000136BC(v22, v23, &v29);

    *(v13 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to create delegation for beacon: %{private,mask.hash}s, error: %{public}s.", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v25 = v0[12];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100170E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_100170EC8, 0, 0);
}

uint64_t sub_100170EC8()
{
  v1 = *sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_100170F7C;
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];

  return sub_10019260C(v5, v3, v4);
}

uint64_t sub_100170F7C()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001710B8, 0, 0);
  }

  else
  {
    v4 = v3[12];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1001710B8()
{
  v30 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  if (v7)
  {
    v28 = v0[14];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v14 = [v12 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_1000136BC(v15, v17, &v29);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2082;
    swift_getErrorValue();
    v20 = v0[2];
    v19 = v0[3];
    v21 = v0[4];
    v22 = Error.localizedDescription.getter();
    v24 = sub_1000136BC(v22, v23, &v29);

    *(v13 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get status of the delegation for beacon: %{private,mask.hash}s, error: %{public}s.", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v25 = v0[12];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1001713BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&unk_101696AC0, &qword_101390A60) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v7[14] = v12;
  v13 = *(v12 - 8);
  v7[15] = v13;
  v14 = *(v13 + 64) + 15;
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_100171514, 0, 0);
}

uint64_t sub_100171514()
{
  v1 = *sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1001715C8;
  v3 = v0[16];
  v4 = v0[7];

  return sub_100192E2C(v3, v4);
}

uint64_t sub_1001715C8()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1001717F0;
  }

  else
  {
    v3 = sub_1001716DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001716DC()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[8];
  v5 = v0[9];
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6(v4, 0);
  sub_10000B3A8(v4, &unk_101696AC0, &qword_101390A60);
  (*(v2 + 8))(v1, v3);
  v7 = v0[16];
  v8 = v0[12];
  v9 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001717F0()
{
  v34 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v32 = v0[18];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v12 = [v10 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v8 + 8))(v7, v9);
    v16 = sub_1000136BC(v13, v15, &v33);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2082;
    swift_getErrorValue();
    v18 = v0[2];
    v17 = v0[3];
    v19 = v0[4];
    v20 = Error.localizedDescription.getter();
    v22 = sub_1000136BC(v20, v21, &v33);

    *(v11 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get status of the delegation for beacon: %{private,mask.hash}s, error: %{public}s.", v11, 0x20u);
    swift_arrayDestroy();
  }

  v23 = v0[18];
  v24 = v0[13];
  v26 = v0[8];
  v25 = v0[9];
  (*(v0[15] + 56))(v24, 1, 1, v0[14]);
  swift_errorRetain();
  v26(v24, v23);

  sub_10000B3A8(v24, &unk_101696AC0, &qword_101390A60);
  v27 = v0[16];
  v28 = v0[12];
  v29 = v0[13];

  v30 = v0[1];

  return v30();
}

void sub_100171B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  sub_1000D2A70(a1, &v16 - v8, &unk_101696AC0, &qword_101390A60);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v13 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v15 = _convertErrorToNSError(_:)();
  }

  else
  {
    v15 = 0;
  }

  (*(a3 + 16))(a3, v13, v15);
}

uint64_t sub_100171CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_100171D78, 0, 0);
}

uint64_t sub_100171D78()
{
  v1 = *sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_100171E28;
  v3 = v0[7];

  return sub_1001933C0(v3);
}

uint64_t sub_100171E28()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100171F3C;
  }

  else
  {
    v3 = sub_1001BE454;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100171F3C()
{
  v31 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v29 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v12 = [v10 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v8 + 8))(v7, v9);
    v16 = sub_1000136BC(v13, v15, &v30);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2082;
    swift_getErrorValue();
    v18 = v0[2];
    v17 = v0[3];
    v19 = v0[4];
    v20 = Error.localizedDescription.getter();
    v22 = sub_1000136BC(v20, v21, &v30);

    *(v11 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to stop location share for beacon: %{private,mask.hash}s, error: %{public}s.", v11, 0x20u);
    swift_arrayDestroy();
  }

  v23 = v0[14];
  v25 = v0[8];
  v24 = v0[9];
  swift_errorRetain();
  v25(0, v23);

  v26 = v0[12];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100172254(void *a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v24 - v15;
  v17 = _Block_copy(a4);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a3;
  v20[6] = a7;
  v20[7] = v18;
  v21 = a3;
  v22 = a1;
  sub_10025EDD4(0, 0, v16, a8, v20);
}

id sub_1001723CC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_10017244C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001724C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100172514@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1016081D8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100172588()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_100172628()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A578);
  v1 = sub_1000076D4(v0, qword_10177A578);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A560);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001726F0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = type metadata accessor for UUID();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v2[6] = *(v5 + 64);
  v2[7] = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v2[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = type metadata accessor for OwnerSharingCircle();
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100172854, a2, 0);
}

uint64_t sub_100172854()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  (*(v3 + 16))(v1, v0[2], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[13] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_1001729B0;
  v10 = v0[8];
  v9 = v0[9];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B0, v6, v10);
}

uint64_t sub_1001729B0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100172AC8, 0, 0);
}

uint64_t sub_100172AC8()
{
  v1 = v0[11];
  v2 = v0[9];
  if ((*(v1 + 48))(v2, 1, v0[10]) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);
    v11 = sub_1003B7584;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_100172CA0;
    v4 = v0[2];
  }

  else
  {
    v5 = v0[12];
    sub_1001BAAE8(v2, v5, type metadata accessor for OwnerSharingCircle);
    sub_1000BC4D4(&qword_101698E50, &unk_101390D40);
    v6 = *(v1 + 72);
    v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v8 = swift_allocObject();
    v0[16] = v8;
    *(v8 + 16) = xmmword_101385D80;
    sub_1001BB2E0(v5, v8 + v7, type metadata accessor for OwnerSharingCircle);
    v11 = sub_1003B64C0;
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_100172DF0;
    v4 = v8;
  }

  return v11(v4);
}

uint64_t sub_100172CA0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v8 = *v0;

  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[7];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100172DF0()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_100172FB8;
  }

  else
  {
    v4 = sub_100172F20;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100172F20()
{
  sub_1001BA80C(v0[12], type metadata accessor for OwnerSharingCircle);
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100172FB8()
{
  sub_1001BA80C(v0[12], type metadata accessor for OwnerSharingCircle);
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100173058()
{
  v1[4] = v0;
  v2 = sub_1000BC4D4(&qword_101698D90, &qword_101390930);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101698D98, &qword_101390938);
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001731C4, v0, 0);
}

uint64_t sub_1001731C4()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BeaconSharingService: Starting up.", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[4];

  sub_100187B94();
  v7 = *(v6 + 192);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = sub_1001B8FE4(&qword_101698BB8, type metadata accessor for BeaconSharingService);
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v9;
  v10[4] = v7;
  v10[5] = v6;
  swift_retain_n();

  sub_10025EDD4(0, 0, v5, &unk_101390948, v10);

  v11 = *(v6 + 136);
  v0[12] = v11;

  return _swift_task_switch(sub_1001733D4, v11, 0);
}

uint64_t sub_1001733D4()
{
  v1 = v0[4];
  v2 = *(v0[12] + 128);
  v0[13] = sub_100A96C40();

  return _swift_task_switch(sub_100173448, v1, 0);
}

uint64_t sub_100173448()
{
  v8 = v0[12];
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v0[2] = v0[13];
  sub_1000BC4D4(&qword_101698DA0, &unk_101390950);
  sub_1000041A4(&qword_101698DA8, &qword_101698DA0, &unk_101390950);
  Publisher.filter(_:)();

  sub_1000041A4(&unk_101698DB0, &qword_101698D98, &qword_101390938);

  v5 = Publisher<>.sink(receiveValue:)();

  (*(v1 + 8))(v2, v3);
  v6 = *(v4 + 224);
  *(v4 + 224) = v5;

  return _swift_task_switch(sub_1001735F0, v8, 0);
}

uint64_t sub_1001735F0()
{
  v1 = v0[4];
  v0[14] = *(*(v0[12] + 128) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher);

  return _swift_task_switch(sub_100173678, v1, 0);
}

uint64_t sub_100173678()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v0[3] = v0[14];
  sub_1000BC4D4(&qword_1016B2880, &qword_1013CAF30);
  sub_1000041A4(&qword_101698DC0, &qword_1016B2880, &qword_1013CAF30);
  Publisher.filter(_:)();

  sub_1000041A4(&qword_101698DC8, &qword_101698D90, &qword_101390930);

  v5 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v4);
  v6 = v3[29];
  v3[29] = v5;

  v7 = type metadata accessor for StateCapture();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = StateCapture.init(_:)();
  v11 = v3[33];
  v3[33] = v10;

  v12 = v3[18];
  v0[15] = v12;

  return _swift_task_switch(sub_100173868, v12, 0);
}

uint64_t sub_100173868()
{
  v1 = *(*(v0 + 120) + 216);
  v2 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v6 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_100173934;
  v4 = *(v0 + 120);

  return v6(&unk_101390970, v4);
}

uint64_t sub_100173934()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = v2[15];
  v7 = v2[10];
  v6 = v2[11];
  v8 = v2[7];

  v9 = *(v4 + 8);

  return v9();
}

uint64_t sub_100173A68(uint64_t a1)
{
  v27 = type metadata accessor for LostModeRecord();
  v2 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OwnerSharingCircle();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SharingCircleSecret();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MemberSharingCircle();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F280(a1, v28);
  sub_1000BC4D4(&unk_101698D60, &unk_1013A37E0);
  if (swift_dynamicCast())
  {
    v20 = type metadata accessor for MemberSharingCircle;
    v21 = v19;
LABEL_9:
    sub_1001BA80C(v21, v20);
    return 1;
  }

  sub_10001F280(a1, v28);
  if (swift_dynamicCast())
  {
    v20 = type metadata accessor for SharingCircleSecret;
    v21 = v15;
    goto LABEL_9;
  }

  sub_10001F280(a1, v28);
  if (swift_dynamicCast())
  {
    v20 = type metadata accessor for SharedBeaconRecord;
    v21 = v11;
    goto LABEL_9;
  }

  sub_10001F280(a1, v28);
  if (swift_dynamicCast())
  {
    v20 = type metadata accessor for OwnerSharingCircle;
    v21 = v7;
    goto LABEL_9;
  }

  sub_10001F280(a1, v28);
  v23 = v26;
  result = swift_dynamicCast();
  if (result)
  {
    v24 = result;
    sub_1001BA80C(v23, type metadata accessor for LostModeRecord);
    return v24;
  }

  return result;
}

uint64_t sub_100173DAC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100174A54(a2);
}

uint64_t sub_100173E48(uint64_t a1)
{
  v2 = type metadata accessor for LostModeRecord();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for OwnerSharingCircle();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10001F280(a1, v13);
  sub_1000BC4D4(&qword_101698D58, &unk_1013908E0);
  if (swift_dynamicCast())
  {
    sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
    return 1;
  }

  else
  {
    sub_10001F280(a1, v13);
    result = swift_dynamicCast();
    if (result)
    {
      v11 = result;
      sub_1001BA80C(v5, type metadata accessor for LostModeRecord);
      return v11;
    }
  }

  return result;
}

uint64_t sub_100173FC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  type metadata accessor for Transaction();
  sub_10001F280(a1, v9);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  a4(v9, v7 + 24);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100174088(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_10017B5C4(a2);
}

uint64_t sub_100174124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for StateCaptureDateType();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = type metadata accessor for StateCaptureHintAPI();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001742C0, a3, 0);
}

uint64_t sub_1001742C0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 32);
  StateCaptureHint.api.getter();
  (*(v4 + 104))(v2, enum case for StateCaptureHintAPI.request(_:), v3);
  sub_1001B8FE4(&qword_101698DD0, &type metadata accessor for StateCaptureHintAPI);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (*(v0 + 136) == *(v0 + 140))
  {
    v7 = *(v0 + 72);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_100174580;
    v10 = *(v0 + 72);

    return sub_1003C08B8(v10);
  }

  else
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 24);
    v17 = type metadata accessor for StateCaptureStateData();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100174580(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v7 = *(v3 + 72);
  v8 = *(v3 + 40);
  sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
  if (v1)
  {
    v9 = sub_100174998;
  }

  else
  {
    v9 = sub_10017470C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10017470C()
{
  v1 = *(v0 + 120);
  v2 = objc_opt_self();
  sub_100B9B76C();
  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v4 = [v2 dataWithPropertyList:isa format:200 options:0 error:v0 + 16];

  v5 = *(v0 + 16);
  v6 = *(v0 + 120);
  if (v4)
  {
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = *(v0 + 24);
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 104))(v7, enum case for StateCaptureDateType.serialized(_:), v9);
    StateCaptureStateData.init(type:title:data:)();

    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 24);
    v16 = type metadata accessor for StateCaptureStateData();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v18 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100174998()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100174A54(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = type metadata accessor for Date();
  v2[28] = v3;
  v4 = *(v3 - 8);
  v2[29] = v4;
  v5 = *(v4 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle();
  v2[32] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v2[41] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[46] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v12 = type metadata accessor for SharingCircleSecret();
  v2[48] = v12;
  v13 = *(v12 - 8);
  v2[49] = v13;
  v14 = *(v13 + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v2[53] = v15;
  v16 = *(v15 - 8);
  v2[54] = v16;
  v2[55] = *(v16 + 64);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v17 = type metadata accessor for MemberSharingCircle();
  v2[58] = v17;
  v18 = *(v17 - 8);
  v2[59] = v18;
  v19 = *(v18 + 64) + 15;
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v20 = type metadata accessor for MemberPeerTrust();
  v2[63] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v2[64] = swift_task_alloc();
  v22 = type metadata accessor for OwnerPeerTrust();
  v2[65] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v2[66] = swift_task_alloc();
  v24 = type metadata accessor for LostModeRecord();
  v2[67] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v26 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();

  return _swift_task_switch(sub_100174E6C, v1, 0);
}

uint64_t sub_100174E6C()
{
  v1 = qword_101698690;
  *(v0 + 576) = qword_101698690;
  v2 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
    return daemon.getter();
  }

  v3 = *(v0 + 552);
  v4 = *(v0 + 536);
  v5 = *(v0 + 208);
  if (v2 >= 0x3E8)
  {
    v2 = 1;
  }

  qword_101698690 = v2;
  sub_10001F280(v5, v0 + 16);
  sub_1000BC4D4(&unk_101698D60, &unk_1013A37E0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 544);
    v7 = *(v0 + 536);
    sub_1001BAAE8(*(v0 + 552), v6, type metadata accessor for LostModeRecord);
    v8 = *(v7 + 24);
    v9 = swift_task_alloc();
    *(v0 + 584) = v9;
    *v9 = v0;
    v9[1] = sub_100175650;
    v10 = *(v0 + 216);

    return sub_1001896BC(v6 + v8);
  }

  v12 = *(v0 + 528);
  v13 = *(v0 + 520);
  v14 = type metadata accessor for OwnerPeerTrust;
  if (swift_dynamicCast())
  {
    v15 = (v0 + 528);
LABEL_12:
    v18 = *v15;
    v19 = *(v0 + 216);
    (*(*(v0 + 432) + 56))(*(v0 + 568), 1, 1, *(v0 + 424));
    type metadata accessor for Transaction();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v1;
    *(v21 + 32) = 0;

    static Transaction.asyncTask(name:block:)();

    sub_1001BA80C(v18, v14);
    v22 = *(v0 + 568);
    v23 = *(v0 + 560);
    v24 = *(v0 + 424);
    v25 = *(v0 + 432);
    sub_100007BAC((v0 + 16));
    sub_1000D2A70(v22, v23, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      v26 = *(v0 + 560);
      sub_10000B3A8(*(v0 + 568), &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v26, &qword_1016980D0, &unk_10138F3B0);
LABEL_14:
      v27 = *(v0 + 568);
      v28 = *(v0 + 560);
      v29 = *(v0 + 552);
      v30 = *(v0 + 544);
      v31 = *(v0 + 528);
      v32 = *(v0 + 512);
      v34 = *(v0 + 488);
      v33 = *(v0 + 496);
      v35 = *(v0 + 480);
      v36 = *(v0 + 456);
      v60 = *(v0 + 448);
      v61 = *(v0 + 416);
      v62 = *(v0 + 408);
      v63 = *(v0 + 400);
      v64 = *(v0 + 376);
      v65 = *(v0 + 360);
      v66 = *(v0 + 352);
      v67 = *(v0 + 344);
      v68 = *(v0 + 336);
      v69 = *(v0 + 320);
      v70 = *(v0 + 312);
      v71 = *(v0 + 304);
      v72 = *(v0 + 296);
      v73 = *(v0 + 288);
      v74 = *(v0 + 280);
      v75 = *(v0 + 272);
      v76 = *(v0 + 264);
      v77 = *(v0 + 248);
      v78 = *(v0 + 240);

      v37 = *(v0 + 8);

      return v37();
    }

    (*(*(v0 + 432) + 32))(*(v0 + 448), *(v0 + 560), *(v0 + 424));
    v38 = swift_task_alloc();
    *(v0 + 936) = v38;
    *v38 = v0;
    v38[1] = sub_10017B288;
    v39 = *(v0 + 576);
    v40 = *(v0 + 448);
    v41 = *(v0 + 216);

    return sub_10017FFA4(v40, v39, 0);
  }

  v17 = *(v0 + 504);
  v16 = *(v0 + 512);
  v14 = type metadata accessor for MemberPeerTrust;
  if (swift_dynamicCast())
  {
    v15 = (v0 + 512);
    goto LABEL_12;
  }

  v42 = *(v0 + 496);
  v43 = *(v0 + 464);
  if (swift_dynamicCast())
  {
    v44 = *(v0 + 464);
    v45 = *(v0 + 216);
    sub_1001BAAE8(*(v0 + 496), *(v0 + 488), type metadata accessor for MemberSharingCircle);
    *(v0 + 944) = *(v44 + 28);
    v46 = *(v45 + 136);
    *(v0 + 592) = v46;
    v47 = sub_100175AA0;
LABEL_24:

    return _swift_task_switch(v47, v46, 0);
  }

  v48 = *(v0 + 416);
  v49 = *(v0 + 384);
  if (swift_dynamicCast())
  {
    v50 = *(v0 + 384);
    v51 = *(v0 + 216);
    sub_1001BAAE8(*(v0 + 416), *(v0 + 408), type metadata accessor for SharingCircleSecret);
    *(v0 + 948) = *(v50 + 24);
    v46 = *(v51 + 136);
    *(v0 + 640) = v46;
    v47 = sub_1001761BC;
    goto LABEL_24;
  }

  v52 = *(v0 + 360);
  v53 = *(v0 + 328);
  if (swift_dynamicCast())
  {
    sub_1001BAAE8(*(v0 + 360), *(v0 + 352), type metadata accessor for SharedBeaconRecord);
    v54 = async function pointer to daemon.getter[1];
    v55 = swift_task_alloc();
    *(v0 + 704) = v55;
    *v55 = v0;
    v55[1] = sub_100177080;

    return daemon.getter();
  }

  v56 = *(v0 + 320);
  v57 = *(v0 + 256);
  if (!swift_dynamicCast())
  {
    sub_100007BAC((v0 + 16));
    goto LABEL_14;
  }

  sub_1001BAAE8(*(v0 + 320), *(v0 + 312), type metadata accessor for OwnerSharingCircle);
  v58 = swift_task_alloc();
  *(v0 + 800) = v58;
  *v58 = v0;
  v58[1] = sub_100178AFC;
  v59 = *(v0 + 312);

  return (sub_1003C3774)(v59);
}

uint64_t sub_100175650()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_100175760, v2, 0);
}

uint64_t sub_100175760()
{
  v1 = v0[71];
  v2 = v0[53];
  v3 = v0[54];
  sub_1001BA80C(v0[68], type metadata accessor for LostModeRecord);
  (*(v3 + 56))(v1, 1, 1, v2);
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[53];
  v7 = v0[54];
  sub_100007BAC(v0 + 2);
  sub_1000D2A70(v4, v5, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = v0[70];
    sub_10000B3A8(v0[71], &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    v9 = v0[71];
    v10 = v0[70];
    v11 = v0[69];
    v12 = v0[68];
    v13 = v0[66];
    v14 = v0[64];
    v16 = v0[61];
    v15 = v0[62];
    v17 = v0[60];
    v18 = v0[57];
    v25 = v0[56];
    v26 = v0[52];
    v27 = v0[51];
    v28 = v0[50];
    v29 = v0[47];
    v30 = v0[45];
    v31 = v0[44];
    v32 = v0[43];
    v33 = v0[42];
    v34 = v0[40];
    v35 = v0[39];
    v36 = v0[38];
    v37 = v0[37];
    v38 = v0[36];
    v39 = v0[35];
    v40 = v0[34];
    v41 = v0[33];
    v42 = v0[31];
    v43 = v0[30];

    v19 = v0[1];

    return v19();
  }

  else
  {
    (*(v0[54] + 32))(v0[56], v0[70], v0[53]);
    v21 = swift_task_alloc();
    v0[117] = v21;
    *v21 = v0;
    v21[1] = sub_10017B288;
    v22 = v0[72];
    v23 = v0[56];
    v24 = v0[27];

    return sub_10017FFA4(v23, v22, 0);
  }
}

uint64_t sub_100175AA0()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 944);
  v3 = *(v0 + 488);
  v4 = *(v0 + 456);
  v5 = *(v0 + 432);
  v6 = *(v0 + 424);
  v7 = *(v5 + 16);
  *(v0 + 600) = v7;
  *(v0 + 608) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v4, v3 + v2, v6);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v0 + 616) = v9;
  *(v9 + 16) = v1;
  (*(v5 + 32))(v9 + v8, v4, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 624) = v11;
  v12 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v11 = v0;
  v11[1] = sub_100175C34;

  return unsafeBlocking<A>(context:_:)(v0 + 200, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4BC, v9, v12);
}

uint64_t sub_100175C34()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 592);
  v5 = *v0;

  return _swift_task_switch(sub_100175D60, v3, 0);
}

uint64_t sub_100175D60()
{
  v1 = v0[27];
  v0[79] = v0[25];
  return _swift_task_switch(sub_100175D84, v1, 0);
}

uint64_t sub_100175D84()
{
  v1 = *(*(v0 + 632) + 16);

  if (!v1)
  {
    sub_1001BA80C(*(v0 + 488), type metadata accessor for MemberSharingCircle);
    sub_100007BAC((v0 + 16));
    goto LABEL_5;
  }

  v2 = *(v0 + 608);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 488);
  v6 = *(v0 + 424);
  v7 = *(v0 + 432);
  v8 = *(v0 + 216);
  (*(v0 + 600))(v4, v5 + *(*(v0 + 464) + 24), v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  type metadata accessor for Transaction();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v3;
  *(v10 + 32) = 0;

  static Transaction.asyncTask(name:block:)();

  sub_1001BA80C(v5, type metadata accessor for MemberSharingCircle);

  v11 = *(v0 + 568);
  v12 = *(v0 + 560);
  v13 = *(v0 + 424);
  v14 = *(v0 + 432);
  sub_100007BAC((v0 + 16));
  sub_1000D2A70(v11, v12, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v15 = *(v0 + 560);
    sub_10000B3A8(*(v0 + 568), &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
LABEL_5:
    v16 = *(v0 + 568);
    v17 = *(v0 + 560);
    v18 = *(v0 + 552);
    v19 = *(v0 + 544);
    v20 = *(v0 + 528);
    v21 = *(v0 + 512);
    v23 = *(v0 + 488);
    v22 = *(v0 + 496);
    v24 = *(v0 + 480);
    v25 = *(v0 + 456);
    v32 = *(v0 + 448);
    v33 = *(v0 + 416);
    v34 = *(v0 + 408);
    v35 = *(v0 + 400);
    v36 = *(v0 + 376);
    v37 = *(v0 + 360);
    v38 = *(v0 + 352);
    v39 = *(v0 + 344);
    v40 = *(v0 + 336);
    v41 = *(v0 + 320);
    v42 = *(v0 + 312);
    v43 = *(v0 + 304);
    v44 = *(v0 + 296);
    v45 = *(v0 + 288);
    v46 = *(v0 + 280);
    v47 = *(v0 + 272);
    v48 = *(v0 + 264);
    v49 = *(v0 + 248);
    v50 = *(v0 + 240);

    v26 = *(v0 + 8);

    return v26();
  }

  (*(*(v0 + 432) + 32))(*(v0 + 448), *(v0 + 560), *(v0 + 424));
  v28 = swift_task_alloc();
  *(v0 + 936) = v28;
  *v28 = v0;
  v28[1] = sub_10017B288;
  v29 = *(v0 + 576);
  v30 = *(v0 + 448);
  v31 = *(v0 + 216);

  return sub_10017FFA4(v30, v29, 0);
}

uint64_t sub_1001761BC()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 948);
  v3 = *(v0 + 456);
  v4 = *(v0 + 432);
  v5 = *(v0 + 424);
  v6 = *(v0 + 408);
  v7 = *(v4 + 16);
  *(v0 + 648) = v7;
  *(v0 + 656) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v2, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 664) = v9;
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, v3, v5);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 672) = v11;
  *v11 = v0;
  v11[1] = sub_100176338;
  v13 = *(v0 + 368);
  v12 = *(v0 + 376);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B4, v9, v13);
}

uint64_t sub_100176338()
{
  v1 = *(*v0 + 672);
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 216);
  v5 = *v0;

  return _swift_task_switch(sub_100176464, v3, 0);
}

uint64_t sub_100176464()
{
  v1 = v0[58];
  v2 = v0[47];
  if ((*(v0[59] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
    v3 = 1;
  }

  else
  {
    v4 = v0[82];
    v5 = v0[81];
    v6 = v0[71];
    v7 = v0[60];
    v8 = v0[53];
    sub_1001BAAE8(v2, v7, type metadata accessor for MemberSharingCircle);
    v5(v6, v7 + *(v1 + 24), v8);
    sub_1001BA80C(v7, type metadata accessor for MemberSharingCircle);
    v3 = 0;
  }

  v9 = v0[51];
  v10 = v0[49];
  (*(v0[54] + 56))(v0[71], v3, 1, v0[53]);
  sub_1000BC4D4(&qword_101698D88, &qword_101390910);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  v0[85] = v13;
  *(v13 + 16) = xmmword_101385D80;
  sub_1001BB2E0(v9, v13 + v12, type metadata accessor for SharingCircleSecret);
  v14 = swift_task_alloc();
  v0[86] = v14;
  *v14 = v0;
  v14[1] = sub_10017665C;

  return sub_1003C3240(v13);
}

uint64_t sub_10017665C()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v9 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v4 = *(v2 + 216);
    v5 = sub_100176A9C;
  }

  else
  {
    v6 = *(v2 + 680);
    v7 = *(v2 + 216);

    v5 = sub_100176784;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100176784()
{
  sub_1001BA80C(v0[51], type metadata accessor for SharingCircleSecret);
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[53];
  v4 = v0[54];
  sub_100007BAC(v0 + 2);
  sub_1000D2A70(v1, v2, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[70];
    sub_10000B3A8(v0[71], &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
    v6 = v0[71];
    v7 = v0[70];
    v8 = v0[69];
    v9 = v0[68];
    v10 = v0[66];
    v11 = v0[64];
    v13 = v0[61];
    v12 = v0[62];
    v14 = v0[60];
    v15 = v0[57];
    v22 = v0[56];
    v23 = v0[52];
    v24 = v0[51];
    v25 = v0[50];
    v26 = v0[47];
    v27 = v0[45];
    v28 = v0[44];
    v29 = v0[43];
    v30 = v0[42];
    v31 = v0[40];
    v32 = v0[39];
    v33 = v0[38];
    v34 = v0[37];
    v35 = v0[36];
    v36 = v0[35];
    v37 = v0[34];
    v38 = v0[33];
    v39 = v0[31];
    v40 = v0[30];

    v16 = v0[1];

    return v16();
  }

  else
  {
    (*(v0[54] + 32))(v0[56], v0[70], v0[53]);
    v18 = swift_task_alloc();
    v0[117] = v18;
    *v18 = v0;
    v18[1] = sub_10017B288;
    v19 = v0[72];
    v20 = v0[56];
    v21 = v0[27];

    return sub_10017FFA4(v20, v19, 0);
  }
}

uint64_t sub_100176A9C()
{
  v70 = v0;
  v1 = v0[85];

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[87];
  v3 = v0[50];
  v4 = v0[51];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  sub_1001BB2E0(v4, v3, type metadata accessor for SharingCircleSecret);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[87];
  if (v8)
  {
    v10 = v0[72];
    v64 = v0[53];
    v11 = v0[50];
    v67 = v0[51];
    v12 = v0[48];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v13 = 136315907;
    v0[24] = v10;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = sub_1000136BC(v15, v16, &v69);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v18 = *(v12 + 24);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_1001BA80C(v11, type metadata accessor for SharingCircleSecret);
    v22 = sub_1000136BC(v19, v21, &v69);

    *(v13 + 24) = v22;
    *(v13 + 32) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v23;
    *v14 = v23;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Failed to backup sharing circle secrets for: %{private,mask.hash}s, error: %{public}@.", v13, 0x2Au);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v24 = v67;
  }

  else
  {
    v26 = v0[50];
    v25 = v0[51];

    sub_1001BA80C(v26, type metadata accessor for SharingCircleSecret);
    v24 = v25;
  }

  sub_1001BA80C(v24, type metadata accessor for SharingCircleSecret);
  v27 = v0[71];
  v28 = v0[70];
  v29 = v0[53];
  v30 = v0[54];
  sub_100007BAC(v0 + 2);
  sub_1000D2A70(v27, v28, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    v31 = v0[70];
    sub_10000B3A8(v0[71], &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v31, &qword_1016980D0, &unk_10138F3B0);
    v32 = v0[71];
    v33 = v0[70];
    v34 = v0[69];
    v35 = v0[68];
    v36 = v0[66];
    v37 = v0[64];
    v39 = v0[61];
    v38 = v0[62];
    v40 = v0[60];
    v41 = v0[57];
    v48 = v0[56];
    v49 = v0[52];
    v50 = v0[51];
    v51 = v0[50];
    v52 = v0[47];
    v53 = v0[45];
    v54 = v0[44];
    v55 = v0[43];
    v56 = v0[42];
    v57 = v0[40];
    v58 = v0[39];
    v59 = v0[38];
    v60 = v0[37];
    v61 = v0[36];
    v62 = v0[35];
    v63 = v0[34];
    v65 = v0[33];
    v66 = v0[31];
    v68 = v0[30];

    v42 = v0[1];

    return v42();
  }

  else
  {
    (*(v0[54] + 32))(v0[56], v0[70], v0[53]);
    v44 = swift_task_alloc();
    v0[117] = v44;
    *v44 = v0;
    v44[1] = sub_10017B288;
    v45 = v0[72];
    v46 = v0[56];
    v47 = v0[27];

    return sub_10017FFA4(v46, v45, 0);
  }
}

uint64_t sub_100177080(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 704);
  v12 = *v1;
  v3[89] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[90] = v6;
  v7 = type metadata accessor for Daemon();
  v3[91] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1001B8FE4(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_100177260;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100177260(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 720);
  v6 = *v2;
  v4[92] = a1;
  v4[93] = v1;

  if (v1)
  {
    v7 = v4[89];

    v4[99] = v1;
    v8 = v4[27];
    v9 = sub_1001784FC;
  }

  else
  {
    v9 = sub_1001773A0;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1001773A0()
{
  v1 = v0[93];
  v2 = v0[92];
  sub_10001B108();
  v0[94] = v3;
  v0[95] = v1;
  v4 = v0[91];
  v5 = v0[89];
  sub_1001B8FE4(&qword_1016969E0, &type metadata accessor for Daemon);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v8 = sub_100178480;
  }

  else
  {
    v8 = sub_10017747C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10017747C()
{
  v1 = v0[92];
  v2 = v0[89];
  v3 = v0[27];

  return _swift_task_switch(sub_1001774F4, v3, 0);
}

uint64_t sub_1001774F4()
{
  v1 = v0[44];
  v0[10] = v0[41];
  v0[11] = sub_1001B8FE4(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
  v2 = sub_1000280DC(v0 + 7);
  sub_1001BB2E0(v1, v2, type metadata accessor for SharedBeaconRecord);

  return _swift_task_switch(sub_1001775C0, 0, 0);
}

uint64_t sub_1001775C0()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 576);
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(v0 + 56, v0 + 96);
  v4 = swift_allocObject();
  *(v0 + 768) = v4;
  sub_10000A748((v0 + 96), v4 + 16);
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
  *(v4 + 72) = 0;
  v5 = async function pointer to withTimeout<A>(_:block:)[1];
  v6 = swift_task_alloc();
  *(v0 + 776) = v6;
  *v6 = v0;
  v6[1] = sub_1001776F4;

  return withTimeout<A>(_:block:)(v6, 0x40AAD21B3B700000, 3, &unk_101390908, v4, &type metadata for () + 8);
}

uint64_t sub_1001776F4()
{
  v2 = *v1;
  v3 = *(*v1 + 776);
  v7 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v4 = sub_100177E04;
  }

  else
  {
    v5 = *(v2 + 768);

    v4 = sub_100177810;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100177810()
{
  v1 = *(v0 + 216);
  sub_100007BAC((v0 + 56));

  return _swift_task_switch(sub_10017787C, v1, 0);
}

uint64_t sub_10017787C()
{
  v66 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = v0[44];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_1001BB2E0(v2, v1, type metadata accessor for SharedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[94];
  if (v6)
  {
    v8 = v0[72];
    v9 = v0[43];
    v61 = v0[53];
    v63 = v0[44];
    v10 = v0[41];
    v11 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v11 = 136315651;
    v0[23] = v8;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = sub_1000136BC(v12, v13, &v65);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v15 = *(v10 + 20);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1001BA80C(v9, type metadata accessor for SharedBeaconRecord);
    v19 = sub_1000136BC(v16, v18, &v65);

    *(v11 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Fetched product info for shared beacon %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();

    v20 = v63;
  }

  else
  {
    v22 = v0[43];
    v21 = v0[44];

    sub_1001BA80C(v22, type metadata accessor for SharedBeaconRecord);
    v20 = v21;
  }

  sub_1001BA80C(v20, type metadata accessor for SharedBeaconRecord);
  (*(v0[54] + 56))(v0[71], 1, 1, v0[53]);
  v23 = v0[71];
  v24 = v0[70];
  v25 = v0[53];
  v26 = v0[54];
  sub_100007BAC(v0 + 2);
  sub_1000D2A70(v23, v24, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v27 = v0[70];
    sub_10000B3A8(v0[71], &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v27, &qword_1016980D0, &unk_10138F3B0);
    v28 = v0[71];
    v29 = v0[70];
    v30 = v0[69];
    v31 = v0[68];
    v32 = v0[66];
    v33 = v0[64];
    v35 = v0[61];
    v34 = v0[62];
    v36 = v0[60];
    v37 = v0[57];
    v44 = v0[56];
    v45 = v0[52];
    v46 = v0[51];
    v47 = v0[50];
    v48 = v0[47];
    v49 = v0[45];
    v50 = v0[44];
    v51 = v0[43];
    v52 = v0[42];
    v53 = v0[40];
    v54 = v0[39];
    v55 = v0[38];
    v56 = v0[37];
    v57 = v0[36];
    v58 = v0[35];
    v59 = v0[34];
    v60 = v0[33];
    v62 = v0[31];
    v64 = v0[30];

    v38 = v0[1];

    return v38();
  }

  else
  {
    (*(v0[54] + 32))(v0[56], v0[70], v0[53]);
    v40 = swift_task_alloc();
    v0[117] = v40;
    *v40 = v0;
    v40[1] = sub_10017B288;
    v41 = v0[72];
    v42 = v0[56];
    v43 = v0[27];

    return sub_10017FFA4(v42, v41, 0);
  }
}

uint64_t sub_100177E04()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 216);

  return _swift_task_switch(sub_100177E70, v2, 0);
}

uint64_t sub_100177E70()
{
  v68 = v0;
  v1 = v0[94];

  sub_100007BAC(v0 + 7);
  v2 = v0[98];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v3 = v0[44];
  v4 = v0[42];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  sub_1001BB2E0(v3, v4, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[72];
    v62 = v0[53];
    v65 = v0[44];
    v9 = v0[41];
    v10 = v0[42];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v11 = 136315907;
    v0[22] = v8;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_1000136BC(v13, v14, &v67);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v16 = *(v9 + 20);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_1001BA80C(v10, type metadata accessor for SharedBeaconRecord);
    v20 = sub_1000136BC(v17, v19, &v67);

    *(v11 + 24) = v20;
    *(v11 + 32) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v21;
    *v12 = v21;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Failed to fetch product info for shared beacon %{private,mask.hash}s error = %{public}@!", v11, 0x2Au);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v22 = v65;
  }

  else
  {
    v23 = v0[44];
    v24 = v0[42];

    sub_1001BA80C(v24, type metadata accessor for SharedBeaconRecord);
    v22 = v23;
  }

  sub_1001BA80C(v22, type metadata accessor for SharedBeaconRecord);
  (*(v0[54] + 56))(v0[71], 1, 1, v0[53]);
  v25 = v0[71];
  v26 = v0[70];
  v27 = v0[53];
  v28 = v0[54];
  sub_100007BAC(v0 + 2);
  sub_1000D2A70(v25, v26, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v29 = v0[70];
    sub_10000B3A8(v0[71], &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v29, &qword_1016980D0, &unk_10138F3B0);
    v30 = v0[71];
    v31 = v0[70];
    v32 = v0[69];
    v33 = v0[68];
    v34 = v0[66];
    v35 = v0[64];
    v37 = v0[61];
    v36 = v0[62];
    v38 = v0[60];
    v39 = v0[57];
    v46 = v0[56];
    v47 = v0[52];
    v48 = v0[51];
    v49 = v0[50];
    v50 = v0[47];
    v51 = v0[45];
    v52 = v0[44];
    v53 = v0[43];
    v54 = v0[42];
    v55 = v0[40];
    v56 = v0[39];
    v57 = v0[38];
    v58 = v0[37];
    v59 = v0[36];
    v60 = v0[35];
    v61 = v0[34];
    v63 = v0[33];
    v64 = v0[31];
    v66 = v0[30];

    v40 = v0[1];

    return v40();
  }

  else
  {
    (*(v0[54] + 32))(v0[56], v0[70], v0[53]);
    v42 = swift_task_alloc();
    v0[117] = v42;
    *v42 = v0;
    v42[1] = sub_10017B288;
    v43 = v0[72];
    v44 = v0[56];
    v45 = v0[27];

    return sub_10017FFA4(v44, v43, 0);
  }
}

uint64_t sub_100178480()
{
  v1 = v0[92];
  v2 = v0[89];

  v0[99] = v0[95];
  v3 = v0[27];

  return _swift_task_switch(sub_1001784FC, v3, 0);
}

uint64_t sub_1001784FC()
{
  v67 = v0;
  v1 = v0[99];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[44];
  v3 = v0[42];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v2, v3, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[72];
    v61 = v0[53];
    v64 = v0[44];
    v8 = v0[41];
    v9 = v0[42];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v10 = 136315907;
    v0[22] = v7;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = sub_1000136BC(v12, v13, &v66);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    v15 = *(v8 + 20);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1001BA80C(v9, type metadata accessor for SharedBeaconRecord);
    v19 = sub_1000136BC(v16, v18, &v66);

    *(v10 + 24) = v19;
    *(v10 + 32) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 34) = v20;
    *v11 = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Failed to fetch product info for shared beacon %{private,mask.hash}s error = %{public}@!", v10, 0x2Au);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v21 = v64;
  }

  else
  {
    v22 = v0[44];
    v23 = v0[42];

    sub_1001BA80C(v23, type metadata accessor for SharedBeaconRecord);
    v21 = v22;
  }

  sub_1001BA80C(v21, type metadata accessor for SharedBeaconRecord);
  (*(v0[54] + 56))(v0[71], 1, 1, v0[53]);
  v24 = v0[71];
  v25 = v0[70];
  v26 = v0[53];
  v27 = v0[54];
  sub_100007BAC(v0 + 2);
  sub_1000D2A70(v24, v25, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v28 = v0[70];
    sub_10000B3A8(v0[71], &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v28, &qword_1016980D0, &unk_10138F3B0);
    v29 = v0[71];
    v30 = v0[70];
    v31 = v0[69];
    v32 = v0[68];
    v33 = v0[66];
    v34 = v0[64];
    v36 = v0[61];
    v35 = v0[62];
    v37 = v0[60];
    v38 = v0[57];
    v45 = v0[56];
    v46 = v0[52];
    v47 = v0[51];
    v48 = v0[50];
    v49 = v0[47];
    v50 = v0[45];
    v51 = v0[44];
    v52 = v0[43];
    v53 = v0[42];
    v54 = v0[40];
    v55 = v0[39];
    v56 = v0[38];
    v57 = v0[37];
    v58 = v0[36];
    v59 = v0[35];
    v60 = v0[34];
    v62 = v0[33];
    v63 = v0[31];
    v65 = v0[30];

    v39 = v0[1];

    return v39();
  }

  else
  {
    (*(v0[54] + 32))(v0[56], v0[70], v0[53]);
    v41 = swift_task_alloc();
    v0[117] = v41;
    *v41 = v0;
    v41[1] = sub_10017B288;
    v42 = v0[72];
    v43 = v0[56];
    v44 = v0[27];

    return sub_10017FFA4(v43, v42, 0);
  }
}

uint64_t sub_100178AFC()
{
  v2 = *v1;
  v3 = *(*v1 + 800);
  v4 = *v1;
  *(*v1 + 808) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_100179004;
  }

  else
  {
    v6 = sub_100178C28;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100178C28()
{
  *(v0 + 816) = *(v0 + 808);
  v1 = *(v0 + 312);
  v2 = *(v1 + *(*(v0 + 256) + 28));
  type metadata accessor for DelegatedShareUseCase();
  v3 = sub_10059DE04(v1);
  v4 = *(v0 + 312);
  if (v2 != 3)
  {
    goto LABEL_8;
  }

  v5 = *(v0 + 256);
  v6 = *(v4 + *(v5 + 36));
  if (v3)
  {
    if (v6 == 4)
    {
      v7 = *(v5 + 20);
      *(v0 + 952) = v7;
      v8 = swift_task_alloc();
      *(v0 + 824) = v8;
      *v8 = v0;
      v8[1] = sub_100179748;

      return (sub_1003C3BD0)(v4 + v7);
    }

    goto LABEL_8;
  }

  if (v6 == 4)
  {
LABEL_8:
    v10 = *(v0 + 576);
    v11 = *(v0 + 216);
    type metadata accessor for Transaction();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v10;
    *(v13 + 32) = 0;

    static Transaction.asyncTask(name:block:)();

    sub_1001BA80C(v4, type metadata accessor for OwnerSharingCircle);
    sub_100007BAC((v0 + 16));
    v14 = *(v0 + 568);
    v15 = *(v0 + 560);
    v16 = *(v0 + 552);
    v17 = *(v0 + 544);
    v18 = *(v0 + 528);
    v19 = *(v0 + 512);
    v21 = *(v0 + 488);
    v20 = *(v0 + 496);
    v22 = *(v0 + 480);
    v23 = *(v0 + 456);
    v26 = *(v0 + 448);
    v27 = *(v0 + 416);
    v28 = *(v0 + 408);
    v29 = *(v0 + 400);
    v30 = *(v0 + 376);
    v31 = *(v0 + 360);
    v32 = *(v0 + 352);
    v33 = *(v0 + 344);
    v34 = *(v0 + 336);
    v35 = *(v0 + 320);
    v36 = *(v0 + 312);
    v37 = *(v0 + 304);
    v38 = *(v0 + 296);
    v39 = *(v0 + 288);
    v40 = *(v0 + 280);
    v41 = *(v0 + 272);
    v42 = *(v0 + 264);
    v43 = *(v0 + 248);
    v44 = *(v0 + 240);

    v24 = *(v0 + 8);

    return v24();
  }

  v25 = *(*(v0 + 216) + 136);
  *(v0 + 856) = v25;
  *(v0 + 956) = *(v5 + 20);

  return _swift_task_switch(sub_10017A818, v25, 0);
}

uint64_t sub_100179004()
{
  v80 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 808);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 296);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  sub_1001BB2E0(v3, v2, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v3, v4, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 808);
  if (v8)
  {
    v74 = v7;
    v10 = *(v0 + 576);
    v11 = *(v0 + 424);
    log = v6;
    v12 = *(v0 + 304);
    v72 = *(v0 + 296);
    v13 = *(v0 + 256);
    v14 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v14 = 136316419;
    *(v0 + 168) = v10;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = sub_1000136BC(v15, v16, &v79);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    v18 = *(v13 + 20);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_1001BA80C(v12, type metadata accessor for OwnerSharingCircle);
    v22 = sub_1000136BC(v19, v21, &v79);

    *(v14 + 24) = v22;
    *(v14 + 32) = 2160;
    *(v14 + 34) = 1752392040;
    *(v14 + 42) = 2081;
    v23 = *(v13 + 24);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_1001BA80C(v72, type metadata accessor for OwnerSharingCircle);
    v27 = sub_1000136BC(v24, v26, &v79);

    *(v14 + 44) = v27;
    *(v14 + 52) = 2114;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 54) = v28;
    *v76 = v28;
    _os_log_impl(&_mh_execute_header, log, v74, "%s Failed to retry apns registration for: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v14, 0x3Eu);
    sub_10000B3A8(v76, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v30 = *(v0 + 296);
    v29 = *(v0 + 304);

    sub_1001BA80C(v30, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v29, type metadata accessor for OwnerSharingCircle);
  }

  *(v0 + 816) = 0;
  v31 = *(v0 + 312);
  v32 = *(v31 + *(*(v0 + 256) + 28));
  type metadata accessor for DelegatedShareUseCase();
  v33 = sub_10059DE04(v31);
  v34 = *(v0 + 312);
  if (v32 != 3)
  {
    goto LABEL_13;
  }

  v35 = *(v0 + 256);
  v36 = *(v34 + *(v35 + 36));
  if (v33)
  {
    if (v36 == 4)
    {
      v37 = *(v35 + 20);
      *(v0 + 952) = v37;
      v38 = swift_task_alloc();
      *(v0 + 824) = v38;
      *v38 = v0;
      v38[1] = sub_100179748;

      return (sub_1003C3BD0)(v34 + v37);
    }

    goto LABEL_13;
  }

  if (v36 == 4)
  {
LABEL_13:
    v40 = *(v0 + 576);
    v41 = *(v0 + 216);
    type metadata accessor for Transaction();
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v40;
    *(v43 + 32) = 0;

    static Transaction.asyncTask(name:block:)();

    sub_1001BA80C(v34, type metadata accessor for OwnerSharingCircle);
    sub_100007BAC((v0 + 16));
    v44 = *(v0 + 568);
    v45 = *(v0 + 560);
    v46 = *(v0 + 552);
    v47 = *(v0 + 544);
    v48 = *(v0 + 528);
    v49 = *(v0 + 512);
    v51 = *(v0 + 488);
    v50 = *(v0 + 496);
    v52 = *(v0 + 480);
    v53 = *(v0 + 456);
    v56 = *(v0 + 448);
    v57 = *(v0 + 416);
    v58 = *(v0 + 408);
    v59 = *(v0 + 400);
    v60 = *(v0 + 376);
    v61 = *(v0 + 360);
    v62 = *(v0 + 352);
    v63 = *(v0 + 344);
    v64 = *(v0 + 336);
    v65 = *(v0 + 320);
    v66 = *(v0 + 312);
    v67 = *(v0 + 304);
    v68 = *(v0 + 296);
    v69 = *(v0 + 288);
    loga = *(v0 + 280);
    v73 = *(v0 + 272);
    v75 = *(v0 + 264);
    v77 = *(v0 + 248);
    v78 = *(v0 + 240);

    v54 = *(v0 + 8);

    return v54();
  }

  v55 = *(*(v0 + 216) + 136);
  *(v0 + 856) = v55;
  *(v0 + 956) = *(v35 + 20);

  return _swift_task_switch(sub_10017A818, v55, 0);
}

uint64_t sub_100179748(char a1)
{
  v2 = *(*v1 + 824);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 968) = a1;

  return _swift_task_switch(sub_100179860, v3, 0);
}

void sub_100179860()
{
  v1 = *(v0 + 312);
  if (*(v0 + 968) == 1)
  {
    v2 = *(v0 + 816);
    v3 = *(v0 + 240);
    static Date.trustedNow.getter(*(v0 + 248));
    v4 = objc_autoreleasePoolPush();
    sub_100D148E0(v1, v3);
    objc_autoreleasePoolPop(v4);
    if (!v2)
    {
      v20 = *(v0 + 240);
      v21 = *(v0 + 248);
      v22 = *(v0 + 224);
      v23 = *(v0 + 232);
      Date.timeIntervalSince(_:)();
      v25 = v24;
      v26 = *(v23 + 8);
      v26(v20, v22);
      v26(v21, v22);
      if (v25 <= 86400.0)
      {
        v30 = swift_task_alloc();
        *(v0 + 832) = v30;
        *v30 = v0;
        v30[1] = sub_100179CF0;
        v31 = *(v0 + 312);

        (sub_1003C476C)(v31, 0, 0, 2);
      }

      else
      {
        v27 = *(v0 + 952);
        v28 = *(v0 + 312);
        v29 = swift_task_alloc();
        *(v0 + 840) = v29;
        *v29 = v0;
        v29[1] = sub_100179E50;

        (sub_1003C4D3C)(v28 + v27);
      }
    }
  }

  else
  {
    v5 = *(v0 + 576);
    v6 = *(v0 + 216);
    type metadata accessor for Transaction();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v5;
    *(v8 + 32) = 0;

    static Transaction.asyncTask(name:block:)();

    sub_1001BA80C(v1, type metadata accessor for OwnerSharingCircle);
    sub_100007BAC((v0 + 16));
    v9 = *(v0 + 568);
    v10 = *(v0 + 560);
    v11 = *(v0 + 552);
    v12 = *(v0 + 544);
    v13 = *(v0 + 528);
    v14 = *(v0 + 512);
    v16 = *(v0 + 488);
    v15 = *(v0 + 496);
    v17 = *(v0 + 480);
    v18 = *(v0 + 456);
    v32 = *(v0 + 448);
    v33 = *(v0 + 416);
    v34 = *(v0 + 408);
    v35 = *(v0 + 400);
    v36 = *(v0 + 376);
    v37 = *(v0 + 360);
    v38 = *(v0 + 352);
    v39 = *(v0 + 344);
    v40 = *(v0 + 336);
    v41 = *(v0 + 320);
    v42 = *(v0 + 312);
    v43 = *(v0 + 304);
    v44 = *(v0 + 296);
    v45 = *(v0 + 288);
    v46 = *(v0 + 280);
    v47 = *(v0 + 272);
    v48 = *(v0 + 264);
    v49 = *(v0 + 248);
    v50 = *(v0 + 240);

    v19 = *(v0 + 8);

    v19();
  }
}

uint64_t sub_100179CF0()
{
  v1 = *v0;
  v2 = *(*v0 + 832);
  v3 = *v0;

  v4 = *(v1 + 952);
  v5 = *(v1 + 312);
  v6 = swift_task_alloc();
  *(v1 + 840) = v6;
  *v6 = v3;
  v6[1] = sub_100179E50;

  return (sub_1003C4D3C)(v5 + v4);
}

uint64_t sub_100179E50()
{
  v2 = *v1;
  v3 = *(*v1 + 840);
  v4 = *v1;
  *(*v1 + 848) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_10017A214;
  }

  else
  {
    v6 = sub_100179F7C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100179F7C()
{
  v1 = v0[72];
  v2 = v0[39];
  v3 = v0[27];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  *(v5 + 32) = 0;

  static Transaction.asyncTask(name:block:)();

  sub_1001BA80C(v2, type metadata accessor for OwnerSharingCircle);
  sub_100007BAC(v0 + 2);
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[66];
  v11 = v0[64];
  v13 = v0[61];
  v12 = v0[62];
  v14 = v0[60];
  v15 = v0[57];
  v18 = v0[56];
  v19 = v0[52];
  v20 = v0[51];
  v21 = v0[50];
  v22 = v0[47];
  v23 = v0[45];
  v24 = v0[44];
  v25 = v0[43];
  v26 = v0[42];
  v27 = v0[40];
  v28 = v0[39];
  v29 = v0[38];
  v30 = v0[37];
  v31 = v0[36];
  v32 = v0[35];
  v33 = v0[34];
  v34 = v0[33];
  v35 = v0[31];
  v36 = v0[30];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10017A214()
{
  v72 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[106];
  v2 = v0[39];
  v4 = v0[35];
  v3 = v0[36];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  sub_1001BB2E0(v2, v3, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v2, v4, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[106];
  if (v8)
  {
    v66 = v7;
    v10 = v0[72];
    v11 = v0[53];
    log = v6;
    v12 = v0[36];
    v64 = v0[35];
    v13 = v0[32];
    v14 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v14 = 136316419;
    v0[20] = v10;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = sub_1000136BC(v15, v16, &v71);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    v18 = *(v13 + 20);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_1001BA80C(v12, type metadata accessor for OwnerSharingCircle);
    v22 = sub_1000136BC(v19, v21, &v71);

    *(v14 + 24) = v22;
    *(v14 + 32) = 2160;
    *(v14 + 34) = 1752392040;
    *(v14 + 42) = 2081;
    v23 = *(v13 + 24);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_1001BA80C(v64, type metadata accessor for OwnerSharingCircle);
    v27 = sub_1000136BC(v24, v26, &v71);

    *(v14 + 44) = v27;
    *(v14 + 52) = 2114;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 54) = v28;
    *v68 = v28;
    _os_log_impl(&_mh_execute_header, log, v66, "%s Failed to expire delegated circle for: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v14, 0x3Eu);
    sub_10000B3A8(v68, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v30 = v0[35];
    v29 = v0[36];

    sub_1001BA80C(v30, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v29, type metadata accessor for OwnerSharingCircle);
  }

  v31 = v0[72];
  v32 = v0[39];
  v33 = v0[27];
  type metadata accessor for Transaction();
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v31;
  *(v35 + 32) = 0;

  static Transaction.asyncTask(name:block:)();

  sub_1001BA80C(v32, type metadata accessor for OwnerSharingCircle);
  sub_100007BAC(v0 + 2);
  v36 = v0[71];
  v37 = v0[70];
  v38 = v0[69];
  v39 = v0[68];
  v40 = v0[66];
  v41 = v0[64];
  v43 = v0[61];
  v42 = v0[62];
  v44 = v0[60];
  v45 = v0[57];
  v48 = v0[56];
  v49 = v0[52];
  v50 = v0[51];
  v51 = v0[50];
  v52 = v0[47];
  v53 = v0[45];
  v54 = v0[44];
  v55 = v0[43];
  v56 = v0[42];
  v57 = v0[40];
  v58 = v0[39];
  v59 = v0[38];
  v60 = v0[37];
  v61 = v0[36];
  loga = v0[35];
  v65 = v0[34];
  v67 = v0[33];
  v69 = v0[31];
  v70 = v0[30];

  v46 = v0[1];

  return v46();
}

uint64_t sub_10017A818()
{
  v1 = *(v0 + 956);
  v2 = *(v0 + 856);
  v3 = *(v0 + 456);
  v4 = *(v0 + 432);
  v5 = *(v0 + 424);
  v6 = *(v0 + 312);
  v7 = *(v4 + 16);
  *(v0 + 864) = v7;
  *(v0 + 872) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = *(v4 + 80);
  *(v0 + 960) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 880) = v10;
  *(v10 + 16) = v2;
  v11 = *(v4 + 32);
  *(v0 + 888) = v11;
  *(v0 + 896) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v3, v5);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 904) = v13;
  v14 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v13 = v0;
  v13[1] = sub_10017A9C4;

  return unsafeBlocking<A>(context:_:)(v0 + 136, 0xD000000000000010, 0x800000010134A8C0, sub_1001BB1FC, v10, v14);
}

uint64_t sub_10017A9C4()
{
  v1 = *(*v0 + 904);
  v2 = *(*v0 + 880);
  v3 = *(*v0 + 856);
  v5 = *v0;

  return _swift_task_switch(sub_10017AAF0, v3, 0);
}

uint64_t sub_10017AAF0()
{
  v1 = v0[17];
  v0[114] = v1;
  v2 = swift_task_alloc();
  v0[115] = v2;
  *v2 = v0;
  v2[1] = sub_10017AB9C;

  return sub_1003C3240(v1);
}

uint64_t sub_10017AB9C()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v4 = *v1;
  *(*v1 + 928) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_10017AD3C;
  }

  else
  {
    v6 = sub_10017ACC8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10017ACC8()
{
  v1 = *(v0 + 912);

  *(v0 + 964) = *(*(v0 + 256) + 24);

  return _swift_task_switch(sub_10017B13C, 0, 0);
}

uint64_t sub_10017AD3C()
{
  v38 = v0;
  v1 = *(v0 + 912);

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 928);
  v3 = *(v0 + 312);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  sub_1001BB2E0(v3, v4, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v3, v5, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 928);
  if (v9)
  {
    v35 = v8;
    v11 = *(v0 + 576);
    v12 = *(v0 + 424);
    log = v7;
    v13 = *(v0 + 272);
    v34 = *(v0 + 264);
    v14 = *(v0 + 256);
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v15 = 136316419;
    *(v0 + 144) = v11;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = sub_1000136BC(v16, v17, &v37);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    v19 = *(v14 + 20);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_1001BA80C(v13, type metadata accessor for OwnerSharingCircle);
    v23 = sub_1000136BC(v20, v22, &v37);

    *(v15 + 24) = v23;
    *(v15 + 32) = 2160;
    *(v15 + 34) = 1752392040;
    *(v15 + 42) = 2081;
    v24 = *(v14 + 24);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    sub_1001BA80C(v34, type metadata accessor for OwnerSharingCircle);
    v28 = sub_1000136BC(v25, v27, &v37);

    *(v15 + 44) = v28;
    *(v15 + 52) = 2114;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 54) = v29;
    *v36 = v29;
    _os_log_impl(&_mh_execute_header, log, v35, "%s Failed to backup sharing circle secrets for: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v15, 0x3Eu);
    sub_10000B3A8(v36, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v31 = *(v0 + 264);
    v30 = *(v0 + 272);

    sub_1001BA80C(v31, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v30, type metadata accessor for OwnerSharingCircle);
  }

  *(v0 + 964) = *(*(v0 + 256) + 24);

  return _swift_task_switch(sub_10017B13C, 0, 0);
}

uint64_t sub_10017B13C()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  v3 = *(v0 + 960);
  v4 = *(v0 + 872);
  v5 = *(v0 + 456);
  v6 = *(v0 + 440);
  v7 = *(v0 + 424);
  v8 = *(v0 + 216);
  (*(v0 + 864))(v5, *(v0 + 312) + *(v0 + 964), v7);
  v9 = swift_allocObject();
  v2(v9 + ((v3 + 16) & ~v3), v5, v7);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_1001BE498, v8, 0);
}

uint64_t sub_10017B288()
{
  v2 = *v1;
  v3 = *(*v1 + 936);
  v4 = *v1;

  v5 = *(v2 + 216);
  if (v0)
  {

    v6 = sub_1001BE44C;
  }

  else
  {
    v6 = sub_10017B3C0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10017B3C0()
{
  v1 = v0[71];
  (*(v0[54] + 8))(v0[56], v0[53]);
  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[66];
  v7 = v0[64];
  v9 = v0[61];
  v8 = v0[62];
  v10 = v0[60];
  v11 = v0[57];
  v14 = v0[56];
  v15 = v0[52];
  v16 = v0[51];
  v17 = v0[50];
  v18 = v0[47];
  v19 = v0[45];
  v20 = v0[44];
  v21 = v0[43];
  v22 = v0[42];
  v23 = v0[40];
  v24 = v0[39];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[36];
  v28 = v0[35];
  v29 = v0[34];
  v30 = v0[33];
  v31 = v0[31];
  v32 = v0[30];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10017B5C4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for LostModeRecord();
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle();
  v2[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10017B6B8, v1, 0);
}

uint64_t sub_10017B6B8()
{
  v1 = v0[16];
  v2 = v0[12];
  sub_10001F280(v0[7], (v0 + 2));
  sub_1000BC4D4(&qword_101698D58, &unk_1013908E0);
  if (swift_dynamicCast())
  {
    v3 = v0[15];
    v4 = v0[12];
    sub_1001BAAE8(v0[16], v3, type metadata accessor for OwnerSharingCircle);
    v5 = *(v4 + 20);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_10017B924;

    return (sub_1003C4D3C)(v3 + v5);
  }

  else
  {
    v8 = v0[11];
    v9 = v0[9];
    if (swift_dynamicCast())
    {
      v10 = v0[10];
      v11 = v0[9];
      sub_1001BAAE8(v0[11], v10, type metadata accessor for LostModeRecord);
      v12 = *(v11 + 24);
      v13 = swift_task_alloc();
      v0[19] = v13;
      *v13 = v0;
      v13[1] = sub_10017BF10;
      v14 = v0[8];

      return sub_10018B6EC(v10 + v12);
    }

    else
    {
      v15 = v0[15];
      v16 = v0[16];
      v18 = v0[13];
      v17 = v0[14];
      v20 = v0[10];
      v19 = v0[11];
      sub_100007BAC(v0 + 2);

      v21 = v0[1];

      return v21();
    }
  }
}

uint64_t sub_10017B924()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_10017BB18;
  }

  else
  {
    v6 = sub_10017BA50;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10017BA50()
{
  sub_1001BA80C(v0[15], type metadata accessor for OwnerSharingCircle);
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  sub_100007BAC(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10017BB18()
{
  v38 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  sub_1001BB2E0(v2, v3, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v2, v4, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];
  if (v8)
  {
    v13 = v0[12];
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v14 = 141559043;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v15 = *(v13 + 20);
    type metadata accessor for UUID();
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v36 = v10;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1001BA80C(v11, type metadata accessor for OwnerSharingCircle);
    v19 = sub_1000136BC(v16, v18, &v37);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2081;
    v20 = v12 + *(v13 + 24);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_1001BA80C(v12, type metadata accessor for OwnerSharingCircle);
    v24 = sub_1000136BC(v21, v23, &v37);

    *(v14 + 34) = v24;
    *(v14 + 42) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 44) = v25;
    *v35 = v25;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to remove local circle data for: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v14, 0x34u);
    sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v26 = v36;
  }

  else
  {

    sub_1001BA80C(v12, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v11, type metadata accessor for OwnerSharingCircle);
    v26 = v10;
  }

  sub_1001BA80C(v26, type metadata accessor for OwnerSharingCircle);
  v27 = v0[15];
  v28 = v0[16];
  v30 = v0[13];
  v29 = v0[14];
  v32 = v0[10];
  v31 = v0[11];
  sub_100007BAC(v0 + 2);

  v33 = v0[1];

  return v33();
}

uint64_t sub_10017BF10()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_10017C020, v2, 0);
}

uint64_t sub_10017C020()
{
  sub_1001BA80C(v0[10], type metadata accessor for LostModeRecord);
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  sub_100007BAC(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10017C0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();

  return _swift_task_switch(sub_10017C188, a4, 0);
}

uint64_t sub_10017C188()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 136);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_10017C240, v1, 0);
}

uint64_t sub_10017C240()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;

  sub_1008CE048(0, 0, v2, &unk_1013909B0, v5);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10017C364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = sub_1000BC4D4(&qword_101698DE0, &unk_1013EED90);
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_101698DE8, &qword_1013909C0);
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = sub_1000BC4D4(&unk_101698DF0, &qword_1013909C8);
  v5[14] = v13;
  v14 = *(v13 - 8);
  v5[15] = v14;
  v15 = *(v14 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10017C510, a4, 0);
}

uint64_t sub_10017C510()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  type metadata accessor for Transaction();
  (*(v5 + 104))(v2, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  (*(v5 + 16))(v3, v2, v4);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v5 + 8))(v2, v4);

  return _swift_task_switch(sub_10017C630, 0, 0);
}

uint64_t sub_10017C630()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v0[17] = OBJC_IVAR____TtC12searchpartyd20BeaconSharingService_dailySharesCountAnalyticsThrottle;
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_10017C718;
  v7 = v0[16];
  v8 = v0[14];

  return AsyncStream.Iterator.next(isolation:)(v0 + 4, 0, 0, v8);
}

uint64_t sub_10017C718()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_10017C814, 0, 0);
}

uint64_t sub_10017C814()
{
  v1 = v0[4];
  v0[19] = v1;
  if (v1)
  {
    v2 = v0[6];

    return _swift_task_switch(sub_10017C8FC, v2, 0);
  }

  else
  {
    v3 = v0[13];
    v5 = v0[9];
    v4 = v0[10];
    (*(v0[15] + 8))(v0[16], v0[14]);

    v6 = v0[1];

    return v6();
  }
}

void sub_10017C8FC()
{
  v2 = qword_101698690;
  v0[20] = qword_101698690;
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (v4 >= 0x3E8)
    {
      v4 = 1;
    }

    qword_101698690 = v4;
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_10017C9B0;
    v6 = v0[6];

    sub_100181BBC();
  }
}

uint64_t sub_10017C9B0()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 176) = v4;
  *v4 = v3;
  v4[1] = sub_10017CAF0;
  v5 = *(v1 + 48);

  return sub_10018218C();
}

uint64_t sub_10017CAF0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[23] = v4;
  *v4 = v3;
  v4[1] = sub_10017CC4C;
  v5 = v1[20];
  v6 = v1[6];

  return sub_100182738(v5, 0);
}

uint64_t sub_10017CC4C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[24] = v4;
  *v4 = v3;
  v4[1] = sub_10017CDA8;
  v5 = v1[20];
  v6 = v1[6];

  return sub_1001857C8(v5, 0);
}

uint64_t sub_10017CDA8()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10017CEB8, v2, 0);
}

uint64_t sub_10017CEB8()
{
  v1 = v0[6];
  v0[25] = *(v1 + v0[17]);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v0[26] = v3;
  v0[2] = v2;
  v0[3] = v3;
  v0[27] = swift_allocObject();
  swift_weakInit();

  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  sub_1000041A4(&qword_101698E00, &qword_1016B1270, &qword_101390A00);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017CFD0, v5, v4);
}

uint64_t sub_10017CFD0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[6];
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  return _swift_task_switch(sub_10017D078, v4, 0);
}

uint64_t sub_10017D078()
{
  v1 = *(v0 + 152);
  Transaction.capture()();

  return _swift_task_switch(sub_10017D0E0, 0, 0);
}

uint64_t sub_10017D0E0()
{
  v1 = v0[19];

  v2 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_10017C718;
  v4 = v0[16];
  v5 = v0[14];

  return AsyncStream.Iterator.next(isolation:)(v0 + 4, 0, 0, v5);
}

uint64_t sub_10017D190()
{
  v1[19] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[21] = v3;
  v4 = *(v3 - 8);
  v1[22] = v4;
  v1[23] = *(v4 + 64);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101698D30, &qword_1013908B8);
  v1[26] = v5;
  v6 = *(v5 - 8);
  v1[27] = v6;
  v7 = *(v6 + 64) + 15;
  v1[28] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_101698D38, &qword_1013908C0);
  v1[29] = v8;
  v9 = *(v8 - 8);
  v1[30] = v9;
  v10 = *(v9 + 64) + 15;
  v1[31] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v1[32] = v12;
  *v12 = v1;
  v12[1] = sub_10017D39C;

  return daemon.getter();
}

uint64_t sub_10017D39C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 256);
  v12 = *v1;
  v3[33] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[34] = v6;
  v7 = type metadata accessor for Daemon();
  v3[35] = v7;
  v8 = type metadata accessor for APSNotificationService();
  v9 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[36] = v9;
  v10 = sub_1001B8FE4(&qword_101698D40, type metadata accessor for APSNotificationService);
  *v6 = v12;
  v6[1] = sub_10017D57C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10017D57C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  v4[37] = a1;
  v4[38] = v1;

  v7 = v4[33];
  if (v1)
  {
    a1 = v4[19];

    v8 = sub_10017F7DC;
  }

  else
  {

    v8 = sub_10017D6D4;
  }

  return _swift_task_switch(v8, a1, 0);
}

uint64_t sub_10017D6D4()
{
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[19];
  sub_100E7B264(0xD000000000000023, 0x800000010134CBA0);

  return _swift_task_switch(sub_10017D75C, v3, 0);
}

uint64_t sub_10017D75C()
{
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  AsyncStream.makeAsyncIterator()();
  v4 = sub_1001B8FE4(&qword_101698BB8, type metadata accessor for BeaconSharingService);
  v5 = v0[38];
  v0[39] = v4;
  v0[40] = v5;
  v6 = v0[19];
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[41] = v8;
  *v8 = v0;
  v8[1] = sub_10017D85C;
  v9 = v0[28];
  v10 = v0[26];

  return AsyncStream.Iterator.next(isolation:)(v0 + 12, v6, v4, v10);
}

uint64_t sub_10017D85C()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_10017D96C, v2, 0);
}

uint64_t sub_10017D96C()
{
  v87 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  *(v0 + 336) = v2;
  *(v0 + 344) = v3;
  if (!v1)
  {
    v18 = *(v0 + 296);
    v20 = *(v0 + 240);
    v19 = *(v0 + 248);
    v22 = *(v0 + 224);
    v21 = *(v0 + 232);
    v23 = *(v0 + 208);
    v24 = *(v0 + 216);

    (*(v24 + 8))(v22, v23);
    (*(v20 + 8))(v19, v21);
LABEL_8:
    v25 = *(v0 + 248);
    v26 = *(v0 + 224);
    v28 = *(v0 + 192);
    v27 = *(v0 + 200);
    v29 = *(v0 + 160);

    v30 = *(v0 + 8);

    return v30();
  }

  v4 = *(v0 + 320);

  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001BB088();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v4)
  {

    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177AE28);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 336);
    if (v11)
    {
      loga = *(v0 + 344);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v86[0] = v14;
      *v13 = 136446210;
      *(v0 + 136) = v4;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v15 = String.init<A>(describing:)();
      v17 = sub_1000136BC(v15, v16, v86);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to decode APS message due to %{public}s", v13, 0xCu);
      sub_100007BAC(v14);

      sub_100016590(v12, loga);
    }

    else
    {
      sub_100016590(*(v0 + 336), *(v0 + 344));
    }

    goto LABEL_17;
  }

  v32 = v0 + 16;
  v34 = *(v0 + 168);
  v33 = *(v0 + 176);
  v35 = *(v0 + 160);

  *(v0 + 47) = *(v0 + 87);
  v36 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v36;
  v37 = *(v0 + 24);
  v38 = *(v0 + 32);

  UUID.init(uuidString:)();
  sub_1001BB0DC(v0 + 16);
  if ((*(v33 + 48))(v35, 1, v34) == 1)
  {
    v80 = v37;
    sub_10000B3A8(*(v0 + 160), &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177AE28);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    sub_1001BB0DC(v0 + 16);
    log = v40;
    v42 = os_log_type_enabled(v40, v41);
    v44 = *(v0 + 240);
    v43 = *(v0 + 248);
    v45 = *(v0 + 232);
    v83 = *(v0 + 224);
    v46 = *(v0 + 216);
    v81 = *(v0 + 296);
    v82 = *(v0 + 208);
    if (v42)
    {
      v79 = *(v0 + 248);
      v47 = swift_slowAlloc();
      v78 = v45;
      v48 = swift_slowAlloc();
      v86[0] = v48;
      *v47 = 136315138;
      v49 = sub_1000136BC(v80, v38, v86);
      sub_1001BB0DC(v32);
      *(v47 + 4) = v49;
      _os_log_impl(&_mh_execute_header, log, v41, "Invalid share ID received from the APNS message: %s", v47, 0xCu);
      sub_100007BAC(v48);

      sub_100016590(v2, v3);

      (*(v46 + 8))(v83, v82);
      (*(v44 + 8))(v79, v78);
    }

    else
    {
      sub_100016590(v2, v3);

      sub_1001BB0DC(v32);
      (*(v46 + 8))(v83, v82);
      (*(v44 + 8))(v43, v45);
    }

    goto LABEL_8;
  }

  v56 = *(v0 + 200);
  v57 = *(v0 + 168);
  v58 = *(v0 + 176);
  v59 = *(v0 + 160);
  v60 = *(v58 + 32);
  *(v0 + 352) = v60;
  *(v0 + 360) = (v58 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v60(v56, v59, v57);
  v61 = *(v0 + 49);
  *(v0 + 368) = *(v0 + 40);
  *(v0 + 51) = *(v0 + 48);
  *(v0 + 52) = *(v0 + 50);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  *(v0 + 376) = sub_1000076D4(v62, qword_10177AE28);

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  sub_1001BB0DC(v0 + 16);
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v86[0] = v66;
    *v65 = 141558275;
    *(v65 + 4) = 1752392040;
    *(v65 + 12) = 2081;
    v67 = sub_101109B78();
    v69 = v68;
    sub_1001BB0DC(v0 + 16);
    v70 = sub_1000136BC(v67, v69, v86);

    *(v65 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v63, v64, "APS message: %{private,mask.hash}s.", v65, 0x16u);
    sub_100007BAC(v66);

    if (v61 == 2)
    {
      goto LABEL_29;
    }
  }

  else
  {

    sub_1001BB0DC(v0 + 16);
    if (v61 == 2)
    {
      goto LABEL_29;
    }
  }

  if (v61)
  {
    v71 = async function pointer to daemon.getter[1];
    v72 = swift_task_alloc();
    *(v0 + 384) = v72;
    *v72 = v0;
    v73 = sub_10017E234;
LABEL_34:
    v72[1] = v73;

    return daemon.getter();
  }

LABEL_29:
  if ((*(v0 + 51) & 1) == 0)
  {
    v77 = async function pointer to daemon.getter[1];
    v72 = swift_task_alloc();
    *(v0 + 432) = v72;
    *v72 = v0;
    v73 = sub_10017ECE4;
    goto LABEL_34;
  }

  *(v0 + 504) = 0;
  v74 = *(v0 + 52);
  if (v74 == 2 || (v74 & 1) != 0)
  {
    v76 = *(v0 + 336);
    v75 = *(v0 + 344);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
    sub_100016590(v76, v75);
LABEL_17:
    *(v0 + 320) = 0;
    v50 = *(v0 + 312);
    v51 = *(v0 + 152);
    v52 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v53 = swift_task_alloc();
    *(v0 + 328) = v53;
    *v53 = v0;
    v53[1] = sub_10017D85C;
    v54 = *(v0 + 224);
    v55 = *(v0 + 208);

    return AsyncStream.Iterator.next(isolation:)(v0 + 96, v51, v50, v55);
  }

  return _swift_task_switch(sub_10017F5BC, 0, 0);
}

uint64_t sub_10017E234(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 384);
  v5 = *v1;
  v3[49] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[50] = v7;
  v8 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v9 = sub_1001B8FE4(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher);
  *v7 = v5;
  v7[1] = sub_10017E3E8;
  v10 = v3[36];
  v11 = v3[35];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10017E3E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v5 = *v2;
  *(*v2 + 408) = a1;

  v6 = *(v3 + 392);
  v7 = *(v3 + 152);
  if (v1)
  {

    v8 = sub_10017F924;
  }

  else
  {

    v8 = sub_10017E54C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10017E54C()
{
  v1 = *(v0 + 408);

  return _swift_task_switch(sub_10017E5BC, v1, 0);
}

uint64_t sub_10017E5BC()
{
  v1 = *(v0[51] + 136);
  v0[15] = 0xD000000000000013;
  v0[16] = 0x800000010134CBD0;
  v2 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + 1);
  v6 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v3 = swift_task_alloc();
  v0[52] = v3;
  *v3 = v0;
  v3[1] = sub_10017E6CC;
  v4 = v0[51];

  return (v6)(v0 + 15, &unk_10139D750, v4, sub_100853598, 0);
}

uint64_t sub_10017E6CC()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v8 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = *(v2 + 408);

    v5 = sub_10017E9B0;
  }

  else
  {
    v6 = *(v2 + 408);
    v4 = *(v2 + 152);

    v5 = sub_10017E7FC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10017E7FC()
{
  v1 = *(v0 + 408);

  if (*(v0 + 51))
  {
    v2 = *(v0 + 424);
    *(v0 + 504) = v2;
    v3 = *(v0 + 52);
    if (v3 == 2 || (v3 & 1) != 0)
    {
      v4 = *(v0 + 336);
      v5 = *(v0 + 344);
      (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
      sub_100016590(v4, v5);
      *(v0 + 320) = v2;
      v6 = *(v0 + 312);
      v7 = *(v0 + 152);
      v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
      v9 = swift_task_alloc();
      *(v0 + 328) = v9;
      *v9 = v0;
      v9[1] = sub_10017D85C;
      v10 = *(v0 + 224);
      v11 = *(v0 + 208);

      return AsyncStream.Iterator.next(isolation:)(v0 + 96, v7, v6, v11);
    }

    else
    {

      return _swift_task_switch(sub_10017F5BC, 0, 0);
    }
  }

  else
  {
    v12 = async function pointer to daemon.getter[1];
    v13 = swift_task_alloc();
    *(v0 + 432) = v13;
    *v13 = v0;
    v13[1] = sub_10017ECE4;

    return daemon.getter();
  }
}

uint64_t sub_10017E9B0()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_10017EA1C, v2, 0);
}

uint64_t sub_10017EA1C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 376);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 424);
  v7 = *(v0 + 408);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on publishing beacons when requested through APNS push message: %{public}@.", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    if ((*(v0 + 51) & 1) == 0)
    {
LABEL_3:
      v11 = async function pointer to daemon.getter[1];
      v12 = swift_task_alloc();
      *(v0 + 432) = v12;
      *v12 = v0;
      v12[1] = sub_10017ECE4;

      return daemon.getter();
    }
  }

  else
  {
    v13 = *(v0 + 408);

    if ((*(v0 + 51) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  *(v0 + 504) = 0;
  v14 = *(v0 + 52);
  if (v14 == 2 || (v14 & 1) != 0)
  {
    v15 = *(v0 + 336);
    v16 = *(v0 + 344);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
    sub_100016590(v15, v16);
    *(v0 + 320) = 0;
    v17 = *(v0 + 312);
    v18 = *(v0 + 152);
    v19 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v20 = swift_task_alloc();
    *(v0 + 328) = v20;
    *v20 = v0;
    v20[1] = sub_10017D85C;
    v21 = *(v0 + 224);
    v22 = *(v0 + 208);

    return AsyncStream.Iterator.next(isolation:)(v0 + 96, v18, v17, v22);
  }

  else
  {

    return _swift_task_switch(sub_10017F5BC, 0, 0);
  }
}

uint64_t sub_10017ECE4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 432);
  v5 = *v1;
  v3[55] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[56] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1001B8FE4(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_10017EE98;
  v10 = v3[36];
  v11 = v3[35];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10017EE98(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  v4[57] = a1;
  v4[58] = v1;

  v7 = v4[55];
  if (v1)
  {
    v8 = v4[19];

    v9 = sub_10017FACC;
    v10 = v8;
  }

  else
  {

    v9 = sub_10017EFEC;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_10017EFEC()
{
  v1 = *(v0 + 456);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 472) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_10017F0CC;
  v5 = *(v0 + 456);

  return unsafeBlocking<A>(context:_:)(v0 + 144, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_10017F0CC()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 456);
  v4 = *v0;

  return _swift_task_switch(sub_10017F1E4, v2, 0);
}

uint64_t sub_10017F1E4()
{
  v0[60] = v0[18];
  v1 = swift_task_alloc();
  v0[61] = v1;
  *v1 = v0;
  v1[1] = sub_10017F284;
  v2 = v0[46];
  v3 = v0[25];

  return sub_1012DA140(v3, v2);
}

uint64_t sub_10017F284()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 480);
  v6 = *(v2 + 152);

  if (v0)
  {
    v7 = sub_10017FD30;
  }

  else
  {
    v7 = sub_10017F3CC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10017F3CC()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 152);
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v5 = *(v0 + 496);
  *(v0 + 504) = v5;
  v6 = *(v0 + 52);
  if (v6 == 2 || (v6 & 1) != 0)
  {
    v7 = *(v0 + 336);
    v8 = *(v0 + 344);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
    sub_100016590(v7, v8);
    *(v0 + 320) = v5;
    v9 = *(v0 + 312);
    v10 = *(v0 + 152);
    v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v12 = swift_task_alloc();
    *(v0 + 328) = v12;
    *v12 = v0;
    v12[1] = sub_10017D85C;
    v13 = *(v0 + 224);
    v14 = *(v0 + 208);

    return AsyncStream.Iterator.next(isolation:)(v0 + 96, v10, v9, v14);
  }

  else
  {

    return _swift_task_switch(sub_10017F5BC, 0, 0);
  }
}

uint64_t sub_10017F5BC()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[24];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[19];
  (*(v5 + 16))(v3, v0[25], v6);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v2(v9 + v8, v3, v6);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_10017F6F4, v7, 0);
}

uint64_t sub_10017F6F4()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  sub_100016590(v0[42], v0[43]);
  (*(v3 + 8))(v1, v2);
  v0[40] = v0[63];
  v4 = v0[39];
  v5 = v0[19];
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = sub_10017D85C;
  v8 = v0[28];
  v9 = v0[26];

  return AsyncStream.Iterator.next(isolation:)(v0 + 12, v5, v4, v9);
}

uint64_t sub_10017F7DC()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing service: APSNotificationService", v4, 2u);
  }

  v5 = v0[31];
  v6 = v0[28];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[20];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10017F924()
{
  if (*(v0 + 51))
  {
    *(v0 + 504) = 0;
    v1 = *(v0 + 52);
    if (v1 == 2 || (v1 & 1) != 0)
    {
      v2 = *(v0 + 336);
      v3 = *(v0 + 344);
      (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
      sub_100016590(v2, v3);
      *(v0 + 320) = 0;
      v4 = *(v0 + 312);
      v5 = *(v0 + 152);
      v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
      v7 = swift_task_alloc();
      *(v0 + 328) = v7;
      *v7 = v0;
      v7[1] = sub_10017D85C;
      v8 = *(v0 + 224);
      v9 = *(v0 + 208);

      return AsyncStream.Iterator.next(isolation:)(v0 + 96, v5, v4, v9);
    }

    else
    {

      return _swift_task_switch(sub_10017F5BC, 0, 0);
    }
  }

  else
  {
    v10 = async function pointer to daemon.getter[1];
    v11 = swift_task_alloc();
    *(v0 + 432) = v11;
    *v11 = v0;
    v11[1] = sub_10017ECE4;

    return daemon.getter();
  }
}

uint64_t sub_10017FACC()
{
  v21 = v0;
  (*(v0[22] + 8))(v0[25], v0[21]);
  v1 = v0[58];
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AE28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[42];
  v6 = v0[43];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v0[17] = v1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000136BC(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to decode APS message due to %{public}s", v8, 0xCu);
    sub_100007BAC(v9);

    sub_100016590(v7, v6);
  }

  else
  {
    sub_100016590(v0[42], v0[43]);
  }

  v0[40] = 0;
  v13 = v0[39];
  v14 = v0[19];
  v15 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v16 = swift_task_alloc();
  v0[41] = v16;
  *v16 = v0;
  v16[1] = sub_10017D85C;
  v17 = v0[28];
  v18 = v0[26];

  return AsyncStream.Iterator.next(isolation:)(v0 + 12, v14, v13, v18);
}

uint64_t sub_10017FD30()
{
  v25 = v0;
  v1 = v0[57];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];

  (*(v4 + 8))(v2, v3);
  v5 = v0[62];
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AE28);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[42];
  v10 = v0[43];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136446210;
    v0[17] = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000136BC(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to decode APS message due to %{public}s", v12, 0xCu);
    sub_100007BAC(v13);

    sub_100016590(v11, v10);
  }

  else
  {
    sub_100016590(v0[42], v0[43]);
  }

  v0[40] = 0;
  v17 = v0[39];
  v18 = v0[19];
  v19 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v20 = swift_task_alloc();
  v0[41] = v20;
  *v20 = v0;
  v20[1] = sub_10017D85C;
  v21 = v0[28];
  v22 = v0[26];

  return AsyncStream.Iterator.next(isolation:)(v0 + 12, v18, v17, v22);
}

uint64_t sub_10017FFA4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 312) = a2;
  *(v4 + 320) = v3;
  *(v4 + 581) = a3;
  *(v4 + 304) = a1;
  v5 = type metadata accessor for MemberSharingCircle();
  *(v4 + 328) = v5;
  v6 = *(v5 - 8);
  *(v4 + 336) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v4 + 368) = v8;
  v9 = *(v8 - 8);
  *(v4 + 376) = v9;
  *(v4 + 384) = *(v9 + 64);
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();

  return _swift_task_switch(sub_100180100, v3, 0);
}

uint64_t sub_100180100()
{
  v1 = *(*(v0 + 320) + 136);
  *(v0 + 416) = v1;
  return _swift_task_switch(sub_100180124, v1, 0);
}

uint64_t sub_100180124()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[47];
  v4 = v0[46];
  v5 = v0[38];
  v6 = *(v3 + 16);
  v0[53] = v6;
  v0[54] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[55] = v8;
  *(v8 + 16) = v2;
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[56] = v10;
  v11 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v10 = v0;
  v10[1] = sub_1001802A8;

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B8, v8, v11);
}

uint64_t sub_1001802A8()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 416);
  v5 = *v0;

  return _swift_task_switch(sub_1001803D4, v3, 0);
}

uint64_t sub_1001803D4()
{
  v1 = v0[40];
  v0[57] = v0[32];
  return _swift_task_switch(sub_1001803F8, v1, 0);
}

uint64_t sub_1001803F8()
{
  v1 = *(v0 + 456);
  v2 = *(v1 + 16);
  *(v0 + 464) = v2;
  if (v2)
  {
    v3 = *(v0 + 336);
    v4 = *(*(v0 + 320) + 200);
    *(v0 + 472) = v4;
    v5 = *(v3 + 80);
    *(v0 + 576) = v5;
    *(v0 + 582) = 0;
    *(v0 + 480) = 0;
    if (*(v1 + 16))
    {
      sub_1001BB2E0(v1 + ((v5 + 32) & ~v5), *(v0 + 360), type metadata accessor for MemberSharingCircle);
      v6 = type metadata accessor for MemberCircleRevokeManager();
      *(v0 + 488) = v6;
      *(v0 + 40) = v6;
      *(v0 + 48) = &off_1016634E8;
      *(v0 + 16) = v4;
      v7 = async function pointer to daemon.getter[1];

      v8 = swift_task_alloc();
      *(v0 + 496) = v8;
      *v8 = v0;
      v8[1] = sub_1001805F0;
    }

    else
    {
      __break(1u);
    }

    return daemon.getter();
  }

  else
  {
    v9 = *(v0 + 400);
    v10 = *(v0 + 408);
    v11 = *(v0 + 392);
    v13 = *(v0 + 352);
    v12 = *(v0 + 360);
    v14 = *(v0 + 344);

    sub_1001BAB50();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1001805F0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 496);
  v12 = *v1;
  *(v3 + 504) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 512) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1001B8FE4(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1001807CC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001807CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 512);
  v8 = *v2;
  v3[65] = a1;
  v3[66] = v1;

  if (v1)
  {
    v5 = sub_100180DAC;
  }

  else
  {
    v6 = v3[63];

    v5 = sub_1001808EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001808EC()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 488);
  v27 = *(v0 + 581);
  v3 = type metadata accessor for SharingCircleKeyManager();
  v4 = swift_allocObject();
  *(v0 + 536) = v4;
  v25 = v1;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v4 + 112) = v5;
  *(v4 + 120) = v1;
  sub_10001F280(v0 + 16, v0 + 56);
  v6 = *(v0 + 80);
  sub_10015049C(v0 + 56, v6);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64) + 15;
  v26 = swift_task_alloc();
  (*(v7 + 16))();
  v9 = *v26;
  *(v0 + 96) = v4;
  *(v0 + 120) = v3;
  *(v0 + 128) = &off_10164E4F0;
  *(v0 + 160) = v2;
  *(v0 + 168) = &off_1016634E8;
  *(v0 + 136) = v9;
  type metadata accessor for ShareKeysDownloadUseCase();
  v10 = swift_allocObject();
  *(v0 + 544) = v10;
  v11 = sub_10015049C(v0 + 96, v3);
  v12 = *(v3 - 8);
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  (*(v12 + 16))(v14, v11, v3);
  v15 = *(v0 + 160);
  v16 = sub_10015049C(v0 + 136, v15);
  v17 = *(v15 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  (*(v17 + 16))(v19, v16, v15);
  v20 = *v19;
  *(v0 + 176) = *v14;
  *(v0 + 200) = v3;
  *(v0 + 208) = &off_10164E4F0;
  *(v0 + 240) = v2;
  *(v0 + 248) = &off_1016634E8;
  *(v0 + 216) = v20;

  swift_defaultActor_initialize();
  sub_10000A748((v0 + 176), v10 + 112);
  *(v10 + 152) = v25;
  sub_10000A748((v0 + 216), v10 + 160);
  sub_100007BAC((v0 + 136));

  sub_100007BAC((v0 + 96));

  sub_100007BAC((v0 + 56));

  v21 = swift_task_alloc();
  *(v0 + 552) = v21;
  *v21 = v0;
  v21[1] = sub_100180C98;
  v22 = *(v0 + 360);
  v23 = *(v0 + 312);

  return sub_1007C5654(v22, v23, v27 & 1);
}

uint64_t sub_100180C98()
{
  v2 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_100181130;
  }

  else
  {
    v3 = sub_100180E1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100180DAC()
{
  v1 = v0[63];

  v0[71] = v0[66];
  v2 = v0[40];

  return _swift_task_switch(sub_1001811B8, v2, 0);
}

uint64_t sub_100180E1C()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[65];
  v4 = v0[40];

  sub_100007BAC(v0 + 2);

  return _swift_task_switch(sub_100180EB0, v4, 0);
}

uint64_t sub_100180EB0()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 480) + 1;
  sub_1001BA80C(*(v0 + 360), type metadata accessor for MemberSharingCircle);
  if (v2 == v1)
  {
    v3 = *(v0 + 456);

    v4 = *(v0 + 581);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    type metadata accessor for Transaction();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    *(v8 + 32) = v4 & 1;

    static Transaction.asyncTask(name:block:)();

    v10 = *(v0 + 400);
    v9 = *(v0 + 408);
    v11 = *(v0 + 392);
    v13 = *(v0 + 352);
    v12 = *(v0 + 360);
    v14 = *(v0 + 344);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 480) + 1;
    *(v0 + 582) = 1;
    *(v0 + 480) = v17;
    v18 = *(v0 + 456);
    if (v17 >= *(v18 + 16))
    {
      __break(1u);
    }

    else
    {
      v19 = *(v0 + 472);
      sub_1001BB2E0(v18 + ((*(v0 + 576) + 32) & ~*(v0 + 576)) + *(*(v0 + 336) + 72) * v17, *(v0 + 360), type metadata accessor for MemberSharingCircle);
      v20 = type metadata accessor for MemberCircleRevokeManager();
      *(v0 + 488) = v20;
      *(v0 + 40) = v20;
      *(v0 + 48) = &off_1016634E8;
      *(v0 + 16) = v19;
      v21 = async function pointer to daemon.getter[1];

      v22 = swift_task_alloc();
      *(v0 + 496) = v22;
      *v22 = v0;
      v22[1] = sub_1001805F0;
    }

    return daemon.getter();
  }
}

uint64_t sub_100181130()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[65];

  v0[71] = v0[70];
  v4 = v0[40];

  return _swift_task_switch(sub_1001811B8, v4, 0);
}

uint64_t sub_1001811B8()
{
  v1 = *(v0 + 568);
  sub_100007BAC((v0 + 16));
  *(v0 + 264) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 580) & 1) == 0)
  {
    if (qword_101694480 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_10;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 568);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  v5 = *(v0 + 392);
  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 344);
  v9 = *(v0 + 304);
  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177A560);
  v4(v5, v9, v6);
  sub_1001BB2E0(v7, v8, type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v11, v12))
  {
    v17 = *(v0 + 568);
    v18 = *(v0 + 392);
    v19 = *(v0 + 368);
    v20 = *(v0 + 376);
    v21 = *(v0 + 360);
    v22 = *(v0 + 344);
    goto LABEL_16;
  }

  v100 = v12;
  v13 = *(v0 + 581);
  v14 = swift_slowAlloc();
  v98 = swift_slowAlloc();
  *(v0 + 272) = swift_slowAlloc();
  *v14 = 136316419;
  if (v13)
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    *(v0 + 280) = *(v0 + 312);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v36;
  }

  v37 = *(v0 + 392);
  v39 = *(v0 + 368);
  v38 = *(v0 + 376);
  v94 = *(v0 + 568);
  v96 = *(v0 + 360);
  v40 = *(v0 + 344);
  v92 = *(v0 + 328);
  v41 = sub_1000136BC(v15, v16, (v0 + 272));

  *(v14 + 4) = v41;
  *(v14 + 12) = 2160;
  *(v14 + 14) = 1752392040;
  *(v14 + 22) = 2081;
  sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v44 = v43;
  (*(v38 + 8))(v37, v39);
  v45 = sub_1000136BC(v42, v44, (v0 + 272));

  *(v14 + 24) = v45;
  *(v14 + 32) = 2160;
  *(v14 + 34) = 1752392040;
  *(v14 + 42) = 2081;
  v46 = v40 + *(v92 + 28);
  v47 = dispatch thunk of CustomStringConvertible.description.getter();
  v49 = v48;
  sub_1001BA80C(v40, type metadata accessor for MemberSharingCircle);
  v50 = sub_1000136BC(v47, v49, (v0 + 272));

  *(v14 + 44) = v50;
  *(v14 + 52) = 2112;
  swift_errorRetain();
  v51 = _swift_stdlib_bridgeErrorToNSError();
  *(v14 + 54) = v51;
  *v98 = v51;
  _os_log_impl(&_mh_execute_header, v11, v100, "%s Failed to download keys for beaconIdentifier %{private,mask.hash}s,\nshare-id: %{private,mask.hash}s, error: %@.", v14, 0x3Eu);
  sub_10000B3A8(v98, &qword_10169BB30, &unk_10138B3C0);

  swift_arrayDestroy();

  v52 = v96;
  while (1)
  {
    sub_1001BA80C(v52, type metadata accessor for MemberSharingCircle);
    v54 = *(v0 + 480) + 1;
    if (v54 == *(v0 + 464))
    {
      v55 = *(v0 + 582);
      v56 = *(v0 + 456);

      if (v55 == 1)
      {
        v57 = *(v0 + 581);
        v59 = *(v0 + 312);
        v58 = *(v0 + 320);
        type metadata accessor for Transaction();
        v60 = swift_allocObject();
        swift_weakInit();
        v61 = swift_allocObject();
        *(v61 + 16) = v60;
        *(v61 + 24) = v59;
        *(v61 + 32) = v57 & 1;

        static Transaction.asyncTask(name:block:)();
      }

      v63 = *(v0 + 400);
      v62 = *(v0 + 408);
      v64 = *(v0 + 392);
      v66 = *(v0 + 352);
      v65 = *(v0 + 360);
      v67 = *(v0 + 344);

      v68 = *(v0 + 8);

      return v68();
    }

    *(v0 + 480) = v54;
    v70 = *(v0 + 456);
    if (v54 < *(v70 + 16))
    {
      break;
    }

    __break(1u);
LABEL_30:
    swift_once();
LABEL_10:
    v24 = *(v0 + 424);
    v23 = *(v0 + 432);
    v25 = *(v0 + 400);
    v27 = *(v0 + 360);
    v26 = *(v0 + 368);
    v28 = *(v0 + 352);
    v29 = *(v0 + 304);
    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177A560);
    v24(v25, v29, v26);
    sub_1001BB2E0(v27, v28, type metadata accessor for MemberSharingCircle);
    v11 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v31))
    {
      v101 = v31;
      v32 = *(v0 + 581);
      v33 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *(v0 + 288) = swift_slowAlloc();
      *v33 = 136316419;
      if (v32)
      {
        v34 = 0;
        v35 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 296) = *(v0 + 312);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v75;
      }

      v76 = *(v0 + 400);
      v78 = *(v0 + 368);
      v77 = *(v0 + 376);
      v79 = *(v0 + 352);
      v95 = *(v0 + 360);
      v97 = *(v0 + 568);
      v93 = *(v0 + 328);
      v80 = sub_1000136BC(v34, v35, (v0 + 288));

      *(v33 + 4) = v80;
      *(v33 + 12) = 2160;
      *(v33 + 14) = 1752392040;
      *(v33 + 22) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      (*(v77 + 8))(v76, v78);
      v84 = sub_1000136BC(v81, v83, (v0 + 288));

      *(v33 + 24) = v84;
      *(v33 + 32) = 2160;
      *(v33 + 34) = 1752392040;
      *(v33 + 42) = 2081;
      v85 = v79 + *(v93 + 28);
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v87;
      sub_1001BA80C(v79, type metadata accessor for MemberSharingCircle);
      v89 = sub_1000136BC(v86, v88, (v0 + 288));

      *(v33 + 44) = v89;
      *(v33 + 52) = 2112;
      sub_1001BB034();
      swift_allocError();
      *v90 = 0;
      v91 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 54) = v91;
      *v99 = v91;
      _os_log_impl(&_mh_execute_header, v11, v101, "%s Throttled key download for beaconIdentifier %{private,mask.hash}s,\nshare-id: %{private,mask.hash}s, error: %@.", v33, 0x3Eu);
      sub_10000B3A8(v99, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      v52 = v95;
    }

    else
    {
      v53 = *(v0 + 568);
      v18 = *(v0 + 400);
      v19 = *(v0 + 368);
      v20 = *(v0 + 376);
      v22 = *(v0 + 352);
      v21 = *(v0 + 360);
LABEL_16:

      sub_1001BA80C(v22, type metadata accessor for MemberSharingCircle);
      (*(v20 + 8))(v18, v19);
      v52 = v21;
    }
  }

  v71 = *(v0 + 472);
  sub_1001BB2E0(v70 + ((*(v0 + 576) + 32) & ~*(v0 + 576)) + *(*(v0 + 336) + 72) * v54, *(v0 + 360), type metadata accessor for MemberSharingCircle);
  v72 = type metadata accessor for MemberCircleRevokeManager();
  *(v0 + 488) = v72;
  *(v0 + 40) = v72;
  *(v0 + 48) = &off_1016634E8;
  *(v0 + 16) = v71;
  v73 = async function pointer to daemon.getter[1];

  v74 = swift_task_alloc();
  *(v0 + 496) = v74;
  *v74 = v0;
  v74[1] = sub_1001805F0;

  return daemon.getter();
}

uint64_t sub_100181BDC()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Looking for expired records...", v4, 2u);
  }

  v5 = v0[7];

  v6 = *(v5 + 200);
  v0[5] = type metadata accessor for MemberCircleRevokeManager();
  v0[6] = &off_1016634E8;
  v0[2] = v6;

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_100181D5C;

  return sub_10039ECAC((v0 + 2));
}

uint64_t sub_100181D5C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_100181F84;
  }

  else
  {
    v6 = *(v2 + 56);
    sub_100007BAC((v2 + 16));
    v5 = sub_100181E84;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100181E84()
{
  v1 = *(v0 + 56);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100181F84()
{
  v1 = v0[10];
  v2 = v0[8];
  sub_100007BAC(v0 + 2);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Expired share cleanup failed due to error: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[7];
  type metadata accessor for Transaction();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = 0;
  *(v12 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001821AC()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 24) = sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Looking for tentatively revoked delegated records...", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_10018230C;

  return sub_1003C59AC();
}

uint64_t sub_10018230C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_100182538;
  }

  else
  {
    v6 = sub_100182438;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100182438()
{
  v1 = *(v0 + 16);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100182538()
{
  v1 = v0[5];
  v2 = v0[3];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[5];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Tentatively revoked delegated share cleanup due to error: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[2];
  type metadata accessor for Transaction();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = 0;
  *(v12 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100182738(uint64_t a1, char a2)
{
  *(v3 + 552) = v2;
  *(v3 + 837) = a2;
  *(v3 + 544) = a1;
  v4 = type metadata accessor for MemberSharingCircle();
  *(v3 + 560) = v4;
  v5 = *(v4 - 8);
  *(v3 + 568) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 576) = swift_task_alloc();
  *(v3 + 584) = swift_task_alloc();
  *(v3 + 592) = swift_task_alloc();
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();

  return _swift_task_switch(sub_100182830, v2, 0);
}

uint64_t sub_100182830()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 integerForKey:v4];

    v6 = v5 != 2;
  }

  else
  {
    v6 = 0;
  }

  *(v0 + 838) = v6;
  v7 = *(*(v0 + 552) + 136);
  *(v0 + 616) = v7;

  return _swift_task_switch(sub_100182954, v7, 0);
}

uint64_t sub_100182954()
{
  v1 = *(v0 + 616);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 624) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_100182A40;
  v5 = *(v0 + 616);

  return unsafeBlocking<A>(context:_:)(v0 + 496, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v5, v4);
}

uint64_t sub_100182A40()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 616);
  v4 = *v0;

  return _swift_task_switch(sub_100182B58, v2, 0);
}

uint64_t sub_100182B58()
{
  v1 = v0[69];
  v0[79] = v0[62];
  return _swift_task_switch(sub_100182B7C, v1, 0);
}

uint64_t sub_100182B7C()
{
  v1 = *(v0 + 632);
  v2 = *(v1 + 16);
  *(v0 + 640) = v2;
  if (v2)
  {
    v3 = *(v0 + 838);
    v4 = *(*(v0 + 568) + 80);
    *(v0 + 832) = v4;
    *(v0 + 839) = 0;
    *(v0 + 648) = 0;
    if (*(v1 + 16))
    {
      sub_1001BB2E0(v1 + ((v4 + 32) & ~v4), *(v0 + 608), type metadata accessor for MemberSharingCircle);
      v5 = *(v0 + 552);
      if (v3)
      {
        v6 = *(v5 + 200);
        v7 = type metadata accessor for MemberCircleRevokeManager();
        *(v0 + 656) = v7;
        *(v0 + 280) = v7;
        *(v0 + 288) = &off_1016634E8;
        *(v0 + 256) = v6;
        v8 = async function pointer to daemon.getter[1];

        v9 = swift_task_alloc();
        *(v0 + 664) = v9;
        *v9 = v0;
        v10 = sub_100182DF4;
      }

      else
      {
        v20 = *(v5 + 200);
        v21 = type metadata accessor for MemberCircleRevokeManager();
        *(v0 + 744) = v21;
        *(v0 + 40) = v21;
        *(v0 + 48) = &off_1016634E8;
        *(v0 + 16) = v20;
        v22 = async function pointer to daemon.getter[1];

        v9 = swift_task_alloc();
        *(v0 + 752) = v9;
        *v9 = v0;
        v10 = sub_10018447C;
      }

      v9[1] = v10;
    }

    else
    {
      __break(1u);
    }

    return daemon.getter();
  }

  else
  {

    if (*(v0 + 838))
    {
      v11 = [objc_opt_self() standardUserDefaults];
      v12 = String._bridgeToObjectiveC()();
      [v11 setInteger:2 forKey:v12];
    }

    v13 = *(v0 + 608);
    v14 = *(v0 + 600);
    v15 = *(v0 + 592);
    v16 = *(v0 + 584);
    v17 = *(v0 + 576);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100182DF4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 664);
  v12 = *v1;
  *(v3 + 672) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 680) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1001B8FE4(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100182FD0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100182FD0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 680);
  v8 = *v2;
  v3[86] = a1;
  v3[87] = v1;

  if (v1)
  {
    v5 = sub_100183580;
  }

  else
  {
    v6 = v3[84];

    v5 = sub_1001830F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001830F0()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 656);
  v27 = v2;
  v3 = type metadata accessor for SharingCircleKeyManager();
  v4 = swift_allocObject();
  *(v0 + 704) = v4;
  v28 = v1;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v4 + 112) = v5;
  *(v4 + 120) = v1;
  sub_10001F280(v0 + 256, v0 + 296);
  v6 = *(v0 + 320);
  v7 = sub_10015049C(v0 + 296, v6);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v8 + 16))(v10, v7, v6);
  v11 = *v10;
  *(v0 + 360) = v3;
  *(v0 + 368) = &off_10164E4F0;
  *(v0 + 336) = v4;
  *(v0 + 400) = v2;
  *(v0 + 408) = &off_1016634E8;
  *(v0 + 376) = v11;
  type metadata accessor for ShareKeysDownloadUseCase();
  v12 = swift_allocObject();
  *(v0 + 712) = v12;
  v13 = sub_10015049C(v0 + 336, v3);
  v14 = *(v3 - 8);
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  (*(v14 + 16))(v16, v13, v3);
  v17 = *(v0 + 400);
  v18 = sub_10015049C(v0 + 376, v17);
  v19 = *(v17 - 8);
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  (*(v19 + 16))(v21, v18, v17);
  v22 = *v16;
  v23 = *v21;
  *(v0 + 440) = v3;
  *(v0 + 448) = &off_10164E4F0;
  *(v0 + 416) = v22;
  *(v0 + 480) = v27;
  *(v0 + 488) = &off_1016634E8;
  *(v0 + 456) = v23;

  swift_defaultActor_initialize();
  sub_10000A748((v0 + 416), v12 + 112);
  *(v12 + 152) = v28;
  sub_10000A748((v0 + 456), v12 + 160);
  sub_100007BAC((v0 + 376));

  sub_100007BAC((v0 + 336));

  sub_100007BAC((v0 + 296));

  v24 = swift_task_alloc();
  *(v0 + 720) = v24;
  *v24 = v0;
  v24[1] = sub_10018346C;
  v25 = *(v0 + 608);

  return sub_1007CFB78(v25);
}