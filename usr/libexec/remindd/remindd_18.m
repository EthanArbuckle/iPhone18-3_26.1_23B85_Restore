uint64_t sub_1002030B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v51 = 0;
  v52 = a2;
  v50 = v47 - v6;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v25 = *(a1 + 32);
    v26 = v25 & 0x3F;
    v7 = ((1 << v25) + 63) >> 6;
    v10 = 8 * v7;

    if (v26 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

  v7 = &_swiftEmptySetSingleton;
  v55 = &_swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v8 = __CocoaSet.Iterator.next()();
  if (!v8)
  {
LABEL_20:

LABEL_37:
    a2 = v52;
    goto LABEL_38;
  }

  v9 = v8;
  v10 = sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v11 = v9;
  a2 = 1;
  while (1)
  {
    v53 = v11;
    swift_dynamicCast();
    v12 = [v54 name];
    if (v12)
    {
      break;
    }

LABEL_5:
    v11 = __CocoaSet.Iterator.next()();
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  v13 = v54;
  v14 = *(v7 + 16);
  if (*(v7 + 24) <= v14)
  {
    sub_100380E64(v14 + 1);
  }

  v7 = v55;
  a1 = v13;
  v15 = NSObject._rawHashValue(seed:)(v55[5]);
  v16 = v7 + 56;
  v17 = -1 << *(v7 + 32);
  v18 = v15 & ~v17;
  v19 = v18 >> 6;
  if (((-1 << v18) & ~*(v7 + 56 + 8 * (v18 >> 6))) != 0)
  {
    v20 = __clz(__rbit64((-1 << v18) & ~*(v7 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v7 + 48) + 8 * v20) = v13;
    ++*(v7 + 16);
    goto LABEL_5;
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v16 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_45:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

LABEL_22:
    v47[1] = v47;
    v48 = v7;
    __chkstk_darwin(isStackAllocationSafe);
    v28 = v47 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v10);
    v49 = 0;
    a2 = 0;
    v29 = 1 << *(a1 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v7 = v30 & *(a1 + 56);
    v31 = (v29 + 63) >> 6;
    while (v7)
    {
      v32 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_32:
      v10 = v32 | (a2 << 6);
      v35 = *(*(a1 + 48) + 8 * v10);
      v36 = [v35 name];

      if (v36)
      {

        *&v28[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v49++, 1))
        {
          __break(1u);
LABEL_36:
          v7 = sub_1001A112C(v28, v48, v49, a1);
          goto LABEL_37;
        }
      }
    }

    v33 = a2;
    while (1)
    {
      a2 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (a2 >= v31)
      {
        goto LABEL_36;
      }

      v34 = *(a1 + 56 + 8 * a2);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v7 = (v34 - 1) & v34;
        goto LABEL_32;
      }
    }
  }

  v46 = swift_slowAlloc();
  v7 = sub_1001BAAE8(v46, v7, a1, sub_1002119A0, 0);

LABEL_38:
  sub_1002059C4(v7);
  v39 = v38;

  if (v39)
  {
    v40 = [v39 creationDate];

    if (v40)
    {
      v41 = v50;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = 0;
    }

    else
    {
      v42 = 1;
      v41 = v50;
    }

    v45 = type metadata accessor for Date();
    (*(*(v45 - 8) + 56))(v41, v42, 1, v45);
    return sub_100031B58(v41, a2, &unk_100938850, qword_100795AE0);
  }

  else
  {
    v43 = type metadata accessor for Date();
    return (*(*(v43 - 8) + 56))(a2, 1, 1, v43);
  }
}

void sub_100203610(uint64_t a1, void *a2)
{
  v3 = v2;
  v87 = type metadata accessor for UUID();
  v5 = *(v87 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v87);
  v81 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v86 = &v77 - v13;

  v15 = sub_1001A59A4(v14);

  v93 = _swiftEmptyArrayStorage;
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = sub_100368A1C(*(v15 + 16), 0);
    v18 = sub_1002799DC(&v92, &v17[(*(v5 + 80) + 32) & ~*(v5 + 80)], v16, v15);
    sub_10001B860();
    if (v18 != v16)
    {
      __break(1u);
      goto LABEL_67;
    }

    v19 = v12;
  }

  else
  {
    v19 = v12;

    v17 = _swiftEmptyArrayStorage;
  }

  v92 = v17;
  sub_1000F5104(&qword_10093D008, qword_10079AAC0);
  sub_10000CB48(&qword_10093D010, &qword_10093D008, qword_10079AAC0);
  v20 = BidirectionalCollection<>.slices(by:)();

  v12 = a2;
  sub_10020BE20(v20, v12, &v93, sub_100204DB4);
  v21 = v2;

  v3 = v93;
  if (v93 >> 62)
  {
    goto LABEL_64;
  }

  v22 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_65:

    return;
  }

LABEL_7:
  v80 = v12;
  v88 = v22;
  v89 = v3;
  v12 = 0;
  v90 = v3 & 0xFFFFFFFFFFFFFF8;
  v91 = v3 & 0xC000000000000001;
  v85 = (v5 + 56);
  v83 = v21;
  v84 = (v5 + 48);
  v78 = (v5 + 8);
  v79 = (v5 + 16);
  v5 = &unk_100939D90;
  v3 = "8\n\r";
  v82 = _swiftEmptyArrayStorage;
  do
  {
    v23 = v12;
    while (1)
    {
      if (v91)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v90 + 16))
        {
          goto LABEL_59;
        }

        v24 = v89[v23 + 4];
      }

      v21 = v24;
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        v22 = _CocoaArrayWrapper.endIndex.getter();
        if (!v22)
        {
          goto LABEL_65;
        }

        goto LABEL_7;
      }

      v25 = [v24 reminder];
      if (v25)
      {
        break;
      }

LABEL_10:
      ++v23;
      if (v12 == v88)
      {
        goto LABEL_27;
      }
    }

    v26 = v5;
    v27 = v25;
    v28 = [v25 identifier];

    if (v28)
    {
      v29 = v19;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = 0;
      v5 = v26;
    }

    else
    {
      v30 = 1;
      v5 = v26;
      v29 = v19;
    }

    v31 = v87;
    (*v85)(v29, v30, 1, v87);
    v19 = v29;
    v32 = v29;
    v33 = v86;
    sub_100031B58(v32, v86, v5, "8\n\r");
    if ((*v84)(v33, 1, v31))
    {

      sub_1000050A4(v33, v5, "8\n\r");
      goto LABEL_10;
    }

    v34 = v5;
    v35 = v81;
    v36 = v87;
    (*v79)(v81, v33, v87);
    sub_1000050A4(v33, v34, "8\n\r");
    v37 = UUID.uuidString.getter();
    v39 = v38;

    (*v78)(v35, v36);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = sub_100365788(0, *(v82 + 2) + 1, 1, v82);
    }

    v41 = *(v82 + 2);
    v40 = *(v82 + 3);
    if (v41 >= v40 >> 1)
    {
      v82 = sub_100365788((v40 > 1), v41 + 1, 1, v82);
    }

    v42 = v82;
    *(v82 + 2) = v41 + 1;
    v43 = &v42[16 * v41];
    *(v43 + 4) = v37;
    *(v43 + 5) = v39;
    v5 = v26;
  }

  while (v12 != v88);
LABEL_27:
  if (qword_100935BF8 != -1)
  {
LABEL_67:
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_10093CC70);
  v45 = v82;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  v48 = os_log_type_enabled(v46, v47);
  v19 = v88;
  if (v48)
  {
    v5 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v92 = v49;
    *v5 = 136446210;
    v50 = Array.description.getter();
    v3 = sub_10000668C(v50, v51, &v92);

    *(v5 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v46, v47, "RDHashtagLabelUpdater process shared to me reminders: %{public}s", v5, 0xCu);
    sub_10000607C(v49);
  }

  v21 = v89;
  v52 = 0;
  v53 = _swiftEmptyArrayStorage;
  v92 = _swiftEmptyArrayStorage;
  while (v19 != v52)
  {
    if (v91)
    {
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v52 >= *(v90 + 16))
      {
        goto LABEL_61;
      }

      v54 = v21[v52 + 4];
    }

    v55 = v54;
    v12 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_60;
    }

    v5 = [v54 reminder];

    ++v52;
    if (v5)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v53 = v92;
      v52 = v12;
    }
  }

  v3 = sub_100200890(v53);

  v92 = _swiftEmptyArrayStorage;
  v93 = v45;
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
  v57 = BidirectionalCollection<>.slices(by:)();

  v58 = v80;
  v59 = v83;
  sub_10020BE20(v57, v58, &v92, sub_1002048F0);
  v83 = v59;

  v5 = v92;
  v85 = v58;
  if (v92 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      goto LABEL_69;
    }

LABEL_43:
    v19 = 0;
    v86 = v5 & 0xFFFFFFFFFFFFFF8;
    v87 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v87)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v86 + 16))
        {
          goto LABEL_63;
        }

        v61 = *(v5 + 8 * v19 + 32);
      }

      v62 = v61;
      v63 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        goto LABEL_62;
      }

      v64 = [v61 sharedToMeReminderCKIdentifier];
      if (v64)
      {
        v21 = v64;
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        if (!*(v3 + 16))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v67 = 0xE300000000000000;
        v65 = 7104878;
        if (!*(v3 + 16))
        {
LABEL_44:

          goto LABEL_45;
        }
      }

      v68 = sub_100005F4C(v65, v67);
      v21 = v69;

      if (v21)
      {
        v60 = *(*(v3 + 56) + 8 * v68);
        goto LABEL_46;
      }

LABEL_45:
      v60 = 0;
LABEL_46:
      [v62 setReminder:v60];

      ++v19;
      if (v63 == v12)
      {
        goto LABEL_69;
      }
    }
  }

  v12 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_43;
  }

LABEL_69:

  v70 = 0;
  v71 = v88;
  v72 = v89;
  v73 = v85;
  while (1)
  {
    if (v91)
    {
      v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v70 >= *(v90 + 16))
      {
        goto LABEL_78;
      }

      v74 = v72[v70 + 4];
    }

    v75 = v74;
    v76 = (v70 + 1);
    if (__OFADD__(v70, 1))
    {
      break;
    }

    [v73 deleteObject:v74];

    ++v70;
    if (v76 == v71)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
}

void sub_100204018(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v42 = a1[2];
  v45 = _swiftEmptyArrayStorage;
  sub_10001035C((a2 & 1) != 0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  KeyPath = swift_getKeyPath();
  v41 = v5 >> 1;
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];

  if (__OFSUB__(v41, v42))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v10 != v41 - v42)
  {
LABEL_30:
    swift_unknownObjectRelease();
LABEL_4:
    sub_100277FD4(v3, v4, v42, v5);
    v8 = v7;
    goto LABEL_11;
  }

  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = _swiftEmptyArrayStorage;
  }

LABEL_11:
  v11 = sub_10004FAEC(v8);

  sub_1003E9F6C(KeyPath, v11);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v45[2] >= v45[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v13 = sub_10000C2B0(v12);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100799D70;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1007953F0;
  *(v15 + 32) = swift_getKeyPath();
  v39 = sub_100405C20(inited, v15, 0, v13);

  swift_setDeallocating();
  v16 = *(v15 + 16);
  swift_arrayDestroy();
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1007953F0;
  *(v17 + 32) = swift_getKeyPath();
  v44 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v18 = _swiftEmptyArrayStorage;
  if ((v17 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v19 = *(v17 + 32);
  }

  v40 = v13;
  v20 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v21)
  {
LABEL_32:
    _StringGuts.grow(_:)(46);
    v38._object = 0x80000001007EC120;
    v38._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_10093D020, qword_1007A3230);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22 = v20;
  v23 = v21;

  v25 = _swiftEmptyArrayStorage[2];
  v24 = _swiftEmptyArrayStorage[3];
  if (v25 >= v24 >> 1)
  {
    sub_100026EF4((v24 > 1), v25 + 1, 1);
    v18 = v44;
  }

  v18[2] = v25 + 1;
  v26 = &v18[2 * v25];
  v26[4] = v22;
  v26[5] = v23;
  swift_setDeallocating();
  v27 = *(v17 + 16);
  swift_arrayDestroy();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v39 setRelationshipKeyPathsForPrefetching:isa];

  if (__OFSUB__(v41, v42))
  {
    __break(1u);
  }

  else
  {
    [v39 setFetchLimit:v41 - v42];
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v29 = NSManagedObjectContext.fetch<A>(_:)();
    if (!v2)
    {
      sub_1002722DC(v29);

      return;
    }

    v25 = v40;
    if (qword_100935BF8 == -1)
    {
      goto LABEL_23;
    }
  }

  swift_once();
LABEL_23:
  v30 = type metadata accessor for Logger();
  sub_100006654(v30, qword_10093CC70);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v34;
    *v33 = 136315138;
    swift_getErrorValue();
    v35 = Error.rem_errorDescription.getter();
    v37 = sub_10000668C(v35, v36, &v43);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "RDHashtagLabelUpdater: failed to fetch hashtag from database {error: %s}", v33, 0xCu);
    sub_10000607C(v34);
  }

  else
  {
  }
}

void sub_1002046DC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_100204744(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setName:?];
}

void sub_1002047B4(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreationDate:isa];
}

void sub_1002048F0(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  sub_1000F5104(&qword_10093D0F8, &unk_1007A30A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  *(inited + 32) = sub_10001035C(0);
  KeyPath = swift_getKeyPath();
  v9 = sub_1003F7200(KeyPath);

  *(inited + 40) = v9;
  v10 = swift_getKeyPath();
  if ((v6 & 1) == 0)
  {
    goto LABEL_2;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = _swiftEmptyArrayStorage;
  }

  v14 = v13[2];

  if (__OFSUB__(v6 >> 1, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v14 != (v6 >> 1) - v5)
  {
LABEL_17:
    swift_unknownObjectRelease();
    v2 = v1;
LABEL_2:
    sub_1002781A0(v3, v4, v5, v6);
    v12 = v11;
    goto LABEL_9;
  }

  v12 = swift_dynamicCastClass();
  v2 = v1;
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = _swiftEmptyArrayStorage;
  }

LABEL_9:
  v15 = sub_100270804(v12);

  v16 = sub_1003E9FD8(v10, v15);

  *(inited + 48) = v16;
  v17 = sub_10000C2B0(inited);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1007953F0;
  *(v18 + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v19 = [objc_allocWithZone(NSFetchRequest) init];
  v20 = [swift_getObjCClassFromMetadata() entity];
  [v19 setEntity:v20];

  [v19 setAffectedStores:0];
  [v19 setPredicate:v17];
  v33 = &_swiftEmptySetSingleton;

  sub_100390E88(v21);

  sub_1003FE4FC(&_swiftEmptySetSingleton);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v23 = *(v18 + 16);
  swift_arrayDestroy();
  v24 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_10093CC70);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = Error.rem_errorDescription.getter();
      v32 = sub_10000668C(v30, v31, &v33);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "RDHashtagLabelUpdater: failed to fetch unassociated hashtags with sharedToMEReminderCkIdentifier from database {error: %s}", v28, 0xCu);
      sub_10000607C(v29);
    }

    else
    {
    }
  }

  else
  {
    sub_1002722DC(v24);
  }
}

void sub_100204DB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  KeyPath = swift_getKeyPath();
  if ((v4 & 1) == 0)
  {
    v6 = (v4 >> 1) - v3;
    v7 = __OFSUB__(v4 >> 1, v3);
    goto LABEL_5;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];

  v6 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v10 != v6)
  {
LABEL_23:
    swift_unknownObjectRelease();
    v7 = 0;
LABEL_5:
    sub_100277FD4(v1, v2, v3, v4);
    goto LABEL_13;
  }

  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v7 = 0;
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
  }

LABEL_13:
  v11 = sub_10004FAEC(v8);

  v12 = sub_1003E9FB4(KeyPath, v11);

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v14 = sub_100406014(0, inited, 0, v12);
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  if (v7)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_16;
  }

  [v14 setFetchLimit:v6];
  sub_1000060C8(0, &qword_100944260, off_1008D41D8);
  v16 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v25)
  {
    sub_1002722F4(v16);

    return;
  }

  if (qword_100935BF8 != -1)
  {
    goto LABEL_21;
  }

LABEL_16:
  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10093CC70);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136315138;
    swift_getErrorValue();
    v22 = Error.rem_errorDescription.getter();
    v24 = sub_10000668C(v22, v23, &v26);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "RDHashtagLabelUpdater: failed to fetch sharedToMeReminderPlaceholder from database {error: %s}", v20, 0xCu);
    sub_10000607C(v21);
  }

  else
  {
  }
}

