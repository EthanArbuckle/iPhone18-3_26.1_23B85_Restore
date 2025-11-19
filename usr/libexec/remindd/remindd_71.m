uint64_t sub_100668268(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = _swiftEmptyArrayStorage;
  v83 = a2;
  if (!v5)
  {
    goto LABEL_38;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v81 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_83;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v12 = a2[6];
        }

        v2 = v10;

        v13 = __CocoaDictionary.lookup(_:)();

        if (!v13)
        {
          goto LABEL_18;
        }

        v85 = v13;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v14 = v84[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v15 = v10;
        if (!v2)
        {
          goto LABEL_19;
        }

        v16 = v15;

        v17 = sub_10002B924(v16);
        if ((v18 & 1) == 0)
        {
LABEL_18:

          goto LABEL_19;
        }

        v14 = *(*(v11 + 56) + 8 * v17);
      }

      if (v14)
      {
        break;
      }

LABEL_19:
      v19 = a2[5];
      if ((v19 & 0xC000000000000001) != 0)
      {
        if (v19 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v19 & 0xFFFFFFFFFFFFFF8;
        }

        v20 = v10;

        v21 = __CocoaDictionary.lookup(_:)();

        if (v21)
        {
          v85 = v21;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v14 = v84[0];

          a2 = v83;
          if (v84[0])
          {
            break;
          }
        }

        else
        {

          a2 = v83;
        }

        goto LABEL_5;
      }

      if (*(v19 + 16))
      {
        v22 = a2[5];

        v23 = sub_10002B924(v10);
        if ((v24 & 1) == 0)
        {

          goto LABEL_5;
        }

        v14 = *(*(v19 + 56) + 8 * v23);

        if (v14)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v81;
        goto LABEL_38;
      }
    }

    v6 = v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003686FC(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_1003686FC((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F818, &qword_1007B5200);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F820, &qword_1007B5208);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  sub_10000607C(v84);
  if (v80)
  {
    return v5;
  }

  v28 = v85;
  v29 = v85[2];
  if (v29)
  {
    sub_1000F5104(&qword_100943FF0, &unk_1007B5210);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = _swiftEmptyDictionarySingleton;
  }

  v84[0] = v30;

  sub_10067E984(v31, 1, v84);
  v5 = v84[0];

  v33 = sub_1001A6BE0(v32);

  if (v29)
  {
    v84[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = 4;
    do
    {
      v35 = v28[v34];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v84[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += 2;
      --v29;
    }

    while (v29);

    v37 = v84[0];
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  a2 = sub_10019E250(v37, v33);

  if (qword_100936008 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_100945730);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v39, v40, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v41, 0xCu);

      v42 = a2[2];
      if (!v42)
      {
        goto LABEL_53;
      }
    }

    else
    {

      v42 = a2[2];
      if (!v42)
      {
LABEL_53:

        return v5;
      }
    }

    v43 = *(v78 + 88);
    v44 = sub_100368E10(v42, 0);
    a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
    sub_10001B860();
    if (a2 != v42)
    {
      break;
    }

    v45 = sub_100670D4C(v44, v83[4]);

    if (v2)
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v5;
    sub_1006A3104(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

    v79 = v84[0];
    v47 = v45 + 64;
    v48 = 1 << *(v45 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v2 = v49 & *(v45 + 64);
    v5 = (v48 + 63) >> 6;

    v50 = 0;
    v82 = v45;
    while (v2)
    {
LABEL_66:
      v54 = (v50 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*(v45 + 48) + v54);
      v55 = *(*(v45 + 56) + v54);
      swift_beginAccess();
      v56 = v83[5];
      if ((v56 & 0xC000000000000001) != 0)
      {
        if (v56 >= 0)
        {
          v56 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v57 = v55;
        v58 = a2;
        v59 = __CocoaDictionary.count.getter();
        if (__OFADD__(v59, 1))
        {
          goto LABEL_88;
        }

        v60 = v83;
        v83[5] = sub_10021CDBC(v56, v59 + 1);
      }

      else
      {
        v61 = v55;
        v62 = a2;
        v60 = v83;
      }

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v60[5];
      v64 = v85;
      v60[5] = 0x8000000000000000;
      v65 = sub_10002B924(a2);
      v67 = v64[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        __break(1u);
        goto LABEL_87;
      }

      v71 = v66;
      if (v64[3] >= v70)
      {
        if ((v63 & 1) == 0)
        {
          v77 = v65;
          sub_100374768();
          v65 = v77;
        }
      }

      else
      {
        sub_10036CA94(v70, v63);
        v65 = sub_10002B924(a2);
        if ((v71 & 1) != (v72 & 1))
        {
          goto LABEL_90;
        }
      }

      v45 = v82;
      v73 = v85;
      if (v71)
      {
        v51 = v85[7];
        v52 = *(v51 + 8 * v65);
        *(v51 + 8 * v65) = v55;
      }

      else
      {
        v85[(v65 >> 6) + 8] |= 1 << v65;
        *(v73[6] + 8 * v65) = a2;
        *(v73[7] + 8 * v65) = v55;
        v74 = v73[2];
        v69 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v69)
        {
          goto LABEL_89;
        }

        v73[2] = v75;
        v76 = a2;
      }

      v2 &= v2 - 1;
      v83[5] = v73;
      swift_endAccess();
    }

    while (1)
    {
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v53 >= v5)
      {

        return v79;
      }

      v2 = *(v47 + 8 * v53);
      ++v50;
      if (v2)
      {
        v50 = v53;
        goto LABEL_66;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_90:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100668B38(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = _swiftEmptyArrayStorage;
  v83 = a2;
  if (!v5)
  {
    goto LABEL_38;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v81 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_83;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v12 = a2[6];
        }

        v2 = v10;

        v13 = __CocoaDictionary.lookup(_:)();

        if (!v13)
        {
          goto LABEL_18;
        }

        v85 = v13;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v14 = v84[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v15 = v10;
        if (!v2)
        {
          goto LABEL_19;
        }

        v16 = v15;

        v17 = sub_10002B924(v16);
        if ((v18 & 1) == 0)
        {
LABEL_18:

          goto LABEL_19;
        }

        v14 = *(*(v11 + 56) + 8 * v17);
      }

      if (v14)
      {
        break;
      }

LABEL_19:
      v19 = a2[5];
      if ((v19 & 0xC000000000000001) != 0)
      {
        if (v19 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v19 & 0xFFFFFFFFFFFFFF8;
        }

        v20 = v10;

        v21 = __CocoaDictionary.lookup(_:)();

        if (v21)
        {
          v85 = v21;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v14 = v84[0];

          a2 = v83;
          if (v84[0])
          {
            break;
          }
        }

        else
        {

          a2 = v83;
        }

        goto LABEL_5;
      }

      if (*(v19 + 16))
      {
        v22 = a2[5];

        v23 = sub_10002B924(v10);
        if ((v24 & 1) == 0)
        {

          goto LABEL_5;
        }

        v14 = *(*(v19 + 56) + 8 * v23);

        if (v14)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v81;
        goto LABEL_38;
      }
    }

    v6 = v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100368768(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_100368768((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F1C0, &qword_1007B4DA8);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F1C8, &unk_1007B4DB0);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  sub_10000607C(v84);
  if (v80)
  {
    return v5;
  }

  v28 = v85;
  v29 = v85[2];
  if (v29)
  {
    sub_1000F5104(&qword_1009433C0, &qword_1007A3D70);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = _swiftEmptyDictionarySingleton;
  }

  v84[0] = v30;

  sub_10067ED04(v31, 1, v84);
  v5 = v84[0];

  v33 = sub_1001A6C40(v32);

  if (v29)
  {
    v84[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = 4;
    do
    {
      v35 = v28[v34];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v84[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += 2;
      --v29;
    }

    while (v29);

    v37 = v84[0];
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  a2 = sub_10019E2B8(v37, v33);

  if (qword_100936008 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_100945730);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v39, v40, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v41, 0xCu);

      v42 = a2[2];
      if (!v42)
      {
        goto LABEL_53;
      }
    }

    else
    {

      v42 = a2[2];
      if (!v42)
      {
LABEL_53:

        return v5;
      }
    }

    v43 = *(v78 + 88);
    v44 = sub_100368E24(v42, 0);
    a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
    sub_10001B860();
    if (a2 != v42)
    {
      break;
    }

    v45 = sub_1006710F4(v44, v83[4]);

    if (v2)
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v5;
    sub_1006A3374(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

    v79 = v84[0];
    v47 = v45 + 64;
    v48 = 1 << *(v45 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v2 = v49 & *(v45 + 64);
    v5 = (v48 + 63) >> 6;

    v50 = 0;
    v82 = v45;
    while (v2)
    {
LABEL_66:
      v54 = (v50 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*(v45 + 48) + v54);
      v55 = *(*(v45 + 56) + v54);
      swift_beginAccess();
      v56 = v83[5];
      if ((v56 & 0xC000000000000001) != 0)
      {
        if (v56 >= 0)
        {
          v56 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v57 = v55;
        v58 = a2;
        v59 = __CocoaDictionary.count.getter();
        if (__OFADD__(v59, 1))
        {
          goto LABEL_88;
        }

        v60 = v83;
        v83[5] = sub_10021CDBC(v56, v59 + 1);
      }

      else
      {
        v61 = v55;
        v62 = a2;
        v60 = v83;
      }

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v60[5];
      v64 = v85;
      v60[5] = 0x8000000000000000;
      v65 = sub_10002B924(a2);
      v67 = v64[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        __break(1u);
        goto LABEL_87;
      }

      v71 = v66;
      if (v64[3] >= v70)
      {
        if ((v63 & 1) == 0)
        {
          v77 = v65;
          sub_100374768();
          v65 = v77;
        }
      }

      else
      {
        sub_10036CA94(v70, v63);
        v65 = sub_10002B924(a2);
        if ((v71 & 1) != (v72 & 1))
        {
          goto LABEL_90;
        }
      }

      v45 = v82;
      v73 = v85;
      if (v71)
      {
        v51 = v85[7];
        v52 = *(v51 + 8 * v65);
        *(v51 + 8 * v65) = v55;
      }

      else
      {
        v85[(v65 >> 6) + 8] |= 1 << v65;
        *(v73[6] + 8 * v65) = a2;
        *(v73[7] + 8 * v65) = v55;
        v74 = v73[2];
        v69 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v69)
        {
          goto LABEL_89;
        }

        v73[2] = v75;
        v76 = a2;
      }

      v2 &= v2 - 1;
      v83[5] = v73;
      swift_endAccess();
    }

    while (1)
    {
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v53 >= v5)
      {

        return v79;
      }

      v2 = *(v47 + 8 * v53);
      ++v50;
      if (v2)
      {
        v50 = v53;
        goto LABEL_66;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_90:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100669408(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = _swiftEmptyArrayStorage;
  v83 = a2;
  if (!v5)
  {
    goto LABEL_38;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v81 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_83;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v12 = a2[6];
        }

        v2 = v10;

        v13 = __CocoaDictionary.lookup(_:)();

        if (!v13)
        {
          goto LABEL_18;
        }

        v85 = v13;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v14 = v84[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v15 = v10;
        if (!v2)
        {
          goto LABEL_19;
        }

        v16 = v15;

        v17 = sub_10002B924(v16);
        if ((v18 & 1) == 0)
        {
LABEL_18:

          goto LABEL_19;
        }

        v14 = *(*(v11 + 56) + 8 * v17);
      }

      if (v14)
      {
        break;
      }

LABEL_19:
      v19 = a2[5];
      if ((v19 & 0xC000000000000001) != 0)
      {
        if (v19 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v19 & 0xFFFFFFFFFFFFFF8;
        }

        v20 = v10;

        v21 = __CocoaDictionary.lookup(_:)();

        if (v21)
        {
          v85 = v21;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v14 = v84[0];

          a2 = v83;
          if (v84[0])
          {
            break;
          }
        }

        else
        {

          a2 = v83;
        }

        goto LABEL_5;
      }

      if (*(v19 + 16))
      {
        v22 = a2[5];

        v23 = sub_10002B924(v10);
        if ((v24 & 1) == 0)
        {

          goto LABEL_5;
        }

        v14 = *(*(v19 + 56) + 8 * v23);

        if (v14)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v81;
        goto LABEL_38;
      }
    }

    v6 = v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003687B0(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_1003687B0((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F200, &qword_1007B4DE0);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F208, &unk_1007B4DE8);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  sub_10000607C(v84);
  if (v80)
  {
    return v5;
  }

  v28 = v85;
  v29 = v85[2];
  if (v29)
  {
    sub_1000F5104(&qword_100943410, &qword_1007A3DB0);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = _swiftEmptyDictionarySingleton;
  }

  v84[0] = v30;

  sub_10067F084(v31, 1, v84);
  v5 = v84[0];

  v33 = sub_1001A6C70(v32);

  if (v29)
  {
    v84[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = 4;
    do
    {
      v35 = v28[v34];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v84[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += 2;
      --v29;
    }

    while (v29);

    v37 = v84[0];
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  a2 = sub_10019E320(v37, v33);

  if (qword_100936008 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_100945730);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v39, v40, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v41, 0xCu);

      v42 = a2[2];
      if (!v42)
      {
        goto LABEL_53;
      }
    }

    else
    {

      v42 = a2[2];
      if (!v42)
      {
LABEL_53:

        return v5;
      }
    }

    v43 = *(v78 + 88);
    v44 = sub_100368E38(v42, 0);
    a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
    sub_10001B860();
    if (a2 != v42)
    {
      break;
    }

    v45 = sub_10067149C(v44, v83[4]);

    if (v2)
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v5;
    sub_1006A35E4(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

    v79 = v84[0];
    v47 = v45 + 64;
    v48 = 1 << *(v45 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v2 = v49 & *(v45 + 64);
    v5 = (v48 + 63) >> 6;

    v50 = 0;
    v82 = v45;
    while (v2)
    {
LABEL_66:
      v54 = (v50 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*(v45 + 48) + v54);
      v55 = *(*(v45 + 56) + v54);
      swift_beginAccess();
      v56 = v83[5];
      if ((v56 & 0xC000000000000001) != 0)
      {
        if (v56 >= 0)
        {
          v56 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v57 = v55;
        v58 = a2;
        v59 = __CocoaDictionary.count.getter();
        if (__OFADD__(v59, 1))
        {
          goto LABEL_88;
        }

        v60 = v83;
        v83[5] = sub_10021CDBC(v56, v59 + 1);
      }

      else
      {
        v61 = v55;
        v62 = a2;
        v60 = v83;
      }

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v60[5];
      v64 = v85;
      v60[5] = 0x8000000000000000;
      v65 = sub_10002B924(a2);
      v67 = v64[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        __break(1u);
        goto LABEL_87;
      }

      v71 = v66;
      if (v64[3] >= v70)
      {
        if ((v63 & 1) == 0)
        {
          v77 = v65;
          sub_100374768();
          v65 = v77;
        }
      }

      else
      {
        sub_10036CA94(v70, v63);
        v65 = sub_10002B924(a2);
        if ((v71 & 1) != (v72 & 1))
        {
          goto LABEL_90;
        }
      }

      v45 = v82;
      v73 = v85;
      if (v71)
      {
        v51 = v85[7];
        v52 = *(v51 + 8 * v65);
        *(v51 + 8 * v65) = v55;
      }

      else
      {
        v85[(v65 >> 6) + 8] |= 1 << v65;
        *(v73[6] + 8 * v65) = a2;
        *(v73[7] + 8 * v65) = v55;
        v74 = v73[2];
        v69 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v69)
        {
          goto LABEL_89;
        }

        v73[2] = v75;
        v76 = a2;
      }

      v2 &= v2 - 1;
      v83[5] = v73;
      swift_endAccess();
    }

    while (1)
    {
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v53 >= v5)
      {

        return v79;
      }

      v2 = *(v47 + 8 * v53);
      ++v50;
      if (v2)
      {
        v50 = v53;
        goto LABEL_66;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_90:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100669CD8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = _swiftEmptyArrayStorage;
  v83 = a2;
  if (!v5)
  {
    goto LABEL_38;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v81 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_83;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v12 = a2[6];
        }

        v2 = v10;

        v13 = __CocoaDictionary.lookup(_:)();

        if (!v13)
        {
          goto LABEL_18;
        }

        v85 = v13;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v14 = v84[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v15 = v10;
        if (!v2)
        {
          goto LABEL_19;
        }

        v16 = v15;

        v17 = sub_10002B924(v16);
        if ((v18 & 1) == 0)
        {
LABEL_18:

          goto LABEL_19;
        }

        v14 = *(*(v11 + 56) + 8 * v17);
      }

      if (v14)
      {
        break;
      }

LABEL_19:
      v19 = a2[5];
      if ((v19 & 0xC000000000000001) != 0)
      {
        if (v19 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v19 & 0xFFFFFFFFFFFFFF8;
        }

        v20 = v10;

        v21 = __CocoaDictionary.lookup(_:)();

        if (v21)
        {
          v85 = v21;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v14 = v84[0];

          a2 = v83;
          if (v84[0])
          {
            break;
          }
        }

        else
        {

          a2 = v83;
        }

        goto LABEL_5;
      }

      if (*(v19 + 16))
      {
        v22 = a2[5];

        v23 = sub_10002B924(v10);
        if ((v24 & 1) == 0)
        {

          goto LABEL_5;
        }

        v14 = *(*(v19 + 56) + 8 * v23);

        if (v14)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v81;
        goto LABEL_38;
      }
    }

    v6 = v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003687F8(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_1003687F8((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F248, &qword_1007B4E18);
  v84[0] = v6;
  sub_1000F5104(&unk_10094F250, &unk_1007B4E20);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  sub_10000607C(v84);
  if (v80)
  {
    return v5;
  }

  v28 = v85;
  v29 = v85[2];
  if (v29)
  {
    sub_1000F5104(&qword_100943460, &qword_1007A3E00);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = _swiftEmptyDictionarySingleton;
  }

  v84[0] = v30;

  sub_10067F404(v31, 1, v84);
  v5 = v84[0];

  v33 = sub_1001A6CA0(v32);

  if (v29)
  {
    v84[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = 4;
    do
    {
      v35 = v28[v34];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v84[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += 2;
      --v29;
    }

    while (v29);

    v37 = v84[0];
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  a2 = sub_10019E388(v37, v33);

  if (qword_100936008 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_100945730);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v39, v40, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v41, 0xCu);

      v42 = a2[2];
      if (!v42)
      {
        goto LABEL_53;
      }
    }

    else
    {

      v42 = a2[2];
      if (!v42)
      {
LABEL_53:

        return v5;
      }
    }

    v43 = *(v78 + 88);
    v44 = sub_100368E4C(v42, 0);
    a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
    sub_10001B860();
    if (a2 != v42)
    {
      break;
    }

    v45 = sub_100671844(v44, v83[4]);

    if (v2)
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v5;
    sub_1006A3854(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

    v79 = v84[0];
    v47 = v45 + 64;
    v48 = 1 << *(v45 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v2 = v49 & *(v45 + 64);
    v5 = (v48 + 63) >> 6;

    v50 = 0;
    v82 = v45;
    while (v2)
    {
LABEL_66:
      v54 = (v50 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*(v45 + 48) + v54);
      v55 = *(*(v45 + 56) + v54);
      swift_beginAccess();
      v56 = v83[5];
      if ((v56 & 0xC000000000000001) != 0)
      {
        if (v56 >= 0)
        {
          v56 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v57 = v55;
        v58 = a2;
        v59 = __CocoaDictionary.count.getter();
        if (__OFADD__(v59, 1))
        {
          goto LABEL_88;
        }

        v60 = v83;
        v83[5] = sub_10021CDBC(v56, v59 + 1);
      }

      else
      {
        v61 = v55;
        v62 = a2;
        v60 = v83;
      }

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v60[5];
      v64 = v85;
      v60[5] = 0x8000000000000000;
      v65 = sub_10002B924(a2);
      v67 = v64[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        __break(1u);
        goto LABEL_87;
      }

      v71 = v66;
      if (v64[3] >= v70)
      {
        if ((v63 & 1) == 0)
        {
          v77 = v65;
          sub_100374768();
          v65 = v77;
        }
      }

      else
      {
        sub_10036CA94(v70, v63);
        v65 = sub_10002B924(a2);
        if ((v71 & 1) != (v72 & 1))
        {
          goto LABEL_90;
        }
      }

      v45 = v82;
      v73 = v85;
      if (v71)
      {
        v51 = v85[7];
        v52 = *(v51 + 8 * v65);
        *(v51 + 8 * v65) = v55;
      }

      else
      {
        v85[(v65 >> 6) + 8] |= 1 << v65;
        *(v73[6] + 8 * v65) = a2;
        *(v73[7] + 8 * v65) = v55;
        v74 = v73[2];
        v69 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v69)
        {
          goto LABEL_89;
        }

        v73[2] = v75;
        v76 = a2;
      }

      v2 &= v2 - 1;
      v83[5] = v73;
      swift_endAccess();
    }

    while (1)
    {
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v53 >= v5)
      {

        return v79;
      }

      v2 = *(v47 + 8 * v53);
      ++v50;
      if (v2)
      {
        v50 = v53;
        goto LABEL_66;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_90:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10066A5A8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = _swiftEmptyArrayStorage;
  v83 = a2;
  if (!v5)
  {
    goto LABEL_38;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v81 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_83;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v12 = a2[6];
        }

        v2 = v10;

        v13 = __CocoaDictionary.lookup(_:)();

        if (!v13)
        {
          goto LABEL_18;
        }

        v85 = v13;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v14 = v84[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v15 = v10;
        if (!v2)
        {
          goto LABEL_19;
        }

        v16 = v15;

        v17 = sub_10002B924(v16);
        if ((v18 & 1) == 0)
        {
LABEL_18:

          goto LABEL_19;
        }

        v14 = *(*(v11 + 56) + 8 * v17);
      }

      if (v14)
      {
        break;
      }

LABEL_19:
      v19 = a2[5];
      if ((v19 & 0xC000000000000001) != 0)
      {
        if (v19 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v19 & 0xFFFFFFFFFFFFFF8;
        }

        v20 = v10;

        v21 = __CocoaDictionary.lookup(_:)();

        if (v21)
        {
          v85 = v21;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v14 = v84[0];

          a2 = v83;
          if (v84[0])
          {
            break;
          }
        }

        else
        {

          a2 = v83;
        }

        goto LABEL_5;
      }

      if (*(v19 + 16))
      {
        v22 = a2[5];

        v23 = sub_10002B924(v10);
        if ((v24 & 1) == 0)
        {

          goto LABEL_5;
        }

        v14 = *(*(v19 + 56) + 8 * v23);

        if (v14)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v81;
        goto LABEL_38;
      }
    }

    v6 = v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100368840(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_100368840((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F288, &qword_1007B4E50);
  v84[0] = v6;
  sub_1000F5104(&unk_10094F290, &unk_1007B4E58);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  sub_10000607C(v84);
  if (v80)
  {
    return v5;
  }

  v28 = v85;
  v29 = v85[2];
  if (v29)
  {
    sub_1000F5104(&qword_1009434B0, &qword_1007A3E40);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = _swiftEmptyDictionarySingleton;
  }

  v84[0] = v30;

  sub_10067F784(v31, 1, v84);
  v5 = v84[0];

  v33 = sub_1001A6CD0(v32);

  if (v29)
  {
    v84[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = 4;
    do
    {
      v35 = v28[v34];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v84[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += 2;
      --v29;
    }

    while (v29);

    v37 = v84[0];
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  a2 = sub_10019E3F0(v37, v33);

  if (qword_100936008 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_100945730);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v39, v40, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v41, 0xCu);

      v42 = a2[2];
      if (!v42)
      {
        goto LABEL_53;
      }
    }

    else
    {

      v42 = a2[2];
      if (!v42)
      {
LABEL_53:

        return v5;
      }
    }

    v43 = *(v78 + 88);
    v44 = sub_100368E60(v42, 0);
    a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
    sub_10001B860();
    if (a2 != v42)
    {
      break;
    }

    v45 = sub_100671BEC(v44, v83[4]);

    if (v2)
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v5;
    sub_1006A3AC4(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

    v79 = v84[0];
    v47 = v45 + 64;
    v48 = 1 << *(v45 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v2 = v49 & *(v45 + 64);
    v5 = (v48 + 63) >> 6;

    v50 = 0;
    v82 = v45;
    while (v2)
    {
LABEL_66:
      v54 = (v50 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*(v45 + 48) + v54);
      v55 = *(*(v45 + 56) + v54);
      swift_beginAccess();
      v56 = v83[5];
      if ((v56 & 0xC000000000000001) != 0)
      {
        if (v56 >= 0)
        {
          v56 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v57 = v55;
        v58 = a2;
        v59 = __CocoaDictionary.count.getter();
        if (__OFADD__(v59, 1))
        {
          goto LABEL_88;
        }

        v60 = v83;
        v83[5] = sub_10021CDBC(v56, v59 + 1);
      }

      else
      {
        v61 = v55;
        v62 = a2;
        v60 = v83;
      }

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v60[5];
      v64 = v85;
      v60[5] = 0x8000000000000000;
      v65 = sub_10002B924(a2);
      v67 = v64[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        __break(1u);
        goto LABEL_87;
      }

      v71 = v66;
      if (v64[3] >= v70)
      {
        if ((v63 & 1) == 0)
        {
          v77 = v65;
          sub_100374768();
          v65 = v77;
        }
      }

      else
      {
        sub_10036CA94(v70, v63);
        v65 = sub_10002B924(a2);
        if ((v71 & 1) != (v72 & 1))
        {
          goto LABEL_90;
        }
      }

      v45 = v82;
      v73 = v85;
      if (v71)
      {
        v51 = v85[7];
        v52 = *(v51 + 8 * v65);
        *(v51 + 8 * v65) = v55;
      }

      else
      {
        v85[(v65 >> 6) + 8] |= 1 << v65;
        *(v73[6] + 8 * v65) = a2;
        *(v73[7] + 8 * v65) = v55;
        v74 = v73[2];
        v69 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v69)
        {
          goto LABEL_89;
        }

        v73[2] = v75;
        v76 = a2;
      }

      v2 &= v2 - 1;
      v83[5] = v73;
      swift_endAccess();
    }

    while (1)
    {
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v53 >= v5)
      {

        return v79;
      }

      v2 = *(v47 + 8 * v53);
      ++v50;
      if (v2)
      {
        v50 = v53;
        goto LABEL_66;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_90:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10066AE78(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = _swiftEmptyArrayStorage;
  v83 = a2;
  if (!v5)
  {
    goto LABEL_38;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v81 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_83;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v12 = a2[6];
        }

        v2 = v10;

        v13 = __CocoaDictionary.lookup(_:)();

        if (!v13)
        {
          goto LABEL_18;
        }

        v85 = v13;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v14 = v84[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v15 = v10;
        if (!v2)
        {
          goto LABEL_19;
        }

        v16 = v15;

        v17 = sub_10002B924(v16);
        if ((v18 & 1) == 0)
        {
LABEL_18:

          goto LABEL_19;
        }

        v14 = *(*(v11 + 56) + 8 * v17);
      }

      if (v14)
      {
        break;
      }

LABEL_19:
      v19 = a2[5];
      if ((v19 & 0xC000000000000001) != 0)
      {
        if (v19 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v19 & 0xFFFFFFFFFFFFFF8;
        }

        v20 = v10;

        v21 = __CocoaDictionary.lookup(_:)();

        if (v21)
        {
          v85 = v21;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v14 = v84[0];

          a2 = v83;
          if (v84[0])
          {
            break;
          }
        }

        else
        {

          a2 = v83;
        }

        goto LABEL_5;
      }

      if (*(v19 + 16))
      {
        v22 = a2[5];

        v23 = sub_10002B924(v10);
        if ((v24 & 1) == 0)
        {

          goto LABEL_5;
        }

        v14 = *(*(v19 + 56) + 8 * v23);

        if (v14)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v81;
        goto LABEL_38;
      }
    }

    v6 = v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100368888(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_100368888((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F330, &qword_1007B4EE0);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F338, &qword_1007B4EE8);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  sub_10000607C(v84);
  if (v80)
  {
    return v5;
  }

  v28 = v85;
  v29 = v85[2];
  if (v29)
  {
    sub_1000F5104(&qword_10094F340, &qword_1007B4EF0);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = _swiftEmptyDictionarySingleton;
  }

  v84[0] = v30;

  sub_10067FB04(v31, 1, v84);
  v5 = v84[0];

  v33 = sub_1001A6D00(v32);

  if (v29)
  {
    v84[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = 4;
    do
    {
      v35 = v28[v34];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v84[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += 2;
      --v29;
    }

    while (v29);

    v37 = v84[0];
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  a2 = sub_10019E458(v37, v33);

  if (qword_100936008 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_100945730);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v39, v40, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v41, 0xCu);

      v42 = a2[2];
      if (!v42)
      {
        goto LABEL_53;
      }
    }

    else
    {

      v42 = a2[2];
      if (!v42)
      {
LABEL_53:

        return v5;
      }
    }

    v43 = *(v78 + 88);
    v44 = sub_100368E74(v42, 0);
    a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
    sub_10001B860();
    if (a2 != v42)
    {
      break;
    }

    v45 = sub_100671F94(v44, v83[4]);

    if (v2)
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v5;
    sub_1006A3D34(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

    v79 = v84[0];
    v47 = v45 + 64;
    v48 = 1 << *(v45 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v2 = v49 & *(v45 + 64);
    v5 = (v48 + 63) >> 6;

    v50 = 0;
    v82 = v45;
    while (v2)
    {
LABEL_66:
      v54 = (v50 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*(v45 + 48) + v54);
      v55 = *(*(v45 + 56) + v54);
      swift_beginAccess();
      v56 = v83[5];
      if ((v56 & 0xC000000000000001) != 0)
      {
        if (v56 >= 0)
        {
          v56 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v57 = v55;
        v58 = a2;
        v59 = __CocoaDictionary.count.getter();
        if (__OFADD__(v59, 1))
        {
          goto LABEL_88;
        }

        v60 = v83;
        v83[5] = sub_10021CDBC(v56, v59 + 1);
      }

      else
      {
        v61 = v55;
        v62 = a2;
        v60 = v83;
      }

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v60[5];
      v64 = v85;
      v60[5] = 0x8000000000000000;
      v65 = sub_10002B924(a2);
      v67 = v64[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        __break(1u);
        goto LABEL_87;
      }

      v71 = v66;
      if (v64[3] >= v70)
      {
        if ((v63 & 1) == 0)
        {
          v77 = v65;
          sub_100374768();
          v65 = v77;
        }
      }

      else
      {
        sub_10036CA94(v70, v63);
        v65 = sub_10002B924(a2);
        if ((v71 & 1) != (v72 & 1))
        {
          goto LABEL_90;
        }
      }

      v45 = v82;
      v73 = v85;
      if (v71)
      {
        v51 = v85[7];
        v52 = *(v51 + 8 * v65);
        *(v51 + 8 * v65) = v55;
      }

      else
      {
        v85[(v65 >> 6) + 8] |= 1 << v65;
        *(v73[6] + 8 * v65) = a2;
        *(v73[7] + 8 * v65) = v55;
        v74 = v73[2];
        v69 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v69)
        {
          goto LABEL_89;
        }

        v73[2] = v75;
        v76 = a2;
      }

      v2 &= v2 - 1;
      v83[5] = v73;
      swift_endAccess();
    }

    while (1)
    {
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v53 >= v5)
      {

        return v79;
      }

      v2 = *(v47 + 8 * v53);
      ++v50;
      if (v2)
      {
        v50 = v53;
        goto LABEL_66;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_90:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10066B748(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = _swiftEmptyArrayStorage;
  v83 = a2;
  if (!v5)
  {
    goto LABEL_38;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v81 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_83;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v12 = a2[6];
        }

        v2 = v10;

        v13 = __CocoaDictionary.lookup(_:)();

        if (!v13)
        {
          goto LABEL_18;
        }

        v85 = v13;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v14 = v84[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v15 = v10;
        if (!v2)
        {
          goto LABEL_19;
        }

        v16 = v15;

        v17 = sub_10002B924(v16);
        if ((v18 & 1) == 0)
        {
LABEL_18:

          goto LABEL_19;
        }

        v14 = *(*(v11 + 56) + 8 * v17);
      }

      if (v14)
      {
        break;
      }

LABEL_19:
      v19 = a2[5];
      if ((v19 & 0xC000000000000001) != 0)
      {
        if (v19 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v19 & 0xFFFFFFFFFFFFFF8;
        }

        v20 = v10;

        v21 = __CocoaDictionary.lookup(_:)();

        if (v21)
        {
          v85 = v21;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v14 = v84[0];

          a2 = v83;
          if (v84[0])
          {
            break;
          }
        }

        else
        {

          a2 = v83;
        }

        goto LABEL_5;
      }

      if (*(v19 + 16))
      {
        v22 = a2[5];

        v23 = sub_10002B924(v10);
        if ((v24 & 1) == 0)
        {

          goto LABEL_5;
        }

        v14 = *(*(v19 + 56) + 8 * v23);

        if (v14)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v81;
        goto LABEL_38;
      }
    }

    v6 = v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003688D0(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_1003688D0((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F378, &qword_1007B4F20);
  v84[0] = v6;
  sub_1000F5104(&unk_10094F380, &qword_1007B4F28);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  sub_10000607C(v84);
  if (v80)
  {
    return v5;
  }

  v28 = v85;
  v29 = v85[2];
  if (v29)
  {
    sub_1000F5104(&qword_100943608, &qword_1007B4F30);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = _swiftEmptyDictionarySingleton;
  }

  v84[0] = v30;

  sub_10067FE84(v31, 1, v84);
  v5 = v84[0];

  v33 = sub_1001A6D30(v32);

  if (v29)
  {
    v84[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = 4;
    do
    {
      v35 = v28[v34];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v84[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += 2;
      --v29;
    }

    while (v29);

    v37 = v84[0];
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  a2 = sub_10019E4C0(v37, v33);

  if (qword_100936008 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_100945730);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v39, v40, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v41, 0xCu);

      v42 = a2[2];
      if (!v42)
      {
        goto LABEL_53;
      }
    }

    else
    {

      v42 = a2[2];
      if (!v42)
      {
LABEL_53:

        return v5;
      }
    }

    v43 = *(v78 + 88);
    v44 = sub_100368E88(v42, 0);
    a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
    sub_10001B860();
    if (a2 != v42)
    {
      break;
    }

    v45 = sub_10067234C(v44, v83[4]);

    if (v2)
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v5;
    sub_1006A3FA4(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

    v79 = v84[0];
    v47 = v45 + 64;
    v48 = 1 << *(v45 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v2 = v49 & *(v45 + 64);
    v5 = (v48 + 63) >> 6;

    v50 = 0;
    v82 = v45;
    while (v2)
    {
LABEL_66:
      v54 = (v50 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*(v45 + 48) + v54);
      v55 = *(*(v45 + 56) + v54);
      swift_beginAccess();
      v56 = v83[5];
      if ((v56 & 0xC000000000000001) != 0)
      {
        if (v56 >= 0)
        {
          v56 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v57 = v55;
        v58 = a2;
        v59 = __CocoaDictionary.count.getter();
        if (__OFADD__(v59, 1))
        {
          goto LABEL_88;
        }

        v60 = v83;
        v83[5] = sub_10021CDBC(v56, v59 + 1);
      }

      else
      {
        v61 = v55;
        v62 = a2;
        v60 = v83;
      }

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v60[5];
      v64 = v85;
      v60[5] = 0x8000000000000000;
      v65 = sub_10002B924(a2);
      v67 = v64[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        __break(1u);
        goto LABEL_87;
      }

      v71 = v66;
      if (v64[3] >= v70)
      {
        if ((v63 & 1) == 0)
        {
          v77 = v65;
          sub_100374768();
          v65 = v77;
        }
      }

      else
      {
        sub_10036CA94(v70, v63);
        v65 = sub_10002B924(a2);
        if ((v71 & 1) != (v72 & 1))
        {
          goto LABEL_90;
        }
      }

      v45 = v82;
      v73 = v85;
      if (v71)
      {
        v51 = v85[7];
        v52 = *(v51 + 8 * v65);
        *(v51 + 8 * v65) = v55;
      }

      else
      {
        v85[(v65 >> 6) + 8] |= 1 << v65;
        *(v73[6] + 8 * v65) = a2;
        *(v73[7] + 8 * v65) = v55;
        v74 = v73[2];
        v69 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v69)
        {
          goto LABEL_89;
        }

        v73[2] = v75;
        v76 = a2;
      }

      v2 &= v2 - 1;
      v83[5] = v73;
      swift_endAccess();
    }

    while (1)
    {
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v53 >= v5)
      {

        return v79;
      }

      v2 = *(v47 + 8 * v53);
      ++v50;
      if (v2)
      {
        v50 = v53;
        goto LABEL_66;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_90:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10066C018(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = _swiftEmptyArrayStorage;
  v83 = a2;
  if (!v5)
  {
    goto LABEL_38;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v81 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_83;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v12 = a2[6];
        }

        v2 = v10;

        v13 = __CocoaDictionary.lookup(_:)();

        if (!v13)
        {
          goto LABEL_18;
        }

        v85 = v13;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v14 = v84[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v15 = v10;
        if (!v2)
        {
          goto LABEL_19;
        }

        v16 = v15;

        v17 = sub_10002B924(v16);
        if ((v18 & 1) == 0)
        {
LABEL_18:

          goto LABEL_19;
        }

        v14 = *(*(v11 + 56) + 8 * v17);
      }

      if (v14)
      {
        break;
      }

LABEL_19:
      v19 = a2[5];
      if ((v19 & 0xC000000000000001) != 0)
      {
        if (v19 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v19 & 0xFFFFFFFFFFFFFF8;
        }

        v20 = v10;

        v21 = __CocoaDictionary.lookup(_:)();

        if (v21)
        {
          v85 = v21;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v14 = v84[0];

          a2 = v83;
          if (v84[0])
          {
            break;
          }
        }

        else
        {

          a2 = v83;
        }

        goto LABEL_5;
      }

      if (*(v19 + 16))
      {
        v22 = a2[5];

        v23 = sub_10002B924(v10);
        if ((v24 & 1) == 0)
        {

          goto LABEL_5;
        }

        v14 = *(*(v19 + 56) + 8 * v23);

        if (v14)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v81;
        goto LABEL_38;
      }
    }

    v6 = v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100368918(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_100368918((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F408, &qword_1007B4F90);
  v84[0] = v6;
  sub_1000F5104(&unk_10094F410, &unk_1007B4F98);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  sub_10000607C(v84);
  if (v80)
  {
    return v5;
  }

  v28 = v85;
  v29 = v85[2];
  if (v29)
  {
    sub_1000F5104(&qword_1009436C0, &unk_1007A3FD0);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = _swiftEmptyDictionarySingleton;
  }

  v84[0] = v30;

  sub_100680204(v31, 1, v84);
  v5 = v84[0];

  v33 = sub_1001A6D60(v32);

  if (v29)
  {
    v84[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = 4;
    do
    {
      v35 = v28[v34];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v84[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += 2;
      --v29;
    }

    while (v29);

    v37 = v84[0];
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  a2 = sub_10019E528(v37, v33);

  if (qword_100936008 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_100945730);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v39, v40, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v41, 0xCu);

      v42 = a2[2];
      if (!v42)
      {
        goto LABEL_53;
      }
    }

    else
    {

      v42 = a2[2];
      if (!v42)
      {
LABEL_53:

        return v5;
      }
    }

    v43 = *(v78 + 88);
    v44 = sub_1003689F4(v42, 0);
    a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
    sub_10001B860();
    if (a2 != v42)
    {
      break;
    }

    v45 = sub_1006726F4(v44, v83[4]);

    if (v2)
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v5;
    sub_1006A4214(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

    v79 = v84[0];
    v47 = v45 + 64;
    v48 = 1 << *(v45 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v2 = v49 & *(v45 + 64);
    v5 = (v48 + 63) >> 6;

    v50 = 0;
    v82 = v45;
    while (v2)
    {
LABEL_66:
      v54 = (v50 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*(v45 + 48) + v54);
      v55 = *(*(v45 + 56) + v54);
      swift_beginAccess();
      v56 = v83[5];
      if ((v56 & 0xC000000000000001) != 0)
      {
        if (v56 >= 0)
        {
          v56 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v57 = v55;
        v58 = a2;
        v59 = __CocoaDictionary.count.getter();
        if (__OFADD__(v59, 1))
        {
          goto LABEL_88;
        }

        v60 = v83;
        v83[5] = sub_10021CDBC(v56, v59 + 1);
      }

      else
      {
        v61 = v55;
        v62 = a2;
        v60 = v83;
      }

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v60[5];
      v64 = v85;
      v60[5] = 0x8000000000000000;
      v65 = sub_10002B924(a2);
      v67 = v64[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        __break(1u);
        goto LABEL_87;
      }

      v71 = v66;
      if (v64[3] >= v70)
      {
        if ((v63 & 1) == 0)
        {
          v77 = v65;
          sub_100374768();
          v65 = v77;
        }
      }

      else
      {
        sub_10036CA94(v70, v63);
        v65 = sub_10002B924(a2);
        if ((v71 & 1) != (v72 & 1))
        {
          goto LABEL_90;
        }
      }

      v45 = v82;
      v73 = v85;
      if (v71)
      {
        v51 = v85[7];
        v52 = *(v51 + 8 * v65);
        *(v51 + 8 * v65) = v55;
      }

      else
      {
        v85[(v65 >> 6) + 8] |= 1 << v65;
        *(v73[6] + 8 * v65) = a2;
        *(v73[7] + 8 * v65) = v55;
        v74 = v73[2];
        v69 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v69)
        {
          goto LABEL_89;
        }

        v73[2] = v75;
        v76 = a2;
      }

      v2 &= v2 - 1;
      v83[5] = v73;
      swift_endAccess();
    }

    while (1)
    {
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v53 >= v5)
      {

        return v79;
      }

      v2 = *(v47 + 8 * v53);
      ++v50;
      if (v2)
      {
        v50 = v53;
        goto LABEL_66;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_90:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10066C8E8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = _swiftEmptyArrayStorage;
  v83 = a2;
  if (!v5)
  {
    goto LABEL_38;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v81 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_83;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v12 = a2[6];
        }

        v2 = v10;

        v13 = __CocoaDictionary.lookup(_:)();

        if (!v13)
        {
          goto LABEL_18;
        }

        v85 = v13;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v14 = v84[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v15 = v10;
        if (!v2)
        {
          goto LABEL_19;
        }

        v16 = v15;

        v17 = sub_10002B924(v16);
        if ((v18 & 1) == 0)
        {
LABEL_18:

          goto LABEL_19;
        }

        v14 = *(*(v11 + 56) + 8 * v17);
      }

      if (v14)
      {
        break;
      }

LABEL_19:
      v19 = a2[5];
      if ((v19 & 0xC000000000000001) != 0)
      {
        if (v19 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v19 & 0xFFFFFFFFFFFFFF8;
        }

        v20 = v10;

        v21 = __CocoaDictionary.lookup(_:)();

        if (v21)
        {
          v85 = v21;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v14 = v84[0];

          a2 = v83;
          if (v84[0])
          {
            break;
          }
        }

        else
        {

          a2 = v83;
        }

        goto LABEL_5;
      }

      if (*(v19 + 16))
      {
        v22 = a2[5];

        v23 = sub_10002B924(v10);
        if ((v24 & 1) == 0)
        {

          goto LABEL_5;
        }

        v14 = *(*(v19 + 56) + 8 * v23);

        if (v14)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v81;
        goto LABEL_38;
      }
    }

    v6 = v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100368960(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_100368960((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F5B8, &qword_1007B50D0);
  v84[0] = v6;
  sub_1000F5104(&unk_10094F5C0, &qword_1007B50D8);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  sub_10000607C(v84);
  if (v80)
  {
    return v5;
  }

  v28 = v85;
  v29 = v85[2];
  if (v29)
  {
    sub_1000F5104(&qword_1009438E8, &qword_1007B50E0);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = _swiftEmptyDictionarySingleton;
  }

  v84[0] = v30;

  sub_100680584(v31, 1, v84);
  v5 = v84[0];

  v33 = sub_1001A6D90(v32);

  if (v29)
  {
    v84[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = 4;
    do
    {
      v35 = v28[v34];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v84[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += 2;
      --v29;
    }

    while (v29);

    v37 = v84[0];
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  a2 = sub_10019E590(v37, v33);

  if (qword_100936008 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_100945730);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v39, v40, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v41, 0xCu);

      v42 = a2[2];
      if (!v42)
      {
        goto LABEL_53;
      }
    }

    else
    {

      v42 = a2[2];
      if (!v42)
      {
LABEL_53:

        return v5;
      }
    }

    v43 = *(v78 + 88);
    v44 = sub_100368A08(v42, 0);
    a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
    sub_10001B860();
    if (a2 != v42)
    {
      break;
    }

    v45 = sub_100672A9C(v44, v83[4]);

    if (v2)
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v5;
    sub_1006A74BC(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

    v79 = v84[0];
    v47 = v45 + 64;
    v48 = 1 << *(v45 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v2 = v49 & *(v45 + 64);
    v5 = (v48 + 63) >> 6;

    v50 = 0;
    v82 = v45;
    while (v2)
    {
LABEL_66:
      v54 = (v50 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*(v45 + 48) + v54);
      v55 = *(*(v45 + 56) + v54);
      swift_beginAccess();
      v56 = v83[5];
      if ((v56 & 0xC000000000000001) != 0)
      {
        if (v56 >= 0)
        {
          v56 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v57 = v55;
        v58 = a2;
        v59 = __CocoaDictionary.count.getter();
        if (__OFADD__(v59, 1))
        {
          goto LABEL_88;
        }

        v60 = v83;
        v83[5] = sub_10021CDBC(v56, v59 + 1);
      }

      else
      {
        v61 = v55;
        v62 = a2;
        v60 = v83;
      }

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v60[5];
      v64 = v85;
      v60[5] = 0x8000000000000000;
      v65 = sub_10002B924(a2);
      v67 = v64[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        __break(1u);
        goto LABEL_87;
      }

      v71 = v66;
      if (v64[3] >= v70)
      {
        if ((v63 & 1) == 0)
        {
          v77 = v65;
          sub_100374768();
          v65 = v77;
        }
      }

      else
      {
        sub_10036CA94(v70, v63);
        v65 = sub_10002B924(a2);
        if ((v71 & 1) != (v72 & 1))
        {
          goto LABEL_90;
        }
      }

      v45 = v82;
      v73 = v85;
      if (v71)
      {
        v51 = v85[7];
        v52 = *(v51 + 8 * v65);
        *(v51 + 8 * v65) = v55;
      }

      else
      {
        v85[(v65 >> 6) + 8] |= 1 << v65;
        *(v73[6] + 8 * v65) = a2;
        *(v73[7] + 8 * v65) = v55;
        v74 = v73[2];
        v69 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v69)
        {
          goto LABEL_89;
        }

        v73[2] = v75;
        v76 = a2;
      }

      v2 &= v2 - 1;
      v83[5] = v73;
      swift_endAccess();
    }

    while (1)
    {
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v53 >= v5)
      {

        return v79;
      }

      v2 = *(v47 + 8 * v53);
      ++v50;
      if (v2)
      {
        v50 = v53;
        goto LABEL_66;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_90:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10066D1B8(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F0D0(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005ED4E4(a1, 0, 1, 0, v7);
  v10 = v9;

  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_35:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_36:

      return v2;
    }

LABEL_7:
    v13 = 0;
    v38 = v10 & 0xFFFFFFFFFFFFFF8;
    v39 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v39)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 >= *(v38 + 16))
        {
          goto LABEL_31;
        }

        v16 = *(v10 + 8 * v13 + 32);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v12 = _CocoaArrayWrapper.endIndex.getter();
          if (!v12)
          {
            goto LABEL_35;
          }

          goto LABEL_7;
        }
      }

      v40 = 0;
      v18 = v16;
      v19 = [v18 remObjectIDWithError:&v40];
      if (!v19)
      {
        v37 = v40;

        _convertNSErrorToError(_:)();
        swift_willThrow();

LABEL_29:

        return v2;
      }

      v20 = v19;
      v21 = v40;
      v22 = sub_1005E45B0(v20);
      if (v4)
      {

        goto LABEL_29;
      }

      v23 = v22;
      v4 = v10;
      v10 = v12;

      v24 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v2;
      v26 = sub_100393C74(v23);
      v28 = v2[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_32;
      }

      v32 = v27;
      if (v2[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v26;
          sub_10037477C();
          v26 = v36;
        }
      }

      else
      {
        sub_10036CAA8(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_100393C74(v23);
        if ((v32 & 1) != (v33 & 1))
        {
          sub_1000F5104(&qword_10093A980, &qword_1007B4F60);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v12 = v10;
      v2 = v40;
      v10 = v4;
      if (v32)
      {
        v14 = *(v40 + 7);
        v15 = *(v14 + 8 * v26);
        *(v14 + 8 * v26) = v24;

        v4 = 0;
      }

      else
      {
        *(v40 + (v26 >> 6) + 8) |= 1 << v26;
        *(v2[6] + 8 * v26) = v23;
        *(v2[7] + 8 * v26) = v24;

        v34 = v2[2];
        v30 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v30)
        {
          goto LABEL_33;
        }

        v4 = 0;
        v2[2] = v35;
      }

      ++v13;
      if (v17 == v12)
      {
        goto LABEL_36;
      }
    }
  }

  return v2;
}

unint64_t sub_10066D564(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F780(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005ED9D0(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:

    return v2;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

LABEL_31:

      return v2;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &qword_10093CFE0, off_1008D4190);
    if (v4)
    {

      goto LABEL_31;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_34;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_100374A1C();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_35;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_38;
    }
  }

  sub_10036CE54(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_100943860, &unk_100797FC0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10066D920(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F8AC(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EDECC(a1, 0, 1, 0, v7);
  v10 = v9;

  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_35:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_36:

      return v2;
    }

LABEL_7:
    v13 = 0;
    v38 = v10 & 0xFFFFFFFFFFFFFF8;
    v39 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v39)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 >= *(v38 + 16))
        {
          goto LABEL_31;
        }

        v16 = *(v10 + 8 * v13 + 32);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v12 = _CocoaArrayWrapper.endIndex.getter();
          if (!v12)
          {
            goto LABEL_35;
          }

          goto LABEL_7;
        }
      }

      v40 = 0;
      v18 = v16;
      v19 = [v18 remObjectIDWithError:&v40];
      if (!v19)
      {
        v37 = v40;

        _convertNSErrorToError(_:)();
        swift_willThrow();

LABEL_29:

        return v2;
      }

      v20 = v19;
      v21 = v40;
      v22 = sub_1005E5350(v20);
      if (v4)
      {

        goto LABEL_29;
      }

      v23 = v22;
      v4 = v10;
      v10 = v12;

      v24 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v2;
      v26 = sub_100393C74(v23);
      v28 = v2[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_32;
      }

      v32 = v27;
      if (v2[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v26;
          sub_100374FC4();
          v26 = v36;
        }
      }

      else
      {
        sub_10036D7D4(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_100393C74(v23);
        if ((v32 & 1) != (v33 & 1))
        {
          sub_1000F5104(&qword_10093A958, &qword_100797F70);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v12 = v10;
      v2 = v40;
      v10 = v4;
      if (v32)
      {
        v14 = *(v40 + 7);
        v15 = *(v14 + 8 * v26);
        *(v14 + 8 * v26) = v24;

        v4 = 0;
      }

      else
      {
        *(v40 + (v26 >> 6) + 8) |= 1 << v26;
        *(v2[6] + 8 * v26) = v23;
        *(v2[7] + 8 * v26) = v24;

        v34 = v2[2];
        v30 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v30)
        {
          goto LABEL_33;
        }

        v4 = 0;
        v2[2] = v35;
      }

      ++v13;
      if (v17 == v12)
      {
        goto LABEL_36;
      }
    }
  }

  return v2;
}

unint64_t sub_10066DCCC(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F8C0(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EE8B4(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:

    return v2;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

LABEL_31:

      return v2;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &qword_100940370, off_1008D4150);
    if (v4)
    {

      goto LABEL_31;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_34;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_10037517C();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_35;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_38;
    }
  }

  sub_10036DAB4(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&qword_10094F7F0, &unk_100798000);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10066E088(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F8D4(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EEDB0(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:

    return v2;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

LABEL_31:

      return v2;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &qword_100940360, off_1008D4138);
    if (v4)
    {

      goto LABEL_31;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_34;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_100375190();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_35;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_38;
    }
  }

  sub_10036DAC8(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&qword_10093AA10, &unk_1007A43E0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10066E444(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F8E8(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EF2AC(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:

    return v2;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

LABEL_31:

      return v2;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &qword_100940350, off_1008D4130);
    if (v4)
    {

      goto LABEL_31;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_34;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003751A4();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_35;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_38;
    }
  }

  sub_10036DADC(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&qword_10093AA00, &unk_100797FF0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10066E800(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F8FC(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EF7A8(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:

    return v2;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

LABEL_31:

      return v2;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &qword_10094F688, off_1008D4140);
    if (v4)
    {

      goto LABEL_31;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_34;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003751B8();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_35;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_38;
    }
  }

  sub_10036DAF0(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&qword_10093A9F0, &unk_1007A4370);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10066EBBC(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038FA48(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005ECFE8(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:

    return v2;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

LABEL_31:

      return v2;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &unk_100938870, off_1008D4128);
    if (v4)
    {

      goto LABEL_31;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_34;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003754D0();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_35;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_38;
    }
  }

  sub_10036E024(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_100943720, &unk_1007A4020);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10066EF78(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038FA5C(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EFCA4(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:

    return v2;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

LABEL_31:

      return v2;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &unk_10093F790, off_1008D4158);
    if (v4)
    {

      goto LABEL_31;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_34;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003754E4();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_35;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_38;
    }
  }

  sub_10036E038(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_100943760, &unk_100797FA0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10066F334(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038FA70(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F01A0(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:

    return v2;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

LABEL_31:

      return v2;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &qword_100944EC8, off_1008D41F0);
    if (v4)
    {

      goto LABEL_31;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_34;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003754F8();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_35;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_38;
    }
  }

  sub_10036E04C(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_1009437A0, &unk_1007A4090);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10066F6F0(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038FA84(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F069C(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:

    return v2;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

LABEL_31:

      return v2;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &unk_100944ED0, off_1008D41A0);
    if (v4)
    {

      goto LABEL_31;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_34;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_10037550C();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_35;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_38;
    }
  }

  sub_10036E060(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_1009437E0, &unk_100797FB0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10066FAAC(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038FA98(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F0B98(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:

    return v2;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

LABEL_31:

      return v2;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &qword_100939DF0, off_1008D4188);
    if (v4)
    {

      goto LABEL_31;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_34;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_100375520();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_35;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_38;
    }
  }

  sub_10036E074(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_100943820, &unk_1007A4100);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10066FE68(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038FAAC(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F1094(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:

    return v2;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

LABEL_31:

      return v2;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &qword_100940C50, off_1008D41C8);
    if (v4)
    {

      goto LABEL_31;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_34;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_100375534();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_35;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_38;
    }
  }

  sub_10036E088(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_1009438A0, &unk_1007A4170);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100670224(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10039054C(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005ECAEC(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
LABEL_35:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_36:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_37:

    return v2;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_36;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_32;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

      goto LABEL_37;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &qword_1009399F0, off_1008D4120);
    if (v4)
    {

      goto LABEL_37;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_33;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_100376284();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_34;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_37;
    }
  }

  sub_10036FA80(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_100943950, &unk_1007A4200);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1006705DC(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390560(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F1590(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
LABEL_35:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_36:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_37:

    return v2;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_36;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_32;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

      goto LABEL_37;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &qword_100942E50, off_1008D41E0);
    if (v4)
    {

      goto LABEL_37;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_33;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_100376298();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_34;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_37;
    }
  }

  sub_10036FA94(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_100943260, &qword_100797F38);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100670994(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390574(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F1A8C(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
LABEL_35:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_36:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_37:

    return v2;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_36;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_32;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

      goto LABEL_37;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &qword_10094F150, off_1008D4178);
    if (v4)
    {

      goto LABEL_37;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_33;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003762AC();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_34;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_37;
    }
  }

  sub_10036FAA8(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_1009432F0, &qword_1007B4D80);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100670D4C(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390CD0(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F1F88(a1, 0, 1, 0, v7);
  v10 = v9;

  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_33;
    }

    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_34:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_35:

      return v2;
    }

LABEL_7:
    v13 = 0;
    v38 = v10 & 0xFFFFFFFFFFFFFF8;
    v39 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v39)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v13 >= *(v38 + 16))
        {
          goto LABEL_30;
        }

        v16 = *(v10 + 8 * v13 + 32);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v12 = _CocoaArrayWrapper.endIndex.getter();
          if (!v12)
          {
            goto LABEL_34;
          }

          goto LABEL_7;
        }
      }

      v40 = 0;
      v18 = v16;
      v19 = [v18 remObjectIDWithError:&v40];
      if (!v19)
      {
        v37 = v40;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        goto LABEL_35;
      }

      v20 = v19;
      v21 = v40;
      v22 = sub_1005E60F0(v20);
      if (v4)
      {

        goto LABEL_35;
      }

      v23 = v22;
      v4 = v10;
      v10 = v12;

      v24 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v2;
      v26 = sub_100393C74(v23);
      v28 = v2[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_31;
      }

      v32 = v27;
      if (v2[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v26;
          sub_100377D18();
          v26 = v36;
        }
      }

      else
      {
        sub_100372774(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_100393C74(v23);
        if ((v32 & 1) != (v33 & 1))
        {
          sub_1000F5104(&unk_100944000, &unk_100798010);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v12 = v10;
      v2 = v40;
      v10 = v4;
      if (v32)
      {
        v14 = *(v40 + 7);
        v15 = *(v14 + 8 * v26);
        *(v14 + 8 * v26) = v24;

        v4 = 0;
      }

      else
      {
        *(v40 + (v26 >> 6) + 8) |= 1 << v26;
        *(v2[6] + 8 * v26) = v23;
        *(v2[7] + 8 * v26) = v24;

        v34 = v2[2];
        v30 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v30)
        {
          goto LABEL_32;
        }

        v4 = 0;
        v2[2] = v35;
      }

      ++v13;
      if (v17 == v12)
      {
        goto LABEL_35;
      }
    }
  }

  return v2;
}

unint64_t sub_1006710F4(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390CE4(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F2474(a1, 0, 1, 0, v7);
  v10 = v9;

  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_33;
    }

    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_34:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_35:

      return v2;
    }

LABEL_7:
    v13 = 0;
    v38 = v10 & 0xFFFFFFFFFFFFFF8;
    v39 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v39)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v13 >= *(v38 + 16))
        {
          goto LABEL_30;
        }

        v16 = *(v10 + 8 * v13 + 32);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v12 = _CocoaArrayWrapper.endIndex.getter();
          if (!v12)
          {
            goto LABEL_34;
          }

          goto LABEL_7;
        }
      }

      v40 = 0;
      v18 = v16;
      v19 = [v18 remObjectIDWithError:&v40];
      if (!v19)
      {
        v37 = v40;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        goto LABEL_35;
      }

      v20 = v19;
      v21 = v40;
      v22 = sub_1005E6E68(v20);
      if (v4)
      {

        goto LABEL_35;
      }

      v23 = v22;
      v4 = v10;
      v10 = v12;

      v24 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v2;
      v26 = sub_100393C74(v23);
      v28 = v2[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_31;
      }

      v32 = v27;
      if (v2[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v26;
          sub_10037812C();
          v26 = v36;
        }
      }

      else
      {
        sub_100372BA0(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_100393C74(v23);
        if ((v32 & 1) != (v33 & 1))
        {
          sub_1000F5104(&unk_1009433D0, &unk_100797F50);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v12 = v10;
      v2 = v40;
      v10 = v4;
      if (v32)
      {
        v14 = *(v40 + 7);
        v15 = *(v14 + 8 * v26);
        *(v14 + 8 * v26) = v24;

        v4 = 0;
      }

      else
      {
        *(v40 + (v26 >> 6) + 8) |= 1 << v26;
        *(v2[6] + 8 * v26) = v23;
        *(v2[7] + 8 * v26) = v24;

        v34 = v2[2];
        v30 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v30)
        {
          goto LABEL_32;
        }

        v4 = 0;
        v2[2] = v35;
      }

      ++v13;
      if (v17 == v12)
      {
        goto LABEL_35;
      }
    }
  }

  return v2;
}

unint64_t sub_10067149C(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390CF8(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F2960(a1, 0, 1, 0, v7);
  v10 = v9;

  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_33;
    }

    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_34:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_35:

      return v2;
    }

LABEL_7:
    v13 = 0;
    v38 = v10 & 0xFFFFFFFFFFFFFF8;
    v39 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v39)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v13 >= *(v38 + 16))
        {
          goto LABEL_30;
        }

        v16 = *(v10 + 8 * v13 + 32);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v12 = _CocoaArrayWrapper.endIndex.getter();
          if (!v12)
          {
            goto LABEL_34;
          }

          goto LABEL_7;
        }
      }

      v40 = 0;
      v18 = v16;
      v19 = [v18 remObjectIDWithError:&v40];
      if (!v19)
      {
        v37 = v40;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        goto LABEL_35;
      }

      v20 = v19;
      v21 = v40;
      v22 = sub_1005E7BE0(v20);
      if (v4)
      {

        goto LABEL_35;
      }

      v23 = v22;
      v4 = v10;
      v10 = v12;

      v24 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v2;
      v26 = sub_100393C74(v23);
      v28 = v2[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_31;
      }

      v32 = v27;
      if (v2[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v26;
          sub_100378140();
          v26 = v36;
        }
      }

      else
      {
        sub_100372BB4(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_100393C74(v23);
        if ((v32 & 1) != (v33 & 1))
        {
          sub_1000F5104(&unk_100943420, &unk_1007A3DC0);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v12 = v10;
      v2 = v40;
      v10 = v4;
      if (v32)
      {
        v14 = *(v40 + 7);
        v15 = *(v14 + 8 * v26);
        *(v14 + 8 * v26) = v24;

        v4 = 0;
      }

      else
      {
        *(v40 + (v26 >> 6) + 8) |= 1 << v26;
        *(v2[6] + 8 * v26) = v23;
        *(v2[7] + 8 * v26) = v24;

        v34 = v2[2];
        v30 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v30)
        {
          goto LABEL_32;
        }

        v4 = 0;
        v2[2] = v35;
      }

      ++v13;
      if (v17 == v12)
      {
        goto LABEL_35;
      }
    }
  }

  return v2;
}

unint64_t sub_100671844(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390D0C(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F2E4C(a1, 0, 1, 0, v7);
  v10 = v9;

  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_33;
    }

    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_34:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_35:

      return v2;
    }

LABEL_7:
    v13 = 0;
    v38 = v10 & 0xFFFFFFFFFFFFFF8;
    v39 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v39)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v13 >= *(v38 + 16))
        {
          goto LABEL_30;
        }

        v16 = *(v10 + 8 * v13 + 32);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v12 = _CocoaArrayWrapper.endIndex.getter();
          if (!v12)
          {
            goto LABEL_34;
          }

          goto LABEL_7;
        }
      }

      v40 = 0;
      v18 = v16;
      v19 = [v18 remObjectIDWithError:&v40];
      if (!v19)
      {
        v37 = v40;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        goto LABEL_35;
      }

      v20 = v19;
      v21 = v40;
      v22 = sub_1005E8958(v20);
      if (v4)
      {

        goto LABEL_35;
      }

      v23 = v22;
      v4 = v10;
      v10 = v12;

      v24 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v2;
      v26 = sub_100393C74(v23);
      v28 = v2[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_31;
      }

      v32 = v27;
      if (v2[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v26;
          sub_100378154();
          v26 = v36;
        }
      }

      else
      {
        sub_100372BC8(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_100393C74(v23);
        if ((v32 & 1) != (v33 & 1))
        {
          sub_1000F5104(&unk_100943470, &unk_100797F60);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v12 = v10;
      v2 = v40;
      v10 = v4;
      if (v32)
      {
        v14 = *(v40 + 7);
        v15 = *(v14 + 8 * v26);
        *(v14 + 8 * v26) = v24;

        v4 = 0;
      }

      else
      {
        *(v40 + (v26 >> 6) + 8) |= 1 << v26;
        *(v2[6] + 8 * v26) = v23;
        *(v2[7] + 8 * v26) = v24;

        v34 = v2[2];
        v30 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v30)
        {
          goto LABEL_32;
        }

        v4 = 0;
        v2[2] = v35;
      }

      ++v13;
      if (v17 == v12)
      {
        goto LABEL_35;
      }
    }
  }

  return v2;
}

unint64_t sub_100671BEC(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390D20(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F3338(a1, 0, 1, 0, v7);
  v10 = v9;

  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_33;
    }

    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_34:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_35:

      return v2;
    }

LABEL_7:
    v13 = 0;
    v38 = v10 & 0xFFFFFFFFFFFFFF8;
    v39 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v39)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v13 >= *(v38 + 16))
        {
          goto LABEL_30;
        }

        v16 = *(v10 + 8 * v13 + 32);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v12 = _CocoaArrayWrapper.endIndex.getter();
          if (!v12)
          {
            goto LABEL_34;
          }

          goto LABEL_7;
        }
      }

      v40 = 0;
      v18 = v16;
      v19 = [v18 remObjectIDWithError:&v40];
      if (!v19)
      {
        v37 = v40;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        goto LABEL_35;
      }

      v20 = v19;
      v21 = v40;
      v22 = sub_1005E96B8(v20);
      if (v4)
      {

        goto LABEL_35;
      }

      v23 = v22;
      v4 = v10;
      v10 = v12;

      v24 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v2;
      v26 = sub_100393C74(v23);
      v28 = v2[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_31;
      }

      v32 = v27;
      if (v2[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v26;
          sub_100378168();
          v26 = v36;
        }
      }

      else
      {
        sub_100372BDC(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_100393C74(v23);
        if ((v32 & 1) != (v33 & 1))
        {
          sub_1000F5104(&unk_1009434C0, &unk_1007A3E50);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v12 = v10;
      v2 = v40;
      v10 = v4;
      if (v32)
      {
        v14 = *(v40 + 7);
        v15 = *(v14 + 8 * v26);
        *(v14 + 8 * v26) = v24;

        v4 = 0;
      }

      else
      {
        *(v40 + (v26 >> 6) + 8) |= 1 << v26;
        *(v2[6] + 8 * v26) = v23;
        *(v2[7] + 8 * v26) = v24;

        v34 = v2[2];
        v30 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v30)
        {
          goto LABEL_32;
        }

        v4 = 0;
        v2[2] = v35;
      }

      ++v13;
      if (v17 == v12)
      {
        goto LABEL_35;
      }
    }
  }

  return v2;
}

unint64_t sub_100671F94(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390D34(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EE3B8(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
LABEL_35:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_36:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_37:

    return v2;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_36;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_32;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

      goto LABEL_37;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &unk_10093F770, off_1008D41E8);
    if (v4)
    {

      goto LABEL_37;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_33;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_10037817C();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_34;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_37;
    }
  }

  sub_100372BF0(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&qword_10094F310, &qword_100797F78);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10067234C(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390D48(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F3824(a1, 0, 1, 0, v7);
  v10 = v9;

  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_33;
    }

    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_34:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_35:

      return v2;
    }

LABEL_7:
    v13 = 0;
    v38 = v10 & 0xFFFFFFFFFFFFFF8;
    v39 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v39)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v13 >= *(v38 + 16))
        {
          goto LABEL_30;
        }

        v16 = *(v10 + 8 * v13 + 32);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v12 = _CocoaArrayWrapper.endIndex.getter();
          if (!v12)
          {
            goto LABEL_34;
          }

          goto LABEL_7;
        }
      }

      v40 = 0;
      v18 = v16;
      v19 = [v18 remObjectIDWithError:&v40];
      if (!v19)
      {
        v37 = v40;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        goto LABEL_35;
      }

      v20 = v19;
      v21 = v40;
      v22 = sub_1005EA438(v20);
      if (v4)
      {

        goto LABEL_35;
      }

      v23 = v22;
      v4 = v10;
      v10 = v12;

      v24 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v2;
      v26 = sub_100393C74(v23);
      v28 = v2[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_31;
      }

      v32 = v27;
      if (v2[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v26;
          sub_100378190();
          v26 = v36;
        }
      }

      else
      {
        sub_100372C04(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_100393C74(v23);
        if ((v32 & 1) != (v33 & 1))
        {
          sub_1000F5104(&unk_10094F390, &unk_100797F80);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v12 = v10;
      v2 = v40;
      v10 = v4;
      if (v32)
      {
        v14 = *(v40 + 7);
        v15 = *(v14 + 8 * v26);
        *(v14 + 8 * v26) = v24;

        v4 = 0;
      }

      else
      {
        *(v40 + (v26 >> 6) + 8) |= 1 << v26;
        *(v2[6] + 8 * v26) = v23;
        *(v2[7] + 8 * v26) = v24;

        v34 = v2[2];
        v30 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v30)
        {
          goto LABEL_32;
        }

        v4 = 0;
        v2[2] = v35;
      }

      ++v13;
      if (v17 == v12)
      {
        goto LABEL_35;
      }
    }
  }

  return v2;
}

unint64_t sub_1006726F4(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390D5C(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EC0F4(a1, 0, 1, 0, v7);
  v10 = v9;

  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_33;
    }

    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_34:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_35:

      return v2;
    }

LABEL_7:
    v13 = 0;
    v38 = v10 & 0xFFFFFFFFFFFFFF8;
    v39 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v39)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v13 >= *(v38 + 16))
        {
          goto LABEL_30;
        }

        v16 = *(v10 + 8 * v13 + 32);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v12 = _CocoaArrayWrapper.endIndex.getter();
          if (!v12)
          {
            goto LABEL_34;
          }

          goto LABEL_7;
        }
      }

      v40 = 0;
      v18 = v16;
      v19 = [v18 remObjectIDWithError:&v40];
      if (!v19)
      {
        v37 = v40;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        goto LABEL_35;
      }

      v20 = v19;
      v21 = v40;
      v22 = sub_1005E2A38(v20);
      if (v4)
      {

        goto LABEL_35;
      }

      v23 = v22;
      v4 = v10;
      v10 = v12;

      v24 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v2;
      v26 = sub_100393C74(v23);
      v28 = v2[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_31;
      }

      v32 = v27;
      if (v2[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v26;
          sub_1003781A4();
          v26 = v36;
        }
      }

      else
      {
        sub_100372C18(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_100393C74(v23);
        if ((v32 & 1) != (v33 & 1))
        {
          sub_1000F5104(&unk_1009436D0, &unk_100797F90);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v12 = v10;
      v2 = v40;
      v10 = v4;
      if (v32)
      {
        v14 = *(v40 + 7);
        v15 = *(v14 + 8 * v26);
        *(v14 + 8 * v26) = v24;

        v4 = 0;
      }

      else
      {
        *(v40 + (v26 >> 6) + 8) |= 1 << v26;
        *(v2[6] + 8 * v26) = v23;
        *(v2[7] + 8 * v26) = v24;

        v34 = v2[2];
        v30 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v30)
        {
          goto LABEL_32;
        }

        v4 = 0;
        v2[2] = v35;
      }

      ++v13;
      if (v17 == v12)
      {
        goto LABEL_35;
      }
    }
  }

  return v2;
}

unint64_t sub_100672A9C(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390D70(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EC5F0(a1, 0, 1, 0, v7);
  v10 = v9;

  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
LABEL_35:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_36:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_37:

    return v2;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_36;
  }

LABEL_7:
  v13 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  v39 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v37 = v12;
  while (1)
  {
    if (v39)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_32;
      }

      v16 = *(v10 + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    v40 = 0;
    v18 = v16;
    v19 = [v18 remObjectIDWithError:&v40];
    if (!v19)
    {
      v36 = v40;

      _convertNSErrorToError(_:)();
      swift_willThrow();

      goto LABEL_37;
    }

    v20 = v19;
    v21 = v40;
    v22 = sub_1005E3810(v20, &unk_100938880, off_1008D41A8);
    if (v4)
    {

      goto LABEL_37;
    }

    v23 = v22;
    v4 = v10;

    v24 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v10 = sub_100393C74(v23);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_33;
    }

    v30 = v26;
    if (v2[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v40;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003781B8();
      v2 = v40;
      if (v30)
      {
LABEL_8:
        v14 = v2[7];
        v15 = *(v14 + 8 * v10);
        *(v14 + 8 * v10) = v24;

        goto LABEL_9;
      }
    }

LABEL_22:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    *(v2[6] + 8 * v10) = v23;
    *(v2[7] + 8 * v10) = v24;

    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_34;
    }

    v2[2] = v35;
LABEL_9:
    ++v13;
    v10 = v4;
    v4 = 0;
    if (v17 == v37)
    {
      goto LABEL_37;
    }
  }

  sub_100372C2C(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_100393C74(v23);
  if ((v30 & 1) == (v32 & 1))
  {
    v10 = v31;
    v2 = v40;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_10094F300, &unk_100797FD0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100672E54(char a1)
{
  result = 0x44497463656A626FLL;
  switch(a1)
  {
    case 1:
      return 0xD000000000000012;
    case 2:
    case 12:
    case 23:
      v4 = 5;
      return v4 | 0xD000000000000012;
    case 3:
      return 0x6F54636E79536164;
    case 4:
      return 0x654B687375506164;
    case 5:
    case 11:
      v4 = 9;
      return v4 | 0xD000000000000012;
    case 6:
      return 0x65526B6C75426164;
    case 7:
      return 0x616C707369446164;
    case 8:
      return 0xD000000000000016;
    case 9:
      return 0x6461655273496164;
    case 10:
      return 0x756D6D4973496164;
    case 13:
      return 0x70756F72477369;
    case 14:
      return 0xD000000000000012;
    case 15:
      return 1701667182;
    case 16:
      return 0x726F6C6F63;
    case 17:
      return 0x626D456567646162;
    case 18:
    case 24:
    case 37:
      return 0xD00000000000001CLL;
    case 19:
      return 0xD000000000000024;
    case 20:
      return 0x4C797265636F7267;
    case 21:
      return 0xD000000000000023;
    case 22:
    case 38:
      return 0xD000000000000019;
    case 25:
      return 0xD000000000000020;
    case 26:
      return 0xD000000000000018;
    case 27:
      v4 = 13;
      return v4 | 0xD000000000000012;
    case 28:
      return 0x6574616C706D6574;
    case 29:
    case 30:
      return 0x774F646572616873;
    case 31:
      return 0xD000000000000012;
    case 32:
      v3 = 1918986355;
      goto LABEL_29;
    case 33:
      return 0x73656572616873;
    case 34:
      return 0xD000000000000013;
    case 35:
      v3 = 1953656691;
LABEL_29:
      result = v3 | 0x53676E6900000000;
      break;
    case 36:
      result = 0x614464656E6E6970;
      break;
    case 39:
      result = 0xD000000000000027;
      break;
    case 40:
    case 41:
      result = 0xD000000000000030;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1006732C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v56 = a4;
  v67 = type metadata accessor for UUID();
  v9 = *(v67 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v67);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyDictionarySingleton;
  v69 = _swiftEmptyDictionarySingleton;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (a1 + 32);
    do
    {
      v15 = *v14;
      sub_1006738C0(&v69, v15);
      if (v4)
      {

        return;
      }

      ++v14;
      --v13;
    }

    while (v13);
    v12 = v69;
  }

  v53 = _swiftEmptyArrayStorage;
  v69 = _swiftEmptyArrayStorage;
  v16 = [objc_opt_self() subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
  sub_1000F5104(&qword_100947250, &unk_1007AC8E0);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = *(v17 + 16);
  if (!v63)
  {
LABEL_47:

    return;
  }

  v18 = 0;
  v62 = v17 + 32;
  v66 = v9 + 32;
  if (a3)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2;
  }

  v60 = v19;
  v20 = &selRef_accountStatusWithCompletionHandler_;
  v54 = v17;
  v55 = v12;
  while (v18 < *(v17 + 16))
  {
    v65 = v18;
    v21 = *(v62 + 8 * v18);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (([ObjCClassFromMetadata respondsToSelector:v20[146]] & 1) == 0)
    {
      goto LABEL_53;
    }

    v23 = [ObjCClassFromMetadata v20[146]];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v12[2])
    {
      v27 = sub_100005F4C(v24, v26);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        goto LABEL_12;
      }

      v30 = *(v12[7] + 8 * v27);
      v31 = *(v30 + 16);
      if (!v31)
      {
        goto LABEL_12;
      }

      v59 = v5;
      v68 = _swiftEmptyArrayStorage;

      sub_100253258(0, v31, 0);
      v32 = v68;
      v33 = 32;
      v34 = v57;
      do
      {
        v35 = *(v30 + v33);
        v36 = [v35 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v68 = v32;
        v37 = v34;
        v39 = *(v32 + 16);
        v38 = *(v32 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_100253258(v38 > 1, v39 + 1, 1);
          v32 = v68;
        }

        *(v32 + 16) = v39 + 1;
        (*(v9 + 32))(v32 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v39, v37, v67);
        v33 += 8;
        --v31;
        v34 = v37;
      }

      while (v31);

      v40 = sub_1001A59A4(v32);

      KeyPath = swift_getKeyPath();
      v42 = sub_1003942EC(v40);

      v43 = sub_10042D814(KeyPath, v42);

      if (v60 < 0)
      {
        goto LABEL_52;
      }

      v44 = v43;
      if (v56)
      {
        v45.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v45.super.isa = 0;
      }

      v46 = [ObjCClassFromMetadata ic_resultsMatchingPredicate:v44 sortDescriptors:0 resultType:0 fetchBatchSize:v60 propertiesToFetch:0 relationshipKeyPathsForPrefetching:v45.super.isa context:v64];
      v58 = v44;

      sub_1000F5104(&unk_10093AF30, &qword_100798648);
      v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v68 = _swiftEmptyArrayStorage;
      if (v47 >> 62)
      {
        v48 = _CocoaArrayWrapper.endIndex.getter();
        if (v48)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v48)
        {
LABEL_28:
          v49 = 0;
          v61 = _swiftEmptyArrayStorage;
          do
          {
            v50 = v49;
            while (1)
            {
              if ((v47 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
                v49 = v50 + 1;
                if (__OFADD__(v50, 1))
                {
                  goto LABEL_49;
                }
              }

              else
              {
                if (v50 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_50;
                }

                v51 = *(v47 + 8 * v50 + 32);
                swift_unknownObjectRetain();
                v49 = v50 + 1;
                if (__OFADD__(v50, 1))
                {
LABEL_49:
                  __break(1u);
LABEL_50:
                  __break(1u);
                  goto LABEL_51;
                }
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              swift_unknownObjectRelease();
              ++v50;
              if (v49 == v48)
              {
                goto LABEL_45;
              }
            }

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v52 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v61 = v68;
          }

          while (v49 != v48);
          goto LABEL_45;
        }
      }

      v61 = _swiftEmptyArrayStorage;
LABEL_45:

      sub_100272294(v61);

      v5 = v59;
      v17 = v54;
      v12 = v55;
      goto LABEL_12;
    }

LABEL_12:
    v18 = v65 + 1;
    v20 = &selRef_accountStatusWithCompletionHandler_;
    if (v65 + 1 == v63)
    {
      v53 = v69;
      goto LABEL_47;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_1006738C0(uint64_t **a1, void *a2)
{
  v4 = sub_1005B0850();
  v5 = [a2 entityName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (!v4[2])
  {

    goto LABEL_10;
  }

  v9 = sub_100005F4C(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_10:

    v20 = objc_opt_self();
    _StringGuts.grow(_:)(52);
    v21._object = 0x80000001007FE410;
    v21._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v21);
    v22 = [a2 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 125;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v28 = String._bridgeToObjectiveC()();

    [v20 internalErrorWithDebugDescription:v28];

    return swift_willThrow();
  }

  v12 = (v4[7] + 16 * v9);
  v14 = *v12;
  v13 = v12[1];

  if (*a1)[2] && (sub_100005F4C(v14, v13), (v15))
  {
    v17 = sub_100261AF4(&v35, v14, v13);
    if (*v16)
    {
      v18 = v16;
      v19 = a2;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(*v18 + 16) >= *(*v18 + 24) >> 1)
      {
        v34 = *(*v18 + 16);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v17)(&v35, 0);
    }

    else
    {
      (v17)(&v35, 0);
    }
  }

  else
  {
    sub_1000F5104(&unk_100943290, &unk_1007B4D40);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100791300;
    *(v30 + 32) = a2;
    v31 = a2;
    v32 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *a1;
    sub_1002C815C(v30, v14, v13, isUniquelyReferenced_nonNull_native);

    *a1 = v35;
  }

  return result;
}

uint64_t sub_100673C3C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100672E54(*a1);
  v5 = v4;
  if (v3 == sub_100672E54(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100673CC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100672E54(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100673D28()
{
  sub_100672E54(*v0);
  String.hash(into:)();
}

Swift::Int sub_100673D7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100672E54(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100673DDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100682CAC();
  *a2 = result;
  return result;
}

uint64_t sub_100673E0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100672E54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100673E38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100682CAC();
  *a1 = result;
  return result;
}

uint64_t sub_100673E90()
{
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_100673FCC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10068C22C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100673FFC@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0x49746E756F636361;
  v5 = 0x80000001007E9FB0;
  v6 = 0xD000000000000015;
  if (v2 != 5)
  {
    v6 = 0xD000000000000014;
    v5 = 0x80000001007E9FD0;
  }

  v7 = 0xEF4449746E756F63;
  v8 = 0x6341746E65726170;
  result = 0x694C746E65726170;
  if (v2 != 3)
  {
    v8 = 0x694C746E65726170;
    v7 = 0xEC00000044497473;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0x80000001007E9F50;
  v11 = 0xD00000000000001BLL;
  if (v2 == 1)
  {
    v11 = 0xD000000000000016;
  }

  else
  {
    v10 = 0x80000001007E9F70;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

unint64_t sub_100674100@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10068C22C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_100674128()
{
  v1 = *v0;
  v2 = 0x49746E756F636361;
  v3 = 0xD000000000000015;
  if (v1 != 5)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x6341746E65726170;
  if (v1 != 3)
  {
    v4 = 0x694C746E65726170;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001BLL;
  if (v1 == 1)
  {
    v5 = 0xD000000000000016;
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

uint64_t sub_100674238(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736E6F6974636573;
  }

  else
  {
    v4 = 0x7265646E696D6572;
  }

  if (v3)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x736E6F6974636573;
  }

  else
  {
    v6 = 0x7265646E696D6572;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE900000000000073;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1006742E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10067436C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1006743E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100674464@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1430, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1006744C4(uint64_t *a1@<X8>)
{
  v2 = 0x7265646E696D6572;
  if (*v1)
  {
    v2 = 0x736E6F6974636573;
  }

  v3 = 0xE900000000000073;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100674508@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1430, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10067456C()
{
  if (*v0)
  {
    result = 0x736E6F6974636573;
  }

  else
  {
    result = 0x7265646E696D6572;
  }

  *v0;
  return result;
}

uint64_t sub_1006745BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "sectionIDsToUndelete";
  v4 = 0xD00000000000001FLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = 0xD00000000000001CLL;
  }

  if (v2 == 1)
  {
    v6 = "sectionIDsToUndelete";
  }

  else
  {
    v6 = "remindersICSDisplayOrderChanged";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001CLL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "lastUserAccessDate";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001CLL;
    v3 = "remindersICSDisplayOrderChanged";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000001CLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "lastUserAccessDate";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}