uint64_t sub_100205130@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1002051E8(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

id *sub_100205324()
{
  v1 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_timeGroupingStrategy;
  v2 = sub_1000F5104(&unk_10093CFD0, qword_10079AA70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000536E0(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate);
  v3 = *(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_cloudAccountsDidChangeCancellable);

  v4 = *(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_hashtagInsertEventCancellables);

  v5 = *(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_highPrioritySubscriptionTransactionRegistrar);

  v6 = *(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_lowPrioritySubscriptionTransactionRegistrar);

  v7 = *(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumed + 8);

  v8 = *(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumedOnLaunch + 8);

  v9 = *(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_analyticsCrashDetected + 8);

  v10 = *(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_changeTrackingClientName + 8);

  return v0;
}

uint64_t sub_100205458()
{
  sub_100205324();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1002054D8()
{
  sub_1002055C4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1002055C4()
{
  if (!qword_10093CD30)
  {
    sub_1000060C8(255, &qword_10093E6E0, OS_dispatch_queue_ptr);
    sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v0 = type metadata accessor for Publishers.TimeGroupingStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_10093CD30);
    }
  }
}

void sub_100205690(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v9 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v5 = v11 & *(a1 + 56);

    v3 = 0;
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
  Set.Iterator.init(_cocoa:)();
  v1 = v22;
  v2 = v23;
  v4 = v24;
  v3 = v25;
  v5 = v26;
  if ((v22 & 0x8000000000000000) == 0)
  {
    if (v26)
    {
LABEL_4:
      v6 = (v5 - 1) & v5;
      v7 = __clz(__rbit64(v5)) | (v3 << 6);
      v8 = v3;
LABEL_14:
      v14 = *(*(v1 + 48) + 8 * v7);
      v21 = 1;
      if (v14)
      {
        goto LABEL_15;
      }

LABEL_32:
      sub_10001B860();
      return;
    }

LABEL_9:
    v12 = v3;
    while (1)
    {
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_34;
      }

      if (v8 >= ((v4 + 64) >> 6))
      {
        goto LABEL_32;
      }

      v13 = *(v2 + 8 * v8);
      ++v12;
      if (v13)
      {
        v6 = (v13 - 1) & v13;
        v7 = __clz(__rbit64(v13)) | (v8 << 6);
        goto LABEL_14;
      }
    }
  }

  if (!__CocoaSet.Iterator.next()())
  {
    goto LABEL_32;
  }

  swift_dynamicCast();
  v21 = 0;
  v14 = v27;
  v8 = v25;
  v6 = v26;
  if (!v27)
  {
    goto LABEL_32;
  }

LABEL_15:
  v15 = (v4 + 64) >> 6;
  if (!v21)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v16 = v8;
    v17 = v6;
    v18 = v8;
    if (!v6)
    {
      break;
    }

LABEL_20:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_32;
    }

    while (1)
    {
      if (sub_10074E978(v14))
      {

        v14 = v20;
      }

      else
      {
      }

      v8 = v18;
      v6 = v19;
      if (v21)
      {
        break;
      }

LABEL_22:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        swift_dynamicCast();
        v20 = v27;
        v18 = v8;
        v19 = v6;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_32;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_32;
    }

    v17 = *(v2 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1002059C4(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v68 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v57 - v7;
  v9 = type metadata accessor for Date();
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v69 = &v57 - v15;
  __chkstk_darwin(v14);
  v60 = &v57 - v16;
  v58 = v1;
  v64 = v13;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v24 = -1 << *(a1 + 32);
    v17 = a1 + 56;
    v19 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v20 = v26 & *(a1 + 56);

    v18 = 0;
    if (v20)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
  Set.Iterator.init(_cocoa:)();
  a1 = v73;
  v17 = v74;
  v19 = v75;
  v18 = v76;
  v20 = v77;
  if ((v73 & 0x8000000000000000) == 0)
  {
    if (v77)
    {
LABEL_4:
      v21 = (v20 - 1) & v20;
      v22 = __clz(__rbit64(v20)) | (v18 << 6);
      v23 = v18;
LABEL_14:
      v29 = *(*(a1 + 48) + 8 * v22);
      v67 = 1;
      if (v29)
      {
        goto LABEL_15;
      }

LABEL_40:
      sub_10001B860();
      return;
    }

LABEL_9:
    v27 = v18;
    while (1)
    {
      v23 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_42;
      }

      if (v23 >= ((v19 + 64) >> 6))
      {
        goto LABEL_40;
      }

      v28 = *(v17 + 8 * v23);
      ++v27;
      if (v28)
      {
        v21 = (v28 - 1) & v28;
        v22 = __clz(__rbit64(v28)) | (v23 << 6);
        goto LABEL_14;
      }
    }
  }

  v71 = v76;
  v57 = v75;
  v56 = __CocoaSet.Iterator.next()();
  if (!v56)
  {
    goto LABEL_40;
  }

  v72 = v56;
  swift_dynamicCast();
  v67 = 0;
  v29 = v78;
  v23 = v71;
  v21 = v20;
  v19 = v57;
  if (!v78)
  {
    goto LABEL_40;
  }

LABEL_15:
  v65 = a1;
  v66 = v29;
  v57 = v19;
  v30 = (v19 + 64) >> 6;
  v31 = (v70 + 32);
  v71 = (v70 + 56);
  v59 = (v70 + 48);
  v61 = (v70 + 8);
  v62 = v30;
  v32 = v60;
  v63 = v17;
  if (!v67)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v33 = v23;
    v34 = v21;
    v35 = v23;
    if (!v21)
    {
      break;
    }

LABEL_20:
    v70 = (v34 - 1) & v34;
    v36 = *(*(v65 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
    v37 = v66;
    if (!v36)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v39 = [v37 creationDate];
      if (v39)
      {
        v40 = v69;
        v41 = v39;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = *v31;
        (*v31)(v8, v40, v9);
        v43 = *v71;
        (*v71)(v8, 0, 1, v9);
        v42(v32, v8, v9);
      }

      else
      {
        v43 = *v71;
        (*v71)(v8, 1, 1, v9);
        static Date.distantPast.getter();
        if ((*v59)(v8, 1, v9) != 1)
        {
          sub_1000050A4(v8, &unk_100938850, qword_100795AE0);
        }
      }

      v44 = v8;
      v45 = [v36 creationDate];
      if (v45)
      {
        v46 = v69;
        v47 = v45;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = *v31;
        v49 = v68;
        v50 = v46;
        v32 = v60;
        (*v31)(v68, v50, v9);
        v43(v49, 0, 1, v9);
        v51 = v64;
        v48(v64, v49, v9);
      }

      else
      {
        v52 = v68;
        v43(v68, 1, 1, v9);
        v51 = v64;
        static Date.distantPast.getter();
        if ((*v59)(v52, 1, v9) != 1)
        {
          sub_1000050A4(v68, &unk_100938850, qword_100795AE0);
        }
      }

      v53 = static Date.< infix(_:_:)();
      v54 = v51;
      v55 = *v61;
      (*v61)(v54, v9);
      v55(v32, v9);
      if (v53)
      {

        v66 = v36;
      }

      else
      {
      }

      v23 = v35;
      v21 = v70;
      v8 = v44;
      v30 = v62;
      v17 = v63;
      if (v67)
      {
        break;
      }

LABEL_22:
      v38 = __CocoaSet.Iterator.next()();
      if (v38)
      {
        v72 = v38;
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        swift_dynamicCast();
        v36 = v78;
        v35 = v23;
        v70 = v21;
        v37 = v66;
        if (v78)
        {
          continue;
        }
      }

      goto LABEL_40;
    }
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v30)
    {
      goto LABEL_40;
    }

    v34 = *(v17 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_1002060C8(void **a1, void **a2)
{
  v4 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  v59 = *(v4 - 8);
  v5 = v59[8];
  __chkstk_darwin(v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    swift_unknownObjectRetain();
    v16 = [v15 objectIdentifier];
    if (v16)
    {
      v17 = v16;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = [v15 name];
      v58 = v9;
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = a1;
        v22 = v21;

        (*(v9 + 16))(v7, v12, v8);
        v23 = &v7[*(v4 + 20)];
        *v23 = v20;
        v23[1] = v22;
        v24 = *v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_10036683C(0, v24[2] + 1, 1, v24);
        }

        v26 = v24[2];
        v25 = v24[3];
        v27 = v58;
        if (v26 >= v25 >> 1)
        {
          v24 = sub_10036683C(v25 > 1, v26 + 1, 1, v24);
        }

        swift_unknownObjectRelease();
        (*(v27 + 8))(v12, v8);
        v24[2] = v26 + 1;
        sub_1002113F4(v7, v24 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + v59[9] * v26);
        *v57 = v24;
      }

      else
      {
        if (qword_100935BF8 != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        sub_100006654(v48, qword_10093CC70);
        swift_unknownObjectRetain();
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.fault.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v60 = v59;
          *v51 = 136315138;
          v52 = [v13 description];
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          v56 = sub_10000668C(v53, v55, &v60);

          *(v51 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v49, v50, "RDHashtagLabelUpdater: Tracked deletion tombstone does not contain the hashtag name, huh? {deleted: %s}", v51, 0xCu);
          sub_10000607C(v59);
        }

        swift_unknownObjectRelease();
        (*(v58 + 8))(v12, v8);
      }
    }

    else
    {
      if (qword_100935BF8 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100006654(v38, qword_10093CC70);
      swift_unknownObjectRetain();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.fault.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v60 = v42;
        *v41 = 136315138;
        v43 = [v13 description];
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = sub_10000668C(v44, v46, &v60);

        *(v41 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v39, v40, "RDHashtagLabelUpdater: Tracked deletion tombstone does not contain an objectIdentifier, huh? {deleted: %s}", v41, 0xCu);
        sub_10000607C(v42);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_10093CC70);
    swift_unknownObjectRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v60 = v32;
      *v31 = 136315138;
      v33 = [v13 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = sub_10000668C(v34, v36, &v60);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "RDHashtagLabelUpdater: Tracked deletion is not an REMDAHashtagTombstone (or nil) huh? {deleted: %s}", v31, 0xCu);
      sub_10000607C(v32);
    }
  }
}

uint64_t sub_100206864()
{
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100791340;
  v3 = *(v0 + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountDescription);
  v2 = *(v0 + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountDescription + 8);
  *(v1 + 56) = &type metadata for String;
  v4 = sub_100006600();
  v5 = 7104878;
  if (v2)
  {
    v5 = v3;
  }

  v6 = 0xE300000000000000;
  if (v2)
  {
    v6 = v2;
  }

  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountID);
  v8 = *(v0 + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountID + 8);
  *(v1 + 96) = &type metadata for String;
  *(v1 + 104) = v4;
  *(v1 + 64) = v4;
  *(v1 + 72) = v7;
  *(v1 + 80) = v8;

  return String.init(format:_:)();
}

id sub_100206A94(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = type metadata accessor for RDDaemonController();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v7[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  v10 = *(a3 + 30);
  v11 = a3[1];
  *v9 = *a3;
  *(v9 + 1) = v11;
  *(v9 + 30) = v10;
  *&v7[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  swift_unknownObjectRetain();
  sub_100009DAC(a3, v14);
  v13.receiver = v7;
  v13.super_class = v6;
  return objc_msgSendSuper2(&v13, "init");
}

id sub_100206B54@<X0>(void *a1@<X0>, char a2@<W2>, NSObject *a3@<X8>)
{
  v6 = sub_10020E944();
  v7 = sub_10020EE9C(v6);
  if ((a2 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_25:

    a3->isa = v7;
    return result;
  }

LABEL_24:
  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_4:
  v26 = a3;
  v27 = v7;
  v9 = 0;
  v7 = v6 & 0xC000000000000001;
  v10 = v6 & 0xFFFFFFFFFFFFFF8;
  v31 = v6;
  v32 = a1;
  v29 = v6 & 0xC000000000000001;
  v30 = v8;
  v28 = v6 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v7)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v10 + 16))
      {
        goto LABEL_23;
      }

      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v33 = v9 + 1;
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10093CC70);
    v14 = v12;
    a3 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(a3, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136315138;
      v18 = [v14 name];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
        v20 = 7104878;
      }

      v23 = sub_10000668C(v20, v22, &v34);

      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, a3, v15, "RDHashtagLabelRepairer: removes hashtag label without hashtag: %s", v16, 0xCu);
      sub_10000607C(v17);

      v6 = v31;
      a1 = v32;
      v7 = v29;
      v8 = v30;
      v10 = v28;
    }

    else
    {
    }

    [a1 deleteObject:v14];

    ++v9;
  }

  while (v33 != v8);

  v34 = 0;
  if ([a1 save:&v34])
  {
    result = v34;
    v26->isa = v27;
  }

  else
  {
    v25 = v34;

    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

id sub_100206E8C@<X0>(void *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v5 = sub_10020EFEC();
  v6 = sub_10020EE9C(v5);
  if ((a2 & 1) == 0)
  {
    goto LABEL_80;
  }

  if (v5 >> 62)
  {
LABEL_79:
    v84 = _CocoaArrayWrapper.endIndex.getter();
    if (v84)
    {
      goto LABEL_4;
    }

LABEL_80:

LABEL_81:
    *a3 = v6;
    return result;
  }

  v84 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v84)
  {
    goto LABEL_80;
  }

LABEL_4:
  v8 = 0;
  v83 = v5 & 0xC000000000000001;
  v77 = v5 + 32;
  v78 = v5 & 0xFFFFFFFFFFFFFF8;
  v9 = &selRef_hack_willSaveHandled;
  *&v7 = 136315394;
  v76 = v7;
  v80 = v6;
  v81 = a3;
  v79 = v5;
  do
  {
    if (v83)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v78 + 16))
      {
        goto LABEL_78;
      }

      v10 = *(v77 + 8 * v8);
    }

    v11 = v10;
    if (__OFADD__(v8++, 1))
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v13 = [v10 hashtags];
    if (!v13)
    {

      continue;
    }

    v14 = v13;
    v86 = v11;
    v87 = v8;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    a3 = sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = v15;
    v91 = _swiftEmptySetSingleton;
    if ((v15 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v16 = v92[9];
      v17 = v92[10];
      v18 = v92[11];
      v5 = v92[12];
      v19 = v92[13];
    }

    else
    {
      v5 = 0;
      v20 = -1 << *(v15 + 32);
      v17 = (v15 + 56);
      v18 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v19 = (v22 & *(v15 + 56));
    }

    v6 = (v18 + 64) >> 6;
    v88 = v17;
    while (1)
    {
      if ((v16 & 0x8000000000000000) == 0)
      {
        v24 = v5;
        v25 = v19;
        v26 = v5;
        if (!v19)
        {
          while (1)
          {
            v26 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v26 >= v6)
            {
              goto LABEL_62;
            }

            v25 = v17[v26];
            ++v24;
            if (v25)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
          goto LABEL_75;
        }

LABEL_27:
        v89 = (v25 - 1) & v25;
        a3 = *(*(v16 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
        if (!a3)
        {
          break;
        }

        goto LABEL_31;
      }

      v27 = __CocoaSet.Iterator.next()();
      if (!v27)
      {
        break;
      }

      v90 = v27;
      swift_dynamicCast();
      a3 = v92[0];
      v26 = v5;
      v89 = v19;
      if (!v92[0])
      {
        break;
      }

LABEL_31:
      if ([a3 v9[184]])
      {
        swift_beginAccess();
        v5 = v91;
        if ((v91 & 0xC000000000000001) != 0)
        {
          if (v91 < 0)
          {
            v28 = v91;
          }

          else
          {
            v28 = v91 & 0xFFFFFFFFFFFFFF8;
          }

          v29 = a3;

          a3 = __CocoaSet.member(for:)();

          if (a3)
          {

            swift_dynamicCast();
            a3 = v16;
            v30 = v90;
            swift_endAccess();

            v16 = a3;
            goto LABEL_21;
          }

          v43 = __CocoaSet.count.getter();
          if (__OFADD__(v43, 1))
          {
            goto LABEL_77;
          }

          v44 = sub_10037FC0C(v28, v43 + 1);
          v90 = v44;
          v45 = v44[2];
          if (v44[3] <= v45)
          {
            sub_100380E64(v45 + 1);
            v44 = v90;
          }

          v46 = v44[5];
          a3 = v29;
          v47 = NSObject._rawHashValue(seed:)(v46);
          v48 = (v44 + 7);
          v49 = -1 << *(v44 + 32);
          v50 = v47 & ~v49;
          v51 = v50 >> 6;
          if (((-1 << v50) & ~v44[(v50 >> 6) + 7]) == 0)
          {
            v53 = 0;
            v54 = (63 - v49) >> 6;
            v17 = v88;
            while (++v51 != v54 || (v53 & 1) == 0)
            {
              v55 = v51 == v54;
              if (v51 == v54)
              {
                v51 = 0;
              }

              v53 |= v55;
              v56 = *&v48[8 * v51];
              if (v56 != -1)
              {
                v52 = __clz(__rbit64(~v56)) + (v51 << 6);
                goto LABEL_61;
              }
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v52 = __clz(__rbit64((-1 << v50) & ~v44[(v50 >> 6) + 7])) | v50 & 0x7FFFFFFFFFFFFFC0;
          v17 = v88;
LABEL_61:
          *&v48[(v52 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v52;
          *(v44[6] + 8 * v52) = a3;
          ++v44[2];

          v91 = v44;
          swift_endAccess();

          v5 = v26;
          v19 = v89;
        }

        else
        {
          v85 = v16;
          v34 = *(v91 + 40);
          v35 = a3;
          v36 = NSObject._rawHashValue(seed:)(v34);
          v37 = -1 << *(v5 + 32);
          v38 = v36 & ~v37;
          if ((*(v5 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
          {
            v39 = ~v37;
            while (1)
            {
              v40 = *(*(v5 + 48) + 8 * v38);
              a3 = static NSObject.== infix(_:_:)();

              if (a3)
              {
                break;
              }

              v38 = (v38 + 1) & v39;
              if (((*(v5 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            swift_endAccess();
          }

          else
          {
LABEL_45:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v90 = v91;
            v42 = v35;
            a3 = &v90;
            sub_100385C1C(v42, v38, isUniquelyReferenced_nonNull_native);
            v91 = v90;
            swift_endAccess();
          }

          v5 = v26;
          v19 = v89;
          v9 = &selRef_hack_willSaveHandled;
          v16 = v85;
          v17 = v88;
        }
      }

      else
      {
        v31 = [a3 reminder];
        if (!v31 || (v32 = v31, v33 = [v31 markedForDeletion], v32, v33))
        {
          [a3 markForDeletion];
          swift_beginAccess();
          v23 = a3;
          a3 = &v91;
          sub_10037BE14(&v90, v23);
          swift_endAccess();
        }

        else
        {
        }

LABEL_21:
        v5 = v26;
        v17 = v88;
        v19 = v89;
      }
    }

LABEL_62:
    sub_10001B860();
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100006654(v57, qword_10093CC70);
    v58 = v86;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    v5 = v79;
    v8 = v87;
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v61 = v76;
      v62 = [v58 name];
      if (v62)
      {
        v63 = v62;
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;
      }

      else
      {
        v66 = 0xE300000000000000;
        v64 = 7104878;
      }

      v67 = sub_10000668C(v64, v66, v92);

      *(v61 + 4) = v67;
      *(v61 + 12) = 2080;
      swift_beginAccess();

      sub_1001F6FAC(v68);

      v69 = Array.description.getter();
      v71 = v70;

      v72 = sub_10000668C(v69, v71, v92);

      *(v61 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v59, v60, "RDHashtagLabelRepairer: removes hashtags with isConcealed for hashtag label [%s]: %s", v61, 0x16u);
      swift_arrayDestroy();

      v8 = v87;
      v9 = &selRef_hack_willSaveHandled;
    }

    else
    {

      v9 = &selRef_hack_willSaveHandled;
    }

    swift_beginAccess();

    isa = Set._bridgeToObjectiveC()().super.isa;

    [v58 removeHashtags:isa];

    sub_10020F4D8(a1, v58);

    v6 = v80;
    a3 = v81;
  }

  while (v8 != v84);

  v92[0] = 0;
  if ([a1 save:v92])
  {
    result = v92[0];
    goto LABEL_81;
  }

  v75 = v92[0];

  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void *sub_100207844@<X0>(void *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  v109 = a3;
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v107 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = v13[8];
  __chkstk_darwin(v12);
  v112 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v119 = &v107 - v17;
  __chkstk_darwin(v18);
  v125 = &v107 - v19;
  __chkstk_darwin(v20);
  v129 = &v107 - v21;
  v131 = type metadata accessor for UUID();
  v22 = *(v131 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v131);
  v130 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10020F7FC();
  v27 = (v25 >> 62);
  v132 = v25;
  if (v25 >> 62)
  {
    v105 = (v25 >> 62);
    v106 = _CocoaArrayWrapper.endIndex.getter();
    v27 = v105;
    v28 = v106;
  }

  else
  {
    v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = _swiftEmptyArrayStorage;
  v123 = v8;
  v120 = v12;
  v121 = a1;
  v114 = v11;
  if (!v28)
  {
    v31 = v132;
    if (a2)
    {
      goto LABEL_16;
    }

LABEL_51:
    v101 = v29;

    *v109 = v101;
    return result;
  }

  v133 = v27;
  v134 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
    __break(1u);
LABEL_60:
    __break(1u);
  }

  LODWORD(v127) = a2;
  v128 = v13;
  v30 = 0;
  v29 = v134;
  v31 = v132;
  v32 = v132 & 0xC000000000000001;
  v126 = v22;
  v33 = (v22 + 8);
  do
  {
    v34 = v29;
    if (v32)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v35 = *(v31 + 8 * v30 + 32);
    }

    v36 = v35;
    v37 = [v35 remObjectID];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 uuid];

      v40 = v130;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = UUID.uuidString.getter();
      v43 = v42;
      v44 = v40;
      v31 = v132;
      (*v33)(v44, v131);
    }

    else
    {
      v43 = 0xE300000000000000;
      v41 = 7104878;
    }

    v29 = v34;
    v134 = v34;
    v45 = v34[2];
    v46 = v29[3];
    if (v45 >= v46 >> 1)
    {
      sub_100026EF4((v46 > 1), v45 + 1, 1);
      v31 = v132;
      v29 = v134;
    }

    ++v30;
    v29[2] = v45 + 1;
    v47 = &v29[2 * v45];
    v47[4] = v41;
    v47[5] = v43;
  }

  while (v28 != v30);
  a1 = v121;
  v11 = v114;
  v13 = v128;
  v22 = v126;
  v27 = v133;
  if ((v127 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_16:
  v108 = v29;
  if (!v27)
  {
    v48 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_18;
    }

LABEL_55:

    goto LABEL_56;
  }

  v48 = _CocoaArrayWrapper.endIndex.getter();
  if (!v48)
  {
    goto LABEL_55;
  }

LABEL_18:
  if (v48 < 1)
  {
    goto LABEL_60;
  }

  v49 = 0;
  v126 = v31 & 0xC000000000000001;
  v111 = (v22 + 8);
  v122 = (v13 + 4);
  v128 = (v13 + 7);
  v115 = (v13 + 6);
  v124 = (v13 + 1);
  *&v26 = 136315394;
  v113 = v26;
  v117 = xmmword_1007953F0;
  v118 = v48;
  do
  {
    if (v126)
    {
      v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v53 = *(v31 + 8 * v49 + 32);
    }

    v54 = v53;
    v55 = sub_10020FD48(a1, v53);
    if (v55)
    {
      v56 = v55;
      if (qword_100935BF8 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_100006654(v57, qword_10093CC70);
      v127 = v54;
      v58 = v54;
      v59 = v56;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      v133 = v59;

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v134 = v116;
        *v62 = v113;
        v63 = [v58 remObjectID];
        if (v63)
        {
          v64 = v63;
          v65 = [v63 uuid];

          v66 = v130;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v67 = UUID.uuidString.getter();
          v69 = v68;
          (*v111)(v66, v131);
        }

        else
        {
          v69 = 0xE300000000000000;
          v67 = 7104878;
        }

        v70 = sub_10000668C(v67, v69, &v134);

        *(v62 + 4) = v70;
        *(v62 + 12) = 2080;
        v71 = [v133 name];
        if (v71)
        {
          v72 = v71;
          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;
        }

        else
        {
          v75 = 0xE300000000000000;
          v73 = 7104878;
        }

        v76 = sub_10000668C(v73, v75, &v134);

        *(v62 + 14) = v76;
        _os_log_impl(&_mh_execute_header, v60, v61, "RDHashtagLabelRepairer: updates hashtag[%s] with label[%s]", v62, 0x16u);
        swift_arrayDestroy();

        v11 = v114;
      }

      else
      {
      }

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      inited = swift_initStackObject();
      *(inited + 16) = v117;
      *(inited + 32) = v58;
      v78 = v58;
      sub_100392DCC(inited);
      swift_setDeallocating();
      v79 = *(inited + 16);
      swift_arrayDestroy();
      sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
      sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
      isa = Set._bridgeToObjectiveC()().super.isa;

      v81 = v133;
      [v133 addHashtags:isa];

      v82 = [v81 recencyDate];
      if (v82)
      {
        v83 = v125;
        v84 = v82;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v85 = *v122;
        v86 = v120;
        (*v122)(v11, v83, v120);
        v87 = *v128;
        (*v128)(v11, 0, 1, v86);
        v85(v129, v11, v86);
      }

      else
      {
        v87 = *v128;
        v86 = v120;
        (*v128)(v11, 1, 1, v120);
        static Date.distantPast.getter();
        if ((*v115)(v11, 1, v86) != 1)
        {
          sub_1000050A4(v11, &unk_100938850, qword_100795AE0);
        }
      }

      v88 = [v78 creationDate];
      if (v88)
      {
        v89 = v125;
        v90 = v88;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v91 = v123;
        v92 = *v122;
        (*v122)(v123, v89, v86);
        v87(v91, 0, 1, v86);
        v93 = v119;
        v92(v119, v91, v86);
      }

      else
      {
        v94 = v123;
        v87(v123, 1, 1, v86);
        v93 = v119;
        static Date.distantPast.getter();
        if ((*v115)(v94, 1, v86) != 1)
        {
          sub_1000050A4(v123, &unk_100938850, qword_100795AE0);
        }
      }

      v95 = v129;
      v96 = static Date.< infix(_:_:)();
      v97 = v93;
      v98 = v96;
      v99 = *v124;
      (*v124)(v97, v86);
      v99(v95, v86);
      v54 = v127;
      if (v98)
      {
        v100 = [v78 creationDate];
        if (v100)
        {
          v50 = v112;
          v51 = v100;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v52.super.isa = Date._bridgeToObjectiveC()().super.isa;
          v99(v50, v86);
        }

        else
        {
          v52.super.isa = 0;
        }

        [v133 setRecencyDate:v52.super.isa];
      }

      v48 = v118;
      a1 = v121;
    }

    ++v49;

    v31 = v132;
  }

  while (v48 != v49);

  v134 = 0;
  if ([a1 save:&v134])
  {
    result = v134;
LABEL_56:
    *v109 = v108;
    return result;
  }

  v103 = v134;

  v104 = _convertNSErrorToError(_:)();

  v110 = v104;
  return swift_willThrow();
}

id sub_100208430@<X0>(void *a1@<X0>, int a2@<W2>, char **a3@<X8>)
{
  v198 = a2;
  v186 = a3;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v180 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v179 = &v160 - v8;
  v184 = type metadata accessor for Date();
  v9 = *(v184 - 8);
  isa = v9[8].isa;
  __chkstk_darwin(v184);
  v176 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v160 - v13);
  __chkstk_darwin(v15);
  v181 = &v160 - v16;
  __chkstk_darwin(v17);
  v183 = &v160 - v18;
  v185 = type metadata accessor for UUID();
  v19 = *(v185 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v185);
  v182 = &v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v177 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v178 = &v160 - v26;
  v27 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v160 - v29;
  v189 = a1;
  v31 = sub_1002104FC();
  v33 = v31;
  if (v31 >> 62)
  {
    goto LABEL_90;
  }

  v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v34)
  {
LABEL_3:
    v170 = v14;
    v35 = 0;
    v36 = v33 & 0xC000000000000001;
    v192 = v33 & 0xFFFFFFFFFFFFFF8;
    v191 = v33 + 32;
    v168 = (v19 + 56);
    v167 = (v19 + 48);
    v165 = (v19 + 16);
    v173 = (v19 + 8);
    v171 = v9 + 4;
    v175 = v9 + 7;
    v169 = v9 + 6;
    v188 = _swiftEmptyArrayStorage;
    v172 = v9 + 1;
    *&v32 = 136446210;
    v196 = v32;
    *&v32 = 136315650;
    v166 = v32;
    v174 = xmmword_1007953F0;
    v195 = v33;
    v197 = v30;
    v194 = v34;
    v193 = v33 & 0xC000000000000001;
    do
    {
      if (v36)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *(v192 + 16))
        {
          goto LABEL_89;
        }

        v37 = *(v191 + 8 * v35);
      }

      v19 = v37;
      if (__OFADD__(v35++, 1))
      {
        goto LABEL_88;
      }

      v39 = [v37 canonicalName];
      if (v39)
      {
        v40 = v39;
        v207 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v208 = v41;

        v42 = [v19 hashtags];
        if (v42)
        {
          v9 = v42;
          v201 = v19;
          v43 = sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
          v44 = sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
          v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v202 = v43;
          v190 = v44;
          if ((v19 & 0xC000000000000001) != 0)
          {
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v45 = v210[2];
            v206 = v210[3];
            v46 = v210[4];
            v47 = v210[5];
            v14 = v210[6];
          }

          else
          {
            v47 = 0;
            v48 = -1 << *(v19 + 32);
            v49 = *(v19 + 56);
            v206 = (v19 + 56);
            v46 = ~v48;
            v50 = -v48;
            if (v50 < 64)
            {
              v51 = ~(-1 << v50);
            }

            else
            {
              v51 = -1;
            }

            v14 = (v51 & v49);
            v45 = v19;
          }

          v200 = v35;
          v199 = v46;
          v52 = (v46 + 64) >> 6;
          v204 = v45;
          v205 = v52;
          while (2)
          {
            v33 = v47;
            v53 = v14;
            v54 = v206;
LABEL_24:
            if (v45 < 0)
            {
              v9 = (v45 & 0x7FFFFFFFFFFFFFFFLL);
              v57 = __CocoaSet.Iterator.next()();
              if (!v57 || (v209 = v57, swift_dynamicCast(), v19 = v210[0], v47 = v33, v14 = v53, !v210[0]))
              {
LABEL_4:
                sub_10001B860();
                v33 = v195;
                v34 = v194;
                v35 = v200;
                v36 = v193;
                v19 = v201;
                goto LABEL_5;
              }
            }

            else
            {
              v55 = v33;
              v56 = v53;
              v47 = v33;
              if (!v53)
              {
                while (1)
                {
                  v47 = v55 + 1;
                  if (__OFADD__(v55, 1))
                  {
                    break;
                  }

                  if (v47 >= v52)
                  {
                    goto LABEL_4;
                  }

                  v56 = v54[v47];
                  ++v55;
                  if (v56)
                  {
                    goto LABEL_29;
                  }
                }

                __break(1u);
LABEL_88:
                __break(1u);
LABEL_89:
                __break(1u);
LABEL_90:
                v34 = _CocoaArrayWrapper.endIndex.getter();
                if (!v34)
                {
                  goto LABEL_91;
                }

                goto LABEL_3;
              }

LABEL_29:
              v14 = ((v56 - 1) & v56);
              v19 = *(*(v45 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v56)))));
              if (!v19)
              {
                goto LABEL_4;
              }
            }

            v58 = [v19 name];
            if (v58)
            {
              v59 = v58;
              v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v62 = v61;

              v210[0] = v60;
              v210[1] = v62;
              static Locale.current.getter();
              v63 = type metadata accessor for Locale();
              (*(*(v63 - 8) + 56))(v30, 0, 1, v63);
              sub_10013BCF4();
              v9 = v210;
              v64 = StringProtocol.foldedStringForWriting(locale:)();
              v66 = v65;
              sub_1000050A4(v30, &unk_10093F420, &unk_100797AE0);

              if (v207 == v64 && v208 == v66)
              {

                v33 = v47;
                v53 = v14;
                goto LABEL_49;
              }

              v77 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v45 = v204;
              v9 = v14;
              if (v77)
              {

                v33 = v47;
                v53 = v14;
                goto LABEL_50;
              }

              if ((v198 & 1) == 0)
              {

LABEL_77:
                v146 = [v19 remObjectID];
                if (v146)
                {
                  v147 = v146;
                  v148 = [v146 uuid];

                  v149 = v182;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v150 = UUID.uuidString.getter();
                  v9 = v151;
                  (*v173)(v149, v185);
                }

                else
                {
                  v9 = 0xE300000000000000;
                  v150 = 7104878;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v188 = sub_100365788(0, *(v188 + 2) + 1, 1, v188);
                }

                v153 = *(v188 + 2);
                v152 = *(v188 + 3);
                if (v153 >= v152 >> 1)
                {
                  v188 = sub_100365788((v152 > 1), v153 + 1, 1, v188);
                }

                v154 = v188;
                *(v188 + 2) = v153 + 1;
                v155 = &v154[16 * v153];
                *(v155 + 4) = v150;
                *(v155 + 5) = v9;
                v45 = v204;
                v52 = v205;
                continue;
              }

              v78 = sub_10020FD48(v189, v19);
              v54 = v206;
              if (v78)
              {
                v203 = v78;
                if (qword_100935BF8 != -1)
                {
                  swift_once();
                }

                v79 = type metadata accessor for Logger();
                sub_100006654(v79, qword_10093CC70);
                v164 = v19;

                v80 = Logger.logObject.getter();
                v81 = static os_log_type_t.default.getter();

                v82 = v80;

                v83 = v164;

                LODWORD(v163) = v81;
                if (os_log_type_enabled(v82, v81))
                {
                  v162 = v82;
                  v84 = swift_slowAlloc();
                  v85 = swift_slowAlloc();
                  v210[0] = v85;
                  *v84 = v166;
                  v86 = [v83 identifier];
                  v87 = v185;
                  v161 = v84;
                  v160 = v85;
                  if (v86)
                  {
                    v88 = v177;
                    v89 = v86;
                    v90 = v185;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v87 = v90;
                    v91 = v88;
                    v92 = 0;
                  }

                  else
                  {
                    v92 = 1;
                    v91 = v177;
                  }

                  (*v168)(v91, v92, 1, v87);
                  v93 = v178;
                  sub_100031B58(v91, v178, &unk_100939D90, "8\n\r");
                  if ((*v167)(v93, 1, v185))
                  {
                    sub_1000050A4(v178, &unk_100939D90, "8\n\r");
                    v94 = 0xE300000000000000;
                    v95 = 7104878;
                  }

                  else
                  {
                    v96 = v182;
                    v97 = v178;
                    (*v165)(v182, v178, v185);
                    sub_1000050A4(v97, &unk_100939D90, "8\n\r");
                    v98 = UUID.uuidString.getter();
                    v94 = v99;
                    v100 = v96;
                    v30 = v197;
                    (*v173)(v100, v185);
                    v95 = v98;
                  }

                  v101 = sub_10000668C(v95, v94, v210);

                  v102 = v161;
                  *(v161 + 1) = v101;
                  *(v102 + 6) = 2080;
                  *(v102 + 14) = sub_10000668C(v207, v208, v210);
                  *(v102 + 11) = 2080;
                  v103 = sub_10000668C(v64, v66, v210);

                  *(v102 + 3) = v103;
                  v82 = v162;
                  _os_log_impl(&_mh_execute_header, v162, v163, "RDHashtagLabelRepairer: updates hashtag [%s] from old label canonical name [%s] to new canonical name [%s]", v102, 0x20u);
                  swift_arrayDestroy();
                }

                else
                {
                }

                v104 = sub_1000F5104(&unk_100939D60, &unk_1007959E0);
                inited = swift_initStackObject();
                *(inited + 16) = v174;
                v106 = v164;
                *(inited + 32) = v164;
                v107 = v106;
                sub_100392DCC(inited);
                swift_setDeallocating();
                v108 = *(inited + 16);
                swift_arrayDestroy();
                v109 = Set._bridgeToObjectiveC()().super.isa;

                v110 = v203;
                [v203 addHashtags:v109];

                v111 = [v110 recencyDate];
                v163 = v104;
                v164 = v107;
                if (v111)
                {
                  v112 = v181;
                  v113 = v111;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v114 = v171->isa;
                  v115 = v179;
                  v116 = v184;
                  (v171->isa)(v179, v112, v184);
                  v117 = v175->isa;
                  (v175->isa)(v115, 0, 1, v116);
                  v114(v183, v115, v116);
                  v107 = v164;
                }

                else
                {
                  v117 = v175->isa;
                  v118 = v179;
                  v119 = v184;
                  (v175->isa)(v179, 1, 1, v184);
                  static Date.distantPast.getter();
                  if ((v169->isa)(v118, 1, v119) != 1)
                  {
                    sub_1000050A4(v118, &unk_100938850, qword_100795AE0);
                  }
                }

                v120 = [v107 creationDate];
                if (v120)
                {
                  v121 = v181;
                  v122 = v120;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v123 = v171->isa;
                  v124 = v180;
                  v125 = v121;
                  v126 = v184;
                  (v171->isa)(v180, v125, v184);
                  v117(v124, 0, 1, v126);
                  v127 = v126;
                  v128 = v170;
                  v123(v170, v124, v127);
                  v129 = v128;
                }

                else
                {
                  v130 = v180;
                  v131 = v184;
                  v117(v180, 1, 1, v184);
                  v127 = v131;
                  v129 = v170;
                  static Date.distantPast.getter();
                  if ((v169->isa)(v130, 1, v127) != 1)
                  {
                    sub_1000050A4(v180, &unk_100938850, qword_100795AE0);
                  }
                }

                v132 = v183;
                v133 = static Date.< infix(_:_:)();
                v134 = v129;
                v135 = v172->isa;
                (v172->isa)(v134, v127);
                v135(v132, v127);
                v136 = v164;
                if (v133)
                {
                  v137 = [v164 creationDate];
                  if (v137)
                  {
                    v138 = v176;
                    v139 = v137;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v140.super.isa = Date._bridgeToObjectiveC()().super.isa;
                    v135(v138, v184);
                  }

                  else
                  {
                    v140.super.isa = 0;
                  }

                  [v203 setRecencyDate:v140.super.isa];
                }

                v141 = swift_initStackObject();
                *(v141 + 16) = v174;
                *(v141 + 32) = v136;
                v142 = v136;
                sub_100392DCC(v141);
                swift_setDeallocating();
                v143 = *(v141 + 16);
                swift_arrayDestroy();
                v144 = Set._bridgeToObjectiveC()().super.isa;

                v145 = v201;
                [v201 removeHashtags:v144];

                sub_10020F4D8(v189, v145);
                goto LABEL_77;
              }

              v33 = v47;
              v53 = v14;
            }

            else
            {
              v203 = v14;
              if (qword_100935BF8 != -1)
              {
                swift_once();
              }

              v67 = type metadata accessor for Logger();
              sub_100006654(v67, qword_10093CC70);
              v19 = v19;
              v9 = Logger.logObject.getter();
              v68 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v9, v68))
              {
                v69 = swift_slowAlloc();
                v70 = swift_slowAlloc();
                v210[0] = v70;
                *v69 = v196;
                v71 = [v19 remObjectID];
                if (v71)
                {
                  v72 = v71;
                  v73 = [v71 description];

                  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v76 = v75;
                }

                else
                {
                  v76 = 0xE300000000000000;
                  v74 = 7104878;
                }

                v14 = sub_10000668C(v74, v76, v210);

                *(v69 + 4) = v14;
                _os_log_impl(&_mh_execute_header, v9, v68, "RDHashtagLabelRepairer: Hashtag[%{public}s] without name", v69, 0xCu);
                sub_10000607C(v70);

                v33 = v47;
                v53 = v203;
                v30 = v197;
LABEL_49:
                v45 = v204;
LABEL_50:
                v54 = v206;
              }

              else
              {

                v33 = v47;
                v53 = v203;
              }
            }

            break;
          }

          v52 = v205;
          goto LABEL_24;
        }

LABEL_5:
      }
    }

    while (v35 != v34);

    v157 = v188;
    if ((v198 & 1) == 0)
    {
      goto LABEL_95;
    }
  }

  else
  {
LABEL_91:

    v157 = _swiftEmptyArrayStorage;
    if ((v198 & 1) == 0)
    {
LABEL_95:
      *v186 = v157;
      return result;
    }
  }

  if (!*(v157 + 2))
  {
    goto LABEL_95;
  }

  v210[0] = 0;
  if ([v189 save:v210])
  {
    result = v210[0];
    goto LABEL_95;
  }

  v158 = v210[0];
  v159 = _convertNSErrorToError(_:)();

  v187 = v159;
  swift_willThrow();
}

void *sub_1002098FC@<X0>(void *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  LODWORD(v3) = a2;
  v124 = a3;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v127 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v122 - v9;
  __chkstk_darwin(v11);
  v135 = &v122 - v12;
  __chkstk_darwin(v13);
  v129 = &v122 - v14;
  __chkstk_darwin(v15);
  v17 = &v122 - v16;
  v18 = type metadata accessor for UUID();
  v142 = *(v18 - 8);
  v19 = *(v142 + 64);
  __chkstk_darwin(v18);
  v144 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v152 = &v122 - v22;
  v141 = a1;
  v23 = sub_1002109B0();
  v25 = v23;
  v26 = v23 >> 62;
  if (v23 >> 62)
  {
    goto LABEL_79;
  }

  v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v28 = _swiftEmptyArrayStorage;
  v126 = v10;
  v143 = v17;
  v153 = v18;
  v154 = v25;
  if (v27)
  {
    v156 = _swiftEmptyArrayStorage;
    v151 = v27;
    sub_100026EF4(0, v27 & ~(v27 >> 63), 0);
    v29 = v151;
    if ((v151 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_81:
      __break(1u);
    }

    v149 = v26;
    LODWORD(v150) = v3;
    v30 = 0;
    v28 = v156;
    v31 = v25 & 0xC000000000000001;
    v32 = (v142 + 8);
    do
    {
      if (v31)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(v154 + 8 * v30 + 32);
      }

      v34 = v33;
      v35 = [v33 remObjectID];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 uuid];

        v38 = v152;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v39 = UUID.uuidString.getter();
        v29 = v151;
        v40 = v39;
        v42 = v41;
        (*v32)(v38, v153);
      }

      else
      {
        v42 = 0xE300000000000000;
        v40 = 7104878;
      }

      v156 = v28;
      v44 = v28[2];
      v43 = v28[3];
      if (v44 >= v43 >> 1)
      {
        sub_100026EF4((v43 > 1), v44 + 1, 1);
        v29 = v151;
        v28 = v156;
      }

      ++v30;
      v28[2] = v44 + 1;
      v45 = &v28[2 * v44];
      v45[4] = v40;
      v45[5] = v42;
    }

    while (v29 != v30);
    v17 = v143;
    v18 = v153;
    v25 = v154;
    LOBYTE(v3) = v150;
    v26 = v149;
  }

  if ((v3 & 1) == 0)
  {

    *v124 = v28;
    return result;
  }

  v123 = v28;
  if (!v26)
  {
    v46 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_19;
    }

LABEL_74:

LABEL_75:
    *v124 = v123;
    return result;
  }

  v46 = _CocoaArrayWrapper.endIndex.getter();
  if (!v46)
  {
    goto LABEL_74;
  }

LABEL_19:
  if (v46 < 1)
  {
    goto LABEL_81;
  }

  v3 = 0;
  v150 = (v142 + 48);
  v151 = v25 & 0xC000000000000001;
  v134 = v142 + 32;
  v140 = v142 + 16;
  v130 = (v142 + 56);
  v139 = (v142 + 8);
  *&v24 = 136446210;
  v136 = v24;
  *(&v47 + 1) = 2;
  v133 = xmmword_100791300;
  *&v47 = 136315650;
  v125 = v47;
  *&v47 = 136315138;
  v122 = v47;
  v145 = v46;
  do
  {
    if (v151)
    {
      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v48 = *(v25 + 8 * v3 + 32);
    }

    v49 = v48;
    v50 = [v48 sharedToMeReminderCKIdentifier];
    if (!v50)
    {
      goto LABEL_29;
    }

    v51 = v50;
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v53;

    v148 = v52;
    UUID.init(uuidString:)();
    v54 = *v150;
    if ((*v150)(v17, 1, v18) != 1)
    {
      v149 = v3;
      v68 = v142;
      v69 = v144;
      (*(v142 + 32))(v144, v17, v18);
      sub_1000F5104(&qword_10093D000, &qword_10079D320);
      v70 = *(v68 + 72);
      v71 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = v133;
      v137 = *(v68 + 16);
      v137(v72 + v71, v69, v18);
      v155 = v72;
      v156 = _swiftEmptyArrayStorage;
      sub_1000F5104(&qword_10093D008, qword_10079AAC0);
      sub_10000CB48(&qword_10093D010, &qword_10093D008, qword_10079AAC0);
      v73 = BidirectionalCollection<>.slices(by:)();

      v74 = v141;
      v75 = v147;
      sub_10020BE20(v73, v74, &v156, sub_1001FADDC);
      v147 = v75;

      v18 = v156;
      if (qword_100935BF8 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      v77 = sub_100006654(v76, qword_10093CC70);
      v78 = v49;

      v138 = v77;
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();

      v81 = os_log_type_enabled(v79, v80);
      v146 = v78;
      if (v81)
      {
        v132 = v80;
        v82 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v156 = v131;
        *v82 = v125;
        v83 = [v78 identifier];
        v84 = v135;
        if (v83)
        {
          v85 = v83;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v84 = v135;
          v86 = 0;
        }

        else
        {
          v86 = 1;
        }

        v88 = v153;
        v128 = *v130;
        v128(v84, v86, 1, v153);
        v89 = v84;
        v90 = v129;
        sub_100031B58(v89, v129, &unk_100939D90, "8\n\r");
        if (v54(v90, 1, v88))
        {
          sub_1000050A4(v90, &unk_100939D90, "8\n\r");
          v91 = 0xE300000000000000;
          v92 = 7104878;
        }

        else
        {
          v93 = v152;
          v137(v152, v90, v88);
          sub_1000050A4(v90, &unk_100939D90, "8\n\r");
          v94 = UUID.uuidString.getter();
          v91 = v95;
          (*v139)(v93, v88);
          v92 = v94;
        }

        v25 = v154;
        v96 = sub_10000668C(v92, v91, &v156);

        *(v82 + 4) = v96;
        *(v82 + 12) = 2080;
        *(v82 + 14) = sub_10000668C(v148, v26, &v156);
        *(v82 + 22) = 2080;
        v97 = [v146 reminder];
        if (v97)
        {
          v98 = v97;
          v99 = [v97 identifier];

          if (v99)
          {
            v100 = v127;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v101 = v100;
            v102 = 0;
          }

          else
          {
            v102 = 1;
            v101 = v127;
          }

          v105 = v153;
          v128(v101, v102, 1, v153);
          v106 = v101;
          v107 = v126;
          sub_100031B58(v106, v126, &unk_100939D90, "8\n\r");
          if (v54(v107, 1, v105))
          {
            sub_1000050A4(v107, &unk_100939D90, "8\n\r");
            v103 = 0xE300000000000000;
            v104 = 7104878;
          }

          else
          {
            v108 = v152;
            v137(v152, v107, v105);
            sub_1000050A4(v107, &unk_100939D90, "8\n\r");
            v109 = UUID.uuidString.getter();
            v103 = v110;
            (*v139)(v108, v105);
            v104 = v109;
          }

          v17 = v143;
          v25 = v154;
        }

        else
        {
          v103 = 0xE300000000000000;
          v104 = 7104878;
          v17 = v143;
        }

        v111 = sub_10000668C(v104, v103, &v156);

        *(v82 + 24) = v111;
        _os_log_impl(&_mh_execute_header, v79, v132, "RDHashtagLabelRepairer: fixes hashtag[%s] with sharedToMeReminderCKIdentifier[%s] and original reminder id [%s]", v82, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v25 = v154;
      }

      v3 = v149;
      v46 = v145;
      if (v18 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_58;
        }
      }

      else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_58:
        if ((v18 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();

          swift_unknownObjectRelease();
          v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v10 = (v18 & 0xFFFFFFFFFFFFFF8);
          v3 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v3)
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            v27 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }

          v3 = v149;
          if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          v112 = *(v18 + 32);
        }

        v113 = v112;

        goto LABEL_68;
      }

      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v156 = v117;
        *v116 = v122;
        v118 = sub_10000668C(v148, v26, &v156);

        *(v116 + 4) = v118;
        v46 = v145;
        _os_log_impl(&_mh_execute_header, v114, v115, "RDHashtagLabelRepairer: reminder[%s] is not found in database. It may not be sync down yet.", v116, 0xCu);
        sub_10000607C(v117);
        v17 = v143;

        v3 = v149;
      }

      else
      {
      }

      v113 = 0;
LABEL_68:
      v119 = v146;
      [v146 setReminder:v113];

      v18 = v153;
      (*v139)(v144, v153);
      goto LABEL_22;
    }

    sub_1000050A4(v17, &unk_100939D90, "8\n\r");
LABEL_29:
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100006654(v55, qword_10093CC70);
    v56 = v49;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = v3;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v156 = v61;
      *v60 = v136;
      v62 = [v56 remObjectID];
      if (v62)
      {
        v63 = v62;
        v64 = [v62 description];

        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;
      }

      else
      {
        v67 = 0xE300000000000000;
        v65 = 7104878;
      }

      v87 = sub_10000668C(v65, v67, &v156);

      *(v60 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v57, v58, "RDHashtagLabelRepairer: Impossible as hashtag[%{public}s] without sharedToMeReminderCKIdentifier", v60, 0xCu);
      sub_10000607C(v61);

      v17 = v143;
      v46 = v145;
      v3 = v59;
      v18 = v153;
      v25 = v154;
    }

    else
    {

      v18 = v153;
    }

LABEL_22:
    ++v3;
  }

  while (v46 != v3);

  v156 = 0;
  if ([v141 save:&v156])
  {
    result = v156;
    goto LABEL_75;
  }

  v121 = v156;

  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void *sub_10020A810@<X0>(void *a1@<X0>, int a2@<W2>, unint64_t a3@<X8>)
{
  v4 = v3;
  v50 = a2;
  v59 = type metadata accessor for UUID();
  v7 = *(v59 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v59 - 8);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v58 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v55 = a1;
  v16 = sub_100210F94();
  v17 = v16;
  v49 = v16 >> 62;
  if (v16 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v19 = _swiftEmptyArrayStorage;
    v64 = v17;
    if (i)
    {
      v65 = _swiftEmptyArrayStorage;
      v60 = i;
      sub_100026EF4(0, i & ~(i >> 63), 0);
      v20 = v60;
      if (v60 < 0)
      {
        __break(1u);
      }

      v47 = a3;
      v48 = v4;
      a3 = 0;
      v17 = v64;
      v19 = v65;
      v61 = v15;
      v62 = v64 & 0xC000000000000001;
      v54 = v64 & 0xFFFFFFFFFFFFFF8;
      v56 = (v7 + 48);
      v57 = (v7 + 56);
      v51 = (v7 + 8);
      v52 = (v7 + 16);
      while (1)
      {
        v4 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v62)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a3 >= *(v54 + 16))
          {
            goto LABEL_44;
          }

          v21 = *(v17 + 8 * a3 + 32);
        }

        v22 = v21;
        v23 = [v21 reminder];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 identifier];

          v63 = v19;
          if (v25)
          {
            v26 = v58;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v27 = 0;
          }

          else
          {
            v27 = 1;
            v26 = v58;
          }

          v30 = v59;
          (*v57)(v26, v27, 1, v59);
          sub_100031B58(v26, v15, &unk_100939D90, "8\n\r");
          v31 = (*v56)(v15, 1, v30);
          v32 = v64;
          v20 = v60;
          if (v31)
          {
            sub_1000050A4(v15, &unk_100939D90, "8\n\r");
            v28 = 0xE300000000000000;
            v29 = 7104878;
            v17 = v32;
          }

          else
          {
            v33 = v53;
            (*v52)(v53, v15, v30);
            sub_1000050A4(v15, &unk_100939D90, "8\n\r");
            v34 = UUID.uuidString.getter();
            v17 = v64;
            v29 = v34;
            v28 = v35;
            v36 = v33;
            v20 = v60;
            (*v51)(v36, v30);
          }

          v19 = v63;
        }

        else
        {
          v28 = 0xE300000000000000;
          v29 = 7104878;
        }

        v65 = v19;
        v38 = v19[2];
        v37 = v19[3];
        v7 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          sub_100026EF4((v37 > 1), v38 + 1, 1);
          v20 = v60;
          v17 = v64;
          v19 = v65;
        }

        v19[2] = v7;
        v39 = &v19[2 * v38];
        v39[4] = v29;
        v39[5] = v28;
        ++a3;
        v15 = v61;
        if (v4 == v20)
        {
          a3 = v47;
          v4 = v48;
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_24:
    if ((v50 & 1) == 0)
    {
      break;
    }

    if (!v49)
    {
      v7 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        break;
      }

      goto LABEL_27;
    }

    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      break;
    }

LABEL_27:
    v40 = 0;
    v41 = v17 & 0xC000000000000001;
    v15 = (v17 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v41)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v40 >= *(v15 + 2))
        {
          goto LABEL_43;
        }

        v42 = *(v64 + 8 * v40 + 32);
      }

      v43 = v42;
      v17 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v65 = v42;
      sub_10020AD58(&v65, v55);

      ++v40;
      if (v17 == v7)
      {

        v65 = 0;
        if ([v55 save:&v65])
        {
          result = v65;
          goto LABEL_39;
        }

        v46 = v65;

        _convertNSErrorToError(_:)();

        return swift_willThrow();
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

LABEL_39:
  *a3 = v19;
  return result;
}

id sub_10020AD58(void **a1, void *a2)
{
  v45 = a2;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for UUID();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_10093CC70);
  v17 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v42 = v19;
    v43 = v2;
    v20 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v46 = v41;
    *v20 = 136315394;
    v21 = [v17 remObjectID];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = UUID.uuidString.getter();
      v26 = v25;
      (*(v44 + 8))(v14, v11);
    }

    else
    {
      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    v27 = sub_10000668C(v24, v26, &v46);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2080;
    v28 = [v17 reminder];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 identifier];

      if (v30)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      v33 = v44;
      (*(v44 + 56))(v7, v31, 1, v11);
      sub_100031B58(v7, v10, &unk_100939D90, "8\n\r");
      if (!(*(v33 + 48))(v10, 1, v11))
      {
        (*(v33 + 16))(v14, v10, v11);
        sub_1000050A4(v10, &unk_100939D90, "8\n\r");
        v35 = v33;
        v36 = UUID.uuidString.getter();
        v32 = v37;
        (*(v35 + 8))(v14, v11);
        v34 = v36;
        goto LABEL_16;
      }

      sub_1000050A4(v10, &unk_100939D90, "8\n\r");
      v32 = 0xE300000000000000;
    }

    else
    {
      v32 = 0xE300000000000000;
    }

    v34 = 7104878;
LABEL_16:
    v38 = sub_10000668C(v34, v32, &v46);

    *(v20 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v18, v42, "RDHashtagLabelRepairer removes sharedToMeReminerPlaceholder[%s] with reminderID[%s]", v20, 0x16u);
    swift_arrayDestroy();
  }

  return [v45 deleteObject:v17];
}

void sub_10020B1EC(void **a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v53 = &v48 - v5;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v48 - v12;
  v14 = *a1;
  v15 = [v14 name];
  if (v15)
  {
    v16 = v15;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v50 = 7104878;
  }

  v17 = [v14 canonicalName];
  if (v17)
  {
    v18 = v17;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v49 = 0;
    v20 = 0;
  }

  v21 = [v14 firstOccurrenceCreationDate];
  if (v21)
  {
    v22 = v21;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = type metadata accessor for Date();
    (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
  }

  else
  {
    v24 = type metadata accessor for Date();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
  }

  v25 = [v14 recencyDate];
  if (v25)
  {
    v26 = v25;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v31 = 1;
  v51 = v9;
  v30(v9, v27, 1, v28);
  v32 = [v14 uuidForChangeTracking];
  if (v32)
  {
    v33 = v53;
    v34 = v32;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = v33;
    v31 = 0;
  }

  else
  {
    v35 = v53;
  }

  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  (*(v37 + 56))(v35, v31, 1, v36);
  v50 = String._bridgeToObjectiveC()();

  if (v20)
  {
    v38 = String._bridgeToObjectiveC()();
  }

  else
  {
    v38 = 0;
  }

  v39 = *(v29 + 48);
  if (v39(v13, 1, v28) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v29 + 8))(v13, v28);
  }

  v41 = v51;
  if (v39(v51, 1, v28) == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = Date._bridgeToObjectiveC()().super.isa;
    (*(v29 + 8))(v41, v28);
  }

  v43 = v53;
  if ((*(v37 + 48))(v53, 1, v36) == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v37 + 8))(v43, v36);
  }

  v45 = objc_allocWithZone(REMHashtagLabel);
  v46 = v50;
  v47 = [v45 initWithName:v50 canonicalName:v38 firstOccurrenceCreationDate:isa recencyDate:v42 uuidForChangeTracking:v44];

  *v52 = v47;
}

void sub_10020B720(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = &qword_100936000;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(a1 + 48) + ((v7 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = v13 + 1;
    if ((v13 + 1) > 0x22)
    {
      goto LABEL_12;
    }

    if (((1 << v14) & 0x40401) == 0)
    {
      if (((1 << v14) & 0x404000000) != 0)
      {
LABEL_18:

        return;
      }

LABEL_12:
      v15 = v8[42];
      v16 = v12;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_100946FF0);
      v18 = v16;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134349056;
        *(v21 + 4) = v13;
      }

      else
      {

        v19 = v18;
      }

      v8 = &qword_100936000;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_18;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10020B940(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = &qword_100936000;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(a1 + 48) + ((v7 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = v13 + 1;
    if ((v13 + 1) > 0x22)
    {
      goto LABEL_12;
    }

    if (((1 << v14) & 0x40401) == 0)
    {
      if (((1 << v14) & 0x404000000) != 0)
      {
LABEL_18:

        return;
      }

LABEL_12:
      v15 = v8[42];
      v16 = v12;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_100946FF0);
      v18 = v16;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134349056;
        *(v21 + 4) = v13;
      }

      else
      {

        v19 = v18;
      }

      v8 = &qword_100936000;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_18;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10020BB60(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *))
{
  v7 = a2[1];
  v9 = *a2;

  a4(a1, &v9);

  v9 = *(a3 + 48);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_10020BC34(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t *), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  a3(a1, &v8);
  v7 = *(a5 + 48);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_10020BCE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_10020BD74(uint64_t result, char a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 48); ; i += 2)
    {
      v6 = *i;
      v7[0] = *(i - 1);
      v7[1] = v6;
      swift_unknownObjectRetain();
      sub_100204018(v7, a2 & 1);
      if (v2)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v3)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10020BE20(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, uint64_t, uint64_t))
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 48); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;
      swift_unknownObjectRetain();
      a4(v11, a2, a3);
      if (v4)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v5)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10020BECC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a6;
  v53 = a2;
  v54 = a5;
  v57 = a4;
  v59 = a3;
  v52 = a1;
  v6 = type metadata accessor for UnfairLock.Options();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = sub_1000F5104(&unk_10093CFD0, qword_10079AA70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v50 - v11;
  if (qword_100935C00 != -1)
  {
    swift_once();
  }

  v13 = sub_100006654(v8, qword_100974C50);
  v60 = v9;
  v61 = v8;
  v14 = *(v9 + 16);
  v58 = v12;
  v55 = v14;
  v56 = v9 + 16;
  v14(v12, v13, v8);
  v15 = type metadata accessor for RDHashtagLabelUpdater(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_started) = 0;
  *(v18 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_cloudAccountsDidChangeCancellable) = 0;
  v51 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_highPrioritySubscriptionTransactionRegistrar;
  type metadata accessor for RDTransactionRegistrar();
  v19 = swift_allocObject();
  v19[4] = 0;
  v19[5] = 0;
  v19[2] = 0xD000000000000040;
  v19[3] = 0x80000001007EB230;
  *&v64[0] = _swiftEmptyArrayStorage;
  sub_10000D380(&qword_100936E60, &type metadata accessor for UnfairLock.Options);
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = type metadata accessor for UnfairLock();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v19[6] = UnfairLock.init(options:)();
  *(v18 + v51) = v19;
  v23 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_lowPrioritySubscriptionTransactionRegistrar;
  v24 = swift_allocObject();
  v24[4] = 0;
  v24[5] = 0;
  v24[2] = 0xD00000000000003FLL;
  v24[3] = 0x80000001007EB280;
  *&v64[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = *(v20 + 48);
  v26 = *(v20 + 52);
  swift_allocObject();
  v24[6] = UnfairLock.init(options:)();
  *(v18 + v23) = v24;
  v27 = (v18 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumed);
  *v27 = 0xD000000000000017;
  v27[1] = 0x80000001007EB2C0;
  v28 = (v18 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumedOnLaunch);
  *v28 = 0xD00000000000001FLL;
  v28[1] = 0x80000001007EB2E0;
  v29 = (v18 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_analyticsCrashDetected);
  *v29 = 0xD000000000000035;
  v29[1] = 0x80000001007EB300;
  v30 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitTarget;
  *(v18 + v30) = [objc_allocWithZone(type metadata accessor for RDHashtagLabelUpdater.BabysitTarget()) init];
  v31 = (v18 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_changeTrackingClientName);
  *v31 = 0xD000000000000027;
  v31[1] = 0x80000001007EB340;
  v33 = v52;
  v32 = v53;
  v18[2] = v52;
  v18[3] = v32;
  *&v64[0] = 0xD000000000000013;
  *(&v64[0] + 1) = 0x80000001007EB370;
  memset(&v64[1], 0, 30);
  if (v54)
  {
    ObjectType = swift_getObjectType();
    v35 = v62;
    v36 = *(v62 + 8);
    v37 = v33;
    v38 = v32;
    v39 = v36(v59, v57, v64, ObjectType, v35);
  }

  else
  {
    v40 = type metadata accessor for RDDaemonController();
    v41 = objc_allocWithZone(v40);
    v42 = &v41[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
    v43 = v57;
    *v42 = v59;
    *(v42 + 1) = v43;
    v44 = &v41[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
    *(v44 + 30) = *(&v64[1] + 14);
    *(v44 + 1) = v64[1];
    *v44 = v64[0];
    *&v41[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
    v63.receiver = v41;
    v63.super_class = v40;
    v45 = v33;
    v46 = v32;
    swift_unknownObjectRetain();
    v39 = objc_msgSendSuper2(&v63, "init");
    v35 = v62;
  }

  v18[4] = v39;
  v47 = v58;
  v48 = v61;
  v55(v18 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_timeGroupingStrategy, v58, v61);
  *(v18 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate + 8) = v35;
  swift_unknownObjectWeakAssign();
  (*(v60 + 8))(v47, v48);
  *(v18 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_hashtagInsertEventCancellables) = _swiftEmptyArrayStorage;
  return v18;
}

void sub_10020C4A4(void *a1, unint64_t a2, void *a3)
{
  v168 = a1;
  v164 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v164 - 8) + 64);
  v6 = __chkstk_darwin(v164);
  v167 = (&v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v10 = &v153 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v153 - v12;
  __chkstk_darwin(v11);
  v15 = &v153 - v14;
  v16 = type metadata accessor for Date();
  v170 = *(v16 - 8);
  isa = v170[8].isa;
  v18 = __chkstk_darwin(v16);
  v20 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v166 = (&v153 - v22);
  v23 = __chkstk_darwin(v21);
  v24 = __chkstk_darwin(v23);
  v26 = &v153 - v25;
  __chkstk_darwin(v24);
  v29 = &v153 - v28;
  v30 = a2 >> 62;
  if (a2 >> 62)
  {
    v162 = v20;
    v151 = v27;
    v152 = _CocoaArrayWrapper.endIndex.getter();
    v27 = v151;
    v20 = v162;
    if (!v152)
    {
      return;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v162 = v20;
  v163 = v27;
  v169 = a3;
  if (a3 || (sub_1001FFEF8(a2), (v169 = v31) != 0))
  {
    v161 = v10;
    v165 = v29;
    v32 = a3;

    v34 = sub_1001A5FDC(v33);

    sub_1002030B0(v34, v15);
    v35 = v170;
    v36 = v170[6].isa;
    if (v36(v15, 1, v16) == 1)
    {

      sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
      if (qword_100935BF8 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_10093CC70);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_34;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v171 = v41;
      *v40 = 136446210;
      if (v30)
      {
        v42 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v42 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v42)
      {
LABEL_33:
        v70 = Array.description.getter();
        v72 = v71;

        v73 = sub_10000668C(v70, v72, &v171);

        *(v40 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v38, v39, "RDHashtagLabelUpdater.associate(hashtagLabel:to:): Impossible. Should be able to get most recently created date as empty array or those with nil name should have been filtered {hashtags: %{public}s}", v40, 0xCu);
        sub_10000607C(v41);

LABEL_34:

LABEL_65:
        return;
      }

      v166 = v41;
      v167 = v40;
      LODWORD(v168) = v39;
      v170 = v38;
      v173[0] = _swiftEmptyArrayStorage;
      sub_100026EF4(0, v42 & ~(v42 >> 63), 0);
      if ((v42 & 0x8000000000000000) == 0)
      {
        v57 = 0;
        v58 = v173[0];
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v59 = *(a2 + 8 * v57 + 32);
          }

          v60 = v59;
          v61 = [v59 remObjectID];
          if (v61)
          {
            v62 = v61;
            v63 = [v61 description];

            v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v66 = v65;
          }

          else
          {

            v66 = 0xE300000000000000;
            v64 = 7104878;
          }

          v173[0] = v58;
          v68 = *(v58 + 16);
          v67 = *(v58 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_100026EF4((v67 > 1), v68 + 1, 1);
            v58 = v173[0];
          }

          ++v57;
          *(v58 + 16) = v68 + 1;
          v69 = v58 + 16 * v68;
          *(v69 + 32) = v64;
          *(v69 + 40) = v66;
        }

        while (v42 != v57);
        v38 = v170;
        LOBYTE(v39) = v168;
        v41 = v166;
        v40 = v167;
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_87;
    }

    v159 = v36;
    v160 = v34;
    v43 = v35[4].isa;
    v43(v165, v15, v16);
    v44 = v168;
    if (sub_10074E984(v168))
    {
      v45 = v169;
      v46 = [v169 name];
      [v44 setName:v46];

      v47 = [v45 creationDate];
      v158 = v43;
      if (v47)
      {
        v48 = v163;
        v49 = v47;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v43(v13, v48, v16);
        v50 = v43;
        v51 = v170;
        v157 = v170[7].isa;
        v157(v13, 0, 1, v16);
        v50(v26, v13, v16);
      }

      else
      {
        v74 = v170[7].isa;
        v74(v13, 1, 1, v16);
        static Date.distantFuture.getter();
        v75 = v159(v13, 1, v16);
        v157 = v74;
        if (v75 != 1)
        {
          sub_1000050A4(v13, &unk_100938850, qword_100795AE0);
        }

        v51 = v170;
      }

      v76 = Date._bridgeToObjectiveC()().super.isa;
      (v51[1].isa)(v26, v16);
      [v44 setFirstOccurrenceCreationDate:v76];

      if (qword_100935BF8 != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      sub_100006654(v77, qword_10093CC70);
      v78 = v44;
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.info.getter();

      v81 = os_log_type_enabled(v79, v80);
      v43 = v158;
      if (v81)
      {
        v155 = v80;
        v156 = v79;
        v82 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v173[0] = v154;
        v83 = v82;
        *v82 = 136315650;
        v84 = [v78 canonicalName];
        if (v84)
        {
          v85 = v84;
          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v87;
        }

        else
        {
          v86 = 0;
          v88 = 0;
        }

        v171 = v86;
        v172 = v88;
        sub_1000F5104(&unk_100939E40, &qword_100791BD0);
        v90 = Optional.descriptionOrNil.getter();
        v92 = v91;

        v93 = sub_10000668C(v90, v92, v173);

        *(v83 + 1) = v93;
        *(v83 + 6) = 2080;
        v94 = [v78 name];
        if (v94)
        {
          v95 = v94;
          v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v98 = v97;
        }

        else
        {
          v96 = 0;
          v98 = 0;
        }

        v171 = v96;
        v172 = v98;
        v99 = Optional.descriptionOrNil.getter();
        v101 = v100;

        v102 = sub_10000668C(v99, v101, v173);

        *(v83 + 14) = v102;
        *(v83 + 11) = 2080;
        v103 = [v78 firstOccurrenceCreationDate];
        if (v103)
        {
          v104 = v161;
          v105 = v103;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v106 = 0;
          v44 = v168;
        }

        else
        {
          v106 = 1;
          v44 = v168;
          v104 = v161;
        }

        v157(v104, v106, 1, v16);
        v107 = Optional.descriptionOrNil.getter();
        v109 = v108;
        sub_1000050A4(v104, &unk_100938850, qword_100795AE0);
        v110 = sub_10000668C(v107, v109, v173);

        *(v83 + 3) = v110;
        v79 = v156;
        _os_log_impl(&_mh_execute_header, v156, v155, "RDHashtagLabelUpdater.associate(hashtagLabel:to:): updated hashtag label first occurrence {canonicalName: %s, new-name: %s, new-firstOccurrenceCreationDate: %s}", v83, 0x20u);
        swift_arrayDestroy();
      }
    }

    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
    v111 = Set._bridgeToObjectiveC()().super.isa;

    [v44 addHashtags:v111];

    v112 = [v44 recencyDate];
    if (v112)
    {
      v113 = v163;
      v114 = v112;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v115 = v167;
      v43(v167, v113, v16);
      v116 = v170;
      (v170[7].isa)(v115, 0, 1, v16);
      v117 = v166;
      v43(v166, v115, v16);
    }

    else
    {
      v116 = v170;
      v118 = v167;
      (v170[7].isa)(v167, 1, 1, v16);
      v117 = v166;
      static Date.distantPast.getter();
      if (v159(v118, 1, v16) != 1)
      {
        sub_1000050A4(v118, &unk_100938850, qword_100795AE0);
      }
    }

    v119 = v165;
    v120 = static Date.< infix(_:_:)();
    v121 = v116[1].isa;
    v121(v117, v16);
    if ((v120 & 1) == 0)
    {
      v121(v119, v16);
      goto LABEL_65;
    }

    v122 = Date._bridgeToObjectiveC()().super.isa;
    [v168 setRecencyDate:v122];

    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    sub_100006654(v123, qword_10093CC70);
    v124 = v162;
    (v116[2].isa)(v162, v119, v16);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v171 = v128;
      *v127 = 136315138;
      v129 = Date.description.getter();
      v131 = v130;
      v121(v124, v16);
      v132 = sub_10000668C(v129, v131, &v171);

      *(v127 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v125, v126, "RDHashtagLabelUpdater.associate(hashtagLabel:to:): updated hashtag label recencyDate {new-recencyDate: %s}", v127, 0xCu);
      sub_10000607C(v128);

      v133 = v165;
    }

    else
    {

      v121(v124, v16);
      v133 = v119;
    }

    v121(v133, v16);
  }

  else
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_10093CC70);

    v170 = Logger.logObject.getter();
    v53 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v170, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v171 = v55;
      *v54 = 136446210;
      if (v30)
      {
        v56 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v56 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v56)
      {
        v167 = v55;
        v168 = v54;
        LODWORD(v169) = v53;
        v173[0] = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v56 & ~(v56 >> 63), 0);
        if (v56 < 0)
        {
LABEL_87:
          __break(1u);
          return;
        }

        v134 = 0;
        v135 = v173[0];
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v136 = *(a2 + 8 * v134 + 32);
          }

          v137 = v136;
          v138 = [v136 remObjectID];
          if (v138)
          {
            v139 = v138;
            v140 = [v138 description];

            v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v143 = v142;
          }

          else
          {

            v143 = 0xE300000000000000;
            v141 = 7104878;
          }

          v173[0] = v135;
          v145 = *(v135 + 16);
          v144 = *(v135 + 24);
          if (v145 >= v144 >> 1)
          {
            sub_100026EF4((v144 > 1), v145 + 1, 1);
            v135 = v173[0];
          }

          ++v134;
          *(v135 + 16) = v145 + 1;
          v146 = v135 + 16 * v145;
          *(v146 + 32) = v141;
          *(v146 + 40) = v143;
        }

        while (v56 != v134);
        LOBYTE(v53) = v169;
        v55 = v167;
        v54 = v168;
      }

      v147 = Array.description.getter();
      v149 = v148;

      v150 = sub_10000668C(v147, v149, &v171);

      *(v54 + 1) = v150;
      _os_log_impl(&_mh_execute_header, v170, v53, "RDHashtagLabelUpdater.associate(hashtagLabel:to:): Impossible. Should be able to get first occurrence hashtag as empty array or those with nil name should have been filtered {hashtags: %{public}s}", v54, 0xCu);
      sub_10000607C(v55);
    }

    else
    {
      v89 = v170;
    }
  }
}

void *sub_10020D4F0(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v38 = &v36 - v4;
  v45 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_27:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v41 = a1 & 0xFFFFFFFFFFFFFF8;
      v42 = a1 & 0xC000000000000001;
      v7 = &_swiftEmptyDictionarySingleton;
      v37 = xmmword_1007953F0;
      v39 = v5;
      v40 = a1;
      while (1)
      {
        if (v42)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v41 + 16))
          {
            goto LABEL_24;
          }

          v9 = *(a1 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v12 = [v9 name];
        if (v12)
        {
          v13 = v12;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          v43 = v14;
          v44 = v16;
          v17 = v38;
          static Locale.current.getter();
          v18 = type metadata accessor for Locale();
          (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
          sub_10013BCF4();
          v19 = StringProtocol.foldedStringForWriting(locale:)();
          v21 = v20;
          sub_1000050A4(v17, &unk_10093F420, &unk_100797AE0);
        }

        else
        {
          v19 = 0;
          v21 = 0xE000000000000000;
        }

        a1 = sub_100005F4C(v19, v21);
        v23 = v7[2];
        v24 = (v22 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          goto LABEL_25;
        }

        v26 = v22;
        if (v7[3] < v25)
        {
          sub_10036CE7C(v25, 1);
          v7 = v45;
          v27 = sub_100005F4C(v19, v21);
          if ((v26 & 1) != (v28 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          a1 = v27;
        }

        if (v26)
        {

          v8 = (v7[7] + 8 * a1);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v34 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v29 = swift_allocObject();
          *(v29 + 16) = v37;
          *(v29 + 32) = v10;
          v7[(a1 >> 6) + 8] |= 1 << a1;
          v30 = (v7[6] + 16 * a1);
          *v30 = v19;
          v30[1] = v21;
          *(v7[7] + 8 * a1) = v29;
          v31 = v7[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_26;
          }

          v7[2] = v33;
        }

        a1 = v40;
        ++v6;
        if (v11 == v39)
        {
          return v7;
        }
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

void *sub_10020D874(unint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v41 - v10;
  v54 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_32:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_3:
      v13 = 0;
      v52 = a1 & 0xFFFFFFFFFFFFFF8;
      v53 = a1 & 0xC000000000000001;
      v47 = (v3 + 7);
      v48 = v2;
      v46 = (v3 + 6);
      v42 = (v3 + 1);
      v43 = (v3 + 2);
      v3 = &_swiftEmptyDictionarySingleton;
      v45 = xmmword_1007953F0;
      v50 = v12;
      v51 = a1;
      while (1)
      {
        if (v53)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *(v52 + 16))
          {
            goto LABEL_29;
          }

          v16 = *(a1 + 8 * v13 + 32);
        }

        v17 = v16;
        v18 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v19 = [v16 account];
        if (!v19)
        {
          goto LABEL_18;
        }

        v20 = v19;
        v21 = [v19 identifier];

        if (v21)
        {
          v22 = v49;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v23 = 0;
        }

        else
        {
          v23 = 1;
          v22 = v49;
        }

        v24 = v48;
        (*v47)(v22, v23, 1, v48);
        sub_100031B58(v22, v11, &unk_100939D90, "8\n\r");
        if ((*v46)(v11, 1, v24))
        {
          break;
        }

        v26 = v44;
        (*v43)(v44, v11, v24);
        sub_1000050A4(v11, &unk_100939D90, "8\n\r");
        v25 = UUID.uuidString.getter();
        v2 = v27;
        (*v42)(v26, v24);
LABEL_20:
        a1 = sub_100005F4C(v25, v2);
        v29 = v3[2];
        v30 = (v28 & 1) == 0;
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          goto LABEL_30;
        }

        v32 = v28;
        if (v3[3] < v31)
        {
          sub_10036CE7C(v31, 1);
          v3 = v54;
          v33 = sub_100005F4C(v25, v2);
          if ((v32 & 1) != (v34 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          a1 = v33;
        }

        if (v32)
        {

          v14 = (v3[7] + 8 * a1);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v2 = *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v15 = v50;
          a1 = v51;
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v35 = swift_allocObject();
          *(v35 + 16) = v45;
          *(v35 + 32) = v17;
          v3[(a1 >> 6) + 8] |= 1 << a1;
          v36 = (v3[6] + 16 * a1);
          *v36 = v25;
          v36[1] = v2;
          *(v3[7] + 8 * a1) = v35;
          v37 = v3[2];
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            goto LABEL_31;
          }

          v3[2] = v39;
          v15 = v50;
          a1 = v51;
        }

        ++v13;
        if (v18 == v15)
        {
          return v3;
        }
      }

      sub_1000050A4(v11, &unk_100939D90, "8\n\r");
LABEL_18:
      v25 = 0;
      v2 = 0xE000000000000000;
      goto LABEL_20;
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_10020DD3C(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v51 = &v44 - v4;
  v5 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v44 - v10;
  v11 = &_swiftEmptyDictionarySingleton;
  v55 = &_swiftEmptyDictionarySingleton;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v46 = *(v9 + 80);
  v13 = *(v9 + 72);
  v49 = (v46 + 32) & ~v46;
  v14 = a1 + v49;
  v45 = xmmword_100791300;
  v47 = v13;
  v48 = v5;
  while (1)
  {
    v16 = v52;
    sub_100211458(v14, v52);
    v17 = (v16 + *(v5 + 20));
    v18 = v17[1];
    v53 = *v17;
    v54 = v18;

    v19 = v51;
    static Locale.current.getter();
    v20 = type metadata accessor for Locale();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    sub_10013BCF4();
    v21 = StringProtocol.foldedStringForWriting(locale:)();
    v23 = v22;
    sub_1000050A4(v19, &unk_10093F420, &unk_100797AE0);

    v25 = sub_100005F4C(v21, v23);
    v26 = v11[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v11[3] < v28)
    {
      sub_10036DAA0(v28, 1);
      v11 = v55;
      v30 = sub_100005F4C(v21, v23);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_19;
      }

      v25 = v30;
    }

    if (v29)
    {

      v32 = v11[7];
      sub_1002113F4(v52, v50);
      v33 = *(v32 + 8 * v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v25) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_10036683C(0, v33[2] + 1, 1, v33);
        *(v32 + 8 * v25) = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        v33 = sub_10036683C(v35 > 1, v36 + 1, 1, v33);
        *(v32 + 8 * v25) = v33;
      }

      v33[2] = v36 + 1;
      v15 = v47;
      sub_1002113F4(v50, v33 + v49 + v36 * v47);
    }

    else
    {
      sub_1000F5104(&qword_10093D0D0, &qword_10079AD30);
      v37 = v49;
      v38 = swift_allocObject();
      *(v38 + 16) = v45;
      sub_1002113F4(v52, v38 + v37);
      v11[(v25 >> 6) + 8] |= 1 << v25;
      v39 = (v11[6] + 16 * v25);
      *v39 = v21;
      v39[1] = v23;
      *(v11[7] + 8 * v25) = v38;
      v40 = v11[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_18;
      }

      v11[2] = v42;
      v15 = v47;
    }

    v5 = v48;
    v14 += v15;
    if (!--v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10020E138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v6 = sub_10038D894(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  sub_100271EA8(&off_1008E2498);
  sub_10003450C(&off_1008E2468);

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  if ((v7 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }

    v8 = *(v7 + 32);
  }

  v9 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v10)
  {
LABEL_12:
    _StringGuts.grow(_:)(46);
    v27._object = 0x80000001007EC120;
    v27._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v27);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = v9;
  v12 = v10;

  v14 = _swiftEmptyArrayStorage[2];
  v13 = _swiftEmptyArrayStorage[3];
  if (v14 >= v13 >> 1)
  {
    sub_100026EF4((v13 > 1), v14 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v14 + 1;
  v15 = &_swiftEmptyArrayStorage[2 * v14];
  v15[4] = v11;
  v15[5] = v12;
  swift_setDeallocating();
  v16 = *(v7 + 16);
  swift_arrayDestroy();
  KeyPath = swift_getKeyPath();
  v18 = sub_100394808(v6);

  sub_10042D838(KeyPath, v18);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    v26 = _swiftEmptyArrayStorage[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v19 = sub_10000C2B0(_swiftEmptyArrayStorage);
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v20 = [objc_allocWithZone(NSFetchRequest) init];
  v21 = [swift_getObjCClassFromMetadata() entity];
  [v20 setEntity:v21];

  [v20 setAffectedStores:0];
  [v20 setPredicate:v19];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v20 setPropertiesToFetch:isa];

  v23 = Array._bridgeToObjectiveC()().super.isa;
  [v20 setRelationshipKeyPathsForPrefetching:v23];

  v24 = NSManagedObjectContext.fetch<A>(_:)();

  return v24;
}

uint64_t sub_10020E944()
{
  sub_100271EA8(&off_1008E2548);
  sub_100271EA8(&off_1008E2518);
  sub_10003450C(&off_1008E24C8);

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }

    v1 = *(inited + 32);
  }

  v2 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v3)
  {
LABEL_12:
    _StringGuts.grow(_:)(46);
    v18._object = 0x80000001007EC120;
    v18._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v18);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v4 = v2;
  v5 = v3;

  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  if (v7 >= v6 >> 1)
  {
    sub_100026EF4((v6 > 1), v7 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v7 + 1;
  v8 = &_swiftEmptyArrayStorage[2 * v7];
  v8[4] = v4;
  v8[5] = v5;
  swift_setDeallocating();
  v9 = *(inited + 16);
  swift_arrayDestroy();
  KeyPath = swift_getKeyPath();
  sub_1003EE564(KeyPath, 0);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v11 = sub_10000C2B0(_swiftEmptyArrayStorage);
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:v11];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v12 setPropertiesToFetch:isa];

  v15 = Array._bridgeToObjectiveC()().super.isa;
  [v12 setRelationshipKeyPathsForPrefetching:v15];

  v16 = NSManagedObjectContext.fetch<A>(_:)();

  return v16;
}

void *sub_10020EE9C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v11 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v9 = v6;
      sub_10020B1EC(&v9, &v10);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = v11[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v5 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

uint64_t sub_10020EFEC()
{
  sub_100271EA8(&off_1008E2548);
  sub_100271EA8(&off_1008E2518);
  sub_10003450C(&off_1008E24C8);

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_10;
    }

    v1 = *(inited + 32);
  }

  v2 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v3)
  {
LABEL_10:
    _StringGuts.grow(_:)(46);
    v17._object = 0x80000001007EC120;
    v17._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v17);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v4 = v2;
  v5 = v3;

  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  if (v7 >= v6 >> 1)
  {
    sub_100026EF4((v6 > 1), v7 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v7 + 1;
  v8 = &_swiftEmptyArrayStorage[2 * v7];
  v8[4] = v4;
  v8[5] = v5;
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  swift_setDeallocating();
  v9 = *(inited + 16);
  swift_arrayDestroy();
  v10 = sub_100034664(1, 2);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v10];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v11 setPropertiesToFetch:isa];

  v14 = Array._bridgeToObjectiveC()().super.isa;
  [v11 setRelationshipKeyPathsForPrefetching:v14];

  v15 = NSManagedObjectContext.fetch<A>(_:)();

  return v15;
}

void sub_10020F4D8(void *a1, void *a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v8 = &v26 - v7;
  v9 = [a2 hashtags];
  if (v9 && ((v10 = v9, sub_1000060C8(0, &qword_10093CFE0, off_1008D4190), sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190), v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v10, (v11 & 0xC000000000000001) == 0) ? (v12 = *(v11 + 16)) : (v12 = __CocoaSet.count.getter()), , v12))
  {
    v13 = [a2 hashtags];
    if (v13 && (v14 = v13, v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v14, sub_100202C38(v15), v17 = v16, , v17))
    {
      v18 = String._bridgeToObjectiveC()();
    }

    else
    {
      v18 = 0;
    }

    [a2 setName:v18];

    v19 = [a2 hashtags];
    if (v19)
    {
      v20 = v19;
      v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1002030B0(v21, v8);

      v22 = type metadata accessor for Date();
      v23 = *(v22 - 8);
      isa = 0;
      if ((*(v23 + 48))(v8, 1, v22) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v23 + 8))(v8, v22);
      }
    }

    else
    {
      v25 = type metadata accessor for Date();
      (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
      isa = 0;
    }

    [a2 setRecencyDate:isa];
  }

  else
  {

    [a1 deleteObject:a2];
  }
}

void *sub_10020F7FC()
{
  v1 = sub_1003480AC(0, 3u);
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v2 = [objc_allocWithZone(NSFetchRequest) init];
  v3 = [swift_getObjCClassFromMetadata() entity];
  [v2 setEntity:v3];

  [v2 setAffectedStores:0];
  [v2 setPredicate:v1];

  sub_10003450C(&off_1008E2578);
  sub_100034610(&unk_1008E2598);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = v2;
  [v2 setPropertiesToFetch:isa];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v37 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 2, 0);
  v6 = _swiftEmptyArrayStorage;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v7 = *(inited + 32);
  }

  v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v9)
  {
    goto LABEL_20;
  }

  v0 = v8;
  v10 = v9;

  v12 = _swiftEmptyArrayStorage[2];
  v11 = _swiftEmptyArrayStorage[3];
  if (v12 >= v11 >> 1)
  {
    sub_100026EF4((v11 > 1), v12 + 1, 1);
    v6 = v37;
  }

  v6[2] = v12 + 1;
  v13 = &v6[2 * v12];
  v13[4] = v0;
  v13[5] = v10;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v14 = *(inited + 40);

LABEL_12:
    v15 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (v16)
    {
      v17 = v15;
      v18 = v16;

      v37 = v6;
      v20 = v6[2];
      v19 = v6[3];
      if (v20 >= v19 >> 1)
      {
        sub_100026EF4((v19 > 1), v20 + 1, 1);
        v6 = v37;
      }

      v6[2] = v20 + 1;
      v21 = &v6[2 * v20];
      v21[4] = v17;
      v21[5] = v18;
      swift_setDeallocating();
      v22 = *(inited + 16);
      swift_arrayDestroy();
      v23 = Array._bridgeToObjectiveC()().super.isa;

      [v35 setRelationshipKeyPathsForPrefetching:v23];

      v32 = NSManagedObjectContext.fetch<A>(_:)();
      return v32;
    }

LABEL_20:
    _StringGuts.grow(_:)(46);
    v34._object = 0x80000001007EC120;
    v34._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v34);
    sub_1000F5104(&unk_10093D020, qword_1007A3230);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_19:
  __break(1u);
  swift_once();
  v24 = type metadata accessor for Logger();
  sub_100006654(v24, qword_10093CC70);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    *v27 = 136315138;
    swift_getErrorValue();
    v29 = Error.rem_errorDescription.getter();
    v31 = sub_10000668C(v29, v30, &v36);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "REMCDHashtagLabelRepairer: failed to fetch hashtag from database {error: %s}", v27, 0xCu);
    sub_10000607C(v28);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10020FD48(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v73 - v14;
  v16 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v17 = *(*(v16 - 8) + 64);
  *&v18 = __chkstk_darwin(v16 - 8).n128_u64[0];
  v20 = &v73 - v19;
  v21 = [a2 name];
  if (!v21)
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_10093CC70);
    v35 = a2;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_39;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v77[0] = v39;
    *v38 = 136446210;
    v40 = [v35 remObjectID];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 description];

      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
    }

    else
    {
      v43 = 7104878;
      v45 = 0xE300000000000000;
    }

    v71 = sub_10000668C(v43, v45, v77);

    *(v38 + 4) = v71;
    v70 = "REMCDHashtagLabelRepairer: hashtag[%{public}s] without name";
    goto LABEL_38;
  }

  v74 = a1;
  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v77[0] = v23;
  v77[1] = v25;
  static Locale.current.getter();
  v26 = type metadata accessor for Locale();
  (*(*(v26 - 8) + 56))(v20, 0, 1, v26);
  sub_10013BCF4();
  v27 = StringProtocol.foldedStringForWriting(locale:)();
  v29 = v28;
  sub_1000050A4(v20, &unk_10093F420, &unk_100797AE0);

  v30 = [a2 account];
  if (!v30)
  {

    goto LABEL_14;
  }

  v75 = v27;
  v31 = v30;
  v32 = [v30 identifier];

  if (v32)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  (*(v5 + 56))(v12, v33, 1, v4);
  sub_100031B58(v12, v15, &unk_100939D90, "8\n\r");
  if ((*(v5 + 48))(v15, 1, v4))
  {

    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
LABEL_14:
    if (qword_100935BF8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

  v73 = a2;
  (*(v5 + 16))(v8, v15, v4);
  sub_1000050A4(v15, &unk_100939D90, "8\n\r");
  v54 = UUID.uuidString.getter();
  v76 = v55;
  (*(v5 + 8))(v8, v4);
  v56 = sub_10020E138(v74, v75, v29);

  if (!(v56 >> 62))
  {
    a2 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_20;
    }

LABEL_47:

    return sub_10020E700(v74, v73);
  }

  a2 = _CocoaArrayWrapper.endIndex.getter();
  if (!a2)
  {
    goto LABEL_47;
  }

LABEL_20:
  v57 = 0;
  v75 = v56 & 0xC000000000000001;
  while (1)
  {
    if (v75)
    {
      v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v57 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v58 = *(v56 + 8 * v57 + 32);
    }

    v59 = v58;
    v60 = (v57 + 1);
    if (__OFADD__(v57, 1))
    {
      break;
    }

    v61 = [v58 accountIdentifier];
    if (v61)
    {
      v62 = v61;
      v63 = v54;
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      if (v64 == v63 && v66 == v76)
      {

        goto LABEL_42;
      }

      v54 = v63;
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v68)
      {

LABEL_42:

        return v59;
      }
    }

    ++v57;
    if (v60 == a2)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  swift_once();
LABEL_15:
  v46 = type metadata accessor for Logger();
  sub_100006654(v46, qword_10093CC70);
  v47 = a2;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v77[0] = v39;
    *v38 = 136446210;
    v48 = [v47 remObjectID];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 description];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {
      v51 = 7104878;
      v53 = 0xE300000000000000;
    }

    v69 = sub_10000668C(v51, v53, v77);

    *(v38 + 4) = v69;
    v70 = "REMCDHashtagLabelRepairer: hashtag[%{public}s] without accountIdentifier";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v36, v37, v70, v38, 0xCu);
    sub_10000607C(v39);
  }

LABEL_39:

  return 0;
}

uint64_t sub_1002104FC()
{
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v0 = [objc_allocWithZone(NSFetchRequest) init];
  v1 = [swift_getObjCClassFromMetadata() entity];
  [v0 setEntity:v1];

  [v0 setAffectedStores:0];
  [v0 setPredicate:0];
  sub_100271EA8(&off_1008E25D8);
  sub_10003450C(&off_1008E25A8);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setPropertiesToFetch:isa];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_10;
    }

    v4 = *(inited + 32);
  }

  v5 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v6)
  {
LABEL_10:
    _StringGuts.grow(_:)(46);
    v16._object = 0x80000001007EC120;
    v16._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v16);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v7 = v5;
  v8 = v6;

  v10 = _swiftEmptyArrayStorage[2];
  v9 = _swiftEmptyArrayStorage[3];
  if (v10 >= v9 >> 1)
  {
    sub_100026EF4((v9 > 1), v10 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v10 + 1;
  v11 = &_swiftEmptyArrayStorage[2 * v10];
  v11[4] = v7;
  v11[5] = v8;
  swift_setDeallocating();
  v12 = *(inited + 16);
  swift_arrayDestroy();
  v13 = Array._bridgeToObjectiveC()().super.isa;

  [v0 setRelationshipKeyPathsForPrefetching:v13];

  v14 = NSManagedObjectContext.fetch<A>(_:)();
  return v14;
}

uint64_t sub_1002109B0()
{
  v0 = sub_1003480AC(1, 3u);
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v1 = [objc_allocWithZone(NSFetchRequest) init];
  v2 = [swift_getObjCClassFromMetadata() entity];
  [v1 setEntity:v2];

  [v1 setAffectedStores:0];
  [v1 setPredicate:v0];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v31 = _swiftEmptyArrayStorage;
  sub_100010D04(0, 1, 0);
  v4 = _swiftEmptyArrayStorage;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v5 = *(inited + 32);
  }

  v6 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v7)
  {
LABEL_18:
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v28._object = 0x80000001007EC120;
    v28._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v28);
    sub_1000F5104(&unk_10093D020, qword_1007A3230);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v8 = v6;
  v9 = v7;
  v30 = &type metadata for String;

  *&v29 = v8;
  *(&v29 + 1) = v9;
  v11 = _swiftEmptyArrayStorage[2];
  v10 = _swiftEmptyArrayStorage[3];
  if (v11 >= v10 >> 1)
  {
    sub_100010D04((v10 > 1), v11 + 1, 1);
    v4 = v31;
  }

  v4[2] = v11 + 1;
  sub_100005EE0(&v29, &v4[4 * v11 + 4]);
  swift_setDeallocating();
  v12 = *(inited + 16);
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setPropertiesToFetch:isa];

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1007953F0;
  *(v14 + 32) = swift_getKeyPath();
  v31 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v15 = v31;
  if ((v14 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = *(v14 + 32);

LABEL_12:
  v17 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = v17;
  v20 = v18;

  v22 = v15[2];
  v21 = v15[3];
  if (v22 >= v21 >> 1)
  {
    sub_100026EF4((v21 > 1), v22 + 1, 1);
    v15 = v31;
  }

  v15[2] = v22 + 1;
  v23 = &v15[2 * v22];
  v23[4] = v19;
  v23[5] = v20;
  swift_setDeallocating();
  v24 = *(v14 + 16);
  swift_arrayDestroy();
  v25 = Array._bridgeToObjectiveC()().super.isa;

  [v1 setRelationshipKeyPathsForPrefetching:v25];

  v26 = NSManagedObjectContext.fetch<A>(_:)();
  return v26;
}

uint64_t sub_100210F94()
{
  v0 = [objc_opt_self() fetchRequest];
  [v0 setPropertiesToFetch:0];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_10;
    }

    v2 = *(inited + 32);
  }

  v3 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v4)
  {
LABEL_10:
    _StringGuts.grow(_:)(46);
    v14._object = 0x80000001007EC120;
    v14._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v14);
    sub_1000F5104(&unk_10093CFF0, &unk_10079AAB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v5 = v3;
  v6 = v4;

  v8 = _swiftEmptyArrayStorage[2];
  v7 = _swiftEmptyArrayStorage[3];
  if (v8 >= v7 >> 1)
  {
    sub_100026EF4((v7 > 1), v8 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v8 + 1;
  v9 = &_swiftEmptyArrayStorage[2 * v8];
  v9[4] = v5;
  v9[5] = v6;
  swift_setDeallocating();
  v10 = *(inited + 16);
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_100944260, off_1008D41D8);
  v12 = NSManagedObjectContext.fetch<A>(_:)();

  return v12;
}

uint64_t sub_1002113F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100211458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002114BC(uint64_t a1)
{
  v2 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_10021156C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  return a1;
}

uint64_t sub_100211640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20) + 8);
}

uint64_t sub_1002116B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t sub_100211740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v10 = v8[1];
  v8[1] = v9[1];

  return a1;
}

uint64_t sub_1002117DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_100211858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  v12 = v8[1];
  *v8 = v11;
  v8[1] = v10;

  return a1;
}

uint64_t sub_10021190C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1002119C8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093D280);
  v1 = sub_100006654(v0, qword_10093D280);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_100211A9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100211B88()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100211C60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100211D48@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002130F4(*a1);
  *a2 = result;
  return result;
}

void sub_100211D78(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x44497463656A626FLL;
  v5 = 0x80000001007E9F10;
  v6 = 0xD000000000000010;
  v7 = 0xE800000000000000;
  v8 = 0x4449556D72616C61;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001007E9F30;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x72656767697274;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100211E30@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1002130F4(a1);
  *a2 = result;
  return result;
}

unint64_t sub_100211E58()
{
  v1 = *v0;
  v2 = 0x44497463656A626FLL;
  v3 = 0xD000000000000010;
  v4 = 0x4449556D72616C61;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72656767697274;
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

uint64_t sub_100211EFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7265646E696D6572;
  }

  else
  {
    v4 = 0x49746E756F636361;
  }

  if (v3)
  {
    v5 = 0xE900000000000044;
  }

  else
  {
    v5 = 0xEA00000000004449;
  }

  if (*a2)
  {
    v6 = 0x7265646E696D6572;
  }

  else
  {
    v6 = 0x49746E756F636361;
  }

  if (*a2)
  {
    v7 = 0xEA00000000004449;
  }

  else
  {
    v7 = 0xE900000000000044;
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

Swift::Int sub_100211FAC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100212038()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002120C0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1248, *a1);

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

uint64_t sub_100212130@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1248, v3);

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

id sub_100212194(void *a1)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = 0;
  v10 = [a1 remObjectIDWithError:v47];
  if (!v10)
  {
    v18 = v47[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v3;
  }

  v11 = v10;
  v12 = v47[0];
  v13 = [a1 trigger];
  if (!v13)
  {
    if (qword_100935C20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_10093D280);
    v15 = v11;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v15;
      *v23 = v11;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v20, v21, "REMAlarmCDIngestor: cdAlarm.trigger is nil {cdAlarm.remObjectID: %@}", v22, 0xCu);
      sub_1000050A4(v23, &unk_100938E70, &unk_100797230);
    }

    v25 = objc_opt_self();
    sub_1000060C8(0, &unk_100938870, off_1008D4128);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = String._bridgeToObjectiveC()();
    [v25 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v27];

    swift_willThrow();
    goto LABEL_13;
  }

  v44[1] = v13;
  v14 = v13;
  v3 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
  v15 = v14;
  sub_1000F5104(&qword_10093D488, &qword_10079AF40);
  if (!swift_dynamicCast())
  {
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    sub_1000050A4(v45, &qword_10093D490, &qword_10079AF48);
    v28 = objc_opt_self();
    v47[0] = 0;
    v47[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v29._object = 0x80000001007F0E30;
    v29._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v29);
    v30 = [v15 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35._countAndFlagsBits = 125;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v36 = String._bridgeToObjectiveC()();

    [v28 internalErrorWithDebugDescription:v36];

    swift_willThrow();
LABEL_13:

    return v3;
  }

  v44[0] = v6;
  sub_100054B6C(v45, v47);
  v3 = v48;
  v16 = v49;
  sub_10000F61C(v47, v48);
  v17 = (*(v16 + 8))(*(v1 + 16), v11, v3, v16);
  if (v2)
  {

    sub_10000607C(v47);
  }

  else
  {
    v38 = v17;
    v3 = [objc_allocWithZone(REMAlarm) initWithTrigger:v17 objectID:v11];
    v39 = [a1 acknowledgedDate];
    if (v39)
    {
      v40 = v39;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v41.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v44[0] + 8))(v9, v5);
    }

    else
    {
      v41.super.isa = 0;
    }

    [v3 setAcknowledgedDate:v41.super.isa];

    v42 = [a1 alarmUID];
    [v3 setAlarmUID:v42];

    v43 = [a1 originalAlarmUID];
    [v3 setOriginalAlarmUID:v43];

    sub_10000607C(v47);
  }

  return v3;
}

void sub_100212774(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v73 = type metadata accessor for Date();
  v7 = *(v73 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v73);
  v72 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for UUID();
  v10 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v79 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = (a3 + 32);
    v71 = (v7 + 8);
    v76 = (v11 + 8);
    v75 = xmmword_1007953F0;
    v74 = a1;
    while (1)
    {
      v17 = *v14++;
      v16 = v17;
      if (v17 > 1)
      {
        break;
      }

      if (v16)
      {
        v24 = [a1 trigger];
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (v25)
        {
          v26 = v25;
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v27 = swift_allocObject();
          *(v27 + 16) = v75;
          *(v27 + 32) = v26;
          v28 = *(v78 + 16);
          v81 = 0;
          v29 = v24;
          v30 = v28;
          v31 = [a2 remObjectIDWithError:&v81];
          v32 = v81;
          if (!v31)
          {
            goto LABEL_29;
          }

          v33 = v31;
          type metadata accessor for REMAlarmTimeIntervalTriggerCDIngestor();
          v34 = swift_allocObject();
          *(v34 + 16) = v30;
          *(v34 + 24) = v33;
          v35 = v32;
          sub_1005FA684(v27, v34);
        }

        else
        {
          objc_opt_self();
          v36 = swift_dynamicCastObjCClass();
          if (v36)
          {
            v37 = v36;
            sub_1000F5104(&unk_100939D60, &unk_1007959E0);
            v38 = swift_allocObject();
            *(v38 + 16) = v75;
            *(v38 + 32) = v37;
            v39 = *(v78 + 16);
            v81 = 0;
            v29 = v24;
            v30 = v39;
            v40 = [a2 remObjectIDWithError:&v81];
            v32 = v81;
            if (!v40)
            {
              goto LABEL_29;
            }

            v41 = v40;
            type metadata accessor for REMAlarmDateTriggerCDIngestor();
            v42 = swift_allocObject();
            *(v42 + 16) = v30;
            *(v42 + 24) = v41;
            v43 = v32;
            sub_1005FAE8C(v38, v42);
          }

          else
          {
            objc_opt_self();
            v44 = swift_dynamicCastObjCClass();
            if (v44)
            {
              v45 = v44;
              sub_1000F5104(&unk_100939D60, &unk_1007959E0);
              v46 = swift_allocObject();
              *(v46 + 16) = v75;
              *(v46 + 32) = v45;
              v47 = *(v78 + 16);
              v81 = 0;
              v29 = v24;
              v30 = v47;
              v48 = [a2 remObjectIDWithError:&v81];
              v32 = v81;
              if (!v48)
              {
                goto LABEL_29;
              }

              v49 = v48;
              type metadata accessor for REMAlarmLocationTriggerCDIngestor();
              v50 = swift_allocObject();
              *(v50 + 16) = v30;
              *(v50 + 24) = v49;
              v51 = v32;
              sub_1005FB694(v46, v50);
            }

            else
            {
              objc_opt_self();
              v52 = swift_dynamicCastObjCClass();
              if (!v52)
              {

                v61 = objc_opt_self();
                v81 = 0;
                v82 = 0xE000000000000000;
                _StringGuts.grow(_:)(36);

                v81 = 0xD000000000000021;
                v82 = 0x80000001007F0E00;
                v62 = [a1 trigger];
                v63 = [v62 description];
                v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v66 = v65;

                v67._countAndFlagsBits = v64;
                v67._object = v66;
                String.append(_:)(v67);

                v68._countAndFlagsBits = 125;
                v68._object = 0xE100000000000000;
                String.append(_:)(v68);
                v69 = String._bridgeToObjectiveC()();

                [v61 internalErrorWithDebugDescription:v69];

                swift_willThrow();
                return;
              }

              v53 = v52;
              sub_1000F5104(&unk_100939D60, &unk_1007959E0);
              v54 = swift_allocObject();
              *(v54 + 16) = v75;
              *(v54 + 32) = v53;
              v55 = *(v78 + 16);
              v81 = 0;
              v29 = v24;
              v30 = v55;
              v56 = [a2 remObjectIDWithError:&v81];
              v32 = v81;
              if (!v56)
              {
LABEL_29:
                v60 = v32;

                _convertNSErrorToError(_:)();
                swift_willThrow();

                return;
              }

              v57 = v56;
              type metadata accessor for REMAlarmVehicleTriggerCDIngestor();
              v58 = swift_allocObject();
              *(v58 + 16) = v30;
              *(v58 + 24) = v57;
              v59 = v32;
              sub_1005FBE9C(v54, v58);
            }
          }
        }

        a1 = v74;

        if (!--v13)
        {
          return;
        }
      }

      else
      {
        v18 = [a1 objectID];
        v19 = [v18 uuid];

        v20 = v79;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v76)(v20, v80);
        [a2 setIdentifier:isa];
LABEL_4:

        if (!--v13)
        {
          return;
        }
      }
    }

    if (v16 == 2)
    {
      v21 = [a1 acknowledgedDate];
      if (v21)
      {
        v22 = v72;
        v23 = v21;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        isa = Date._bridgeToObjectiveC()().super.isa;
        (*v71)(v22, v73);
      }

      else
      {
        isa = 0;
      }

      [a2 setAcknowledgedDate:isa];
    }

    else if (v16 == 3)
    {
      isa = [a1 alarmUID];
      [a2 setAlarmUID:isa];
    }

    else
    {
      isa = [a1 originalAlarmUID];
      [a2 setOriginalAlarmUID:isa];
    }

    goto LABEL_4;
  }
}

id sub_100212F28(void *a1, void *a2)
{
  v4 = *v2;
  v5 = a1;
  v6 = a2;
  v7 = sub_1001D3CF0(v4);

  return v7;
}

id sub_100212F8C(void *a1, void *a2)
{
  v4 = *v2;
  v5 = a1;
  v6 = a2;
  v7 = sub_1001D333C(v4);

  return v7;
}

id sub_100212FF0(void *a1, void *a2)
{
  v4 = *v2;
  v5 = a1;
  v6 = a2;
  v7 = sub_1001D394C(v4);

  return v7;
}

id sub_100213054(void *a1, void *a2)
{
  v4 = *v2;
  v5 = a1;
  v6 = a2;
  v7 = sub_1001D3844(v4);

  return v7;
}

unint64_t sub_1002130F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0868, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for REMCDTemplateOperationQueueItem.OperationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for REMCDTemplateOperationQueueItem.OperationType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1002132D4()
{
  result = qword_10093D4A8;
  if (!qword_10093D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D4A8);
  }

  return result;
}

unint64_t sub_10021335C()
{
  result = qword_10093D4C0;
  if (!qword_10093D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D4C0);
  }

  return result;
}

void *sub_1002133B0(uint64_t a1)
{
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_100010D04(0, v2 & ~(v2 >> 63), 0);
    v32 = _swiftEmptyArrayStorage;
    if (v31)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v6 = -1 << *(a1 + 32);
      v4 = _HashTable.startBucket.getter();
      v5 = *(a1 + 36);
    }

    v35 = v4;
    v36 = v5;
    v37 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (v7 < v2)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_36;
        }

        v11 = v35;
        v10 = v36;
        v12 = v37;
        sub_10003AFD8(v35, v36, v37, a1);
        v13 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v14)
        {
          goto LABEL_43;
        }

        v15 = v13;
        v16 = v14;
        v34 = &type metadata for String;

        *&v33 = v15;
        *(&v33 + 1) = v16;
        v17 = v32;
        v38 = v32;
        v19 = v32[2];
        v18 = v32[3];
        if (v19 >= v18 >> 1)
        {
          sub_100010D04((v18 > 1), v19 + 1, 1);
          v17 = v38;
        }

        v17[2] = v19 + 1;
        v32 = v17;
        sub_100005EE0(&v33, &v17[4 * v19 + 4]);
        if (v31)
        {
          if (!v12)
          {
            goto LABEL_41;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1000F5104(&qword_10093D5C0, &qword_10079B268);
          v8 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v8(&v33, 0);
          if (v7 == v2)
          {
LABEL_33:
            sub_100010E34(v35, v36, v37);
            return v32;
          }
        }

        else
        {
          if (v12)
          {
            goto LABEL_42;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v20 = 1 << *(a1 + 32);
          if (v11 >= v20)
          {
            goto LABEL_37;
          }

          v21 = v11 >> 6;
          v22 = *(a1 + 56 + 8 * (v11 >> 6));
          if (((v22 >> v11) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(a1 + 36) != v10)
          {
            goto LABEL_39;
          }

          v23 = v22 & (-2 << (v11 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (a1 + 64 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_100010E34(v11, v10, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_32;
              }
            }

            sub_100010E34(v11, v10, 0);
          }

LABEL_32:
          v29 = *(a1 + 36);
          v35 = v20;
          v36 = v29;
          v37 = 0;
          if (v7 == v2)
          {
            goto LABEL_33;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v30._object = 0x80000001007EC120;
    v30._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v30);
    sub_1000F5104(&qword_100946530, &qword_10079B260);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_1002137C0(uint64_t a1)
{
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_100010D04(0, v2 & ~(v2 >> 63), 0);
    v32 = _swiftEmptyArrayStorage;
    if (v31)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v6 = -1 << *(a1 + 32);
      v4 = _HashTable.startBucket.getter();
      v5 = *(a1 + 36);
    }

    v35 = v4;
    v36 = v5;
    v37 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (v7 < v2)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_36;
        }

        v11 = v35;
        v10 = v36;
        v12 = v37;
        sub_1000186FC(v35, v36, v37, a1);
        v13 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v14)
        {
          goto LABEL_43;
        }

        v15 = v13;
        v16 = v14;
        v34 = &type metadata for String;

        *&v33 = v15;
        *(&v33 + 1) = v16;
        v17 = v32;
        v38 = v32;
        v19 = v32[2];
        v18 = v32[3];
        if (v19 >= v18 >> 1)
        {
          sub_100010D04((v18 > 1), v19 + 1, 1);
          v17 = v38;
        }

        v17[2] = v19 + 1;
        v32 = v17;
        sub_100005EE0(&v33, &v17[4 * v19 + 4]);
        if (v31)
        {
          if (!v12)
          {
            goto LABEL_41;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1000F5104(&qword_10093D5A0, &qword_10079B228);
          v8 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v8(&v33, 0);
          if (v7 == v2)
          {
LABEL_33:
            sub_100010E34(v35, v36, v37);
            return v32;
          }
        }

        else
        {
          if (v12)
          {
            goto LABEL_42;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v20 = 1 << *(a1 + 32);
          if (v11 >= v20)
          {
            goto LABEL_37;
          }

          v21 = v11 >> 6;
          v22 = *(a1 + 56 + 8 * (v11 >> 6));
          if (((v22 >> v11) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(a1 + 36) != v10)
          {
            goto LABEL_39;
          }

          v23 = v22 & (-2 << (v11 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (a1 + 64 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_100010E34(v11, v10, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_32;
              }
            }

            sub_100010E34(v11, v10, 0);
          }

LABEL_32:
          v29 = *(a1 + 36);
          v35 = v20;
          v36 = v29;
          v37 = 0;
          if (v7 == v2)
          {
            goto LABEL_33;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v30._object = 0x80000001007EC120;
    v30._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v30);
    sub_1000F5104(&qword_10093F530, &qword_10079B220);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100213BD0(unint64_t a1, unint64_t isUniquelyReferenced_nonNull_native, void *a3)
{
  v73 = a3;
  v68 = type metadata accessor for UUID();
  v5 = *(v68 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v68);
  v61 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v67 = &v60 - v10;
  __chkstk_darwin(v9);
  v72 = &v60 - v11;
  v76 = a1;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_48:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_3;
    }

    return a1;
  }

  v12 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    return a1;
  }

LABEL_3:
  a1 = 0;
  v13 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v14 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v69 = (v5 + 4);
  v70 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v62 = (v5 + 1);
  v65 = v12;
  v66 = isUniquelyReferenced_nonNull_native;
  v71 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  while (1)
  {
    if (v13)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (a1 >= *(v14 + 16))
      {
        goto LABEL_46;
      }

      v15 = *(isUniquelyReferenced_nonNull_native + 8 * a1 + 32);
    }

    v16 = v15;
    v17 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v5 = *v73;
    if ((*v73 & 0xC000000000000001) == 0)
    {
      break;
    }

    v18 = v15;
    v5 = __CocoaDictionary.lookup(_:)();

    if (v5)
    {
      v74 = v5;
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
      swift_dynamicCast();
      v19 = v75;
      if (v75)
      {
        goto LABEL_17;
      }
    }

LABEL_4:

LABEL_5:
    ++a1;
    if (v17 == v12)
    {
      return v76;
    }
  }

  if (!v5[2])
  {
    goto LABEL_4;
  }

  v20 = sub_10002B924(v15);
  if ((v21 & 1) == 0)
  {
    goto LABEL_4;
  }

  v19 = *(v5[7] + 8 * v20);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_17:
  v22 = v19;
  v23 = [v22 identifier];
  v24 = v22;
  if (!v23)
  {
LABEL_33:

    v5 = sub_100368FC8(v16);

    goto LABEL_42;
  }

  v25 = v67;
  v26 = v23;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = v68;
  v28 = *v69;
  v29 = v72;
  (*v69)(v72, v25, v68);
  v30 = [v22 account];
  if (!v30)
  {
    (*v62)(v29, v27);
    v24 = v22;
LABEL_32:
    v12 = v65;
    isUniquelyReferenced_nonNull_native = v66;
    goto LABEL_33;
  }

  v24 = v30;
  v31 = [v30 remObjectID];
  if (!v31)
  {
    (*v62)(v72, v27);

    goto LABEL_32;
  }

  v32 = v31;
  v33 = v27;
  v34 = v72;
  v35 = UUID.uuidString.getter();
  v63 = v36;
  v64 = v35;

  v37 = v61;
  v28(v61, v34, v33);
  v38 = type metadata accessor for RDElementManualSortID();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  v42 = v63;
  *(v41 + 16) = v64;
  *(v41 + 24) = v42;
  v43 = v37;
  v44 = v41;
  v28((v41 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID), v43, v33);
  *(v44 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID) = v32;
  v5 = v76;
  if ((v76 & 0xC000000000000001) == 0)
  {
    goto LABEL_25;
  }

  if (v76 >= 0)
  {
    v5 = (v76 & 0xFFFFFFFFFFFFFF8);
  }

  v45 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v45, 1))
  {
    v5 = sub_10021D4DC(v5, v45 + 1, &unk_100943080, &unk_1007A3B00, type metadata accessor for RDElementManualSortID, sub_10036A210);
    v76 = v5;
LABEL_25:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v5;
    v47 = sub_10002B924(v16);
    v48 = v5[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_47;
    }

    v51 = v46;
    if (v5[3] >= v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v54 = v75;
        if ((v46 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v5 = &v75;
        sub_1003731C0();
        v54 = v75;
        if ((v51 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      sub_10036A210(v50, isUniquelyReferenced_nonNull_native);
      v5 = v75;
      v52 = sub_10002B924(v16);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_52;
      }

      v47 = v52;
      v54 = v75;
      if ((v51 & 1) == 0)
      {
LABEL_39:
        v54[(v47 >> 6) + 8] |= 1 << v47;
        *(v54[6] + 8 * v47) = v16;
        *(v54[7] + 8 * v47) = v44;
        v56 = v54[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_51;
        }

        v54[2] = v58;

LABEL_41:
        v76 = v54;
        v12 = v65;
        isUniquelyReferenced_nonNull_native = v66;
LABEL_42:
        v14 = v70;
        v13 = v71;
        goto LABEL_5;
      }
    }

    v55 = v54[7];
    v5 = *(v55 + 8 * v47);
    *(v55 + 8 * v47) = v44;

    goto LABEL_41;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10021417C(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, a2, a3);
    sub_10000CE28(a4, a2, a3);
    Set.Iterator.init(_cocoa:)();
    v4 = v26;
    v8 = v27;
    v9 = v28;
    v10 = v29;
    v11 = v30;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v22 = v9;
LABEL_8:
  v15 = v10;
  v16 = v11;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_1000060C8(0, a2, a3), swift_dynamicCast(), v19 = v25, v10 = v15, v11 = v16, !v25))
      {
LABEL_22:
        sub_10001B860();
        return;
      }

      goto LABEL_18;
    }

    v17 = v15;
    v18 = v16;
    v10 = v15;
    if (!v16)
    {
      break;
    }

LABEL_14:
    v11 = (v18 - 1) & v18;
    v19 = *(*(v4 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v19)
    {
      goto LABEL_22;
    }

LABEL_18:
    v20 = [v19 remObjectID];

    v15 = v10;
    v16 = v11;
    if (v20)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= ((v9 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v18 = *(v8 + 8 * v10);
    ++v17;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1002143F0(uint64_t a1)
{
  v72 = type metadata accessor for DispatchQoS();
  v71 = *(v72 - 8);
  v3 = *(v71 + 64);
  __chkstk_darwin(v72);
  v68 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v69 - 8);
  v5 = *(v67 + 64);
  __chkstk_darwin(v69);
  v66 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  sub_10021417C(a1, &qword_100939EE0, off_1008D41D0, &qword_100944210);
  v70 = 0;
  v8 = sub_1001A577C(v7);

  v9 = swift_allocObject();
  *(v9 + 16) = &_swiftEmptyDictionarySingleton;
  v10 = swift_allocObject();
  *(v10 + 16) = &_swiftEmptySetSingleton;
  v73 = v1;
  v74 = v10 + 16;
  p_aBlock = *(v1 + 24);
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  v13 = *(p_aBlock + 16);
  v14 = swift_allocObject();
  v65 = p_aBlock;
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_100220A94;
  v15[4] = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100220AD0;
  *(v16 + 24) = v15;
  v82 = sub_1000FDA90;
  v83 = v16;
  aBlock = _NSConcreteStackBlock;
  v79 = 1107296256;
  v80 = sub_10000F160;
  v81 = &unk_1008EA8B0;
  v17 = _Block_copy(&aBlock);

  dispatch_sync(v13, v17);
  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    v43 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_29;
  }

  swift_beginAccess();
  v18 = *(v9 + 16);
  swift_beginAccess();
  v19 = *(v10 + 16);

  v20 = sub_10031E8C4(v75);
  if (!v20 || (v21 = v20, v22 = [v20 managedObjectContext], v21, !v22))
  {

    return v18;
  }

  v62 = v22;
  v23 = swift_allocObject();
  v61[0] = v23;
  *(v23 + 16) = &_swiftEmptyDictionarySingleton;
  aBlock = _swiftEmptyArrayStorage;
  v74 = v23 + 16;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v28 = -1 << *(v18 + 32);
    v25 = ~v28;
    v24 = v18 + 64;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v26 = v30 & *(v18 + 64);
    v27 = v18;
  }

  v63 = v18;

  v31 = 0;
  v61[1] = v25;
  v32 = (v25 + 64) >> 6;
  v33 = _swiftEmptyArrayStorage;
LABEL_12:
  v64 = v33;
  while ((v27 & 0x8000000000000000) != 0)
  {
    v38 = __CocoaDictionary.Iterator.next()();
    if (!v38)
    {
      goto LABEL_27;
    }

    v40 = v39;
    v76 = v38;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    swift_dynamicCast();
    p_aBlock = v77;
    v76 = v40;
    type metadata accessor for RDElementManualSortID();
    swift_dynamicCast();
    v37 = v77;
    if (!p_aBlock)
    {
      goto LABEL_27;
    }

LABEL_22:
    if (!*(v37 + 24))
    {
      v41 = p_aBlock;

      p_aBlock = &aBlock;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v42 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v33 = aBlock;
      goto LABEL_12;
    }
  }

  v34 = v31;
  v35 = v26;
  if (!v26)
  {
    while (1)
    {
      v31 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v31 >= v32)
      {
        goto LABEL_27;
      }

      v35 = *(v24 + 8 * v31);
      ++v34;
      if (v35)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_18:
  v26 = (v35 - 1) & v35;
  v36 = (v31 << 9) | (8 * __clz(__rbit64(v35)));
  v37 = *(*(v27 + 56) + v36);
  p_aBlock = *(*(v27 + 48) + v36);

  if (p_aBlock)
  {
    goto LABEL_22;
  }

LABEL_27:
  sub_10001B860();
  p_aBlock = sub_100215F30(v19, v64);

  if (p_aBlock >> 62)
  {
    goto LABEL_37;
  }

  v43 = *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
  v44 = v75;
  v18 = v63;
  v45 = v62;
  if (v43)
  {
    v46 = swift_allocObject();
    v46[2] = v44;
    v46[3] = p_aBlock;
    v47 = v73;
    v46[4] = v74;
    v46[5] = v47;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1002207F4;
    *(v48 + 24) = v46;
    v82 = sub_1000FDA90;
    v83 = v48;
    aBlock = _NSConcreteStackBlock;
    v79 = 1107296256;
    v80 = sub_10000F160;
    v81 = &unk_1008EA928;
    v49 = _Block_copy(&aBlock);

    [v45 performBlockAndWait:v49];
    _Block_release(v49);
    LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

    if (v49)
    {
      __break(1u);
    }

    else
    {
      v50 = *(v65 + 16);
      v51 = v61[0];

      v52 = v66;
      static DispatchWorkItemFlags.barrier.getter();
      v53 = swift_allocObject();
      swift_weakInit();
      v54 = swift_allocObject();
      v54[2] = v53;
      v54[3] = sub_100220800;
      v54[4] = v51;
      v82 = sub_100220AD4;
      v83 = v54;
      aBlock = _NSConcreteStackBlock;
      v79 = 1107296256;
      v80 = sub_100019200;
      v81 = &unk_1008EA978;
      v55 = _Block_copy(&aBlock);

      v56 = v68;
      static DispatchQoS.unspecified.getter();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v55);

      (*(v71 + 8))(v56, v72);
      (*(v67 + 8))(v52, v69);

      swift_beginAccess();
      v57 = *(v51 + 16);
      v77 = v18;

      v59 = v70;
      sub_10021F054(v58, sub_100220A64, 0, &v77);
      if (!v59)
      {

        return v77;
      }
    }

    __break(1u);
  }

  else
  {

    return v18;
  }

  return result;
}

uint64_t sub_100214E04()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093D4C8);
  v1 = sub_100006654(v0, qword_10093D4C8);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100214ECC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 16) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3 & 1;
  v5 = qword_100935C28;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10093D4C8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDManualSortIDAdapter > initialized", v9, 2u);
  }

  return v4;
}

void sub_100214FE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v43 = a3;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32))
  {
    v15 = *(a1 + 16);
    if (!*(v15 + 24))
    {
LABEL_5:
      v18 = objc_opt_self();
      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(143);
      v19._object = 0x80000001007F0ED0;
      v19._countAndFlagsBits = 0xD000000000000024;
      String.append(_:)(v19);
      v40 = *(v15 + 16);
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v20._countAndFlagsBits = Optional.descriptionOrNil.getter();
      String.append(_:)(v20);

      v21._countAndFlagsBits = 0xD000000000000069;
      v21._object = 0x80000001007F0F00;
      String.append(_:)(v21);
      v22 = String._bridgeToObjectiveC()();

      [v18 internalErrorWithDebugDescription:v22];

      swift_willThrow();
      return;
    }

    v16 = *(v15 + 16);
    v17 = *(v15 + 24);

    UUID.init(uuidString:)();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1000050A4(v9, &unk_100939D90, "8\n\r");
      goto LABEL_5;
    }

    (*(v11 + 32))(v14, v9, v10);
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v26 = [ObjCClassFromMetadata objectIDWithUUID:isa];

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1007953F0;
    *(v27 + 32) = v26;
    v28 = v26;
    v29 = sub_10000F8A4(v27, 0, 6u);

    (*(v11 + 8))(v14, v10);
    v23 = v29;
  }

  else
  {
    v23 = sub_10000F8A4(7uLL, 0, 7u);
  }

  v30 = qword_1009363E0;
  v31 = v23;
  if (v30 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v32 = [objc_allocWithZone(NSFetchRequest) init];
  v33 = [swift_getObjCClassFromMetadata() entity];
  [v32 setEntity:v33];

  [v32 setAffectedStores:0];
  [v32 setPredicate:v31];
  v41 = _swiftEmptySetSingleton;

  sub_100010864(v34);

  sub_1002137C0(v41);

  v35 = Array._bridgeToObjectiveC()().super.isa;

  [v32 setPropertiesToFetch:v35];

  v36 = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {
  }

  else
  {
    v37 = sub_1001A615C(v36);

    v38 = sub_10021551C(v37);

    v39 = *v43;
    *v43 = v38;
  }
}

uint64_t sub_10021551C(uint64_t a1)
{
  v72 = type metadata accessor for DispatchQoS();
  v71 = *(v72 - 8);
  v3 = *(v71 + 64);
  __chkstk_darwin(v72);
  v68 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v69 - 8);
  v5 = *(v67 + 64);
  __chkstk_darwin(v69);
  v66 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  sub_10021417C(a1, &qword_1009399F0, off_1008D4120, &qword_10093A8F8);
  v70 = 0;
  v8 = sub_1001A577C(v7);

  v9 = swift_allocObject();
  *(v9 + 16) = &_swiftEmptyDictionarySingleton;
  v10 = swift_allocObject();
  *(v10 + 16) = &_swiftEmptySetSingleton;
  v73 = v1;
  v74 = v10 + 16;
  p_aBlock = *(v1 + 24);
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  v13 = *(p_aBlock + 16);
  v14 = swift_allocObject();
  v65 = p_aBlock;
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_10021FF60;
  v15[4] = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100220AD0;
  *(v16 + 24) = v15;
  v82 = sub_1000FDA90;
  v83 = v16;
  aBlock = _NSConcreteStackBlock;
  v79 = 1107296256;
  v80 = sub_10000F160;
  v81 = &unk_1008EA6A8;
  v17 = _Block_copy(&aBlock);

  dispatch_sync(v13, v17);
  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    v43 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_29;
  }

  swift_beginAccess();
  v18 = *(v9 + 16);
  swift_beginAccess();
  v19 = *(v10 + 16);

  v20 = sub_10031EA24(v75);
  if (!v20 || (v21 = v20, v22 = [v20 managedObjectContext], v21, !v22))
  {

    return v18;
  }

  v62 = v22;
  v23 = swift_allocObject();
  v61[0] = v23;
  *(v23 + 16) = &_swiftEmptyDictionarySingleton;
  aBlock = _swiftEmptyArrayStorage;
  v74 = v23 + 16;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v28 = -1 << *(v18 + 32);
    v25 = ~v28;
    v24 = v18 + 64;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v26 = v30 & *(v18 + 64);
    v27 = v18;
  }

  v63 = v18;

  v31 = 0;
  v61[1] = v25;
  v32 = (v25 + 64) >> 6;
  v33 = _swiftEmptyArrayStorage;
LABEL_12:
  v64 = v33;
  while ((v27 & 0x8000000000000000) != 0)
  {
    v38 = __CocoaDictionary.Iterator.next()();
    if (!v38)
    {
      goto LABEL_27;
    }

    v40 = v39;
    v76 = v38;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    swift_dynamicCast();
    p_aBlock = v77;
    v76 = v40;
    type metadata accessor for RDAccountManualSortID();
    swift_dynamicCast();
    v37 = v77;
    if (!p_aBlock)
    {
      goto LABEL_27;
    }

LABEL_22:
    if (!*(v37 + 24))
    {
      v41 = p_aBlock;

      p_aBlock = &aBlock;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v42 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v33 = aBlock;
      goto LABEL_12;
    }
  }

  v34 = v31;
  v35 = v26;
  if (!v26)
  {
    while (1)
    {
      v31 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v31 >= v32)
      {
        goto LABEL_27;
      }

      v35 = *(v24 + 8 * v31);
      ++v34;
      if (v35)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_18:
  v26 = (v35 - 1) & v35;
  v36 = (v31 << 9) | (8 * __clz(__rbit64(v35)));
  v37 = *(*(v27 + 56) + v36);
  p_aBlock = *(*(v27 + 48) + v36);

  if (p_aBlock)
  {
    goto LABEL_22;
  }

LABEL_27:
  sub_10001B860();
  p_aBlock = sub_100215F30(v19, v64);

  if (p_aBlock >> 62)
  {
    goto LABEL_37;
  }

  v43 = *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
  v44 = v75;
  v18 = v63;
  v45 = v62;
  if (v43)
  {
    v46 = swift_allocObject();
    v46[2] = v44;
    v46[3] = p_aBlock;
    v47 = v73;
    v46[4] = v74;
    v46[5] = v47;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_10021FF78;
    *(v48 + 24) = v46;
    v82 = sub_1000FDA90;
    v83 = v48;
    aBlock = _NSConcreteStackBlock;
    v79 = 1107296256;
    v80 = sub_10000F160;
    v81 = &unk_1008EA720;
    v49 = _Block_copy(&aBlock);

    [v45 performBlockAndWait:v49];
    _Block_release(v49);
    LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

    if (v49)
    {
      __break(1u);
    }

    else
    {
      v50 = *(v65 + 16);
      v51 = v61[0];

      v52 = v66;
      static DispatchWorkItemFlags.barrier.getter();
      v53 = swift_allocObject();
      swift_weakInit();
      v54 = swift_allocObject();
      v54[2] = v53;
      v54[3] = sub_10021FF84;
      v54[4] = v51;
      v82 = sub_100220AD4;
      v83 = v54;
      aBlock = _NSConcreteStackBlock;
      v79 = 1107296256;
      v80 = sub_100019200;
      v81 = &unk_1008EA770;
      v55 = _Block_copy(&aBlock);

      v56 = v68;
      static DispatchQoS.unspecified.getter();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v55);

      (*(v71 + 8))(v56, v72);
      (*(v67 + 8))(v52, v69);

      swift_beginAccess();
      v57 = *(v51 + 16);
      v77 = v18;

      v59 = v70;
      sub_10021F218(v58, sub_100220A64, 0, &v77);
      if (!v59)
      {

        return v77;
      }
    }

    __break(1u);
  }

  else
  {

    return v18;
  }

  return result;
}

void *sub_100215F30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = *(a1 + 16);
    v5 = __OFADD__(v3, v9);
    result = (v3 + v9);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = __CocoaSet.count.getter();
  v5 = __OFADD__(v3, v4);
  result = (v3 + v4);
  if (!v5)
  {
LABEL_4:
    sub_10021C3DC(result);

    sub_100271590(v7);

    sub_100271578(v8);
    return _swiftEmptyArrayStorage;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100215FF8(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v13 = &_swiftEmptyDictionarySingleton;
  v12 = &_swiftEmptySetSingleton;

  sub_10021F440(a1, a2, &v13, &v12);

  v8 = sub_10038E300(_swiftEmptyArrayStorage);

  v9 = sub_10021FFC8(v8, a2, &v13, a4);

  v10 = *a3;
  *a3 = v9;

  sub_10021551C(v12);
}

uint64_t sub_1002160F4(uint64_t a1, void *a2)
{
  v4 = v2;
  v158 = a2;
  v6 = 0;
  v152 = type metadata accessor for DispatchQoS();
  v151 = *(v152 - 8);
  v7 = *(v151 + 64);
  __chkstk_darwin(v152);
  v150 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DispatchWorkItemFlags();
  v148 = *(v149 - 8);
  v9 = *(v148 + 64);
  __chkstk_darwin(v149);
  v147 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for UUID();
  v163 = *(v157 - 8);
  v11 = *(v163 + 64);
  __chkstk_darwin(v157);
  v156 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMManualOrdering.PinnedList();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v160 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v161 = &v146 - v18;
  v19 = __chkstk_darwin(v17);
  v162 = &v146 - v20;
  v21 = __chkstk_darwin(v19);
  v168 = &v146 - v22;
  __chkstk_darwin(v21);
  v25 = &v146 - v24;
  v26 = _swiftEmptyArrayStorage;
  aBlock = _swiftEmptyArrayStorage;
  v27 = *(a1 + 56);
  v165 = a1 + 56;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v31 = (v28 + 63) >> 6;
  v170 = v23;
  v171 = v23 + 16;
  v172 = (v23 + 8);
  v173 = a1;

  v159 = 0;
  v32 = v170;
  if (!v30)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v33 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      (*(v32 + 16))(v25, *(v173 + 48) + *(v32 + 72) * (v33 | (v6 << 6)), v13);
      v34 = REMManualOrdering.PinnedList.elementObjectID.getter();
      (*(v32 + 8))(v25, v13);
      if (v34)
      {
        break;
      }

      if (!v30)
      {
        goto LABEL_6;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v36 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = aBlock;
  }

  while (v30);
  while (1)
  {
LABEL_6:
    v35 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v35 >= v31)
    {
      break;
    }

    v30 = *(v165 + 8 * v35);
    ++v6;
    if (v30)
    {
      v6 = v35;
      goto LABEL_4;
    }
  }

  v167 = v13;

  v37 = sub_1001A577C(v26);

  v38 = swift_allocObject();
  *(v38 + 16) = &_swiftEmptyDictionarySingleton;
  v39 = swift_allocObject();
  *(v39 + 16) = &_swiftEmptySetSingleton;
  v40 = *(v4 + 24);
  v26 = swift_allocObject();
  *(v26 + 16) = v37;
  *(v26 + 24) = v38;
  *(v26 + 32) = v39;
  v41 = *(v40 + 16);
  v42 = swift_allocObject();
  v146 = v40;
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_100220A94;
  v43[4] = v26;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_100220AD0;
  *(v44 + 24) = v43;
  v180 = sub_1000FDA90;
  v181 = v44;
  aBlock = _NSConcreteStackBlock;
  v3 = 1107296256;
  v177 = 1107296256;
  v178 = sub_10000F160;
  v179 = &unk_1008EAA18;
  v45 = _Block_copy(&aBlock);

  dispatch_sync(v41, v45);
  _Block_release(v45);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if (v45)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    v66 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_39;
  }

  swift_beginAccess();
  v46 = *(v38 + 16);
  swift_beginAccess();
  v26 = *(v39 + 16);

  v166 = v26;

  aBlock = _swiftEmptyArrayStorage;
  if ((v46 & 0xC000000000000001) != 0)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v51 = -1 << *(v46 + 32);
    v48 = ~v51;
    v47 = v46 + 64;
    v52 = -v51;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    else
    {
      v53 = -1;
    }

    v49 = v53 & *(v46 + 64);
    v50 = v46;
  }

  v153 = v46;

  v54 = 0;
  v164 = v48;
  v55 = (v48 + 64) >> 6;
  v56 = _swiftEmptyArrayStorage;
LABEL_22:
  v169 = v56;
  while ((v50 & 0x8000000000000000) != 0)
  {
    v61 = __CocoaDictionary.Iterator.next()();
    if (!v61)
    {
      goto LABEL_37;
    }

    v63 = v62;
    v174 = v61;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    swift_dynamicCast();
    v60 = v175;
    v174 = v63;
    type metadata accessor for RDElementManualSortID();
    swift_dynamicCast();
    v26 = v175;
    if (!v60)
    {
      goto LABEL_37;
    }

LABEL_32:
    if (!*(v26 + 24))
    {
      v64 = v60;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v65 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v56 = aBlock;
      goto LABEL_22;
    }
  }

  v57 = v54;
  for (i = v49; !i; ++v57)
  {
    v54 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_92;
    }

    if (v54 >= v55)
    {
      goto LABEL_37;
    }

    i = *(v47 + 8 * v54);
  }

  v49 = (i - 1) & i;
  v59 = (v54 << 9) | (8 * __clz(__rbit64(i)));
  v26 = *(*(v50 + 56) + v59);
  v60 = *(*(v50 + 48) + v59);

  if (v60)
  {
    goto LABEL_32;
  }

LABEL_37:
  sub_10001B860();
  v26 = sub_100215F30(v166, v169);

  if (v26 >> 62)
  {
    goto LABEL_100;
  }

  v66 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_39:
  v67 = v167;
  v68 = v153;
  v69 = v168;
  v166 = v66;
  if (v66)
  {
    v70 = sub_10038E118(_swiftEmptyArrayStorage);
    v71 = 1 << *(v173 + 32);
    v72 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    v73 = v72 & *(v173 + 56);
    v74 = (v71 + 63) >> 6;

    v75 = 0;
    v168 = v26;
LABEL_43:
    v76 = v75;
    v77 = v165;
    v169 = v70;
    while (v73)
    {
      v75 = v76;
LABEL_51:
      v78 = __clz(__rbit64(v73));
      v73 &= v73 - 1;
      v79 = *(v170 + 16);
      v79(v69, *(v173 + 48) + *(v170 + 72) * (v78 | (v75 << 6)), v67);
      v80 = REMManualOrdering.PinnedList.elementObjectID.getter();
      if (v80)
      {
        v81 = v80;
        aBlock = v80;
        __chkstk_darwin(v80);
        *(&v146 - 2) = &aBlock;
        v82 = v26;
        v83 = v159;
        v84 = sub_10032DE90(sub_100220A9C, (&v146 - 4), v82);
        v159 = v83;
        if (v84)
        {
          v85 = v162;
          v79(v162, v69, v67);
          v86 = v81;
          v87 = v169;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v87;
          sub_1002C7480(v85, v86, isUniquelyReferenced_nonNull_native);

          (*v172)(v69, v67);
          v70 = aBlock;
          v26 = v168;
          goto LABEL_43;
        }

        (*v172)(v69, v67);

        v76 = v75;
        v77 = v165;
        v26 = v168;
      }

      else
      {
        (*v172)(v69, v67);
        v76 = v75;
        v77 = v165;
      }

      v70 = v169;
    }

    while (1)
    {
      v75 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        goto LABEL_93;
      }

      if (v75 >= v74)
      {
        break;
      }

      v73 = *(v77 + 8 * v75);
      ++v76;
      if (v73)
      {
        goto LABEL_51;
      }
    }

    v89 = 0;
    aBlock = sub_10038E300(_swiftEmptyArrayStorage);
    v90 = v26 & 0xC000000000000001;
    v173 = v26 & 0xFFFFFFFFFFFFFF8;
    v155 = (v163 + 8);
    v154 = (v163 + 32);
    v91 = v160;
    v92 = v161;
    v93 = v166;
    v162 = (v26 & 0xC000000000000001);
    while (2)
    {
      if (v90)
      {
        v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v89 >= *(v173 + 16))
        {
          goto LABEL_95;
        }

        v94 = *(v26 + 8 * v89 + 32);
      }

      v95 = v94;
      v96 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        goto LABEL_94;
      }

      if (*(v70 + 16))
      {
        v97 = sub_10002B924(v94);
        if (v98)
        {
          v99 = *(v170 + 16);
          v99(v92, *(v70 + 56) + *(v170 + 72) * v97, v67);
          v99(v91, v92, v67);
          v100 = REMManualOrdering.PinnedList.elementObjectID.getter();
          if (!v100)
          {
            v119 = *v172;
            (*v172)(v91, v67);
            sub_100368FC8(v95);

            v119(v92, v67);
            v26 = v168;
            v93 = v166;
            goto LABEL_83;
          }

          v101 = v100;
          v102 = [v100 uuid];
          v103 = v156;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v165 = UUID.uuidString.getter();
          v164 = v104;
          v105 = v67;
          v106 = v157;
          (*v155)(v103, v157);
          v107 = v91;
          v108 = [v101 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v26 = *v172;
          (*v172)(v107, v105);
          v109 = type metadata accessor for RDElementManualSortID();
          v110 = *(v109 + 48);
          v111 = *(v109 + 52);
          v112 = swift_allocObject();
          v113 = v164;
          *(v112 + 16) = v165;
          *(v112 + 24) = v113;
          (*v154)(v112 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID, v103, v106);
          v114 = v158;
          *(v112 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID) = v158;
          v115 = aBlock;
          v163 = v26;
          if ((aBlock & 0xC000000000000001) != 0)
          {
            if (aBlock < 0)
            {
              v116 = aBlock;
            }

            else
            {
              v116 = aBlock & 0xFFFFFFFFFFFFFF8;
            }

            v117 = v114;
            v118 = __CocoaDictionary.count.getter();
            if (__OFADD__(v118, 1))
            {
              goto LABEL_97;
            }

            v115 = sub_10021D4DC(v116, v118 + 1, &unk_100943080, &unk_1007A3B00, type metadata accessor for RDElementManualSortID, sub_10036A210);
            aBlock = v115;
          }

          else
          {
            v120 = v114;
          }

          v121 = swift_isUniquelyReferenced_nonNull_native();
          v175 = v115;
          v123 = sub_10002B924(v95);
          v124 = *(v115 + 16);
          v125 = (v122 & 1) == 0;
          v126 = v124 + v125;
          v92 = v161;
          v93 = v166;
          if (__OFADD__(v124, v125))
          {
            goto LABEL_96;
          }

          v26 = v122;
          if (*(v115 + 24) >= v126)
          {
            if (v121)
            {
              v129 = v175;
              if ((v122 & 1) == 0)
              {
                goto LABEL_77;
              }
            }

            else
            {
              sub_1003731C0();
              v129 = v175;
              if ((v26 & 1) == 0)
              {
                goto LABEL_77;
              }
            }
          }

          else
          {
            sub_10036A210(v126, v121);
            v127 = sub_10002B924(v95);
            if ((v26 & 1) != (v128 & 1))
            {
              sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
LABEL_102:

              __break(1u);
              return result;
            }

            v123 = v127;
            v129 = v175;
            if ((v26 & 1) == 0)
            {
LABEL_77:
              v129[(v123 >> 6) + 8] |= 1 << v123;
              *(v129[6] + 8 * v123) = v95;
              *(v129[7] + 8 * v123) = v112;
              (v163)(v92, v167);
              v130 = v129[2];
              v131 = __OFADD__(v130, 1);
              v132 = v130 + 1;
              if (v131)
              {
                goto LABEL_98;
              }

              v129[2] = v132;
              aBlock = v129;
              v67 = v167;
LABEL_82:
              v91 = v160;
              v26 = v168;
LABEL_83:
              v70 = v169;
              v90 = v162;
LABEL_57:
              ++v89;
              if (v96 == v93)
              {

                v136 = aBlock;
                v137 = swift_allocObject();
                *(v137 + 16) = v136;
                v138 = *(v146 + 16);

                v139 = v147;
                static DispatchWorkItemFlags.barrier.getter();
                v140 = swift_allocObject();
                swift_weakInit();
                v141 = swift_allocObject();
                v141[2] = v140;
                v141[3] = sub_1002208B4;
                v141[4] = v137;
                v180 = sub_100220AD4;
                v181 = v141;
                aBlock = _NSConcreteStackBlock;
                v177 = v3;
                v178 = sub_100019200;
                v179 = &unk_1008EAA90;
                v142 = _Block_copy(&aBlock);

                v143 = v150;
                static DispatchQoS.unspecified.getter();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v142);

                (*(v151 + 8))(v143, v152);
                (*(v148 + 8))(v139, v149);

                aBlock = v153;
                v144 = v159;
                sub_10021F054(v136, sub_100220A64, 0, &aBlock);
                if (!v144)
                {
                  return aBlock;
                }

                goto LABEL_102;
              }

              continue;
            }
          }

          v133 = v129[7];
          v134 = *(v133 + 8 * v123);
          *(v133 + 8 * v123) = v112;

          v135 = v167;
          (v163)(v92, v167);
          aBlock = v129;
          v67 = v135;
          goto LABEL_82;
        }
      }

      break;
    }

    goto LABEL_57;
  }

  return v68;
}